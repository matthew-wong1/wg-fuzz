struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: Struct_2 = Struct_2(Struct_1(70725u, false, -1000f), Struct_1(32201u, false, 155f), Struct_1(4294967295u, false, 406f));

var<private> global2: Struct_2 = Struct_2(Struct_1(1u, false, 2175f), Struct_1(0u, true, 1591f), Struct_1(51871u, true, -1126f));

var<private> global3: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_2 {
    var var_0 = global2.c.b;
    return Struct_2(Struct_1(~60316u, global2.a.b, _wgslsmith_f_op_f32(trunc(2463f))), global1.c, global1.a);
}

fn func_3() -> Struct_2 {
    global0 = array<Struct_2, 22>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1613f - global2.b.c) - _wgslsmith_f_op_f32(min(-1000f, 275f)))) + _wgslsmith_f_op_f32(-global2.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2066f, -1030f))), _wgslsmith_f_op_f32(-global1.c.c), global1.b.c);
    let var_1 = Struct_2(Struct_1(0u, false, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(431f * 371f)), _wgslsmith_f_op_f32(floor(1601f)), 0u < ~u_input.d.x))), func_1().a, global1.a);
    var var_2 = _wgslsmith_f_op_f32(ceil(var_1.c.c));
    let var_3 = Struct_1(~func_1().a.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global2.c.c, _wgslsmith_f_op_f32(-2666f * 1588f))), var_1.b.c)) >= -130f, var_0.x);
    return var_1;
}

fn func_2(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<i32> {
    global1 = global0[_wgslsmith_index_u32(global2.c.a, 22u)];
    var var_0 = func_3();
    var var_1 = all(vec3<bool>(true, !(arg_1.b.a < (arg_1.a.a << (0u % 32u))), false));
    let var_2 = func_1().c;
    var var_3 = !vec3<bool>(any(!vec4<bool>(arg_1.b.b, true, var_2.b, var_0.c.b)) | false, global2.a.b, true);
    return ~vec2<i32>(u_input.a, _wgslsmith_sub_i32(~(~2147483647i), select(0i, 76929i, var_3.x) & select(1i, u_input.a, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0[_wgslsmith_index_u32(u_input.c.x | 77200u, 22u)];
    global0 = array<Struct_2, 22>();
    let var_0 = func_1();
    let var_1 = u_input.d;
    let var_2 = global1.b.a;
    var var_3 = select(vec4<bool>(var_0.b.b || (global1.a.b | func_1().c.b), global2.b.b, global2.a.b, global1.a.b), !select(vec4<bool>(-18205i > u_input.a, global1.b.b, select(true, true, false), false), !select(vec4<bool>(var_0.a.b, true, global1.a.b, true), vec4<bool>(global2.a.b, false, global2.c.b, global1.c.b), true), false), !select(vec4<bool>(true, true, !global1.b.b, true), select(select(vec4<bool>(global1.b.b, true, true, var_0.a.b), vec4<bool>(global1.b.b, false, true, true), true), vec4<bool>(global1.a.b, true, true, global1.c.b), vec4<bool>(var_0.c.b, global1.c.b, false, false)), global2.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, u_input.c.x), vec2<u32>(0u, global1.c.a)) & 0u, ~global2.c.a), ~_wgslsmith_div_vec2_i32(min(~vec2<i32>(1i, 2147483647i), vec2<i32>(u_input.a, u_input.a)), func_2(136f, Struct_2(global1.c, global1.a, Struct_1(u_input.d.x, global1.c.b, var_0.a.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1033f, var_0.a.c) + vec2<f32>(696f, -1317f)))), -vec2<i32>(countOneBits(u_input.a), 3458i) ^ vec2<i32>(_wgslsmith_div_i32(-u_input.a, 1i), ~u_input.a), 1i);
}

