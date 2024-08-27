struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(67979i, 0i);

var<private> global1: array<Struct_3, 20>;

var<private> global2: array<u32, 11>;

var<private> global3: array<u32, 27>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>, arg_2: vec4<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(122f));
    global3 = array<u32, 27>();
    var var_1 = Struct_1(_wgslsmith_dot_vec3_u32(arg_2.zzx, ~min(vec3<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(11178u, 11u)], 27u)], 11u)], 11u)], 27u)], arg_2.x, arg_2.x), ~arg_2.wwz)), vec2<bool>(true, false), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, global2[_wgslsmith_index_u32(3444u, 11u)]) << (arg_2.zyy % vec3<u32>(32u)), vec3<u32>(u_input.c.x, global2[_wgslsmith_index_u32(42870u, 11u)], 41850u)) ^ 98258u));
    let var_2 = vec4<bool>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, 14260u, global3[_wgslsmith_index_u32(var_1.a, 27u)]), max(arg_2, arg_2)), _wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(1u, 27u)], ~u_input.c.x)) != 1u, !var_1.b.x, var_1.b.x, all(vec4<bool>(false, any(var_1.b) || true, true, true)));
    let var_3 = Struct_1(max(~(~u_input.c.x) | ~40528u, max(_wgslsmith_clamp_u32(arg_2.x, global2[_wgslsmith_index_u32(0u, 11u)] >> (u_input.a % 32u), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_1.a, 1u), 27u)]), min(0u, 0u) >> (_wgslsmith_mult_u32(0u, 4294967295u) % 32u))), select(var_1.b, vec2<bool>(any(select(vec3<bool>(false, false, var_2.x), var_2.yyy, vec3<bool>(true, var_2.x, true))), _wgslsmith_div_i32(0i, arg_1.x) > -arg_0), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + var_0) - -1082f)) - var_0), countOneBits(47246u));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1383f) + 1374f);
}

fn func_2() -> vec2<bool> {
    let var_0 = -u_input.b;
    var var_1 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(47630u, 27u)], 20u)];
    var var_2 = var_1.a;
    let var_3 = _wgslsmith_f_op_f32(func_3(~global0.x, u_input.b.yy, max(~(~(~vec4<u32>(u_input.c.x, global3[_wgslsmith_index_u32(var_2.d, 27u)], 88953u, 4294967295u))), vec4<u32>(_wgslsmith_div_u32(var_2.d, 19060u << (var_2.d % 32u)), ~(u_input.a ^ 4294967295u), _wgslsmith_add_u32(firstLeadingBit(var_2.a), 4294967295u), abs(4294967295u)))));
    var_2 = var_1.a;
    return select(!vec2<bool>(true, all(select(vec3<bool>(var_2.b.x, true, var_2.b.x), vec3<bool>(var_1.c, true, false), vec3<bool>(var_2.b.x, true, var_1.a.b.x)))), var_2.b, any(vec4<bool>(all(var_1.b.b), any(!vec4<bool>(var_1.b.b.x, true, var_2.b.x, var_2.b.x)), false, all(vec2<bool>(false, false)) || true)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: bool) -> Struct_1 {
    global1 = array<Struct_3, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(992f, 410f, -754f, 692f)) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-431f, arg_1.x, -301f, -715f)))))))));
    global2 = array<u32, 11>();
    global1 = array<Struct_3, 20>();
    let var_1 = !select(func_2(), vec2<bool>(all(vec4<bool>(false, arg_2.x, arg_3, false)), false), select(!select(arg_2.zy, vec2<bool>(arg_3, arg_3), vec2<bool>(true, true)), vec2<bool>(arg_3 & arg_3, all(arg_2.yx)), arg_3));
    return Struct_1(countOneBits(~1u), vec2<bool>(all(var_1), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a << (~48866u % 32u), ~global2[_wgslsmith_index_u32(1u, 11u)]), vec2<u32>(~(49723u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 27u)], 27u)] % 32u)), ~(~1u))));
}

