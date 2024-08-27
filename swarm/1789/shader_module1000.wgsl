struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: array<Struct_1, 1>;

var<private> global2: u32 = 19087u;

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec2<f32> {
    let var_0 = any(vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.b.a.zx)));
    let var_2 = u_input.c;
    var var_3 = abs(vec2<u32>(arg_0.x, ~select(global3.c.x, arg_0.x, true) ^ countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, arg_0.x, 1u), vec3<u32>(41620u, global3.c.x, 0u)))));
    var_1 = arg_1.b.a.xx;
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a.x * -346f))), -585f));
}

fn func_2(arg_0: bool) -> u32 {
    global3 = Struct_2(global1[_wgslsmith_index_u32(1u, 1u)], Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1250f, 1478f, -744f) * vec3<f32>(global3.a.a.x, 1000f, global3.a.b.x))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], -692f, 258f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(global3.c.x, 31u)], -214f, -1000f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_3(vec3<u32>(4294967295u, global3.c.x, global3.c.x), Struct_2(global3.b, Struct_1(vec3<f32>(-311f, global0[_wgslsmith_index_u32(u_input.c, 31u)], global3.b.c), vec2<f32>(-753f, global3.b.b.x), global3.b.b.x), vec2<u32>(4294967295u, global3.c.x)), vec4<i32>(-51071i, -27943i, u_input.a.x, u_input.b.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -262f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(46902u, 31u)] * global0[_wgslsmith_index_u32(5615u, 31u)]) * _wgslsmith_f_op_f32(f32(-1f) * -711f))))), global3.c);
    let var_0 = global3.b;
    global2 = global3.c.x;
    var var_1 = Struct_2(global1[_wgslsmith_index_u32(95550u, 1u)], Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(var_0.a, vec3<f32>(-873f, -871f, global3.b.c)))) + global3.b.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(134f, global3.b.b.x)) + _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(0u, 31u)]))), -176f), _wgslsmith_f_op_f32(ceil(global3.b.b.x))), ~_wgslsmith_mod_vec2_u32(~global3.c, countOneBits(global3.c | vec2<u32>(0u, global3.c.x))));
    global0 = array<f32, 31>();
    return global3.c.x;
}

fn func_1() -> vec3<f32> {
    global2 = _wgslsmith_dot_vec4_u32(vec4<u32>(~(_wgslsmith_div_u32(global3.c.x, u_input.c) & 4294967295u), u_input.c, _wgslsmith_div_u32(1583u, 1u), func_2(true)), vec4<u32>(~0u, ~(60247u | global3.c.x), global3.c.x, min(18633u, min(~72600u, 47656u))));
    let var_0 = Struct_2(global1[_wgslsmith_index_u32(global3.c.x, 1u)], Struct_1(_wgslsmith_f_op_vec3_f32(round(global3.a.a)), _wgslsmith_f_op_vec2_f32(global3.b.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.b.a.zy * global3.a.a.xx) + _wgslsmith_div_vec2_f32(global3.a.a.xy, vec2<f32>(-955f, -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-666f, global3.b.c)) * _wgslsmith_f_op_f32(floor(372f)))))), _wgslsmith_mod_vec2_u32(~global3.c, firstLeadingBit(vec2<u32>(31784u, _wgslsmith_div_u32(u_input.c, 41462u)))));
    let var_1 = -u_input.a.x;
    let var_2 = var_0;
    let var_3 = var_0.a.c;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(global3.b.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(global3.b.a)), global3.b.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 31>();
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global3.c, ~vec2<u32>(16218u, u_input.c)), 31u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1863f, global0[_wgslsmith_index_u32(u_input.c, 31u)]) - global3.b.a.yz), _wgslsmith_f_op_vec2_f32(-global3.a.b)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-149f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c, 31u)], global3.b.b.x) * 1130f))));
    var var_2 = _wgslsmith_f_op_vec3_f32(func_1());
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.x)) - -1410f);
    global0 = array<f32, 31>();
    global1 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(vec3<u32>(36857u, func_2(true), ~(~global3.c.x)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.c.x, 0u, global3.c.x), vec3<u32>(0u, 0u, 23632u) << (vec3<u32>(global3.c.x, global3.c.x, global3.c.x) % vec3<u32>(32u))))), u_input.b.zy, abs(global3.c));
}

