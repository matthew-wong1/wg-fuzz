struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
    c: u32,
    d: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 6>;

var<private> global1: array<Struct_2, 17>;

var<private> global2: array<vec4<i32>, 17> = array<vec4<i32>, 17>(vec4<i32>(78799i, -1i, 50413i, -1i), vec4<i32>(0i, 32317i, i32(-2147483648), -1i), vec4<i32>(2147483647i, 0i, 64783i, -1i), vec4<i32>(19384i, i32(-2147483648), 2147483647i, -49340i), vec4<i32>(-27576i, 1439i, 15321i, 0i), vec4<i32>(2147483647i, 23768i, 0i, 2147483647i), vec4<i32>(47211i, 1i, 24168i, 3363i), vec4<i32>(-1i, -1i, -1i, 0i), vec4<i32>(10400i, i32(-2147483648), 15449i, 0i), vec4<i32>(-9588i, 31213i, -25478i, 7752i), vec4<i32>(2147483647i, 1i, -1i, i32(-2147483648)), vec4<i32>(59501i, 1i, 2147483647i, -13470i), vec4<i32>(-38766i, -19360i, 21390i, 36622i), vec4<i32>(-1i, 0i, i32(-2147483648), 1i), vec4<i32>(2147483647i, i32(-2147483648), 39883i, 0i), vec4<i32>(i32(-2147483648), 2147483647i, 12936i, -10747i), vec4<i32>(1i, 1i, -1i, 24339i));

var<private> global3: array<Struct_4, 17>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2) -> Struct_1 {
    return Struct_1(!select(!select(arg_1.a.a, vec4<bool>(arg_1.a.a.x, false, true, arg_1.a.a.x), arg_1.a.a), arg_1.a.a, vec4<bool>(!arg_1.a.a.x, arg_1.a.a.x, true, true)), i32(-1i) * -4963i);
}

fn func_1(arg_0: u32) -> u32 {
    global3 = array<Struct_4, 17>();
    let var_0 = Struct_2(func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1407f, -1387f)))), global1[_wgslsmith_index_u32(44184u, 17u)]));
    let var_1 = reverseBits(vec3<i32>(-19186i, var_0.a.b, reverseBits(_wgslsmith_mult_i32(~1i, reverseBits(global0[_wgslsmith_index_u32(u_input.a.x, 6u)])))));
    var var_2 = arg_0;
    global2 = array<vec4<i32>, 17>();
    return reverseBits(~(~(~arg_0) << (~(u_input.a.x & 77014u) % 32u)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    var var_0 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-108f))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(110f)), _wgslsmith_f_op_f32(step(-533f, -686f))))) >= _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-192f))))));
    var var_1 = _wgslsmith_f_op_f32(1410f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1235f)) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1205f + -393f))))) < _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1033f * 1130f))));
    let var_2 = -55566i;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-175f + _wgslsmith_f_op_f32(round(-288f))) - 1004f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1788f, 606f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1354f * 240f), _wgslsmith_div_f32(1959f, 480f))), arg_0.x))));
    var_0 = true;
    return 59024u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = !(!(false & any(vec2<bool>(false, false))));
    var var_2 = ~_wgslsmith_add_u32(max(func_1(~10442u), func_3(!vec4<bool>(true, var_1, var_1, true), func_2(vec2<f32>(-1000f, 1000f), Struct_2(Struct_1(vec4<bool>(var_1, var_1, var_1, false), 8977i))))), ~(~1u));
    global2 = array<vec4<i32>, 17>();
    let var_3 = global1[_wgslsmith_index_u32(countOneBits(~(~(countOneBits(2275u) & ~u_input.a.x))), 17u)];
    global1 = array<Struct_2, 17>();
    global3 = array<Struct_4, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(countOneBits(0u << (u_input.a.x % 32u)), ~u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(829f, -162f)))) + vec2<f32>(_wgslsmith_f_op_f32(select(564f, _wgslsmith_f_op_f32(391f + 380f), !var_1)), _wgslsmith_f_op_f32(floor(480f)))), -524f, _wgslsmith_f_op_f32(floor(-380f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, -1000f)))));
}

