struct Struct_1 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: f32,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 7>;

var<private> global1: array<u32, 21> = array<u32, 21>(0u, 1u, 0u, 7843u, 1u, 0u, 1u, 21110u, 4294967295u, 13637u, 26708u, 4294967295u, 1u, 1u, 17637u, 4294967295u, 1u, 8704u, 1u, 4294967295u, 19341u);

var<private> global2: f32 = -1210f;

var<private> global3: bool = true;

var<private> global4: array<u32, 25> = array<u32, 25>(49942u, 22870u, 22440u, 0u, 36272u, 16680u, 0u, 21195u, 0u, 0u, 4294967295u, 6529u, 31566u, 30072u, 112161u, 0u, 0u, 39441u, 67109u, 0u, 4294967295u, 4087u, 0u, 4294967295u, 69578u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> vec3<bool> {
    global4 = array<u32, 25>();
    global4 = array<u32, 25>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x));
    var_0 = arg_1.x;
    var_0 = -1001f;
    return vec3<bool>(false, countOneBits(arg_0.x) == _wgslsmith_add_i32(reverseBits(_wgslsmith_mod_i32(arg_0.x, arg_0.x)), 21012i), false);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    global2 = 589f;
    let var_0 = arg_2;
    var var_1 = global4[_wgslsmith_index_u32(81805u, 25u)];
    let var_2 = arg_1;
    global3 = any(func_3(_wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, -1i, -10748i, 9590i), firstLeadingBit(vec4<i32>(-2147483647i, arg_1.d.d, arg_2.d, arg_1.c.x) >> (u_input.a % vec4<u32>(32u))), vec4<i32>(arg_2.d, firstLeadingBit(arg_1.c.x), var_2.c.x, _wgslsmith_sub_i32(2147483647i, arg_1.d.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, arg_2.b.x), vec2<f32>(-1047f, -1000f), vec2<bool>(var_2.d.a.x, arg_0.x)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.d.c))), _wgslsmith_f_op_f32(arg_1.d.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(144f)) * _wgslsmith_f_op_f32(ceil(arg_2.e.x))))));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2) -> u32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(!vec3<bool>(arg_1.d.a.x, arg_1.d.a.x, arg_1.b), Struct_2(1u, false, arg_1.c, Struct_1(vec4<bool>(arg_1.b, false, false, arg_1.d.a.x), vec2<f32>(-1292f, 693f), 427f, arg_1.d.d, arg_1.d.b)), arg_1.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-760f + arg_1.d.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -222f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.c)));
    return ~arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~((_wgslsmith_div_u32(max(1u, global1[_wgslsmith_index_u32(11955u, 21u)]), 10215u) ^ _wgslsmith_sub_u32(u_input.a.x, func_1(vec2<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 33381u), Struct_2(u_input.a.x, true, vec3<i32>(31150i, -21660i, -2147483647i), Struct_1(vec4<bool>(false, true, false, true), vec2<f32>(-420f, -1265f), 1688f, 2147483647i, vec2<f32>(856f, -586f)))))) & u_input.d);
    global0 = array<vec2<u32>, 7>();
    var var_1 = -1i;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1705f);
    let x = u_input.a;
    s_output = StorageBuffer(-11575i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -1259f) * -128f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1200f, 101f), vec2<f32>(657f, -1582f))))));
}

