struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 7> = array<f32, 7>(1446f, -1852f, -1423f, 1845f, 1246f, -550f, 462f);

var<private> global2: Struct_1 = Struct_1(8568i, vec2<i32>(i32(-2147483648), 22739i), vec4<u32>(9953u, 9360u, 1u, 0u), 0u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> vec3<i32> {
    let var_0 = arg_1;
    global2 = arg_2;
    global2 = arg_2;
    global1 = array<f32, 7>();
    let var_1 = -1879f;
    return ~(~u_input.e);
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> u32 {
    global0 = _wgslsmith_add_vec2_u32(abs(~select(global2.c.zx, u_input.a.yx, select(vec2<bool>(true, arg_0), vec2<bool>(false, true), vec2<bool>(false, arg_0)))), ~(~vec2<u32>(global0.x & 71077u, global2.d)));
    var var_0 = !select(select(select(select(vec2<bool>(false, false), vec2<bool>(false, arg_0), false), select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, false), vec2<bool>(false, arg_0)), arg_0 && false), !vec2<bool>(true, arg_0), arg_0), select(vec2<bool>(false, !arg_0), vec2<bool>(all(vec3<bool>(true, arg_0, false)), arg_0), !(!arg_0)), any(vec2<bool>(arg_0 == true, all(vec4<bool>(true, arg_0, true, false)))));
    var var_1 = Struct_1(u_input.d.x, -vec2<i32>(global2.b.x, _wgslsmith_div_i32(reverseBits(u_input.c), u_input.e.x)), vec4<u32>(1u << (u_input.b % 32u), global2.c.x, global0.x, u_input.a.x), ~_wgslsmith_add_u32(global2.c.x, _wgslsmith_mod_u32(global0.x, global2.d)) >> (34455u % 32u));
    var var_2 = ~global2.c.x;
    global1 = array<f32, 7>();
    return 7422u;
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(reverseBits(global2.a), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -global2.b, arg_2.b)), -vec2<i32>(-global2.b.x, 1i), vec4<u32>(func_4(any(select(vec3<bool>(arg_0.x, true, arg_0.x), arg_1, vec3<bool>(arg_1.x, true, false))), arg_2.b.x, func_3(-10110i, arg_2, Struct_1(u_input.e.x, arg_2.b, arg_2.c, global0.x), vec3<i32>(-2147483647i, global2.b.x, arg_2.a))), firstLeadingBit(select(~1u, ~global2.c.x, arg_0.x)), _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(23029u, 4294967295u)) ^ global2.d, _wgslsmith_dot_vec2_u32(vec2<u32>(13688u, global0.x), abs(vec2<u32>(4294967295u, 42553u)))), global0.x), ~select(_wgslsmith_sub_u32(u_input.a.x, ~global2.d), 36743u, false));
    let var_1 = arg_2;
    var var_2 = arg_0.zx;
    var_2 = vec2<bool>(var_1.a == 0i, all(vec4<bool>(arg_0.x, 657f >= _wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(1u, 7u)], global1[_wgslsmith_index_u32(var_0.d, 7u)])), false, any(select(vec4<bool>(true, true, true, var_2.x), vec4<bool>(arg_0.x, true, true, true), vec4<bool>(true, arg_1.x, false, true))))));
    global0 = global2.c.zx;
    return ~countOneBits(~1u);
}

