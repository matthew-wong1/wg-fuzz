struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: Struct_2,
    d: f32,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec2<bool>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_2,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26> = array<u32, 26>(1u, 1u, 108088u, 16538u, 44627u, 2989u, 1u, 0u, 57706u, 4294967295u, 70176u, 4294967295u, 4294967295u, 10441u, 10951u, 25136u, 0u, 66891u, 1u, 40838u, 0u, 4294967295u, 1u, 0u, 40060u, 15138u);

var<private> global1: array<Struct_1, 31>;

var<private> global2: Struct_3;

var<private> global3: vec3<i32>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global0 = array<u32, 26>();
    var var_0 = vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(abs(25122u), 0u, 36921u) | ~(~18594u), ~u_input.a << (arg_0 % 32u), ~_wgslsmith_add_u32(1u, reverseBits(global0[_wgslsmith_index_u32(arg_0, 26u)]))), 79630u, firstTrailingBit(min(global0[_wgslsmith_index_u32(abs(1u), 26u)], global2.a.x) << (4294967295u % 32u)));
    global0 = array<u32, 26>();
    var var_1 = Struct_4(u_input.b, Struct_3(~vec3<u32>(u_input.a, global2.a.x, 0u), firstLeadingBit(vec3<i32>(~(-43488i), abs(31366i), 1i & global3.x)), global2.c, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1553f))), false), vec2<bool>(true, true), Struct_2(82692i, -2147483647i), Struct_1(_wgslsmith_clamp_u32(~abs(19359u), global2.a.x, 1u), !select(!global2.e, false, false), _wgslsmith_mod_vec4_u32(vec4<u32>(firstLeadingBit(9383u), 4294967295u, _wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(0u, 26u)]), var_0.x), vec4<u32>(~51975u, 1u, 1u, var_0.x)), ~select(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(0u, 26u)], 4294967295u), firstTrailingBit(4294967295u), false)));
    var var_2 = 425f;
    return select(select(select(!var_1.c, vec2<bool>(global2.e, all(vec3<bool>(global2.e, var_1.b.e, global2.e))), select(true, true, all(vec2<bool>(false, false)))), vec2<bool>(true, true | !global2.e), any(!select(vec3<bool>(global2.e, var_1.b.e, false), vec3<bool>(false, true, true), vec3<bool>(true, false, global2.e)))), vec2<bool>(!any(vec3<bool>(true, var_1.b.e, global2.e)), !global2.e), global2.e);
}

fn func_2(arg_0: vec3<i32>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(global2.d - global2.d)) - global2.d), _wgslsmith_f_op_f32(global2.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) * _wgslsmith_div_f32(1524f, -345f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.d), 206f) * global2.d), global2.d)));
    var var_1 = global2.b >> (global2.a % vec3<u32>(32u));
    let var_2 = (_wgslsmith_add_vec2_i32(vec2<i32>(global2.c.b >> (34858u % 32u), 1i), select(vec2<i32>(global3.x, 9352i), vec2<i32>(u_input.b.x, 2147483647i) << (global2.a.xy % vec2<u32>(32u)), select(vec2<bool>(true, true), vec2<bool>(global2.e, true), vec2<bool>(global2.e, global2.e)))) & var_1.zx) & select(_wgslsmith_add_vec2_i32(vec2<i32>(1i, -30201i), global3.xz), u_input.b.yw, select(select(!vec2<bool>(true, global2.e), func_3(57792u), !vec2<bool>(true, global2.e)), vec2<bool>(true, true), vec2<bool>(true, global2.e)));
    var var_3 = global2.b;
    let var_4 = abs(global0[_wgslsmith_index_u32(23779u, 26u)]) == global0[_wgslsmith_index_u32(28247u, 26u)];
    return !any(select(select(vec3<bool>(global2.e, true, false), !vec3<bool>(false, var_4, false), !vec3<bool>(global2.e, global2.e, global2.e)), select(!vec3<bool>(var_4, var_4, var_4), select(vec3<bool>(global2.e, var_4, true), vec3<bool>(false, false, false), global2.e), func_3(u_input.a).x), !(!vec3<bool>(global2.e, false, var_4))));
}

