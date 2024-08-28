struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: vec4<f32>;

var<private> global2: vec3<bool>;

var<private> global3: array<f32, 31>;

var<private> global4: array<i32, 21>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = Struct_2(global2.x, Struct_1(_wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(-1i, u_input.b, -28700i) | vec3<i32>(33466i, 0i, global4[_wgslsmith_index_u32(u_input.d, 21u)])), ~firstLeadingBit(vec3<i32>(global4[_wgslsmith_index_u32(91330u, 21u)], global4[_wgslsmith_index_u32(51665u, 21u)], global4[_wgslsmith_index_u32(15157u, 21u)])))));
    var var_1 = !all(vec4<bool>(true, all(select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(var_0.a, global2.x, true, true), global2.x)), true, !(global3[_wgslsmith_index_u32(10278u, 31u)] > global1.x)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, global3[_wgslsmith_index_u32(u_input.c, 31u)], -779f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-844f)), _wgslsmith_f_op_f32(-global1.x), var_0.a))), vec4<f32>(339f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 31u)] - 1220f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -616f)), _wgslsmith_f_op_f32(-global1.x)), var_0.a)));
    var var_2 = var_0.b;
    var var_3 = _wgslsmith_mult_u32(min(2828u, select(1u ^ u_input.d, ~u_input.c ^ 38840u, var_0.a)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(65078u, 53059u, u_input.d) & vec3<u32>(u_input.c, u_input.c, u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(0u, u_input.d, 4294967295u), vec3<u32>(u_input.d, u_input.d, u_input.d))), u_input.c), 29619u));
    return vec3<bool>(false, var_0.a, true);
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_2(true, Struct_1(~(~vec3<i32>(-2147483647i, global4[_wgslsmith_index_u32(u_input.c, 21u)], -1i))));
    global2 = select(vec3<bool>(true, true, false), !func_3(), select(!func_3().x, true, max(-35614i, global4[_wgslsmith_index_u32(7227u, 21u)]) > firstTrailingBit(var_0.b.a.x)) != (global2.x | false));
    let var_1 = Struct_1(var_0.b.a);
    var var_2 = var_1;
    global0 = array<Struct_2, 2>();
    return vec4<u32>(u_input.c, ~(~(u_input.c ^ abs(28692u))), firstLeadingBit(u_input.c << ((firstTrailingBit(u_input.d) >> (_wgslsmith_mult_u32(2412u, u_input.d) % 32u)) % 32u)), ~(~firstTrailingBit(1u)));
}

fn func_1() -> vec3<i32> {
    global0 = array<Struct_2, 2>();
    var var_0 = func_2();
    let var_1 = global0[_wgslsmith_index_u32(u_input.c, 2u)];
    var_0 = vec4<u32>(~_wgslsmith_sub_u32(~firstLeadingBit(32626u), _wgslsmith_sub_u32(u_input.c, 1u)), 26089u, countOneBits(~var_0.x), max(var_0.x, _wgslsmith_mult_u32(~u_input.c ^ ~1u, 43484u)));
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.d, firstLeadingBit(select(_wgslsmith_dot_vec2_u32(vec2<u32>(9194u, var_0.x), var_0.xw), max(u_input.c, 1u), true))), 2u)];
    return var_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2.x;
    let var_1 = vec4<f32>(155f, -349f, global3[_wgslsmith_index_u32(u_input.d, 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(2499f))));
    var var_2 = global0[_wgslsmith_index_u32(~u_input.d, 2u)];
    global4 = array<i32, 21>();
    let var_3 = firstLeadingBit(var_2.b.a.zz);
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(global1.wx, _wgslsmith_dot_vec3_i32(func_1(), _wgslsmith_clamp_vec3_i32(vec3<i32>(-var_3.x, ~(-28462i), var_2.b.a.x ^ -28067i), ~vec3<i32>(-31585i, -70524i, var_2.b.a.x), vec3<i32>(var_3.x, _wgslsmith_div_i32(-1i, var_2.b.a.x), var_2.b.a.x))), ~(~108021u));
}

