struct Struct_1 {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<Struct_2, 18>;

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<u32>(37430u, 4294967295u, 0u, 42599u), vec2<u32>(1u, 35306u), vec3<f32>(843f, -1401f, 884f), vec3<i32>(-1i, -46925i, -19420i)), 4294967295u, false, 1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 20>();
    global2 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-global3.a.c.x), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global3.b, 20u)]), _wgslsmith_f_op_f32(global3.a.c.x * global3.a.c.x), _wgslsmith_f_op_f32(abs(global3.a.c.x))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0[_wgslsmith_index_u32(1u, 20u)], 126f, global0[_wgslsmith_index_u32(1u, 20u)], global0[_wgslsmith_index_u32(global3.b, 20u)]), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.c.x, -1228f, 614f, global3.a.c.x)))), vec4<bool>(any(vec4<bool>(global3.c, false, global1.x, global1.x)), any(vec2<bool>(global1.x, true)), global3.c && false, false))))));
    let var_1 = Struct_2(Struct_1(~global3.a.a, _wgslsmith_div_vec2_u32(~abs(global3.a.a.xz), global3.a.b), var_0.xww, _wgslsmith_add_vec3_i32(abs(-vec3<i32>(0i, u_input.a, 52261i)), max(vec3<i32>(global3.a.d.x, u_input.a, 56014i), global3.a.d) >> (_wgslsmith_add_vec3_u32(vec3<u32>(14766u, global3.b, 8729u), global3.a.a.wyy) % vec3<u32>(32u)))), reverseBits(1u), !global3.c, _wgslsmith_mod_i32(_wgslsmith_mod_i32(min(_wgslsmith_dot_vec3_i32(global3.a.d, vec3<i32>(2147483647i, -13810i, -46164i)), _wgslsmith_dot_vec4_i32(vec4<i32>(62329i, u_input.a, 48045i, 2147483647i), vec4<i32>(7030i, global3.a.d.x, 19129i, u_input.a))), ~u_input.a), -53123i));
    global1 = vec2<bool>(any(vec3<bool>(true, false, global3.c)), false);
    let x = u_input.a;
    s_output = StorageBuffer(global3.a.c.x);
}

