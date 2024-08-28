struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<bool>) -> i32 {
    var var_0 = _wgslsmith_add_vec3_i32(arg_1.d.xxz, countOneBits(_wgslsmith_add_vec3_i32(select(arg_1.d.xzy, vec3<i32>(-35091i, 27630i, u_input.b.x), vec3<bool>(arg_1.b, true, false)), _wgslsmith_mult_vec3_i32(arg_1.d.zzy, arg_1.d.wxz))) & -arg_1.d.xyz);
    let var_1 = arg_2.x;
    let var_2 = !select(!arg_2.xy, !vec2<bool>(any(arg_2.zz), !arg_1.b), true);
    let var_3 = global1[_wgslsmith_index_u32(u_input.a.x, 20u)];
    global1 = array<Struct_1, 20>();
    return abs(_wgslsmith_mod_i32(~firstLeadingBit(reverseBits(var_3.d.x)), 1i));
}

fn func_2() -> u32 {
    global1 = array<Struct_1, 20>();
    var var_0 = -u_input.b;
    let var_1 = Struct_1(962f, true, 0i, max(vec4<i32>(~var_0.x << (u_input.a.x % 32u), i32(-1i) * -7534i, _wgslsmith_div_i32(4556i, u_input.b.x) | var_0.x, func_3(firstLeadingBit(global0.x), Struct_1(1425f, true, var_0.x, vec4<i32>(37358i, -25885i, 2147483647i, u_input.b.x), 1u), vec3<bool>(true, true, true))), ((vec4<i32>(0i, 38897i, 0i, var_0.x) ^ vec4<i32>(-38260i, 8905i, var_0.x, u_input.b.x)) >> (u_input.a % vec4<u32>(32u))) >> (~u_input.a % vec4<u32>(32u))), u_input.a.x);
    global1 = array<Struct_1, 20>();
    var var_2 = u_input.a.x;
    return u_input.a.x;
}

fn func_1(arg_0: vec3<f32>) -> i32 {
    let var_0 = Struct_1(1772f, true, 14292i, vec4<i32>(~_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, u_input.b.x, u_input.b.x, -25500i), vec4<i32>(u_input.b.x, -36540i, u_input.b.x, u_input.b.x)), _wgslsmith_mod_i32(reverseBits(-2147483647i), ~u_input.b.x), 0i, ~(global0.x << (~u_input.a.x % 32u))), u_input.a.x);
    global1 = array<Struct_1, 20>();
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(u_input.b.x, -49652i >> (_wgslsmith_div_u32(func_2(), 4294967295u) % 32u)), 19475i, ~1i, countOneBits(-8103i ^ global0.x));
    let var_2 = var_0;
    var var_3 = Struct_1(var_2.a, abs(max(var_2.c, u_input.b.x)) != u_input.b.x, global0.x ^ _wgslsmith_sub_i32(var_0.c, -(u_input.b.x ^ var_2.c)), ~var_2.d, var_0.e);
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(268f, 918f)), _wgslsmith_f_op_f32(min(264f, -1611f))) * vec2<f32>(231f, _wgslsmith_f_op_f32(sign(-973f)))))));
    let var_2 = !(!select(select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(true, true)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))));
    var var_3 = -857f;
    let var_4 = !any(!select(select(vec4<bool>(true, var_2.x, true, var_2.x), vec4<bool>(true, false, false, var_2.x), vec4<bool>(false, var_2.x, var_2.x, true)), select(vec4<bool>(true, false, false, var_2.x), vec4<bool>(var_2.x, true, false, var_2.x), vec4<bool>(true, var_2.x, true, var_2.x)), vec4<bool>(true, var_2.x, false, false)));
    let var_5 = select(var_2, vec2<bool>(var_2.x & false, true), vec2<bool>(var_2.x, !var_2.x));
    let var_6 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(875f, 176f, var_1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-503f, var_1.x, var_1.x)) - vec3<f32>(1057f, _wgslsmith_f_op_f32(-606f + var_1.x), _wgslsmith_f_op_f32(var_1.x + -1052f))), abs(42075u) >= ~_wgslsmith_mod_u32(u_input.a.x, 0u))), vec3<f32>(_wgslsmith_div_f32(var_1.x, 188f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -773f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.x + var_1.x))))), select(!select(vec3<bool>(false, var_5.x, var_2.x), vec3<bool>(var_2.x, false, var_5.x), select(vec3<bool>(true, var_4, var_5.x), vec3<bool>(var_5.x, var_5.x, true), true)), select(!select(vec3<bool>(var_5.x, true, true), vec3<bool>(true, true, var_5.x), vec3<bool>(false, false, var_2.x)), vec3<bool>(var_2.x, var_2.x, all(vec4<bool>(var_4, var_5.x, var_5.x, var_5.x))), vec3<bool>(var_2.x, !var_2.x, true)), !(!(!vec3<bool>(false, var_4, true))))));
    var var_7 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.x, 2769f, var_6.x, -1151f)))), vec4<f32>(var_6.x, -1000f, var_6.x, _wgslsmith_f_op_f32(1414f + var_6.x))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.x, var_1.x, 1899f, var_6.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_6.x, var_6.x, var_6.x, 1464f) + vec4<f32>(var_6.x, -994f, -688f, var_1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-867f, 1103f, var_6.x, var_6.x) - vec4<f32>(var_1.x, var_6.x, var_1.x, var_6.x))) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(643f, var_6.x, var_1.x, -1253f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-562f, 713f, var_6.x, -471f))))))));
    let var_8 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1541f * _wgslsmith_f_op_f32(step(737f, -212f))), _wgslsmith_f_op_f32(f32(-1f) * -365f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-2608f, -2051f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), false != var_4)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1485f, var_7.x)))))), _wgslsmith_f_op_vec3_f32(-var_7.wwy), _wgslsmith_f_op_f32(var_7.x * _wgslsmith_f_op_f32(-var_7.x)));
}

