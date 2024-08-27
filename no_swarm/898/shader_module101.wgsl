struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 20>;

var<private> global2: array<vec3<u32>, 9> = array<vec3<u32>, 9>(vec3<u32>(12904u, 0u, 11441u), vec3<u32>(23564u, 0u, 4294967295u), vec3<u32>(30187u, 0u, 4294967295u), vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(42003u, 62119u, 0u), vec3<u32>(1u, 19726u, 4294967295u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(50253u, 0u, 18208u), vec3<u32>(77305u, 0u, 1u));

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: Struct_2) -> u32 {
    return arg_1.b;
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<i32>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = Struct_3(Struct_2(Struct_1(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(global0.a.x - 827f)), global0.b, _wgslsmith_add_u32(15361u, max(arg_2.x, global0.c)), global0.b, countOneBits(-arg_1.x)), _wgslsmith_sub_u32(~func_3(u_input.c.xx, Struct_2(Struct_1(global0.a, global0.b, 62206u, global0.d, 0i), 1u), vec2<i32>(-2147483647i, 1i), Struct_2(Struct_1(vec2<f32>(-1000f, global1[_wgslsmith_index_u32(global0.c, 20u)]), true, u_input.e.x, global0.d, -18331i), 0u)), min(arg_2.x & 93556u, global0.c))), select(vec2<u32>(~arg_2.x, _wgslsmith_sub_u32(0u, global0.c)), vec2<u32>(1u, _wgslsmith_mod_u32(19074u, 31022u)), select(select(vec2<bool>(global0.b, true), vec2<bool>(true, global0.b), global0.d), !vec2<bool>(true, global0.b), global0.b)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.x), ~arg_2), ~(~vec2<u32>(1u, global0.c))) % vec2<u32>(32u)), Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(global0.a + global0.a))), global0.d, _wgslsmith_mult_u32(global0.c, 9246u) >> (13051u % 32u), all(select(vec4<bool>(global0.b, false, global0.d, global0.d), vec4<bool>(global0.b, true, false, global0.d), vec4<bool>(true, global0.b, true, global0.b))), -u_input.b), 60421u));
    global0 = var_0.a.a;
    var var_1 = 4294967295u;
    global0 = var_0.a.a;
    global2 = array<vec3<u32>, 9>();
    return var_0.c;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = arg_2;
    let var_1 = func_2(~u_input.e.wz & (_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_0.b, arg_0.b), arg_0.b) & arg_0.b), max(u_input.c.zy, u_input.c.xy), var_0.b).a.d;
    global1 = array<f32, 20>();
    var var_2 = _wgslsmith_div_f32(1775f, global1[_wgslsmith_index_u32(u_input.a.x, 20u)]);
    var var_3 = !select(select(vec4<bool>(true, !arg_0.a.a.b, global0.b, true), !select(vec4<bool>(arg_2.a.a.b, false, arg_1.a.a.d, true), vec4<bool>(false, var_0.a.a.d, var_1, global0.d), global0.b), -969f <= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1.c.a.c, 20u)])), vec4<bool>(true, any(vec2<bool>(arg_1.c.a.b, arg_1.a.a.d)) || true, false, !arg_1.a.a.d), vec4<bool>(!all(vec3<bool>(false, arg_2.a.a.b, var_0.a.a.b)), !any(vec3<bool>(global0.b, arg_1.a.a.d, arg_0.a.a.b)), arg_0.c.a.d, all(!vec3<bool>(arg_0.a.a.d, false, false))));
    return vec2<u32>(~7438u, arg_0.c.a.c);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    global1 = array<f32, 20>();
    var var_0 = arg_1.c;
    var var_1 = !all(vec3<bool>(all(vec2<bool>(global0.b, true)), all(vec2<bool>(global0.d, global0.b)), true));
    var var_2 = var_0.a;
    var_1 = var_0.a.d;
    return Struct_1(arg_0.a.a, (i32(-1i) * -2147483647i) >= (11554i ^ (select(-28166i, var_2.e, var_2.d) & arg_1.a.a.e)), _wgslsmith_dot_vec2_u32(~(~_wgslsmith_mult_vec2_u32(u_input.e.wz, vec2<u32>(var_2.c, 1u))), func_4(Struct_3(func_2(arg_1.b, vec2<i32>(var_0.a.e, global0.e), vec2<u32>(0u, u_input.e.x)), min(arg_1.b, arg_1.b), func_2(u_input.a.zz, u_input.c.xz, vec2<u32>(global0.c, 28800u))), Struct_3(func_2(u_input.e.zx, u_input.c.zy, vec2<u32>(28832u, 88055u)), vec2<u32>(41174u, var_2.c), Struct_2(Struct_1(vec2<f32>(var_2.a.x, global0.a.x), var_2.b, 31231u, arg_1.a.a.b, -6754i), 0u)), arg_1)), !global0.b, firstLeadingBit(_wgslsmith_add_i32(-54406i, _wgslsmith_mult_i32(25886i, arg_1.a.a.e)) ^ global0.e));
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<i32>) -> vec3<i32> {
    global1 = array<f32, 20>();
    global1 = array<f32, 20>();
    var var_0 = func_2(arg_0.b, u_input.c.yy, _wgslsmith_clamp_vec2_u32(abs(vec2<u32>(arg_0.a.b, _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(77445u, 9u)], vec3<u32>(66717u, 4294967295u, global0.c)))), (arg_0.b << (_wgslsmith_mod_vec2_u32(u_input.a.zw, vec2<u32>(arg_0.b.x, 4294967295u)) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_u32(~u_input.e.zz, _wgslsmith_mult_vec2_u32(arg_0.b, u_input.e.wy)), select(~vec2<u32>(32785u, 0u), u_input.e.zx, !select(vec2<bool>(true, arg_0.c.a.b), vec2<bool>(arg_0.c.a.d, arg_0.c.a.b), vec2<bool>(arg_0.c.a.d, false)))));
    global2 = array<vec3<u32>, 9>();
    global0 = func_1(func_2(arg_0.b, arg_2.xy, vec2<u32>(arg_0.c.a.c, func_2(~vec2<u32>(u_input.a.x, 7699u), abs(arg_2.zx), ~arg_0.b).b)), arg_0);
    return u_input.c >> (firstLeadingBit(u_input.e.zyy) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 20>();
    let var_0 = countOneBits(func_5(Struct_3(Struct_2(func_1(Struct_2(Struct_1(global0.a, false, 1u, true, global0.e), 28161u), Struct_3(Struct_2(Struct_1(global0.a, true, 37806u, global0.b, -11448i), u_input.e.x), u_input.e.xw, Struct_2(Struct_1(global0.a, true, 4294967295u, global0.d, global0.e), 45497u))), abs(0u)), vec2<u32>(~global0.c, abs(global0.c)), func_2(~u_input.a.zz, vec2<i32>(u_input.b, -2147483647i), vec2<u32>(37514u, 32823u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(39171u, 20u)], -418f, 2064f) + vec3<f32>(-205f, 881f, global0.a.x)), vec3<f32>(global1[_wgslsmith_index_u32(27876u, 20u)], global0.a.x, -1550f), select(vec3<bool>(global0.b, global0.d, global0.d), vec3<bool>(global0.b, global0.b, true), vec3<bool>(global0.b, global0.b, global0.d)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global1[_wgslsmith_index_u32(u_input.e.x, 20u)], global0.a.x)), any(select(vec4<bool>(global0.d, false, global0.d, global0.b), vec4<bool>(false, false, global0.d, true), global0.d)))), select(vec3<i32>(global0.e, _wgslsmith_add_i32(-2147483647i, global0.e), max(u_input.b, u_input.b)), u_input.c, vec3<bool>(global0.b & global0.b, true, !global0.d))));
    let var_1 = 23047u;
    global2 = array<vec3<u32>, 9>();
    let var_2 = u_input.c.zz;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -select(firstTrailingBit(countOneBits(vec4<i32>(-27626i, 14177i, 14586i, var_0.x))), _wgslsmith_add_vec4_i32(min(vec4<i32>(global0.e, -2147483647i, 1i, global0.e), vec4<i32>(var_0.x, 22151i, 38735i, global0.e)), vec4<i32>(26816i, u_input.c.x, -1i, 2022i)), select(!vec4<bool>(false, global0.b, false, global0.b), !vec4<bool>(true, false, true, global0.d), !vec4<bool>(global0.b, global0.d, global0.d, false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(select(global0.a.x, global1[_wgslsmith_index_u32(69294u, 20u)], global0.b)), _wgslsmith_div_f32(-614f, -125f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 20u)]), global1[_wgslsmith_index_u32(firstLeadingBit(global0.c), 20u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global1[_wgslsmith_index_u32(global0.c, 20u)], global1[_wgslsmith_index_u32(u_input.e.x, 20u)], 155f) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1[_wgslsmith_index_u32(u_input.e.x, 20u)], 202f, global0.a.x, 108f), vec4<f32>(1068f, global1[_wgslsmith_index_u32(var_1, 20u)], 189f, global0.a.x)))), !vec4<bool>(false, true, global0.d, true))))));
}

