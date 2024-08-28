struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(0u, 13412u, 3755u), vec3<u32>(67044u, 4294967295u, 0u), vec3<u32>(51826u, 0u, 4029u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(10894u, 104904u, 1u), vec3<u32>(36524u, 0u, 8987u), vec3<u32>(65073u, 48906u, 0u), vec3<u32>(16106u, 22408u, 4294967295u), vec3<u32>(4294967295u, 31865u, 1u), vec3<u32>(37508u, 75703u, 18065u), vec3<u32>(4348u, 1u, 4294967295u), vec3<u32>(4294967295u, 0u, 110554u), vec3<u32>(4294967295u, 49287u, 6769u), vec3<u32>(4294967295u, 4294967295u, 0u));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<i32>(-39956i, 2147483647i, 27426i, -29368i), vec4<f32>(-292f, 584f, 984f, 946f), i32(-2147483648), vec2<bool>(false, false), true), Struct_1(vec4<i32>(3407i, 30041i, 0i, -1i), vec4<f32>(-2635f, 1168f, 948f, -514f), -1i, vec2<bool>(true, false), true));

var<private> global3: array<f32, 19>;

var<private> global4: array<f32, 4> = array<f32, 4>(-1033f, 632f, -246f, 1601f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: vec4<f32>, arg_3: f32) -> f32 {
    let var_0 = 0u;
    var var_1 = u_input.b.yzw;
    var_1 = ~global1[_wgslsmith_index_u32(~0u, 14u)];
    var var_2 = global2.a.b.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-345f, arg_0.b.b.x), _wgslsmith_f_op_f32(max(-688f, _wgslsmith_f_op_f32(-1000f + arg_3))))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = firstTrailingBit(_wgslsmith_sub_vec2_u32(u_input.b.zz, ~u_input.b.yz));
    global0 = array<Struct_1, 19>();
    let var_1 = abs(vec2<i32>(~_wgslsmith_div_i32(global2.b.a.x, i32(-1i) * -1i), 0i));
    var var_2 = Struct_2(global2.a, Struct_1(-vec4<i32>(u_input.c.x, abs(1i), 1842i, -20574i), _wgslsmith_f_op_vec4_f32(max(global2.a.b, global2.a.b)), _wgslsmith_dot_vec2_i32((global2.b.a.wz ^ arg_2.zx) & ~vec2<i32>(var_1.x, 23948i), var_1), !global2.a.d, !global2.b.d.x));
    let var_3 = 263f;
    return global2.b;
}

fn func_1() -> Struct_1 {
    global0 = array<Struct_1, 19>();
    global2 = Struct_2(global2.b, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-891f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2901f + _wgslsmith_f_op_f32(func_2(Struct_2(global2.b, Struct_1(global2.a.a, global2.a.b, global2.b.a.x, vec2<bool>(true, false), true)), global2.b.e, global2.a.b, -252f)))), vec3<i32>(i32(-1i) * -65715i, u_input.c.x, -1i)));
    let var_0 = global3[_wgslsmith_index_u32(0u, 19u)];
    let var_1 = 1u;
    let var_2 = ~u_input.d;
    return Struct_1(global2.b.a, _wgslsmith_f_op_vec4_f32(sign(global2.a.b)), min(firstTrailingBit(reverseBits(global2.b.c)), -1i), !global2.a.d, !(!func_3(_wgslsmith_f_op_f32(f32(-1f) * -1049f), -742f, reverseBits(vec3<i32>(u_input.c.x, 2147483647i, u_input.c.x))).d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<f32, 4>();
    global3 = array<f32, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = vec4<bool>(true, !global2.b.e && !global2.a.d.x, !(-523f != global4[_wgslsmith_index_u32(firstTrailingBit(1u), 4u)]), all(vec4<bool>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.d.x, 19u)] * global4[_wgslsmith_index_u32(0u, 4u)]) <= 855f, true, true, !all(vec2<bool>(false, global2.a.d.x)))));
    global2 = Struct_2(func_1(), func_3(_wgslsmith_f_op_f32(-557f - _wgslsmith_div_f32(1000f, global3[_wgslsmith_index_u32(1u >> (u_input.b.x % 32u), 19u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1190f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.d.x, 19u)])))), global2.b.a.xxy));
    let var_1 = _wgslsmith_sub_u32(~_wgslsmith_mult_u32(_wgslsmith_sub_u32(0u, abs(u_input.b.x)), abs(_wgslsmith_mod_u32(u_input.e, 0u))), abs(select(abs(~1u), ~u_input.d.x, global2.b.d.x)));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.a.b.xyy) * _wgslsmith_f_op_vec3_f32(round(func_1().b.xzw))), ~countOneBits(u_input.b), u_input.d);
}

