struct Struct_1 {
    a: f32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-131f, 960f, -538f, -773f, 398f, -175f, -301f, -1673f, 1600f, -727f, 1809f, 119f, 286f, 2813f, -843f, 1000f, -2085f, 1000f, -411f, 1274f, -989f, 634f, -758f, 1000f, -562f, -146f, 864f, -465f, 690f);

var<private> global1: array<Struct_1, 20>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: i32) -> u32 {
    global1 = array<Struct_1, 20>();
    var var_0 = true;
    global2 = global1[_wgslsmith_index_u32(u_input.a, 20u)];
    var var_1 = Struct_1(-1794f, u_input.a, global2.c, ~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(30139u, 17590u), select(63984u, u_input.a, false)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u) ^ vec2<u32>(4294967295u, 74729u), select(vec2<u32>(4294967295u, 35593u), vec2<u32>(0u, 59922u), vec2<bool>(true, true)))), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(select(global2.d, 59732u, true), select(4294967295u, 6298u, false)), u_input.a)));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1069f))))), _wgslsmith_mult_u32(~abs(u_input.a), ~0u), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1325f, 383f, 117f, _wgslsmith_f_op_f32(round(1260f))), vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.d, 29u)] * global2.a), 1f, _wgslsmith_f_op_f32(var_1.c.x * global0[_wgslsmith_index_u32(20051u, 29u)]), _wgslsmith_f_op_f32(global2.c.x * -1417f)))), ~1u, firstTrailingBit(~16121u ^ ~global2.b)), 54552u, ~vec2<u32>(min(4294967295u, 4294967295u << (var_1.d % 32u)), _wgslsmith_div_u32(1u, abs(u_input.a))), ~vec3<i32>(arg_1 << (u_input.a % 32u), 640i, arg_0));
    return 1654u;
}

fn func_2() -> u32 {
    let var_0 = ~_wgslsmith_add_vec3_i32(vec3<i32>(1i, _wgslsmith_clamp_i32(1i, 1i, 2147483647i), ~reverseBits(-44084i)), -countOneBits(-vec3<i32>(-2147483647i, -2147483647i, -61954i)));
    let var_1 = ~vec3<u32>(~min(func_3(var_0.x, var_0.x), global2.b), func_3(-_wgslsmith_add_i32(0i, var_0.x), var_0.x), 2654u);
    let var_2 = _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~global2.b, 29u)], -316f);
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(0u, 29u)], u_input.a, global2.c, ~(~global2.d), func_3(_wgslsmith_mod_i32(1i, var_0.x << (~4294967295u % 32u)), var_0.x >> (28124u % 32u)));
    global1 = array<Struct_1, 20>();
    return firstTrailingBit(global2.d) ^ _wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(~(~var_1.x), func_3(~2147483647i, var_0.x & var_0.x)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: i32) -> Struct_1 {
    global2 = arg_1.b;
    let var_0 = Struct_3(-18370i, Struct_1(_wgslsmith_f_op_f32(-arg_1.b.a), 1u, arg_1.b.c, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, min(arg_0.x, arg_1.b.e), global2.d, 4294967295u), vec4<u32>(arg_1.b.b, arg_1.b.b, arg_0.x, 1u) & vec4<u32>(global2.b, arg_0.x, 20896u, arg_1.b.d)), arg_1.b.e));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-803f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(1u, 29u)], 2128f, false)), _wgslsmith_f_op_f32(select(global2.a, 1150f, true))))))), _wgslsmith_f_op_f32(544f * global2.a)));
    global0 = array<f32, 29>();
    global1 = array<Struct_1, 20>();
    return arg_1.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: Struct_1) -> u32 {
    global2 = func_4(vec3<u32>(min(arg_3.e, ~u_input.a), 1u, _wgslsmith_mult_u32(~reverseBits(arg_3.b), func_2())), Struct_3(_wgslsmith_div_i32(5543i, 9343i), Struct_1(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.e, 4294967295u, 23238u), vec3<u32>(global2.e, 1u, 45479u)), 29u)], _wgslsmith_mult_u32(u_input.a, 0u) & arg_2, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-113f, -1577f, global2.c.x, global0[_wgslsmith_index_u32(arg_2, 29u)]) - vec4<f32>(global0[_wgslsmith_index_u32(32752u, 29u)], global2.a, 1000f, global0[_wgslsmith_index_u32(4294967295u, 29u)]))), 1u, _wgslsmith_mult_u32(1u, 23538u))), ~(~(-(arg_1.x & -8147i))));
    var var_0 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-min(vec3<i32>(arg_1.x, 21463i, arg_1.x), vec3<i32>(43779i, arg_1.x, -1i)), abs(firstLeadingBit(vec3<i32>(arg_1.x, 78343i, arg_1.x)))), 1i >> ((global2.e >> (1u % 32u)) % 32u));
    var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(round(894f));
    global0 = array<f32, 29>();
    return arg_3.d;
}

