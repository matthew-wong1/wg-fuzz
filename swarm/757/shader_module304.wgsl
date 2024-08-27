struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: Struct_1,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = _wgslsmith_div_u32(~firstTrailingBit(~arg_0.x), 1u);
    global0 = vec2<i32>(-1036i, firstTrailingBit(~(-12057i)));
    global0 = vec2<i32>(-1i) * -(vec2<i32>(select(global0.x, global0.x, true), ~global0.x) & -vec2<i32>(16128i, global0.x));
    global0 = -(reverseBits(u_input.c.wx) << (vec2<u32>(~arg_0.x, 0u) % vec2<u32>(32u)));
    var var_1 = Struct_4(any(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)) & select(u_input.c.x >= -1336i, _wgslsmith_f_op_f32(875f * -882f) < _wgslsmith_f_op_f32(round(-1338f)), true), _wgslsmith_mod_u32(49332u << (u_input.b.x % 32u), var_0), Struct_1(global0.x, u_input.b), _wgslsmith_add_i32(u_input.c.x, global0.x), ~vec2<i32>(2147483647i, 1i));
    return ~(-vec2<i32>(~u_input.c.x, u_input.c.x));
}

fn func_1() -> f32 {
    global0 = u_input.c.zz;
    let var_0 = true;
    let var_1 = ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_clamp_u32(61383u, ~(~u_input.d), ~min(u_input.b.x, u_input.b.x)));
    let var_2 = 2147483647i;
    global0 = countOneBits(func_2(_wgslsmith_sub_vec2_u32(vec2<u32>(~1u, abs(4294967295u)), vec2<u32>(52893u, 86710u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(264f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec2<i32>(_wgslsmith_div_i32(u_input.c.x, -1i), ~(~(-_wgslsmith_dot_vec2_i32(u_input.c.yz, u_input.c.yx))));
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(true, any(vec4<bool>(all(vec4<bool>(false, true, true, true)), true, select(false, false, true), true))), (true || all(vec4<bool>(true, true, true, true))) & !select(any(vec4<bool>(false, false, true, false)), true, true));
    let var_1 = _wgslsmith_sub_i32(23130i, ~countOneBits(_wgslsmith_div_i32(2147483647i ^ u_input.c.x, _wgslsmith_sub_i32(global0.x, -2147483647i))));
    var_0 = !select(vec2<bool>(all(vec2<bool>(true, var_0.x)), true), !(!select(vec2<bool>(var_0.x, true), vec2<bool>(true, false), vec2<bool>(true, var_0.x))), true);
    let var_2 = vec4<bool>(false, all(vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -984f) <= _wgslsmith_f_op_f32(func_1()), true, true)), var_0.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, _wgslsmith_sub_i32(-8543i, -12248i), u_input.a.x, max(u_input.a, firstLeadingBit(~u_input.b.yz)) >> (vec2<u32>(_wgslsmith_add_u32(24875u, min(1u, 1u)), u_input.b.x) % vec2<u32>(32u)));
}

