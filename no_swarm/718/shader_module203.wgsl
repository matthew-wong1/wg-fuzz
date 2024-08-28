struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: bool;

var<private> global2: f32;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(32333i, -29763i, 1i), -668f, vec3<f32>(143f, 469f, 1807f));

var<private> global4: vec4<u32> = vec4<u32>(4294967295u, 21141u, 107538u, 20605u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(-899f, arg_1, arg_1, select(!vec4<bool>(arg_0.x, global4.x >= global4.x, !global0[_wgslsmith_index_u32(u_input.c, 9u)], arg_0.x), !(!(!arg_0)), arg_0));
    global1 = true;
    global1 = !(!var_0.d.x);
    let var_1 = var_0;
    global0 = array<bool, 9>();
    return -2147483647i;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> i32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-2147483647i, 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c.a.x, arg_2), vec2<i32>(global3.a.x, 0i))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-4084i, 26563i, 15239i), arg_0.b.a), -arg_1.c.a.x, _wgslsmith_mult_i32(u_input.b, global3.a.x)), _wgslsmith_mult_vec3_i32(~global3.a, global3.a)), arg_1.c.b, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(990f * -146f)) + -1308f), _wgslsmith_div_f32(944f, 337f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1215f - arg_1.b.c.x)))));
    var var_1 = max(arg_1.c.a, _wgslsmith_add_vec3_i32(var_0.a, _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i ^ global3.a.x, arg_2 << (global4.x % 32u), var_0.a.x), -vec3<i32>(-18873i, -53017i, arg_0.c.a.x))));
    let var_2 = u_input.e;
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(-643f, -378f), _wgslsmith_f_op_f32(-349f - 1f)))) * arg_0.c.c.xy);
    var var_4 = firstLeadingBit(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(global4.xx, vec2<u32>(49486u, 61390u)), select(18897u, 41979u, false), min(var_2, u_input.c)), (global4.xwz & global4.zxy) & global4.xwz)));
    return 12439i;
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32) -> vec4<u32> {
    global4 = _wgslsmith_mod_vec4_u32(arg_0, ~arg_0);
    var var_0 = -1i;
    let var_1 = 54753i;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-522f))) + global3.b) - _wgslsmith_f_op_f32(-2556f - -752f)), Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 26522i), arg_1.a.xz), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, u_input.b), arg_1.a.xz)), _wgslsmith_div_i32(-9363i, abs(-2147483647i)), func_2(vec4<bool>(global0[_wgslsmith_index_u32(1u, 9u)], true, false, global0[_wgslsmith_index_u32(arg_0.x, 9u)]), Struct_1(arg_1.a, 1620f, global3.c)) ^ _wgslsmith_div_i32(u_input.b, global3.a.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1f)))), _wgslsmith_f_op_vec3_f32(-arg_1.c)), Struct_1(vec3<i32>(func_3(Struct_2(-1534f, arg_1, Struct_1(vec3<i32>(-17387i, 0i, -39864i), global3.b, arg_1.c), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.e, 9u)], global0[_wgslsmith_index_u32(global4.x, 9u)])), Struct_2(-2063f, arg_1, Struct_1(arg_1.a, arg_1.c.x, vec3<f32>(-1000f, -287f, arg_1.c.x)), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.e, 9u)], true, true)), _wgslsmith_dot_vec3_i32(arg_1.a, arg_1.a)), -1i, -17218i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.b - _wgslsmith_f_op_f32(ceil(-1499f))), -375f)), _wgslsmith_f_op_vec3_f32(sign(arg_1.c))), select(select(!vec4<bool>(global0[_wgslsmith_index_u32(62928u, 9u)], global0[_wgslsmith_index_u32(u_input.e, 9u)], global0[_wgslsmith_index_u32(arg_0.x, 9u)], true), vec4<bool>(all(vec2<bool>(false, true)), select(global0[_wgslsmith_index_u32(26734u, 9u)], true, true), false, all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.e, 9u)], true))), select(!vec4<bool>(global0[_wgslsmith_index_u32(84792u, 9u)], global0[_wgslsmith_index_u32(global4.x, 9u)], true, global0[_wgslsmith_index_u32(43106u, 9u)]), !vec4<bool>(global0[_wgslsmith_index_u32(66411u, 9u)], true, global0[_wgslsmith_index_u32(u_input.e, 9u)], false), arg_0.x != 1u)), vec4<bool>(all(select(vec4<bool>(true, true, true, true), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(66429u, 9u)], false, true), true)), !(!global0[_wgslsmith_index_u32(17603u, 9u)]), true, false), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 9u)] | global0[_wgslsmith_index_u32(99925u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], true, !global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec4<bool>(any(vec2<bool>(true, global0[_wgslsmith_index_u32(arg_0.x, 9u)])), false, global3.a.x == -2298i, arg_0.x > 5194u), true)));
    global1 = var_2.d.x;
    return vec4<u32>(1u, max(36294u, u_input.a), ~global4.x, firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.yzy, vec3<u32>(arg_0.x, global4.x, global4.x)), global4.wzz), 59610u)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_clamp_vec4_u32(func_1(_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, global4.x, u_input.e, u_input.e), vec4<u32>(0u, 0u, 4117u, 5770u)), vec4<u32>(u_input.a, firstLeadingBit(u_input.c), global4.x, abs(51862u))), Struct_1(global3.a, -1990f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-864f, -1746f, -448f) - vec3<f32>(global3.b, -931f, global3.c.x)))), global3.a.x), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(~max(vec4<u32>(0u, u_input.a, global4.x, u_input.c), vec4<u32>(u_input.e, global4.x, 45204u, 57043u)), vec4<u32>(_wgslsmith_sub_u32(u_input.c, global4.x), global4.x, select(u_input.c, u_input.d, global0[_wgslsmith_index_u32(u_input.c, 9u)]), global4.x >> (global4.x % 32u))), vec4<u32>(25910u, global4.x, ~global4.x, _wgslsmith_clamp_u32(14511u, abs(38396u), ~53193u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, global4.x) << (global4.yx % vec2<u32>(32u)), max(global4.wy, global4.wy)), 50900u, abs(~global4.x), 4294967295u)), min(vec4<u32>(u_input.d, ~46008u, u_input.c, ~1u), vec4<u32>(~7708u, ~u_input.d, u_input.d, ~global4.x)) & ~vec4<u32>(max(global4.x, u_input.a), _wgslsmith_div_u32(u_input.e, 39252u), ~u_input.a, ~u_input.c));
    let var_0 = all(vec3<bool>(true, all(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)], true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(65123u >> (u_input.c % 32u), 9u)])), (func_1(vec4<u32>(1496u, global4.x, global4.x, global4.x), Struct_1(global3.a, global3.c.x, vec3<f32>(global3.b, global3.b, global3.c.x)), 1i).x & abs(global4.x)) > ~_wgslsmith_sub_u32(global4.x, 53915u)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.b, 0i, u_input.b), vec4<i32>(global3.a.x, global3.a.x, u_input.b, 0i))), vec4<i32>(reverseBits(4175i), _wgslsmith_sub_i32(u_input.b, global3.a.x), u_input.b << (15814u % 32u), firstTrailingBit(-14524i))), vec3<u32>(4294967295u, 46611u, _wgslsmith_add_u32(firstTrailingBit(abs(u_input.a)), ~(~11033u))));
}

