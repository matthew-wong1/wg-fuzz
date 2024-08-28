struct Struct_1 {
    a: i32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 9>;

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(round(arg_2.x));
    var_0 = _wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_2.x));
    var var_1 = 50872u;
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(73745i, -arg_3.x, -2165i), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_3, vec3<i32>(u_input.d, firstLeadingBit(u_input.d), -global0.a)), _wgslsmith_dot_vec2_i32((vec2<i32>(arg_3.x, u_input.e) >> (vec2<u32>(u_input.a.x, u_input.c.x) % vec2<u32>(32u))) ^ arg_3.yx, (arg_3.yz | arg_3.xx) << (~vec2<u32>(u_input.b, u_input.a.x) % vec2<u32>(32u))), -(u_input.e >> (~0u % 32u))));
    var_1 = ~(~_wgslsmith_dot_vec2_u32(~u_input.a.xz, u_input.c.zx >> (vec2<u32>(79219u, u_input.a.x) % vec2<u32>(32u)))) | reverseBits(43752u);
    return 353f;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 9>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(false, !vec2<bool>(true, arg_3.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-368f, -1032f, -353f)), arg_0 << (u_input.c % vec3<u32>(32u))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-1094f, 530f)), _wgslsmith_div_f32(-1092f, 1142f))) * -1205f)));
    let var_1 = global1[_wgslsmith_index_u32(39052u, 9u)];
    global1 = array<Struct_1, 9>();
    let var_2 = global2[_wgslsmith_index_u32(39319u, 1u)];
    return global1[_wgslsmith_index_u32(u_input.a.x | 2151u, 9u)];
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_1, 1>();
    let var_0 = func_2(vec3<i32>(global0.a, (global0.a >> (17318u % 32u)) >> (u_input.a.x % 32u), u_input.e), Struct_1(~(~global0.a), !((62672u <= u_input.a.x) & !global0.b)), _wgslsmith_mod_vec4_i32(~((vec4<i32>(global0.a, global0.a, -2147483647i, global0.a) ^ vec4<i32>(5421i, global0.a, 0i, -10529i)) | vec4<i32>(6412i, 20870i, global0.a, u_input.e)), firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(37476i, global0.a, -1i, global0.a), vec4<i32>(-16089i, -6248i, -11499i, u_input.d))) & ~vec4<i32>(u_input.d, global0.a, 2147483647i, global0.a)), global1[_wgslsmith_index_u32(~(~u_input.c.x), 9u)]);
    let var_1 = _wgslsmith_dot_vec4_i32(-vec4<i32>(reverseBits(-5028i ^ global0.a), -1i, var_0.a & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, 7303i), vec2<i32>(2147483647i, 0i)), -(~4253i)), firstTrailingBit(~(~(~vec4<i32>(u_input.d, u_input.e, 2147483647i, var_0.a)))));
    global2 = array<Struct_1, 1>();
    let var_2 = any(!select(vec2<bool>(any(vec4<bool>(global0.b, var_0.b, var_0.b, global0.b)), any(vec2<bool>(true, var_0.b))), !vec2<bool>(true, global0.b), vec2<bool>(true, false & var_0.b)));
    return global2[_wgslsmith_index_u32(0u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(26972u, 1u)];
    let var_1 = func_1();
    global1 = array<Struct_1, 9>();
    let var_2 = !(max(abs(~4294967295u), u_input.c.x) > u_input.a.x);
    let var_3 = _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.c.x))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(3945u, u_input.c.x, u_input.b, u_input.a.x), vec4<u32>(34260u, 81355u, u_input.b, u_input.c.x) ^ vec4<u32>(1u, 69718u, u_input.c.x, 34450u))) ^ vec4<u32>(32869u, u_input.a.x, max(abs(u_input.b), 96891u >> (1u % 32u)), _wgslsmith_sub_u32(~(u_input.b & 1u), countOneBits(50565u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f - -777f) - _wgslsmith_f_op_f32(-841f * 1301f)), _wgslsmith_f_op_f32(sign(-574f))), _wgslsmith_f_op_f32(sign(-2753f)))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(212f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-826f, 1815f))), global0.b)))));
}

