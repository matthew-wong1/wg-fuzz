struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-261f, -667f), vec2<f32>(574f, 1000f), vec2<f32>(244f, 321f), vec2<f32>(-375f, -1000f), vec2<f32>(-776f, 291f), vec2<f32>(-907f, -680f), vec2<f32>(1000f, -608f), vec2<f32>(455f, -1038f));

var<private> global1: vec2<bool> = vec2<bool>(false, false);

var<private> global2: array<bool, 28> = array<bool, 28>(true, true, false, false, true, false, false, true, false, true, true, false, true, false, false, true, false, true, false, true, true, false, true, true, true, true, true, true);

var<private> global3: array<Struct_1, 7>;

var<private> global4: vec3<u32> = vec3<u32>(1270u, 0u, 4294967295u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec4<i32>) -> u32 {
    var var_0 = 25947u;
    return _wgslsmith_mod_u32(~38194u, 1u);
}

fn func_2() -> Struct_2 {
    let var_0 = select(vec4<bool>(true, u_input.c.x > u_input.e, true, global2[_wgslsmith_index_u32(u_input.a, 28u)]), vec4<bool>(global1.x, all(select(select(vec2<bool>(global2[_wgslsmith_index_u32(25855u, 28u)], global2[_wgslsmith_index_u32(global4.x, 28u)]), vec2<bool>(false, false), vec2<bool>(false, global2[_wgslsmith_index_u32(28729u, 28u)])), select(vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 28u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 28u)], true), global2[_wgslsmith_index_u32(10439u, 28u)]), vec2<bool>(global1.x, true))), true, false), vec4<bool>(all(select(!vec2<bool>(global1.x, true), !vec2<bool>(false, global1.x), 2147483647i == u_input.c.x)), !global1.x, global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(1u, global4.x), 1u, max(79621u, 1u)), func_3(global2[_wgslsmith_index_u32(0u, 28u)], -1238f, vec4<i32>(32502i, -20076i, u_input.e, 1i))), 28u)], any(vec3<bool>(all(vec2<bool>(global2[_wgslsmith_index_u32(1u, 28u)], global1.x)), true, false))));
    global0 = array<vec2<f32>, 8>();
    let var_1 = Struct_2(Struct_1(~firstTrailingBit(vec4<i32>(-14038i, u_input.b, 1i, -1i)), vec4<bool>((global4.x != global4.x) && false, true, !var_0.x, false), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -758f)), _wgslsmith_f_op_f32(-992f - _wgslsmith_f_op_f32(-1000f - -960f)), _wgslsmith_f_op_f32(trunc(1507f)), 394f), _wgslsmith_f_op_f32(select(-1828f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1193f, -1000f)), true)), firstLeadingBit(vec4<i32>(u_input.c.x & -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e, u_input.d, u_input.c.x), vec3<i32>(u_input.e, -1i, -71675i)), u_input.b, -1i))), ~(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, 1u, u_input.a) | vec3<u32>(u_input.a, global4.x, 101612u), select(vec3<u32>(10176u, global4.x, u_input.a), vec3<u32>(276u, global4.x, global4.x), vec3<bool>(false, global2[_wgslsmith_index_u32(41364u, 28u)], var_0.x)))));
    return var_1;
}

fn func_1(arg_0: bool, arg_1: bool) -> i32 {
    var var_0 = func_2();
    var var_1 = Struct_2(func_2().a, vec3<u32>(0u, u_input.a, var_0.b.x));
    global2 = array<bool, 28>();
    global4 = countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(var_0.b.x, 6279u), var_0.b.x, ~var_1.b.x) | (~vec3<u32>(0u, 0u, global4.x) & vec3<u32>(u_input.a, var_0.b.x, 1u)), var_1.b));
    var var_2 = func_2();
    return var_1.a.e.x;
}

fn func_4(arg_0: u32, arg_1: i32) -> Struct_2 {
    var var_0 = vec2<i32>(firstLeadingBit(firstTrailingBit(arg_1)) << (arg_0 % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_1, arg_1, -2147483647i, -69637i), vec4<i32>(0i, -1i, 0i, arg_1)), vec4<i32>(u_input.b, arg_1, u_input.e, arg_1)), abs(3011i) >> (u_input.a % 32u), -reverseBits(0i), abs(arg_1)), _wgslsmith_mod_vec4_i32(~vec4<i32>(arg_1, arg_1, u_input.b, -17893i), select(vec4<i32>(-2147483647i, 35634i, u_input.d, arg_1), vec4<i32>(arg_1, 0i, arg_1, 2147483647i), true)) & ~vec4<i32>(2147483647i, arg_1, -1i, arg_1)));
    return Struct_2(global3[_wgslsmith_index_u32(arg_0 >> (71809u % 32u), 7u)], vec3<u32>(70987u, ~25988u, ~(~0u)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>) -> StorageBuffer {
    let var_0 = vec4<i32>(-42221i, firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, u_input.b), ~arg_0.a.e.x) & 1i), -22788i ^ arg_0.a.e.x, _wgslsmith_mult_i32(18431i, func_1(true, (1i >= arg_1.e.x) | select(false, arg_2.x, arg_2.x))));
    let var_1 = _wgslsmith_f_op_f32(-453f - _wgslsmith_f_op_f32(arg_0.a.c.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.d, 1000f)) + 1f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), -616f)));
    global3 = array<Struct_1, 7>();
    let var_3 = func_2();
    return StorageBuffer(vec3<i32>(u_input.c.x, 2147483647i, -var_3.a.a.x), _wgslsmith_f_op_f32(-func_4(109546u, reverseBits(1i)).a.d), vec2<u32>(~(~u_input.a), func_3(false, -454f, vec4<i32>(arg_1.e.x, arg_0.a.a.x, _wgslsmith_mod_i32(7134i, var_3.a.a.x), var_0.x))), vec3<u32>(_wgslsmith_add_u32(~(~global4.x), _wgslsmith_div_u32(var_3.b.x, global4.x) ^ _wgslsmith_div_u32(arg_0.b.x, global4.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(var_3.b.x, u_input.a, 0u), vec3<u32>(reverseBits(u_input.a), u_input.a << (u_input.a % 32u), 4294967295u)), global4.x), arg_1.c.wzy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(1u >> (1u % 32u), 7u)], ~(~firstTrailingBit(vec3<u32>(global4.x, 18362u, global4.x) >> (vec3<u32>(global4.x, u_input.a, global4.x) % vec3<u32>(32u)))));
    global3 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.c.x), 1842f);
    global1 = select(vec2<bool>(global2[_wgslsmith_index_u32(global4.x, 28u)], ~84800u < global4.x), var_0.a.b.wz, -abs(0i) <= u_input.e);
    var var_2 = var_0.a.b;
    let x = u_input.a;
    s_output = func_5(func_4(global4.x, _wgslsmith_sub_i32(max(2147483647i >> (global4.x % 32u), _wgslsmith_clamp_i32(u_input.d, 22338i, u_input.b)), func_1(global1.x, !global1.x))), func_2().a, var_2.yx);
}