fn func_5(arg_0: u32, arg_1: vec3<bool>) -> Struct_3 {
    var var_0 = 70211u ^ (countOneBits(~func_1(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 29u)], 1000f, global0[_wgslsmith_index_u32(0u, 29u)], 1366f), vec2<i32>(33142i, -1i), u_input.a, Struct_1(-1034f, arg_0, vec4<f32>(global0[_wgslsmith_index_u32(global2.b, 29u)], 1000f, global0[_wgslsmith_index_u32(global2.d, 29u)], -386f), global2.d, 0u))) >> (~10176u % 32u));
    global2 = global1[_wgslsmith_index_u32(40422u, 20u)];
    let var_1 = func_4(vec3<u32>(_wgslsmith_add_u32(global2.b, 0u) ^ func_1(global2.c, vec2<i32>(0i, 778i), arg_0, Struct_1(global0[_wgslsmith_index_u32(global2.b, 29u)], arg_0, global2.c, arg_0, 0u)), _wgslsmith_sub_u32(78744u >> (0u % 32u), arg_0), reverseBits(~arg_0)) ^ ~_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(global2.e, 1u, 17959u), vec3<u32>(u_input.a, 45010u, arg_0)), ~vec3<u32>(global2.e, 25224u, u_input.a)), Struct_3(1i, Struct_1(365f, select(arg_0 << (4294967295u % 32u), ~1u, false & arg_1.x), _wgslsmith_f_op_vec4_f32(min(global2.c, global2.c)), _wgslsmith_dot_vec2_u32(vec2<u32>(101249u, 30806u), ~vec2<u32>(u_input.a, 4294967295u)), 0u)), -14463i);
    let var_2 = select(!vec4<bool>(any(select(vec3<bool>(arg_1.x, arg_1.x, true), arg_1, vec3<bool>(arg_1.x, true, false))), !(arg_1.x & arg_1.x), arg_1.x, true), vec4<bool>(select(all(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), true, true), true, all(arg_1.yx), false), arg_1.x);
    global2 = var_1;
    return Struct_3(~(_wgslsmith_div_i32(-6817i, reverseBits(-59074i)) & (firstLeadingBit(2147483647i) << (~var_1.b % 32u))), global1[_wgslsmith_index_u32(~(~min(_wgslsmith_mult_u32(arg_0, 50619u), arg_0)), 20u)]);
}

fn func_6(arg_0: Struct_3) -> Struct_3 {
    var var_0 = u_input.a == u_input.a;
    global2 = arg_0.b;
    var var_1 = !(((arg_0.a ^ -arg_0.a) >= min(-1i, _wgslsmith_dot_vec2_i32(vec2<i32>(1851i, arg_0.a), vec2<i32>(arg_0.a, arg_0.a)))) | false);
    let var_2 = ~u_input.a | select(arg_0.b.b | global2.d, _wgslsmith_add_u32(27208u & arg_0.b.e, _wgslsmith_sub_u32(u_input.a >> (52894u % 32u), _wgslsmith_sub_u32(arg_0.b.e, 4653u))), false);
    let var_3 = ~(((~11995u >> (0u % 32u)) >> ((func_3(arg_0.a, arg_0.a) << (var_2 % 32u)) % 32u)) << (_wgslsmith_mult_u32(0u, ~(u_input.a >> (0u % 32u))) % 32u));
    return func_5(max(u_input.a, 100211u), vec3<bool>(true, true, global2.b != (84788u & var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 11087u, u_input.a, global2.e), vec4<u32>(u_input.a, u_input.a, global2.b, global2.d)), func_1(global2.c, vec2<i32>(-2147483647i, 1i), global2.e, global1[_wgslsmith_index_u32(14892u, 20u)]), min(global2.d, 54922u)), ~firstTrailingBit(vec4<u32>(81657u, global2.e, 22926u, 38702u))), !vec3<bool>(true, u_input.a < u_input.a, all(vec3<bool>(false, true, false)))));
    var var_1 = !select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 29u)]) + global0[_wgslsmith_index_u32(0u, 29u)]) >= global2.a, !(true || (var_0.a > -14000i)), false);
    let var_2 = Struct_2(Struct_1(1232f, ~(global2.e << (abs(1u) % 32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(14052u, 29u)] - global2.a), global2.a, _wgslsmith_f_op_f32(f32(-1f) * -565f), -235f) + vec4<f32>(func_4(vec3<u32>(1u, 5988u, var_0.b.b), Struct_3(1i, Struct_1(2076f, 33580u, global2.c, 0u, var_0.b.b)), var_0.a).c.x, global2.c.x, 686f, global2.c.x)), ~(~(~u_input.a)), ~abs(~u_input.a)), ~global2.b, vec2<u32>(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(1u, var_0.b.e)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, 29529u), vec2<u32>(1u, 28066u))), _wgslsmith_sub_u32(~var_0.b.b, ~func_1(vec4<f32>(var_0.b.a, var_0.b.a, 644f, global2.a), vec2<i32>(var_0.a, var_0.a), 49000u, global1[_wgslsmith_index_u32(global2.e, 20u)]))), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(var_0.a, var_0.a), var_0.a, 0i >> (var_0.b.b % 32u)), _wgslsmith_div_i32(~(-1i), 42063i), ~(-2147483647i) & ~var_0.a) >> (abs(min(vec3<u32>(u_input.a, global2.d, 5578u), firstLeadingBit(vec3<u32>(72343u, 4294967295u, var_0.b.e)))) % vec3<u32>(32u)));
    let var_3 = var_2;
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b, ~(~vec3<u32>(1u, u_input.a | u_input.a, ~15205u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.c.zyy))), max(vec3<i32>(-2147483647i, var_0.a, -var_2.d.x) << ((select(vec3<u32>(var_2.b, var_0.b.e, var_0.b.d), vec3<u32>(global2.e, 0u, 73691u), vec3<bool>(true, false, false)) | (vec3<u32>(var_0.b.d, 16571u, var_2.a.b) << (vec3<u32>(4294967295u, u_input.a, 4164u) % vec3<u32>(32u)))) % vec3<u32>(32u)), var_2.d), abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, min(1u, var_3.a.b), global2.b), ~(vec3<u32>(47182u, 4294967295u, u_input.a) ^ vec3<u32>(global2.d, u_input.a, var_0.b.e)), select(abs(vec3<u32>(u_input.a, 55876u, 40001u)), ~vec3<u32>(var_2.c.x, var_0.b.e, global2.d), vec3<bool>(true, false, true)))));
}

