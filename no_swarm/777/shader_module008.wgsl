struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 26>;

var<private> global1: array<i32, 8> = array<i32, 8>(-447i, 50278i, -17935i, 1i, 53319i, 25134i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> vec2<f32> {
    return global0[_wgslsmith_index_u32(1u >> (_wgslsmith_dot_vec3_u32(~select(~vec3<u32>(1u, 17152u, 0u), vec3<u32>(4294967295u, 1u, 4294967295u), all(vec3<bool>(false, false, true))), firstLeadingBit(abs(firstTrailingBit(vec3<u32>(100410u, 57312u, 4294967295u))))) % 32u), 26u)];
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(func_2()), _wgslsmith_mod_i32(~4943i, -(_wgslsmith_mult_i32(1i, arg_0.b) ^ countOneBits(-1i))));
    global1 = array<i32, 8>();
    return 4294967295u;
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec4<bool> {
    global1 = array<i32, 8>();
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.b.d), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_0.b.d)), _wgslsmith_f_op_f32(-412f * -340f))))), _wgslsmith_clamp_i32(-1i, abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a, u_input.a), -1i)), arg_0.b.a.x));
    var var_1 = arg_0.b;
    let var_2 = var_0.a.x;
    let var_3 = (~(~arg_0.a.a.yy) | _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_0.b, global1[_wgslsmith_index_u32(0u, 8u)]), _wgslsmith_mod_i32(5510i, arg_0.b.a.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), arg_0.b.a.zx), arg_0.b.a.xw)) >> ((vec2<u32>(1u, 1u) | _wgslsmith_div_vec2_u32(select(vec2<u32>(57043u, 37533u), vec2<u32>(1u, 70531u), true) >> (~vec2<u32>(4294967295u, 47347u) % vec2<u32>(32u)), ~vec2<u32>(0u, 46940u))) % vec2<u32>(32u));
    return vec4<bool>(!arg_1, !(!arg_0.b.e.x) || select(true, !var_1.e.x, any(vec3<bool>(var_1.e.x, arg_0.b.c, var_1.c))), var_1.b.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 8>();
    global0 = array<vec2<f32>, 26>();
    global0 = array<vec2<f32>, 26>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(870f * -303f), -716f, true)))));
    global1 = array<i32, 8>();
    let var_1 = vec2<i32>(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_div_u32(1u, func_1(Struct_3(global0[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(4294967295u, 8u)]), vec4<u32>(0u, 1u, 0u, 0u), vec2<u32>(1u, 1u), vec3<f32>(var_0, 1097f, var_0))), _wgslsmith_add_u32(~4294967295u, 0u)), 8u)], _wgslsmith_div_i32(abs(-1i), u_input.a));
    let var_2 = !select(!func_3(Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 8u)], 2147483647i, 1i, var_1.x), vec4<bool>(true, true, false, true), false, -282f, vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(-1i, 34284i, u_input.a, -3583i), vec4<bool>(false, true, false, false), false, var_0, vec4<bool>(true, false, true, false)), true), true), func_3(Struct_2(Struct_1(vec4<i32>(global1[_wgslsmith_index_u32(17513u, 8u)], global1[_wgslsmith_index_u32(89469u, 8u)], 2147483647i, -33003i), vec4<bool>(false, false, true, false), true, var_0, vec4<bool>(true, true, false, true)), Struct_1(vec4<i32>(var_1.x, 24309i, 2147483647i, -2147483647i), vec4<bool>(true, false, true, false), true, -403f, vec4<bool>(true, true, false, true)), var_0 == var_0), false), vec4<bool>(true, select(1i != global1[_wgslsmith_index_u32(0u, 8u)], true, true), func_3(Struct_2(Struct_1(vec4<i32>(var_1.x, u_input.a, u_input.a, u_input.a), vec4<bool>(false, false, true, false), false, var_0, vec4<bool>(true, false, false, true)), Struct_1(vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(4294967295u, 8u)], 12103i), vec4<bool>(false, false, true, true), false, var_0, vec4<bool>(true, true, true, false)), false), select(false, true, false)).x, false));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(31241u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_vec2_f32(func_2()).x, _wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(505f - 679f), _wgslsmith_f_op_f32(round(var_0))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 258f, var_0, var_0), vec4<f32>(284f, -796f, var_0, -470f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(1152f, var_0, var_0, var_0), vec4<f32>(971f, var_0, -908f, var_0)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, var_0, 1309f)) * vec4<f32>(var_0, var_0, 1043f, var_0)))));
}