fn func_4(arg_0: Struct_3, arg_1: i32) -> u32 {
    global3 = array<u32, 27>();
    let var_0 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.c)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.c, arg_0.a.c, arg_0.b.c), vec3<f32>(1000f, arg_0.a.c, arg_0.a.c), vec3<bool>(arg_0.b.b.x, arg_0.c, true)))))), !select(!vec3<bool>(true, false, arg_0.c), vec3<bool>(arg_0.c, arg_0.c, false), 62226i > arg_1), !func_1(_wgslsmith_f_op_f32(f32(-1f) * -1231f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a.c, -1076f, -1002f), vec3<f32>(arg_0.a.c, arg_0.b.c, arg_0.a.c), true)), select(vec3<bool>(arg_0.a.b.x, false, true), vec3<bool>(arg_0.b.b.x, arg_0.a.b.x, arg_0.b.b.x), arg_0.b.b.x), true).b.x), !arg_0.a.b.x, u_input.b.x, vec2<u32>(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global2[_wgslsmith_index_u32(1u, 11u)], arg_0.d, u_input.c.x, 5102u), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(0u, 11u)], 54700u, 38110u, global3[_wgslsmith_index_u32(10430u, 27u)]), vec4<u32>(4294967295u, 65443u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 27u)], 27u)], 2724u), vec4<u32>(arg_0.a.d, 4294967295u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 11u)], 27u)], 11u)], u_input.a))), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_0.b.d, global2[_wgslsmith_index_u32(arg_0.a.d & global2[_wgslsmith_index_u32(4294967295u, 11u)], 11u)]), arg_0.b.a)));
    let var_1 = var_0;
    let var_2 = vec3<u32>(_wgslsmith_dot_vec2_u32(var_0.d, vec2<u32>(0u, 4294967295u) | _wgslsmith_sub_vec2_u32(~var_1.d, min(vec2<u32>(4294967295u, arg_0.a.a), vec2<u32>(33726u, 1u)))), arg_0.b.d, reverseBits(abs(~14334u)));
    var var_3 = Struct_2(var_1.a, all(var_0.a.b), var_0.c << (global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_add_u32(countOneBits(var_2.x), ~arg_0.b.a)), 27u)] % 32u), reverseBits(~(vec2<u32>(0u, 36924u) & vec2<u32>(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 27u)], 0u))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)) || !all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true)))) | any(vec2<bool>(true, true));
    let var_1 = global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(func_4(Struct_3(Struct_1(1u, vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -627f) + _wgslsmith_div_f32(-1298f, 246f)), global2[_wgslsmith_index_u32(min(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(min(1u, 0u), 27u)], 11u)], max(global2[_wgslsmith_index_u32(94909u, 11u)], 31107u)), 11u)]), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-633f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(762f, 125f, 1548f))), vec3<bool>(true, u_input.b.x != u_input.b.x, global0.x <= -1273i), all(vec2<bool>(true, true))), true, global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 11u)], 27u)] ^ 4294967295u), -26831i), 27u)], 20u)];
    global2 = array<u32, 11>();
    global0 = vec2<i32>(~global0.x, 23578i);
    global0 = ~_wgslsmith_sub_vec2_i32((u_input.b.xx | u_input.b.yz) << (~(~vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 27u)], var_1.b.d)) % vec2<u32>(32u)), abs(firstLeadingBit(u_input.b.xy)));
    global0 = reverseBits(u_input.b.xx) & u_input.b.zy;
    var var_2 = ~((u_input.c << (max(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 1u), vec2<u32>(53737u, 1u)), vec2<u32>(global3[_wgslsmith_index_u32(u_input.a, 27u)], 1u)) % vec2<u32>(32u))) << (~(vec2<u32>(52574u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 11u)]) >> (~u_input.c % vec2<u32>(32u))) % vec2<u32>(32u)));
    global0 = _wgslsmith_sub_vec2_i32(u_input.b.zx, vec2<i32>(firstLeadingBit(11262i), u_input.b.x)) ^ vec2<i32>(reverseBits(15768i), global0.x);
    let var_3 = var_1.a;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(func_1(var_3.c, vec3<f32>(var_3.c, -881f, -506f), select(vec3<bool>(var_1.a.b.x, true, var_3.b.x), vec3<bool>(var_1.c, var_3.b.x, true), false), !var_3.b.x).a, ~1u, _wgslsmith_sub_u32(abs(4294967295u), var_2.x), ~func_4(global1[_wgslsmith_index_u32(26534u, 20u)], 0i)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, var_1.b.a, 0u, 7408u) & ~vec4<u32>(65351u, 4294967295u, var_2.x, 30875u), ~select(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(var_1.d, 11u)], global3[_wgslsmith_index_u32(var_2.x, 27u)], 73695u), vec4<u32>(17284u, 17720u, 39003u, 27481u), vec4<bool>(true, var_1.b.b.x, var_1.c, false))), var_3.b.x), reverseBits(vec2<i32>(countOneBits(21018i << (1u % 32u)), -u_input.b.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-7273i, global0.x, -1834i, u_input.b.x) & ~vec4<i32>(1i, -42300i, 22162i, global0.x), ~vec4<i32>(global0.x, 38498i, -11322i, 8898i) << (abs(vec4<u32>(var_1.b.d, var_3.d, global2[_wgslsmith_index_u32(18270u, 11u)], var_1.b.d)) % vec4<u32>(32u))), select(min(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, 2147483647i, -11604i, 0i), vec4<i32>(-12063i, global0.x, 9527i, u_input.b.x)), vec4<i32>(global0.x, -28253i, -1i, u_input.b.x)), vec4<i32>(10573i, min(-1i, -19411i), _wgslsmith_add_i32(u_input.b.x, -17719i), -1i >> (0u % 32u)), select(true, true, select(true, var_1.b.b.x, var_3.b.x))), vec4<i32>((u_input.b.x << (4294967295u % 32u)) >> (_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(u_input.a, 27u)], 4294967295u) % 32u), global0.x, min(_wgslsmith_mult_i32(u_input.b.x, global0.x), ~0i), _wgslsmith_mult_i32(-4604i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x)))), _wgslsmith_mult_vec4_u32(vec4<u32>(9574u, abs(var_2.x), firstTrailingBit(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(67447u, 11u)], 27u)]) & 4294967295u, 55716u), ~(~(~vec4<u32>(29177u, global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 11u)], 27u)], 11u)], var_2.x, 1u)))));
}

