struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_2(arg_0: Struct_3, arg_1: u32) -> Struct_2 {
    var var_0 = u_input.a.zxw;
    var_0 = vec3<i32>(_wgslsmith_add_i32(abs(~_wgslsmith_mult_i32(u_input.a.x, u_input.a.x)), 20440i), 18536i, max(i32(-1i) * -(~u_input.a.x), 45900i));
    var var_1 = reverseBits(arg_1);
    var var_2 = abs(-(~_wgslsmith_div_i32(~arg_0.b.a.x, _wgslsmith_sub_i32(17804i, var_0.x))));
    var_2 = _wgslsmith_mult_i32(~(-arg_0.b.a.x), -_wgslsmith_dot_vec2_i32(u_input.a.zy, _wgslsmith_add_vec2_i32(vec2<i32>(0i, 24832i), u_input.a.xx)) << (~u_input.b.x % 32u));
    return Struct_2(~(-firstLeadingBit(~(-43310i))), arg_0.a.x, !vec2<bool>(!select(true, true, true), select(true, false, any(vec4<bool>(false, false, false, true)))), vec2<bool>(((1i < var_0.x) || true) || any(vec2<bool>(true, true)), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(44114u, arg_2.x), ~(~4294967295u));
    var var_1 = u_input.b.x;
    let var_2 = ~72115u;
    var var_3 = 818i;
    var var_4 = 1148f;
    return func_2(Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(277f, -1000f))))), Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(51608i, -43183i, arg_0.x) | vec3<i32>(u_input.a.x, -1i, arg_0.x), vec3<i32>(0i, arg_0.x, 7439i)))), ~80066u);
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = Struct_4(Struct_1(_wgslsmith_div_vec3_i32(max(u_input.a.yzy, u_input.a.xwx), vec3<i32>(u_input.c, arg_0, 65527i)) ^ select(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, -1313i), u_input.a.zxw), vec3<i32>(1i, 2147483647i, -1i), !vec3<bool>(true, arg_1, arg_1))), vec2<bool>(!(!arg_1), any(vec2<bool>(func_2(Struct_3(vec2<f32>(-234f, -1470f), Struct_1(vec3<i32>(arg_0, arg_0, 62941i))), 23872u).c.x, !arg_1))), Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-344f, _wgslsmith_f_op_f32(max(2093f, 1000f)))), Struct_1(u_input.a.wxz)), func_1(u_input.a, u_input.c, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 14628u, u_input.b.x, u_input.b.x)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-160f, -1095f) + _wgslsmith_f_op_f32(ceil(-1000f))) + var_0.d.b)));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.d.b), _wgslsmith_f_op_f32(var_0.c.a.x - var_0.d.b), var_0.d.b >= -783f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(973f, var_0.c.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.a.x * var_0.c.a.x) + func_1(vec4<i32>(u_input.c, arg_0, arg_0, -1i), u_input.a.x, vec4<u32>(u_input.b.x, 61878u, u_input.b.x, 4294967295u)).b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.c.a.x)), var_0.d.b))))));
    return ~min(-23730i, _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.c, 1i, 24531i), var_0.c.b.a, vec3<bool>(true, false, false)), vec3<i32>(arg_0, u_input.a.x, 0i))) >> (0u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a ^ u_input.a, vec4<i32>(-869i, u_input.a.x, 12271i, u_input.c)), ~u_input.a), vec4<i32>(_wgslsmith_add_i32(4749i, u_input.c) ^ -35015i, 2147483647i, countOneBits(~(-70281i)), -(44645i & u_input.c))), -56698i, u_input.b);
    var_0 = Struct_2(_wgslsmith_mod_i32(abs(~(-16567i)), func_1(~vec4<i32>(-2147483647i, -30750i, 0i, 2147483647i), _wgslsmith_div_i32(abs(-2147483647i), -1i), u_input.b).a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - 330f))) + _wgslsmith_f_op_f32(f32(-1f) * -901f)), select(func_1(reverseBits(select(u_input.a, u_input.a, var_0.d.x)), func_3(var_0.a, true || var_0.c.x), u_input.b).d, !func_2(Struct_3(vec2<f32>(192f, var_0.b), Struct_1(u_input.a.yyx)), u_input.b.x).c, (~u_input.c ^ _wgslsmith_sub_i32(-20104i, 0i)) == ~u_input.c), func_2(Struct_3(_wgslsmith_div_vec2_f32(vec2<f32>(-1293f, -1866f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b))), Struct_1(firstLeadingBit(u_input.a.zzz))), ~_wgslsmith_sub_u32(~1u, 0u)).c);
    var var_1 = Struct_2(u_input.a.x, var_0.b, vec2<bool>(true, false), !vec2<bool>(!(!var_0.c.x), any(vec4<bool>(true, false, false, true)) == (var_0.a <= u_input.c)));
    var_0 = Struct_2(2147483647i, _wgslsmith_f_op_f32(select(-791f, _wgslsmith_f_op_f32(abs(func_2(Struct_3(vec2<f32>(var_1.b, var_0.b), Struct_1(u_input.a.xyz)), 1u).b)), !var_1.d.x)), !func_1(~min(vec4<i32>(1i, 10823i, u_input.a.x, var_1.a), u_input.a), u_input.a.x, reverseBits(~u_input.b)).c, !func_1(vec4<i32>(1i, 1959i, -9260i, ~var_1.a), 24810i, ~_wgslsmith_div_vec4_u32(u_input.b, u_input.b)).c);
    var var_2 = ~_wgslsmith_mod_vec3_i32(-_wgslsmith_add_vec3_i32(u_input.a.zzz << (vec3<u32>(4294967295u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)), max(u_input.a.yyx, u_input.a.zyy)), firstTrailingBit(u_input.a.yzx));
    var var_3 = vec4<bool>(!select(true, false, any(select(vec4<bool>(true, var_1.d.x, true, var_0.c.x), vec4<bool>(var_0.d.x, false, true, true), vec4<bool>(var_0.c.x, var_1.d.x, true, false)))), !(!(var_1.b <= 1000f)) | true, all(vec2<bool>(func_1(vec4<i32>(-1i, -2147483647i, 2147483647i, u_input.a.x), u_input.a.x, u_input.b).d.x || true, var_1.d.x)), any(vec4<bool>(!any(var_1.c), var_1.c.x, true, !(var_1.b < var_0.b))));
    let var_4 = reverseBits(u_input.b.xz);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, select(vec2<u32>(u_input.b.x, var_4.x), vec2<u32>(1u, _wgslsmith_add_u32(~53037u, 1u)), !any(var_1.d)), countOneBits(-_wgslsmith_mod_vec3_i32(u_input.a.xwy, reverseBits(u_input.a.yyx))));
}

