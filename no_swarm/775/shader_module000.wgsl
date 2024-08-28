struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: bool,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: Struct_2,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: Struct_4;

var<private> global2: vec3<i32>;

var<private> global3: Struct_4;

var<private> global4: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(vec2<bool>(true, true), vec3<f32>(1000f, 1080f, -1084f), true), Struct_3(vec2<bool>(false, true), vec3<f32>(-1534f, -192f, 737f), false), Struct_3(vec2<bool>(true, true), vec3<f32>(541f, -1123f, -678f), true), Struct_3(vec2<bool>(true, true), vec3<f32>(-181f, 275f, -319f), false), Struct_3(vec2<bool>(true, true), vec3<f32>(-820f, 407f, -439f), true), Struct_3(vec2<bool>(false, false), vec3<f32>(-1283f, -484f, -1021f), true), Struct_3(vec2<bool>(false, false), vec3<f32>(-977f, 1490f, -466f), false), Struct_3(vec2<bool>(false, true), vec3<f32>(1813f, -662f, 1560f), true), Struct_3(vec2<bool>(true, false), vec3<f32>(-1880f, -662f, 1000f), true), Struct_3(vec2<bool>(false, false), vec3<f32>(-340f, 862f, 380f), true), Struct_3(vec2<bool>(false, true), vec3<f32>(-725f, -491f, -697f), false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_add_vec3_i32(select(abs(-(~vec3<i32>(global2.x, global2.x, global2.x))), countOneBits(countOneBits(-vec3<i32>(global2.x, 44320i, 2147483647i))), select(select(!vec3<bool>(global1.b.c, false, global3.b.a.x), !vec3<bool>(true, true, global3.b.a.x), select(vec3<bool>(global3.b.a.x, global3.c.b.a.x, false), vec3<bool>(global3.b.c, false, global1.c.a.a.x), vec3<bool>(global3.c.b.a.x, global1.c.a.a.x, true))), vec3<bool>(all(vec2<bool>(true, false)), true, true), true)), vec3<i32>(~global2.x, global2.x, _wgslsmith_sub_i32(global2.x, 0i)));
    let var_1 = global1.e;
    global0 = array<vec2<i32>, 28>();
    var var_2 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))))), Struct_3(select(select(vec2<bool>(global3.c.a.a.x, false), global3.c.a.a, select(global3.c.b.a, vec2<bool>(true, false), global1.b.c)), !(!global1.c.a.a), true), _wgslsmith_div_vec3_f32(global1.b.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, global3.e, global1.c.c.x))), true), Struct_2(Struct_1(!(!global1.b.a), global1.c.b.b), Struct_1(select(select(vec2<bool>(global1.b.c, true), global1.c.b.a, global3.c.a.a.x), select(global3.b.a, global3.c.b.a, global3.c.a.a.x), global1.b.c || global3.b.c), global1.c.a.b), global1.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(global1.c.c, vec2<f32>(global3.d.x, global3.d.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global3.d.x, global3.b.b.x)))) - global1.a));
    global0 = array<vec2<i32>, 28>();
    return vec2<bool>(!(!(!(51581u != var_2.c.b.b))), all(vec2<bool>(true, true && (global1.b.c || var_2.c.a.a.x))));
}

fn func_2() -> Struct_3 {
    var var_0 = any(!func_3());
    global3 = Struct_4(222f, Struct_3(global3.b.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-566f, global1.d.x, global3.e), vec3<f32>(global3.d.x, -329f, global3.c.c.x)) + vec3<f32>(-345f, -2198f, 1150f)))), global1.c.a.a.x), global3.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(1313f)), _wgslsmith_f_op_f32(select(521f, global3.a, global1.b.c))) + vec2<f32>(345f, _wgslsmith_f_op_f32(global1.d.x + -2156f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.d.x - global3.c.c.x))));
    var var_1 = 4294967295u;
    var var_2 = vec2<i32>(select(global2.x, ~37900i, false), global2.x);
    global1 = Struct_4(_wgslsmith_f_op_f32(1617f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.b.x) * -1000f)), global4[_wgslsmith_index_u32(u_input.a.x, 11u)], global3.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.d.x, 927f) * global1.b.b.xz))) * _wgslsmith_f_op_vec2_f32(select(global3.c.c, _wgslsmith_f_op_vec2_f32(select(global1.c.c, global1.c.c, true)), global1.b.a))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.c.c - vec2<f32>(global3.d.x, global1.b.b.x)), _wgslsmith_f_op_vec2_f32(min(global1.c.c, global3.c.c)), global3.c.a.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -591f))));
    return Struct_3(vec2<bool>(any(select(!vec4<bool>(global1.c.a.a.x, false, true, global1.c.b.a.x), vec4<bool>(true, true, true, true), true)), false), _wgslsmith_f_op_vec3_f32(-global1.b.b), global1.b.c);
}

fn func_1() -> Struct_3 {
    global4 = array<Struct_3, 11>();
    global2 = ~(~(-vec3<i32>(1i, global2.x, 10325i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = Struct_4(-700f, global4[_wgslsmith_index_u32(firstTrailingBit(~u_input.a.x), 11u)], Struct_2(Struct_1(global3.c.b.a, u_input.a.x), Struct_1(vec2<bool>(true, true), global3.c.a.b), vec2<f32>(-354f, _wgslsmith_div_f32(567f, 2590f))), vec2<f32>(1864f, 1459f), _wgslsmith_f_op_f32(-global1.a));
    global1 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -185f), func_1(), global1.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global3.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global3.c.c) + var_0.b.zx)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + global1.c.c.x) * -913f) - 357f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global1.a)))) + var_0.b.x), false)));
    global4 = array<Struct_3, 11>();
    let var_1 = Struct_4(-1956f, func_2(), global1.c, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -899f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - -103f), false)), _wgslsmith_div_f32(1466f, _wgslsmith_f_op_f32(f32(-1f) * -887f))), global3.c.c.x);
    var var_2 = _wgslsmith_f_op_f32(-456f * _wgslsmith_f_op_f32(f32(-1f) * -397f));
    var var_3 = func_2().b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-707f - 124f)), u_input.a, _wgslsmith_f_op_vec2_f32(-global1.d));
}