fn func_1() -> Struct_1 {
    global0 = select(~(~vec2<u32>(274u, 0u)) | ~min(countOneBits(global2.c.wx), global2.c.zy), countOneBits(global2.c.wz), any(select(vec3<bool>(any(vec4<bool>(false, true, true, true)), true, false), vec3<bool>(true, -532f != global1[_wgslsmith_index_u32(0u, 7u)], all(vec2<bool>(false, false))), vec3<bool>(true, true, any(vec4<bool>(false, false, false, false))))));
    var var_0 = Struct_1(2147483647i, u_input.d.yz, _wgslsmith_div_vec4_u32(vec4<u32>(func_2(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, false, true), Struct_1(u_input.c, vec2<i32>(u_input.d.x, -2147483647i), global2.c, 19658u)), 4294967295u, _wgslsmith_sub_u32(global0.x, _wgslsmith_add_u32(u_input.a.x, 4294967295u)), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 59427u, global0.x), 4294967295u)), countOneBits(global2.c)), firstLeadingBit(u_input.b));
    var var_1 = 5720u;
    var_0 = Struct_1(-125i, -(var_0.b ^ (vec2<i32>(-3870i, global2.b.x) ^ var_0.b)), global2.c, 61453u);
    var var_2 = false;
    return Struct_1(~(~_wgslsmith_mod_i32(-var_0.b.x, -u_input.c)), var_0.b, vec4<u32>(_wgslsmith_div_u32(func_2(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), Struct_1(global2.b.x, vec2<i32>(20648i, global2.a), var_0.c, var_0.d)), var_0.c.x), u_input.b, firstLeadingBit(_wgslsmith_mult_u32(0u, func_2(vec3<bool>(true, true, true), vec3<bool>(false, true, true), Struct_1(global2.b.x, global2.b, var_0.c, 4294967295u)))), ~firstLeadingBit(_wgslsmith_clamp_u32(global0.x, 0u, global2.d))), ~_wgslsmith_add_u32(global0.x ^ ~global0.x, ~_wgslsmith_dot_vec4_u32(var_0.c, vec4<u32>(u_input.a.x, 42173u, global0.x, u_input.a.x))));
}

fn func_5(arg_0: Struct_1) -> bool {
    global2 = Struct_1(arg_0.b.x, vec2<i32>(firstTrailingBit(-64707i), select(arg_0.a, global2.b.x, any(vec2<bool>(false, true))) | 5701i), countOneBits(abs(vec4<u32>(~50184u, 4294967295u, 1u, u_input.a.x))), 0u);
    let var_0 = firstTrailingBit(78130u);
    global2 = func_1();
    global1 = array<f32, 7>();
    var var_1 = Struct_1(-1107i, global2.b, ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0.c, func_1().c, arg_0.c), vec4<u32>(99421u, select(84315u, 23547u, false), countOneBits(18539u), 14641u)), func_2(vec3<bool>(true, true, true), !vec3<bool>(true, all(vec4<bool>(true, true, false, true)), true), Struct_1(u_input.e.x, u_input.e.yz, firstLeadingBit(vec4<u32>(0u, var_0, 11865u, 0u)) ^ vec4<u32>(449u, 57594u, 0u, var_0), var_0)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec4<bool>(1i < u_input.d.x, true, true, true), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(func_5(func_1()), all(vec2<bool>(false, true)), (1u << (global2.d % 32u)) < firstLeadingBit(0u), !all(vec2<bool>(false, false)))), !vec4<bool>(!all(vec3<bool>(false, true, true)), u_input.c > -1i, true, all(vec3<bool>(true, true, false))), vec4<bool>(true, true, func_5(Struct_1(u_input.e.x & -16678i, min(global2.b, vec2<i32>(global2.b.x, u_input.c)), vec4<u32>(4294967295u, global0.x, global2.d, global0.x), _wgslsmith_add_u32(global2.d, global2.c.x))), true));
    global2 = Struct_1(func_3(u_input.e.x, func_1(), Struct_1(u_input.e.x, vec2<i32>(~(-2147483647i), u_input.d.x << (4294967295u % 32u)), ~_wgslsmith_div_vec4_u32(global2.c, vec4<u32>(global0.x, global2.c.x, global0.x, 4294967295u)), global0.x), vec3<i32>(_wgslsmith_add_i32(u_input.e.x, _wgslsmith_mult_i32(global2.b.x, u_input.d.x)), global2.a, u_input.e.x)).x, vec2<i32>(u_input.c, global2.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(firstLeadingBit(4294967295u), global2.d, global2.d, ~(global2.d | 37049u)), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, global2.d, 1u, u_input.b), vec4<u32>(global0.x, 46521u, global0.x, global2.c.x)), ~global2.c), countOneBits(global2.c))), global2.c.x);
    global2 = func_1();
    var_0 = vec4<bool>(func_5(Struct_1(u_input.d.x, select(-global2.b, _wgslsmith_mult_vec2_i32(vec2<i32>(global2.a, global2.b.x), vec2<i32>(u_input.d.x, u_input.c)), var_0.zy), _wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.d, global2.c.x, global0.x, global0.x), vec4<u32>(u_input.b, 31786u, global2.d, global0.x)), vec4<u32>(0u, global0.x, 1u, 0u)), 4294967295u)), true, var_0.x, true);
    let var_1 = countOneBits(u_input.e);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a);
}

