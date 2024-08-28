struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_1 {
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(global1.a))), vec2<f32>(_wgslsmith_f_op_f32(step(-146f, global1.a.x)), _wgslsmith_div_f32(-923f, -1281f))))), Struct_1(arg_1.b.b.x, arg_1.b.b, ~global1.b.d.x, arg_1.b.d, any(select(select(vec4<bool>(global1.b.e, arg_1.b.e, false, true), vec4<bool>(arg_1.b.e, arg_1.b.e, false, false), vec4<bool>(true, true, global1.b.e, global1.b.e)), vec4<bool>(false, true, false, false), select(vec4<bool>(global1.b.e, global1.b.e, global1.b.e, false), vec4<bool>(global1.b.e, true, false, global1.b.e), false)))));
    global2 = array<Struct_1, 32>();
    global0 = _wgslsmith_f_op_f32(-arg_1.a.x);
    var var_0 = true;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1128f, arg_1.a.x, -220f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, -341f, -888f) * vec3<f32>(-1038f, global1.a.x, 325f))))))));
    return Struct_1(global1.b.b.x, global1.b.b, ~(~(~arg_1.b.c) << (~_wgslsmith_add_u32(u_input.e, arg_1.b.d.x) % 32u)), ~(vec3<u32>(_wgslsmith_div_u32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec3_u32(arg_1.b.d, arg_1.b.d), ~87899u) | vec3<u32>(0u, 1u, ~global1.b.c)), global1.b.e);
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_mult_i32(~arg_1.x, _wgslsmith_dot_vec3_i32(global1.b.b.wyw, arg_0.b.b.xxz)) >> (_wgslsmith_mult_u32(reverseBits(arg_2.b.d.x), 1u) % 32u);
    global2 = array<Struct_1, 32>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.a.x)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.a.x, -1093f) * _wgslsmith_f_op_f32(max(arg_2.a.x, -298f))) - arg_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.a.x, -424f))) * _wgslsmith_f_op_f32(1296f + 801f))));
    let var_1 = max(reverseBits(select(_wgslsmith_mod_vec4_i32(firstTrailingBit(arg_2.b.b), vec4<i32>(global1.b.a, u_input.d, u_input.d, arg_2.b.b.x)), max(vec4<i32>(81970i, arg_2.b.b.x, 2147483647i, 64420i), vec4<i32>(0i, arg_2.b.b.x, u_input.d, global1.b.b.x)) & -vec4<i32>(0i, 10951i, -11256i, -2147483647i), !select(vec4<bool>(arg_0.b.e, arg_2.b.e, global1.b.e, global1.b.e), vec4<bool>(false, arg_0.b.e, false, false), vec4<bool>(false, false, global1.b.e, false)))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(arg_0.b.b, global1.b.b), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, -2147483647i, 1i, arg_1.x), _wgslsmith_mult_vec4_i32(global1.b.b, vec4<i32>(-1i, -1i, -1i, u_input.d))), _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.d, -29685i, 12953i, 2147483647i), vec4<i32>(2147483647i, arg_1.x, -1i, 14507i)), vec4<i32>(u_input.d, -1i, -2147483647i, arg_0.b.a) << (vec4<u32>(4294967295u, arg_2.b.d.x, 18476u, 0u) % vec4<u32>(32u)))) | -arg_1);
    var var_2 = global1.a.x;
    return Struct_3(_wgslsmith_f_op_vec2_f32(floor(arg_0.a)), Struct_1(global1.b.a, -_wgslsmith_mult_vec4_i32(-global1.b.b, firstTrailingBit(vec4<i32>(global1.b.a, u_input.d, 2147483647i, -1i))), ~u_input.b | arg_0.b.c, vec3<u32>(func_2(arg_0.b.b.wxz & arg_1.zzz, Struct_3(arg_0.a, global1.b)).d.x, _wgslsmith_mult_u32(~1u, 1u), func_2(-vec3<i32>(2795i, var_1.x, -32769i), Struct_3(global1.a, Struct_1(u_input.d, arg_0.b.b, 4294967295u, vec3<u32>(59471u, arg_0.b.d.x, global1.b.d.x), false))).c), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(arg_0.b.b.yy, vec2<i32>(arg_0.b.b.x, arg_2.b.b.x)), func_2(arg_2.b.b.xzy, arg_0).b.x) > -var_1.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = arg_1.b.e;
    let var_1 = func_3(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(global1.a + arg_1.a), func_2(arg_0.wzz, arg_1)), _wgslsmith_mult_vec4_i32(vec4<i32>(~arg_0.x, _wgslsmith_mod_i32(-34047i, 1i), 0i, -arg_1.b.b.x), _wgslsmith_add_vec4_i32(arg_1.b.b, global1.b.b)), func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-arg_1.a), func_2(arg_0.zyy, arg_1)), _wgslsmith_div_vec4_i32(vec4<i32>(1571i, 29710i, global1.b.a, arg_0.x), global1.b.b), func_3(Struct_3(global1.a, arg_1.b), ~vec4<i32>(global1.b.b.x, 16426i, 2147483647i, u_input.d), func_3(Struct_3(vec2<f32>(arg_1.a.x, global1.a.x), Struct_1(global1.b.a, arg_1.b.b, 100437u, vec3<u32>(u_input.c.x, 4294967295u, 70795u), global1.b.e)), vec4<i32>(-1i, -1901i, 3301i, -41496i), Struct_3(arg_1.a, Struct_1(-2147483647i, arg_0, 60564u, global1.b.d, arg_1.b.e)))))), arg_1.b.b >> (vec4<u32>(~1u, 0u, firstLeadingBit(40690u), ~1181u) % vec4<u32>(32u)), Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(arg_1.a, vec2<f32>(237f, global1.a.x))), global1.a) * vec2<f32>(_wgslsmith_div_f32(294f, global1.a.x), 2833f)), global2[_wgslsmith_index_u32(global1.b.c, 32u)])).b;
    global2 = array<Struct_1, 32>();
    let var_2 = var_1;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x * global1.a.x) * _wgslsmith_f_op_f32(-func_3(Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(761f, global1.a.x)), var_2), ~global1.b.b, arg_1).a.x));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, -766f, -1000f, _wgslsmith_f_op_f32(floor(arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1060f, global1.a.x, arg_1.a.x, -1102f))), !vec4<bool>(true, -1896f < global1.a.x, var_0, global1.b.e))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> StorageBuffer {
    let var_0 = global1.b.a != u_input.d;
    let var_1 = ~global1.b.d.yy;
    global2 = array<Struct_1, 32>();
    global2 = array<Struct_1, 32>();
    global0 = global1.a.x;
    return func_4(global1.b.b, func_3(Struct_3(_wgslsmith_f_op_vec2_f32(select(global1.a, _wgslsmith_f_op_vec2_f32(round(arg_1)), vec2<bool>(true, global1.b.e))), func_2(select(vec3<i32>(global1.b.b.x, 2147483647i, 9013i), global1.b.b.xzw, vec3<bool>(true, true, var_0)), Struct_3(vec2<f32>(859f, 283f), global2[_wgslsmith_index_u32(1u, 32u)]))), ~firstTrailingBit(vec4<i32>(global1.b.a, 0i, global1.b.a, 25753i)), Struct_3(vec2<f32>(_wgslsmith_div_f32(global1.a.x, 809f), _wgslsmith_f_op_f32(sign(global1.a.x))), Struct_1(-u_input.d, reverseBits(vec4<i32>(-21368i, global1.b.b.x, global1.b.b.x, 2147483647i)), ~arg_0, ~vec3<u32>(u_input.e, arg_0, 4294967295u), var_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 50826i;
    global2 = array<Struct_1, 32>();
    var var_1 = vec3<i32>(-1i) * -global1.b.b.xyw;
    let var_2 = Struct_4(-632f, true & !(!global1.b.e));
    let x = u_input.a;
    s_output = func_1(~abs(_wgslsmith_clamp_u32(reverseBits(1u), 17774u, firstLeadingBit(17192u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a)) + _wgslsmith_f_op_f32(-global1.a.x)), global1.a.x)));
}

