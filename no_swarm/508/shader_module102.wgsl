struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec4<f32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1568f);

var<private> global1: array<bool, 23> = array<bool, 23>(false, false, false, true, true, false, true, false, true, false, true, false, false, false, false, false, false, true, true, false, false, true, false);

var<private> global2: Struct_1;

var<private> global3: array<Struct_5, 15>;

var<private> global4: array<vec2<f32>, 17>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    return ~_wgslsmith_clamp_i32(-abs(u_input.a), abs(u_input.a), ~16783i);
}

fn func_2() -> Struct_4 {
    global4 = array<vec2<f32>, 17>();
    global3 = array<Struct_5, 15>();
    let var_0 = Struct_1(u_input.d.x, abs(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 62645u, countOneBits(global2.a), global2.a), select(global2.b, abs(global2.b), select(vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.d.x, 23u)], false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(global2.b.x, 23u)], true), vec4<bool>(global1[_wgslsmith_index_u32(0u, 23u)], true, global1[_wgslsmith_index_u32(global2.b.x, 23u)], global1[_wgslsmith_index_u32(global2.b.x, 23u)]))))));
    let var_1 = var_0.b;
    let var_2 = Struct_4(Struct_1(4294967295u, var_1), vec2<i32>(func_3(), -_wgslsmith_mult_i32(~(-1i), 0i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.a, global0.a, global0.a, global0.a)))), vec4<f32>(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(global0.a + 203f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(global0.a, global0.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.a, global0.a) - vec4<f32>(254f, -2091f, -169f, global0.a))))), global1[_wgslsmith_index_u32(0u, 23u)] != (u_input.a >= _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a) ^ vec2<i32>(1i, u_input.a))));
    return Struct_4(Struct_1(~107773u, ~_wgslsmith_sub_vec4_u32(abs(global2.b), firstTrailingBit(vec4<u32>(global2.b.x, 2393u, var_1.x, 1u)))), var_2.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(var_2.c, _wgslsmith_f_op_vec4_f32(min(var_2.c, vec4<f32>(var_2.c.x, global0.a, global0.a, 102f))))))), var_2.d);
}

fn func_1() -> f32 {
    var var_0 = ~min(_wgslsmith_div_u32(abs(u_input.c), ~27432u), 1u) <= _wgslsmith_mult_u32(min(global2.a ^ min(1u, global2.a), global2.a), 59337u);
    let var_1 = func_2();
    var var_2 = -(~firstLeadingBit(vec2<i32>(var_1.b.x, _wgslsmith_div_i32(-1i, -2147483647i))));
    var var_3 = firstLeadingBit(vec4<u32>(reverseBits(~_wgslsmith_div_u32(var_1.a.b.x, u_input.c)), 23140u, u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(~global2.a, global2.b.x, ~u_input.c, _wgslsmith_mult_u32(var_1.a.b.x, 19819u)), abs(_wgslsmith_div_vec4_u32(vec4<u32>(12192u, global2.b.x, u_input.b, global2.a), vec4<u32>(4294967295u, global2.b.x, var_1.a.b.x, global2.a))))));
    global3 = array<Struct_5, 15>();
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(314f - -691f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(-global0.a))))));
    var var_1 = global1[_wgslsmith_index_u32(~reverseBits(~17451u), 23u)];
    let var_2 = ~u_input.d;
    global3 = array<Struct_5, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(-359f, global2.b.xzy);
}

