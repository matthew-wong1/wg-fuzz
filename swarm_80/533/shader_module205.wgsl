struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

var<private> global0: Struct_4;

var<private> global1: array<i32, 1> = array<i32, 1>(9797i);

var<private> global2: Struct_3;

var<private> global3: u32;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(0i, i32(-2147483648), -1568i), -712f, 3521u, vec4<i32>(-1i, -2218i, -1i, i32(-2147483648)), vec3<u32>(4294967295u, 40848u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global0.e.c.zy);
    let var_1 = _wgslsmith_f_op_vec3_f32(select(global2.c, global2.c, vec3<bool>(global0.a.x, 1310f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2007f)) + _wgslsmith_f_op_f32(-1124f * 1213f)), true)));
    let var_2 = true;
    let var_3 = global0.d;
    var var_4 = global0.a.x;
    return (abs(global4.d.x) | (global4.d.x >> ((_wgslsmith_dot_vec2_u32(global4.e.xy, global0.b.yz) >> ((u_input.b ^ global4.c) % 32u)) % 32u))) == firstTrailingBit(var_3.d.x);
}

fn func_2() -> u32 {
    global4 = global0.d;
    global2 = global0.e;
    let var_0 = !(!select(global0.a, global0.a, vec2<bool>(func_3(), true)));
    let var_1 = Struct_1(~(~firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, -7219i), vec3<i32>(16930i, -1i, -32682i)))), _wgslsmith_f_op_f32(1f * -1088f), min(reverseBits(~_wgslsmith_add_u32(global4.e.x, global0.b.x)), global4.c), vec4<i32>(~(-12155i), u_input.c.x, global0.d.d.x >> (0u % 32u), firstTrailingBit(11800i)) ^ firstTrailingBit(vec4<i32>(global2.a.x, ~(-22175i), -1i, _wgslsmith_clamp_i32(35766i, u_input.a, -7601i))), abs(global0.d.e));
    global0 = Struct_4(!(!vec2<bool>(global4.b < global2.c.x, select(global0.a.x, var_0.x, false))), vec4<u32>(u_input.d, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, 17122u, global4.c, var_1.e.x), vec4<u32>(0u, 118656u, global0.d.e.x, 32448u)), _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, global0.b.x), ~_wgslsmith_clamp_u32(global4.e.x, u_input.d, global0.d.e.x)), _wgslsmith_mult_u32(u_input.d >> (5789u % 32u), ~(~1u))), false, global0.d, global0.e);
    return u_input.d << (firstLeadingBit(_wgslsmith_add_u32(76991u, global4.e.x ^ _wgslsmith_div_u32(37372u, 25144u))) % 32u);
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = Struct_2(firstTrailingBit(global0.b.x >> (1u % 32u)), -19080i, arg_2);
    global1 = array<i32, 1>();
    var var_1 = 1u;
    var_1 = _wgslsmith_mult_u32(~_wgslsmith_mult_u32(global0.b.x, arg_2.e.x), _wgslsmith_sub_u32(var_0.c.c | 15587u, ~121280u) & func_2());
    let var_2 = Struct_3(vec3<i32>(global0.e.b, arg_0.x, ~max(~11834i, firstLeadingBit(2147483647i))), var_0.b, vec3<f32>(453f, -231f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4.b), arg_3.b), _wgslsmith_f_op_f32(-431f * _wgslsmith_f_op_f32(floor(-668f))))));
    return vec3<bool>(!all(!select(vec4<bool>(true, global0.a.x, false, global0.a.x), vec4<bool>(global0.a.x, false, true, false), global0.a.x)), !any(select(!vec4<bool>(true, false, global0.c, global0.c), !vec4<bool>(global0.a.x, global0.c, false, true), true)), min(var_0.c.a.x, min(global4.d.x, 0i)) <= (u_input.c.x | countOneBits(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(global0.a.x, !global0.a.x, _wgslsmith_dot_vec4_u32(~global0.b, ~vec4<u32>(global4.c, 1u, 58537u, 0u)) == ~0u);
    var var_1 = u_input.d ^ global0.d.e.x;
    let var_2 = any(!(!func_1(_wgslsmith_div_vec3_i32(u_input.c.zyx, vec3<i32>(global1[_wgslsmith_index_u32(1u, 1u)], u_input.c.x, -2147483647i)), global0.d.e.xx, global0.d, Struct_1(vec3<i32>(global4.a.x, global2.b, -6820i), -278f, 4294967295u, global4.d, global4.e))));
    global4 = global0.d;
    let var_3 = _wgslsmith_f_op_vec2_f32(global2.c.zz + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-global0.e.c.yz))));
    var var_4 = global2.c.x;
    let var_5 = global4.e.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(var_3.x)))), -812f, global4.b, var_3.x) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.b, global2.c.x, global2.c.x, global0.e.c.x))), vec4<f32>(global0.e.c.x, var_3.x, global4.b, global2.c.x)))), global2.b, _wgslsmith_div_u32(u_input.d, var_5.x & 34880u), ~max(global0.b.yz, (global0.b.wx << (vec2<u32>(global0.b.x, var_5.x) % vec2<u32>(32u))) | vec2<u32>(global4.c, var_5.x)));
}

