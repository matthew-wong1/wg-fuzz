struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: bool,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<vec2<i32>, 5>;

var<private> global3: vec2<f32>;

var<private> global4: array<i32, 25>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: u32) -> vec2<i32> {
    global2 = array<vec2<i32>, 5>();
    global4 = array<i32, 25>();
    let var_0 = global1[_wgslsmith_index_u32(arg_1, 5u)];
    var var_1 = 1i;
    let var_2 = global1[_wgslsmith_index_u32(arg_1, 5u)];
    return -vec2<i32>(_wgslsmith_mod_i32(u_input.a, ~(-2147483647i)), ~(~var_0.a.x));
}

fn func_2(arg_0: Struct_1) -> bool {
    global1 = array<Struct_1, 5>();
    global1 = array<Struct_1, 5>();
    let var_0 = Struct_1(arg_0.a, arg_0.b, !arg_0.c && global0[_wgslsmith_index_u32(1u, 20u)], arg_0.d, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global3.x, -828f)))), ~92884u));
    var var_1 = 21543u;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-791f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(753f, 1214f))))), all(vec4<bool>(var_0.c || true, arg_0.d.x & global0[_wgslsmith_index_u32(31608u, 20u)], arg_0.c, -784f == global3.x)))) < global3.x;
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<u32>) -> u32 {
    global2 = array<vec2<i32>, 5>();
    var var_0 = select(vec4<bool>(true, func_2(arg_0), 14111u == arg_0.b, !global0[_wgslsmith_index_u32(~0u, 20u)]), vec4<bool>(u_input.b >= (abs(arg_3.x) & _wgslsmith_sub_u32(88626u, u_input.b)), false, !arg_0.d.x, global0[_wgslsmith_index_u32(arg_0.b, 20u)]), true);
    var var_1 = global1[_wgslsmith_index_u32(select(u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(1u, u_input.b, arg_0.b, 0u), ~arg_1 >> (arg_1 % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_u32(arg_1, arg_3) << (~vec4<u32>(arg_1.x, arg_3.x, arg_3.x, arg_1.x) % vec4<u32>(32u))), all(arg_0.d)), 5u)];
    global4 = array<i32, 25>();
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(~func_3(global3.x, 0u).x, max(u_input.a, 1i), -var_1.e.x, _wgslsmith_div_i32(1i, 1i)), select(-vec4<i32>(80144i, 1i, arg_0.e.x, -7597i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(global4[_wgslsmith_index_u32(arg_3.x, 25u)], -2147483647i, 18293i, -2147483647i), vec4<i32>(u_input.a, arg_0.a.x, 49535i, 36866i), abs(vec4<i32>(var_1.e.x, -22102i, -22047i, var_1.a.x))), true)), _wgslsmith_mod_u32(arg_1.x, ~1u), true, !(!(!(!var_0.wyw))), abs((~vec2<i32>(var_1.e.x, var_1.e.x) >> (~arg_1.yz % vec2<u32>(32u))) >> (~(~vec2<u32>(1u, arg_1.x)) % vec2<u32>(32u))));
    return 19223u;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    global0 = array<bool, 20>();
    let var_0 = arg_0.e;
    let var_1 = -(i32(-1i) * -global4[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_1.b, ~u_input.b), 25u)]);
    let var_2 = 1073f;
    let var_3 = firstLeadingBit(arg_1.b);
    return StorageBuffer(_wgslsmith_mod_i32(~(-global4[_wgslsmith_index_u32(1u, 25u)]), abs(var_1)), vec2<u32>(109588u, ~(~(~arg_0.b))), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_4(Struct_1(~((vec4<i32>(global4[_wgslsmith_index_u32(1u, 25u)], -27016i, u_input.a, u_input.a) ^ vec4<i32>(u_input.a, u_input.a, 0i, 86783i)) & min(vec4<i32>(u_input.a, -1i, 2147483647i, global4[_wgslsmith_index_u32(4294967295u, 25u)]), vec4<i32>(global4[_wgslsmith_index_u32(12560u, 25u)], global4[_wgslsmith_index_u32(1u, 25u)], 1i, 1i))), ~u_input.b, any(vec4<bool>(false, global0[_wgslsmith_index_u32(func_1(global1[_wgslsmith_index_u32(4294967295u, 5u)], vec4<u32>(u_input.b, 8631u, 52705u, 9569u), 1183f, vec4<u32>(u_input.b, 10004u, u_input.b, u_input.b)), 20u)], global0[_wgslsmith_index_u32(1u, 20u)], false | global0[_wgslsmith_index_u32(1u, 20u)])), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), global0[_wgslsmith_index_u32(u_input.b, 20u)]), !vec3<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)], false), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 20u)], global0[_wgslsmith_index_u32(19075u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]))), !vec3<bool>(global0[_wgslsmith_index_u32(22121u, 20u)], false, global0[_wgslsmith_index_u32(u_input.b, 20u)]), vec3<bool>(global0[_wgslsmith_index_u32(1u, 20u)] && false, true, global0[_wgslsmith_index_u32(u_input.b, 20u)] && true)), vec2<i32>(global4[_wgslsmith_index_u32(~func_1(global1[_wgslsmith_index_u32(1u, 5u)], vec4<u32>(1u, u_input.b, 4294967295u, 4294967295u), 1000f, vec4<u32>(u_input.b, u_input.b, 1u, 6458u)), 25u)], _wgslsmith_div_i32(-2147483647i | u_input.a, -19643i))), global1[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_clamp_u32(u_input.b, ~firstLeadingBit(u_input.b), _wgslsmith_mult_u32(abs(u_input.b), ~u_input.b))), 5u)], 257f);
}

