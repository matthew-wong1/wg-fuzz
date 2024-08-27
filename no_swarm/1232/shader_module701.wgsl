struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_3,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<i32>(0i, 2147483647i), Struct_1(1i, 597f, vec4<bool>(false, false, false, true)));

var<private> global1: array<vec2<u32>, 26>;

var<private> global2: Struct_4;

var<private> global3: array<Struct_3, 15> = array<Struct_3, 15>(Struct_3(vec3<u32>(10521u, 15545u, 35124u), vec2<f32>(374f, 2040f), 687f), Struct_3(vec3<u32>(1u, 1u, 86619u), vec2<f32>(-291f, -535f), -1041f), Struct_3(vec3<u32>(50295u, 97297u, 1u), vec2<f32>(496f, -941f), 1022f), Struct_3(vec3<u32>(19178u, 1u, 25141u), vec2<f32>(601f, 872f), -503f), Struct_3(vec3<u32>(4294967295u, 26236u, 1u), vec2<f32>(-946f, -1000f), 1574f), Struct_3(vec3<u32>(4294967295u, 0u, 49285u), vec2<f32>(776f, 571f), 924f), Struct_3(vec3<u32>(1u, 51215u, 0u), vec2<f32>(105f, 1000f), -1534f), Struct_3(vec3<u32>(50174u, 0u, 0u), vec2<f32>(-1621f, 1000f), 469f), Struct_3(vec3<u32>(70226u, 59471u, 1u), vec2<f32>(-869f, 300f), 911f), Struct_3(vec3<u32>(86943u, 0u, 30350u), vec2<f32>(-1183f, 1562f), 276f), Struct_3(vec3<u32>(58393u, 70203u, 41827u), vec2<f32>(657f, -932f), -1362f), Struct_3(vec3<u32>(1u, 10644u, 5147u), vec2<f32>(-330f, -154f), -501f), Struct_3(vec3<u32>(111785u, 12693u, 39129u), vec2<f32>(-313f, 273f), 1000f), Struct_3(vec3<u32>(6069u, 1u, 23201u), vec2<f32>(352f, -1045f), 108f), Struct_3(vec3<u32>(105u, 0u, 9040u), vec2<f32>(779f, -200f), -2061f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global1 = array<vec2<u32>, 26>();
    let var_0 = !(505f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.b.b))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.b - 1790f), _wgslsmith_f_op_f32(-global0.b.b))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(-373f)), global0.b.b, _wgslsmith_f_op_f32(global0.b.b + -910f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1912f)))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-630f, -456f))), -1000f, -331f, global0.b.b));
    global0 = Struct_2(select(vec2<i32>(-2147483647i, ~arg_0.x), ~global2.b.yy, vec2<bool>(true, true)), Struct_1(12628i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_1.x, -1312f)), _wgslsmith_f_op_f32(var_1.x + 200f))), global0.b.c));
    let var_2 = Struct_4(any(!select(global0.b.c.wxx, global0.b.c.xxw, global0.b.c.xyw)), min(global2.b, arg_0));
    return var_1.x;
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = select(true, true, all(!(!global0.b.c.xww)));
    var var_1 = Struct_1(reverseBits((-34185i | global2.b.x) << (_wgslsmith_div_u32(116115u, abs(u_input.a.x)) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(1958f * global0.b.b)))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b.b), arg_0, all(global0.b.c.wzw)))), !select(vec4<bool>(false, global0.b.c.x & false, global0.b.c.x, global0.b.c.x), select(vec4<bool>(global0.b.c.x, false, global0.b.c.x, true), global0.b.c, all(vec2<bool>(global0.b.c.x, false))), vec4<bool>(global0.b.c.x, global2.a, any(global0.b.c.xxz), global2.a)));
    global2 = Struct_4(var_1.c.x, vec3<i32>(~(-4835i), firstTrailingBit(~_wgslsmith_dot_vec3_i32(global2.b, u_input.d.yzz)), 25751i & var_1.a));
    global1 = array<vec2<u32>, 26>();
    let var_2 = arg_0;
    return 1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec2<u32>) -> vec3<i32> {
    let var_0 = global0.b.c.xyz;
    var var_1 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(63979u, arg_1.a.x), arg_2), arg_2.x) & ~(~arg_1.a.x);
    var var_2 = -_wgslsmith_div_vec2_i32(vec2<i32>(func_3(arg_0.x), abs(_wgslsmith_dot_vec2_i32(global0.a, vec2<i32>(u_input.e, u_input.b)))), -u_input.d.wx);
    let var_3 = Struct_2(vec2<i32>(-8744i, global2.b.x ^ (global2.b.x << (firstTrailingBit(u_input.c.x) % 32u))), Struct_1(-global2.b.x << ((~arg_2.x & arg_1.a.x) % 32u), arg_1.c, !select(!vec4<bool>(false, global0.b.c.x, false, global2.a), vec4<bool>(global0.b.c.x, false, global2.a, var_0.x), select(false, global2.a, global0.b.c.x))));
    let var_4 = global0.b;
    return reverseBits(firstTrailingBit(vec3<i32>(abs(var_4.a), _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.a, 0i, var_2.x), vec3<i32>(0i, u_input.e, -2147483647i)), firstLeadingBit(_wgslsmith_mult_i32(var_2.x, -30160i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(0i << (reverseBits(max(~u_input.a.x, u_input.a.x)) % 32u), func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.b.b * -669f), _wgslsmith_f_op_f32(func_1(vec3<i32>(global0.b.a, -22767i, u_input.e))), _wgslsmith_f_op_f32(floor(global0.b.b)))), global3[_wgslsmith_index_u32(abs(~(u_input.c.x & 4294967295u)), 15u)], vec2<u32>(_wgslsmith_sub_u32(36579u, _wgslsmith_add_u32(0u, u_input.a.x)), countOneBits(~u_input.a.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(global0.b.b + 176f), _wgslsmith_f_op_f32(1288f * 286f), _wgslsmith_f_op_f32(921f + global0.b.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1739f, 224f, global0.b.b)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(578f, global0.b.b, global0.b.b)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(1000f, global0.b.b), global0.b.b, -112f) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(801f, -322f, -1266f)))))));
}

