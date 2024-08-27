struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec3<bool>,
    d: vec3<i32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 644f;

var<private> global1: array<Struct_3, 27>;

var<private> global2: Struct_3 = Struct_3(Struct_1(1i, vec4<i32>(-1i, 2147483647i, -4556i, 11061i), 2147483647i, 1i), Struct_1(12988i, vec4<i32>(0i, 2147483647i, 1i, 37753i), i32(-2147483648), 16119i), 0u);

var<private> global3: array<u32, 26>;

var<private> global4: array<Struct_4, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1() -> StorageBuffer {
    let var_0 = ~u_input.b.wy & ~vec2<u32>(u_input.c.x, _wgslsmith_mult_u32(4294967295u ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 26u)], 26u)], _wgslsmith_sub_u32(global3[_wgslsmith_index_u32(67957u, 26u)], 4294967295u)));
    global1 = array<Struct_3, 27>();
    let var_1 = u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(1072f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -429f) - -811f)));
    let var_3 = select(~8785u, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.xwx, u_input.c), 26u)], !(!select(true, global2.c < 1u, true)));
    return StorageBuffer(_wgslsmith_div_vec2_i32(u_input.e, ~vec2<i32>(-global2.b.c, min(1i, u_input.a.x))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2, var_2, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-376f + -719f), _wgslsmith_f_op_f32(-var_2))), 1971f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) * -288f)), vec3<f32>(1000f, var_2, 2532f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(abs(618f))))) * vec2<f32>(var_2, 1f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1000f;
    let var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(~64337u, 27u)];
    global4 = array<Struct_4, 32>();
    var var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, _wgslsmith_sub_u32(select(0u, 27850u, var_0), ~4294967295u)), u_input.c.yx), ~62340u, var_1.c);
    global2 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_clamp_u32(global2.c | u_input.b.x, ~10288u, 1u) >> (_wgslsmith_dot_vec3_u32(~(u_input.b.zwx ^ vec3<u32>(var_1.c, 10351u, 4294967295u)), abs(_wgslsmith_div_vec3_u32(u_input.c, u_input.b.yyy))) % 32u), global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), 27u)];
    let x = u_input.a;
    s_output = func_1();
}

