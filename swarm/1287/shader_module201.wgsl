struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 46808u;

var<private> global1: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<f32>, arg_1: bool, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_3(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_3.c, arg_3.a, 0i) >> (vec4<u32>(10200u, 20691u, 4294967295u, 1u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(-1199i, u_input.a, u_input.a, 25082i)))), arg_3);
    let var_1 = Struct_2(countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(16693u, 1u), ~vec2<u32>(11058u, 26931u)) << (11672u % 32u)));
    let var_2 = arg_3;
    var var_3 = Struct_3(vec4<i32>(_wgslsmith_sub_i32(~reverseBits(var_0.a.x), var_0.a.x >> (countOneBits(var_1.a) % 32u)), i32(-1i) * -2147483647i, var_2.a, max(40350i, (u_input.a >> (1u % 32u)) & -u_input.a)), var_2);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -640f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -262f), arg_0.x, all(!vec3<bool>(true, false, arg_1)))) + arg_0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(492f + arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + -346f), any(vec3<bool>(arg_2, true, arg_1)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), arg_0.x))));
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1781f, 884f), _wgslsmith_f_op_f32(abs(-659f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<f32>(-1000f, 992f, -893f, 619f), false, true, Struct_1(0i, vec4<bool>(false, true, true, true), -28813i))))))));
    var var_1 = Struct_3(_wgslsmith_mod_vec4_i32(firstLeadingBit(~vec4<i32>(-2147483647i, u_input.a, 1i, 31134i)) | -vec4<i32>(-2147483647i, -51015i, 56534i, -34949i), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, ~u_input.a, 56863i, _wgslsmith_div_i32(u_input.a, u_input.a)), min(vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), vec4<i32>(u_input.a, 40632i, u_input.a, -1i)))), Struct_1(~16739i & (~u_input.a >> (_wgslsmith_dot_vec2_u32(vec2<u32>(15448u, 0u), vec2<u32>(78132u, 0u)) % 32u)), vec4<bool>(true, true, true, true), _wgslsmith_mult_i32(_wgslsmith_mult_i32(36489i, ~u_input.a), -50108i)));
    let var_2 = var_1.b;
    var var_3 = ~_wgslsmith_div_u32(countOneBits(_wgslsmith_mult_u32(9992u, 1u)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 0u, 1u), 1u)) & 4294967295u;
    var_3 = ~(_wgslsmith_add_u32(10382u, 0u) | ~(~select(0u, 1u, var_2.b.x)));
    return Struct_2(1u);
}

fn func_1(arg_0: u32) -> vec3<u32> {
    let var_0 = max(~vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -1i, -80358i), u_input.a), abs(firstLeadingBit(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, -6032i), vec2<i32>(u_input.a, u_input.a)))));
    let var_1 = _wgslsmith_div_f32(198f, -1070f);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)))))));
    var var_2 = func_2();
    var_2 = Struct_2(109458u);
    return ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(_wgslsmith_sub_u32(18734u, 0u), arg_0, var_2.a & 1u), vec3<u32>(6787u, (var_2.a & 4294967295u) >> (_wgslsmith_mod_u32(arg_0, 13202u) % 32u), 28568u), vec3<u32>(1u, _wgslsmith_mult_u32(arg_0, var_2.a), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~60777u;
    var var_1 = vec4<bool>(true, !select(true, true, (u_input.a >> (1u % 32u)) <= 1i), !(true & select(false, false, true)) & true, !(!(0u < _wgslsmith_div_u32(4294967295u, var_0))));
    var var_2 = 1i;
    let var_3 = ~(~func_1(~var_0) ^ vec3<u32>(1u, 1u, 1u));
    var var_4 = all(vec2<bool>((~var_3.x >> (firstLeadingBit(4200u) % 32u)) == var_0, var_1.x));
    let var_5 = func_2();
    var_2 = -2147483647i;
    var_4 = u_input.a > u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_add_vec2_i32(max(vec2<i32>(u_input.a, 2147483647i), min(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(70951i, -791i))), select(vec2<i32>(u_input.a, 19698i), ~vec2<i32>(-1i, u_input.a), select(var_1.yy, vec2<bool>(true, true), vec2<bool>(false, false))))), var_3.xx, -850f, -_wgslsmith_mult_vec3_i32(-vec3<i32>(0i, 67842i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(u_input.a, 0i, u_input.a))) >> (var_3 % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1214f, -1540f, -568f, -1256f))))));
}

