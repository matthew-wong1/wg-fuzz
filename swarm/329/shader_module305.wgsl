struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(all(!vec4<bool>(any(vec2<bool>(arg_1.a, true)), all(vec3<bool>(true, arg_0, arg_2.a)), true, true)));
    let var_1 = select(min(min(~_wgslsmith_clamp_vec2_i32(vec2<i32>(38526i, u_input.a), vec2<i32>(14267i, 1i), vec2<i32>(1i, -40188i)), vec2<i32>(2147483647i, abs(-2147483647i))), _wgslsmith_sub_vec2_i32(u_input.b.wx, countOneBits(-u_input.b.yx))), ~max(min(u_input.c.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, -19612i), u_input.b.xy)), countOneBits(u_input.c.yz >> (vec2<u32>(1u, 8022u) % vec2<u32>(32u)))), select(select(!vec2<bool>(arg_2.a, arg_0), !(!vec2<bool>(arg_1.a, arg_0)), select(!vec2<bool>(arg_0, true), vec2<bool>(true, false), true)), !vec2<bool>(arg_0, select(false, true, true)), select(vec2<bool>(select(true, false, arg_0), true), !vec2<bool>(arg_1.a, false), any(select(vec4<bool>(false, false, arg_2.a, true), vec4<bool>(arg_1.a, false, true, true), vec4<bool>(false, arg_0, arg_2.a, arg_1.a))))));
    let var_2 = -select(vec3<i32>(firstLeadingBit(-2147483647i), -var_1.x, i32(-1i) * -2147483647i) & ~u_input.b.ywx, firstLeadingBit(vec3<i32>(abs(17255i), ~u_input.e, var_1.x)), arg_2.a);
    var var_3 = vec3<f32>(-132f, 874f, -648f);
    let var_4 = 1u;
    return arg_0;
}

fn func_2() -> f32 {
    let var_0 = 15976u;
    let var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~u_input.d.x, var_0) >> (~_wgslsmith_add_vec2_u32(vec2<u32>(var_0, 21608u), u_input.d.zx) % vec2<u32>(32u)), ~u_input.d.xx) >> (_wgslsmith_mult_vec2_u32(u_input.d.yy, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), _wgslsmith_mult_u32(4294967295u, var_0)) | _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, 100844u), _wgslsmith_mult_vec2_u32(u_input.d.zx, vec2<u32>(u_input.d.x, u_input.d.x)))) % vec2<u32>(32u));
    var var_2 = !select(select(vec4<bool>(all(vec4<bool>(false, true, true, false)), select(true, true, false), true, any(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), u_input.b.x <= 13608i), vec4<bool>(true, func_3(true, Struct_1(true), Struct_1(true)), false, any(vec3<bool>(true, true, true))));
    var var_3 = 0i;
    var_2 = !(!select(vec4<bool>(true, var_2.x, true, false | var_2.x), vec4<bool>(true, u_input.c.x <= 4294i, true, var_2.x), !(!vec4<bool>(var_2.x, true, false, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-794f)));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: f32) -> i32 {
    var var_0 = func_3(false, Struct_1(any(vec4<bool>(true, true, true, true))), Struct_1(false)) & true;
    var var_1 = !vec4<bool>(false, true, !(-u_input.b.x >= -2147483647i), any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)) & true);
    let var_2 = Struct_1(any(select(select(!vec4<bool>(var_1.x, false, false, false), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), !var_1.x), !select(vec4<bool>(false, true, false, var_1.x), vec4<bool>(true, false, var_1.x, false), var_1.x), !(!vec4<bool>(var_1.x, var_1.x, false, var_1.x)))));
    var var_3 = Struct_2(var_2, Struct_1(true), var_1.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - arg_3)), _wgslsmith_f_op_f32(-arg_3))), Struct_1(!any(!var_1.ywz)));
    var var_4 = ~vec4<u32>(~(~u_input.d.x), arg_2, 25711u, max(~reverseBits(1u), ~1u));
    return -u_input.e;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_div_vec2_i32(vec2<i32>(func_4(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(213f, -595f, -531f, -786f))), 1u, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1136f, -1564f)))), _wgslsmith_mod_i32(~(~u_input.a), 1i)), reverseBits(vec2<i32>(u_input.b.x, ~(-34016i))));
    var_0 = u_input.b.zw;
    var var_1 = arg_1;
    var var_2 = Struct_2(arg_1, Struct_1(var_1.a || (1u == max(85301u, u_input.d.x))), arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-289f, _wgslsmith_f_op_f32(-129f - -213f)))), _wgslsmith_div_f32(-785f, 107f)), arg_1);
    var_2 = Struct_2(Struct_1(!(any(vec2<bool>(true, var_1.a)) & arg_1.a)), Struct_1(arg_1.a), arg_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(484f, 726f), vec2<f32>(var_2.d.x, 927f)))), vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-var_2.d.x)))), Struct_1(all(vec3<bool>(true, true & arg_0, any(vec4<bool>(var_2.e.a, var_1.a, true, true))))));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, _wgslsmith_mod_i32(-21448i, -13336i), u_input.a, u_input.c.x)) ^ firstLeadingBit(u_input.b), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, u_input.e), ~u_input.a), -func_1(false, Struct_1(true), u_input.d), -18775i), ~select(vec4<i32>(-18528i, u_input.a, u_input.c.x, u_input.e), vec4<i32>(1i, u_input.c.x, -2147483647i, u_input.b.x), vec4<bool>(true, false, true, false)) >> ((~vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 4294967295u) & vec4<u32>(u_input.d.x, 95476u, u_input.d.x, 27404u)) % vec4<u32>(32u))));
    let var_1 = (u_input.d.x | u_input.d.x) & u_input.d.x;
    let var_2 = -_wgslsmith_mult_vec3_i32(vec3<i32>(-3960i, -1i, 0i), firstLeadingBit(select(vec3<i32>(u_input.a, u_input.c.x, var_0.x), var_0.xwz, vec3<bool>(true, true, true))));
    var var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(27584u, 4294967295u, 0u), vec3<u32>(u_input.d.x, 0u, var_1)), firstTrailingBit(u_input.d)) ^ max(min(vec3<u32>(u_input.d.x, 4294967295u, 8588u), u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(var_1, u_input.d.x, 48382u), u_input.d)), u_input.d), ~(~_wgslsmith_sub_u32(var_1, 0u)), max(~firstTrailingBit(_wgslsmith_div_u32(u_input.d.x, 15433u)), ~(29627u >> (var_1 % 32u)) >> (_wgslsmith_sub_u32(firstLeadingBit(u_input.d.x), 4294967295u) % 32u)));
    let var_4 = u_input.d.x;
    var_3 = vec3<u32>(~4294967295u, abs(~var_1), 53738u);
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-192f - -994f) - _wgslsmith_f_op_f32(922f - 1015f))) + 1f));
    var_3 = _wgslsmith_add_vec3_u32(u_input.d & u_input.d, firstTrailingBit(u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(30258i << (var_3.x % 32u), -38296i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5, -1029f, var_5)) + vec3<f32>(var_5, -457f, -504f)))), abs(vec3<u32>(var_1, u_input.d.x, ~var_4)), u_input.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(328f, var_5, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2025f)))));
}

