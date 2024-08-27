struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<Struct_2, 16>;

var<private> global2: vec3<bool>;

var<private> global3: array<i32, 25>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 16u)];
    var var_1 = !select(var_0.c, any(global2.yx), global2.x);
    var var_2 = ~(~34910u);
    global3 = array<i32, 25>();
    var var_3 = 0i;
    return ~_wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(~var_0.a.b.x, ~1u, var_0.a.c.x | global0[_wgslsmith_index_u32(2553u, 20u)], u_input.a & global0[_wgslsmith_index_u32(69476u, 20u)])), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 20u)], 0u, 4294967295u, 68166u), vec4<u32>(u_input.a, 43790u, global0[_wgslsmith_index_u32(4294967295u, 20u)], var_0.b.b.x))));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32, arg_3: i32) -> bool {
    global1 = array<Struct_2, 16>();
    global1 = array<Struct_2, 16>();
    let var_0 = arg_3 < arg_3;
    global2 = select(vec3<bool>(true, all(vec4<bool>(arg_1.c, true, true, all(vec4<bool>(true, false, var_0, false)))), !arg_1.c), vec3<bool>(false, true, true), select(arg_0.x <= ~arg_1.b.c.x, true, false));
    var var_1 = vec4<u32>(~func_3(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.a.e.zw, vec2<i32>(-2147483647i, arg_3), vec2<i32>(0i, -5394i)), arg_1.a.d.zy), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.a, arg_1.a.a, 1488f) + vec3<f32>(arg_1.b.a, arg_1.b.a, arg_1.a.a)))), 4294967295u, ~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec2_u32(arg_0, abs(arg_1.a.b))), ~u_input.a);
    return global2.x;
}

