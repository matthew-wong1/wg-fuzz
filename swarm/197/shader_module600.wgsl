struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    global0 = array<Struct_1, 13>();
    let var_0 = select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(select(false, true, true), true, false, true), vec4<bool>(true, false, select(false, false, false), true), vec4<bool>(select(false, false, true), true, true, false)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), vec4<bool>(true, true, false, select(false, false, false)), vec4<bool>(true, true, true, true))), !select(vec4<bool>(arg_0.x != arg_0.x, true, true, any(vec4<bool>(true, false, false, true))), vec4<bool>(true, true, false, false), true), vec4<bool>(select(select(true, true, false), true, false), !all(vec4<bool>(true, false, true, false)), false, true));
    return Struct_2(!var_0.zxz);
}

fn func_3(arg_0: u32, arg_1: f32) -> vec2<i32> {
    let var_0 = Struct_3(Struct_2(vec3<bool>(true, true, true)), Struct_2(vec3<bool>(true != any(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_f32(step(arg_1, -899f)) != arg_1, true)), arg_0);
    var var_1 = firstTrailingBit(-7973i);
    let var_2 = var_0.c;
    var var_3 = var_0.a.a.zy;
    let var_4 = !vec4<bool>(true, any(!select(vec2<bool>(var_0.b.a.x, var_3.x), vec2<bool>(true, false), true)), var_3.x, _wgslsmith_div_i32(40771i << (var_2 % 32u), ~(-6153i)) > (0i ^ _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -2099i, 26372i, -1891i), vec4<i32>(12470i, -2147483647i, 1i, -1i))));
    return firstTrailingBit(vec2<i32>(-22864i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 14255i), min(vec3<i32>(10174i, 0i, -2147483647i), vec3<i32>(-1i, -18746i, 27120i)))) ^ max(reverseBits(vec2<i32>(-7285i, -38494i)), vec2<i32>(max(0i, 1i), -31547i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    global0 = array<Struct_1, 13>();
    let var_0 = firstLeadingBit(~_wgslsmith_mult_i32(abs(60238i), select(-7474i, 1i, false)));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-255f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1000f, 2441f)))), -1938f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(239f, _wgslsmith_f_op_f32(trunc(-190f))))), select(vec2<bool>(false, all(vec3<bool>(false, false, false))), vec2<bool>(true, true), var_0 >= var_0)));
    let var_2 = Struct_5(Struct_3(func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1299f, 418f, -1214f)) - vec3<f32>(var_1.x, -1000f, 494f))), Struct_2(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), u_input.c > arg_0.x)), arg_0.x), func_3(4294967295u, -260f), vec2<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x)))))), vec3<i32>(min(i32(-1i) * -9490i, var_0), ~var_0, -var_0));
    global0 = array<Struct_1, 13>();
    return global0[_wgslsmith_index_u32(arg_1.a.x, 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(firstLeadingBit(max(firstTrailingBit(42515i), select(-2147483647i << (u_input.c % 32u), reverseBits(-49112i), true))));
    global0 = array<Struct_1, 13>();
    let var_1 = func_1(vec2<u32>(u_input.c, 0u), global0[_wgslsmith_index_u32(u_input.c, 13u)], u_input.b.x);
    let var_2 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, _wgslsmith_f_op_f32(floor(-160f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-210f + 1214f) * _wgslsmith_div_f32(-599f, -1235f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1520f, 192f)), _wgslsmith_f_op_f32(-767f - -123f), _wgslsmith_f_op_f32(abs(1623f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, -421f, 1020f))))));
    global0 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~min(1u, u_input.b.x), 10920u, u_input.a), _wgslsmith_mod_u32(1u, select(1u, ~37024u, !all(var_2.a.xx))), vec3<u32>(4739u, 0u, _wgslsmith_sub_u32(max(15665u, reverseBits(1u)), _wgslsmith_dot_vec2_u32(u_input.b.yw, ~var_1.a))), vec2<u32>(select(var_1.a.x, _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1087u, 47789u, var_1.a.x), vec3<u32>(var_1.a.x, 33132u, u_input.b.x)), var_1.a.x), true), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~u_input.b.yyx, vec3<u32>(u_input.c, var_1.a.x, var_1.a.x)), select(_wgslsmith_div_u32(u_input.a, 1u), _wgslsmith_mult_u32(u_input.b.x, 754u), true))));
}