fn func_1(arg_0: u32, arg_1: vec3<f32>, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(-28242i, arg_2), 1i);
    var var_1 = select(select(vec4<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(17778i, 56714i, 2147483647i), global2.b) <= u_input.b.x, (global2.d >= arg_1.x) == true, func_2(min(global2.b, u_input.b.ywy)), !(u_input.b.x > arg_2)), !vec4<bool>(global2.a.x < 3753u, false, true, true), global2.e), vec4<bool>(true, !arg_3, true, global2.e), true);
    var var_2 = Struct_1(22255u, arg_3, ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, global0[_wgslsmith_index_u32(global2.a.x, 26u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0, 26u)], 26u)], 535u), vec4<u32>(~68977u, ~4371u, ~25135u, ~arg_0)), firstLeadingBit(4294967295u));
    global0 = array<u32, 26>();
    let var_3 = _wgslsmith_mod_vec2_i32(global2.b.zy, reverseBits(firstLeadingBit(abs(vec2<i32>(u_input.b.x, var_0)))));
    return Struct_2(-2147483647i, var_3.x);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    var var_0 = arg_1.b.x;
    let var_1 = arg_0.e;
    let var_2 = !(!(!func_2(-vec3<i32>(arg_2.c.b, arg_1.c.b, 0i))));
    global1 = array<Struct_1, 31>();
    let var_3 = vec4<i32>(-2147483647i, u_input.b.x >> (~(~(~7575u)) % 32u), 73249i, _wgslsmith_add_i32(func_1(84285u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2.d, arg_1.d, 1391f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.d, 222f, -509f)), select(vec3<bool>(arg_1.e, arg_0.e.b, true), vec3<bool>(var_2, true, arg_2.e), vec3<bool>(false, false, true)))), firstLeadingBit(arg_2.b.x), func_2(vec3<i32>(17145i, arg_2.b.x, arg_1.c.b)) & true).a, -arg_2.b.x));
    return Struct_1(var_1.a, var_2, var_1.c, global0[_wgslsmith_index_u32(40486u, 26u)]);
}

fn func_5(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = vec2<i32>(~(-1i), 41563i);
    var_0 = firstLeadingBit(vec2<i32>(_wgslsmith_dot_vec4_i32(u_input.b, -(u_input.b >> (arg_3.c % vec4<u32>(32u)))), 5106i));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.d), global2.d)), 1000f, global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global2.d)))))), vec4<f32>(274f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(587f)), 106f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1757f * _wgslsmith_f_op_f32(min(1709f, global2.d))))), _wgslsmith_f_op_f32(step(-955f, -484f))));
    global0 = array<u32, 26>();
    var var_2 = arg_3;
    return StorageBuffer(_wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(arg_0.x, 129624u)), _wgslsmith_clamp_vec2_u32(arg_3.c.yw, arg_3.c.yx, arg_3.c.wy), vec2<u32>(select(u_input.a, 0u, arg_3.b), ~arg_3.a)), global2.a.xz), ~reverseBits(arg_2), 579f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(-1i)) >= u_input.b.x;
    let x = u_input.a;
    s_output = func_5(~_wgslsmith_add_vec2_u32(~max(global2.a.xy, vec2<u32>(36090u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15404u, 26u)], 26u)])), ~(~global2.a.xy)), ~0i, global2.b, func_4(Struct_4((vec4<i32>(2147483647i, -2147483647i, global2.c.a, -7560i) << (vec4<u32>(global0[_wgslsmith_index_u32(global2.a.x, 26u)], global0[_wgslsmith_index_u32(u_input.a, 26u)], 101u, 53844u) % vec4<u32>(32u))) & select(u_input.b, u_input.b, vec4<bool>(global2.e, global2.e, global2.e, var_0)), Struct_3(~global2.a, ~u_input.b.zyw, global2.c, _wgslsmith_f_op_f32(-global2.d), false), !vec2<bool>(var_0, global2.e), func_1(1u ^ global2.a.x, vec3<f32>(-1217f, global2.d, 858f), -global3.x, var_0), Struct_1(~20537u, global2.e, vec4<u32>(global2.a.x, u_input.a, 0u, 1u), 65130u)), Struct_3(vec3<u32>(_wgslsmith_clamp_u32(0u, 17241u, 0u), u_input.a, ~global2.a.x), -vec3<i32>(global2.c.b, u_input.b.x, global2.c.a), global2.c, -441f, select(true, global2.d < global2.d, var_0)), Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(~global2.a.x, 26u)], min(20715u, 4294967295u), global0[_wgslsmith_index_u32(max(global0[_wgslsmith_index_u32(u_input.a, 26u)], global2.a.x), 26u)]), -(~u_input.b.yyx), Struct_2(2147483647i, -2147483647i), _wgslsmith_div_f32(global2.d, global2.d), true)));
}