fn func_1() -> Struct_2 {
    let var_0 = min(abs(-(~_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(1u, 25u)], global3[_wgslsmith_index_u32(40040u, 25u)]))), -(~0i));
    let var_1 = global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 16u)];
    let var_2 = select(!vec4<bool>(func_2(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 904u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 20u)], 20u)], 1u)), Struct_2(Struct_1(-239f, var_1.a.b, vec3<u32>(var_1.b.c.x, 25195u, 7561u), vec3<i32>(var_0, 1i, -37854i), vec4<i32>(-25718i, var_0, var_1.a.e.x, 0i)), Struct_1(-1393f, vec2<u32>(1u, global0[_wgslsmith_index_u32(var_1.a.c.x, 20u)]), vec3<u32>(var_1.b.c.x, u_input.a, var_1.b.c.x), vec3<i32>(-33373i, var_1.b.e.x, var_0), vec4<i32>(105751i, global3[_wgslsmith_index_u32(36703u, 25u)], -7593i, 1i)), global2.x), firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)]), _wgslsmith_div_i32(global3[_wgslsmith_index_u32(u_input.a, 25u)], var_1.b.e.x)), _wgslsmith_div_i32(var_0, var_0) != -14891i, true, var_1.c), vec4<bool>(true, (all(vec4<bool>(global2.x, false, true, var_1.c)) || (global2.x | var_1.c)) || false, max(_wgslsmith_div_i32(22450i, -1i), _wgslsmith_div_i32(var_1.a.d.x, 17439i)) < -(-2147483647i | global3[_wgslsmith_index_u32(4294967295u, 25u)]), 1i < _wgslsmith_mult_i32(23398i, _wgslsmith_dot_vec2_i32(var_1.a.e.zy, vec2<i32>(28780i, var_1.a.e.x)))), global2.x);
    var var_3 = var_1.b.c;
    return global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(var_1.a.c.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_1.a.b, vec2<u32>(18993u, var_3.x)), 0u | global0[_wgslsmith_index_u32(u_input.a, 20u)], 0u << (u_input.a % 32u)))), 16u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    var var_0 = vec4<u32>(18897u, 0u >> (~(72041u << (u_input.a % 32u)) % 32u), ~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, global0[_wgslsmith_index_u32(31248u, 20u)]), 20u)], arg_1.a.c.x), arg_1.a.c.x) | _wgslsmith_sub_vec4_u32(select(_wgslsmith_clamp_vec4_u32(vec4<u32>(12240u, global0[_wgslsmith_index_u32(arg_1.a.b.x, 20u)], 19389u, arg_1.b.b.x) ^ vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.a, 20u)], arg_1.a.b.x), vec4<u32>(arg_1.a.c.x, global0[_wgslsmith_index_u32(arg_0.a.c.x, 20u)], 100044u, global0[_wgslsmith_index_u32(arg_1.b.c.x, 20u)]) ^ vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.c.x, 20u)], 20u)], global0[_wgslsmith_index_u32(arg_0.b.c.x, 20u)], 21492u), vec4<u32>(44567u, global0[_wgslsmith_index_u32(4294967295u, 20u)], arg_1.b.b.x, 4294967295u)), ~abs(vec4<u32>(arg_1.a.b.x, 87796u, 66567u, global0[_wgslsmith_index_u32(58705u, 20u)])), true), vec4<u32>(select(firstTrailingBit(1u), _wgslsmith_div_u32(12792u, global0[_wgslsmith_index_u32(arg_0.b.b.x, 20u)]), !arg_0.c), 0u, firstTrailingBit(min(arg_0.b.b.x, arg_1.a.c.x)), ~1u));
    var var_1 = Struct_2(Struct_1(arg_1.b.a, ~arg_0.a.b, vec3<u32>(1u, global0[_wgslsmith_index_u32(67592u, 20u)], ~1u), ~_wgslsmith_sub_vec3_i32(-vec3<i32>(arg_0.a.e.x, global3[_wgslsmith_index_u32(arg_1.a.b.x, 25u)], 52614i), arg_0.a.e.wyw), arg_0.b.e << (~abs(vec4<u32>(global0[_wgslsmith_index_u32(1u, 20u)], 56428u, arg_0.a.c.x, 2675u)) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(select(1f, 1831f, arg_0.c)), ~((arg_1.a.b << (var_0.zy % vec2<u32>(32u))) >> (~vec2<u32>(var_0.x, 24696u) % vec2<u32>(32u))), var_0.zwz, _wgslsmith_add_vec3_i32(countOneBits(-arg_0.b.e.ywy), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_0.a.e.wyw, vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 25u)], arg_1.a.d.x, 6760i), vec3<i32>(arg_1.b.d.x, arg_1.a.d.x, 2147483647i)), arg_1.b.e.wwz)), _wgslsmith_mod_vec4_i32(arg_0.b.e, vec4<i32>(arg_1.a.d.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(925i, arg_0.b.e.x, -36708i, arg_1.b.e.x), arg_1.a.e), ~17004i))), !global2.x);
    let var_2 = firstLeadingBit(-vec4<i32>(global3[_wgslsmith_index_u32(reverseBits(var_1.a.b.x), 25u)], 0i, i32(-1i) * -var_1.a.e.x, var_1.b.d.x));
    let var_3 = func_1();
    var_0 = ~(~(~_wgslsmith_mod_vec4_u32(min(vec4<u32>(45743u, u_input.a, 14491u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(var_3.b.b.x, 20u)], u_input.a, 29028u, 3238u)), vec4<u32>(1u, var_0.x, u_input.a, 0u))));
    return select(vec4<u32>(~4294967295u, ~firstLeadingBit(45255u), var_0.x & ~0u, func_3(-(~(-1i)), vec3<f32>(_wgslsmith_f_op_f32(floor(-240f)), _wgslsmith_f_op_f32(f32(-1f) * -332f), -1098f))), max(max(~countOneBits(vec4<u32>(arg_0.b.c.x, 1u, 1u, 68860u)), vec4<u32>(~1u, 1u, 67434u, u_input.a)), max(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(37426u, 4294967295u, var_1.a.c.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.b.x, 20u)], 20u)])), vec4<u32>(0u, 0u, global0[_wgslsmith_index_u32(1u, 20u)], 1u), ~vec4<u32>(arg_0.a.c.x, 4294967295u, 52566u, var_0.x)), ~(vec4<u32>(arg_1.a.b.x, 0u, arg_0.a.b.x, arg_0.a.b.x) | vec4<u32>(4294967295u, u_input.a, 0u, global0[_wgslsmith_index_u32(var_3.b.b.x, 20u)])))), var_1.c && func_2(vec2<u32>(~1u, u_input.a), var_3, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_0.b.b.x, 0u, arg_0.b.b.x, var_0.x)), select(vec4<u32>(arg_1.b.b.x, 21129u, 0u, arg_0.b.c.x), vec4<u32>(4294967295u, 35135u, 1u, 1821u), var_1.c)), 2147483647i));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    global2 = vec3<bool>(true, !(!all(vec3<bool>(global2.x, true, global2.x))) | (global2.x && !global2.x), global2.x);
    let var_0 = global2.x & !(!global2.x);
    let var_1 = arg_0.a;
    var var_2 = func_1();
    global0 = array<u32, 20>();
    return Struct_2(var_2.a, arg_0, arg_2.x != _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_add_u32(arg_3, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !vec3<bool>(!(all(vec4<bool>(true, global2.x, true, global2.x)) || global2.x), any(global2.zx), global2.x);
    var var_0 = func_5(Struct_1(1f, abs(vec2<u32>(~2559u, 4294967295u)), vec3<u32>(35133u, global0[_wgslsmith_index_u32(67058u, 20u)] << ((global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)] | 37021u) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 20201u, u_input.a, global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 20u)], 50302u, 0u))), vec3<i32>(global3[_wgslsmith_index_u32(63249u, 25u)], -62859i, 2147483647i ^ ~global3[_wgslsmith_index_u32(1u, 25u)]), vec4<i32>(-2147483647i, _wgslsmith_add_i32(20682i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(42188u, 47505u), vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 20u)])), 25u)]), ~global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, 16487u), 25u)], _wgslsmith_dot_vec2_i32(vec2<i32>(1354i, 2147483647i), vec2<i32>(2147483647i, global3[_wgslsmith_index_u32(59432u, 25u)])) & 2147483647i)), -244f, _wgslsmith_sub_vec3_u32(~(~(vec3<u32>(0u, 4294967295u, u_input.a) & vec3<u32>(1u, global0[_wgslsmith_index_u32(1u, 20u)], u_input.a))), ~(select(vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 2420u, 36345u), vec3<bool>(false, false, global2.x)) << (firstTrailingBit(vec3<u32>(4294967295u, u_input.a, 0u)) % vec3<u32>(32u)))), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(8848u, 12572u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 20u)], 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<u32>(1u, u_input.a, 0u, global0[_wgslsmith_index_u32(u_input.a, 20u)])), ~1u, 39747u | u_input.a, 4294967295u | u_input.a), func_4(func_1(), global1[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(27152u, 20u)], 16u)])), 20u)]);
    let var_1 = _wgslsmith_clamp_i32(45942i, 48101i, min(_wgslsmith_div_i32(-1i, -1124i) & max(var_0.a.d.x, 2147483647i), 32471i) & ~func_5(var_0.a, _wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.b.x, var_0.a.b.x, 36455u), var_0.b.c), 28905u).a.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_u32(5287u, var_0.a.c.x)), vec4<u32>(func_1().a.c.x >> (max(9254u, func_3(547i, vec3<f32>(-222f, -545f, -158f))) % 32u), ((var_0.a.b.x ^ var_0.b.b.x) ^ ~65693u) & ~u_input.a, ~func_3(-51430i, vec3<f32>(var_0.a.a, -1000f, var_0.b.a)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.c.x, 20u)], 20u)], 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 20u)], 21276u), vec4<u32>(5715u, 4294967295u, var_0.b.c.x, u_input.a)), ~vec4<u32>(var_0.b.b.x, var_0.b.c.x, u_input.a, 24356u)) ^ _wgslsmith_mod_u32(~4294967295u, ~0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.a) * _wgslsmith_f_op_f32(abs(1843f))), var_0.a.a, func_1().b.b >> (var_0.a.c.zy % vec2<u32>(32u)));
}

