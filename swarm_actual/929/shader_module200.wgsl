struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11>;

var<private> global1: array<vec3<u32>, 14> = array<vec3<u32>, 14>(vec3<u32>(0u, 55234u, 4294967295u), vec3<u32>(31363u, 76858u, 24853u), vec3<u32>(68545u, 0u, 3707u), vec3<u32>(0u, 44534u, 25980u), vec3<u32>(4294967295u, 23662u, 6428u), vec3<u32>(9377u, 10339u, 14800u), vec3<u32>(12473u, 0u, 0u), vec3<u32>(1u, 1u, 98422u), vec3<u32>(10225u, 1u, 55935u), vec3<u32>(72433u, 22442u, 0u), vec3<u32>(1u, 1u, 2717u), vec3<u32>(0u, 0u, 42637u), vec3<u32>(1u, 25674u, 64251u), vec3<u32>(1u, 1u, 290u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_0 = Struct_1(select(all(!(!vec4<bool>(arg_1.c, arg_1.c, global0[_wgslsmith_index_u32(arg_1.b.x, 11u)], false))), !arg_1.a, false), global1[_wgslsmith_index_u32(~0u >> (u_input.b % 32u), 14u)], u_input.a.x <= 53816u, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.d.x + -302f))), 626f), arg_1.d)));
    var var_1 = arg_1;
    var_0 = Struct_1(firstTrailingBit(_wgslsmith_div_i32(abs(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.c, -21740i, u_input.c), vec4<i32>(-8835i, 32820i, u_input.c, -2147483647i)))) != firstTrailingBit(u_input.c), vec3<u32>(~max(arg_1.b.x | u_input.a.x, var_1.b.x), _wgslsmith_sub_u32(6109u, abs(0u)), ~(1u & (arg_1.b.x << (var_0.b.x % 32u)))), !global0[_wgslsmith_index_u32(arg_1.b.x & var_1.b.x, 11u)], vec2<f32>(arg_1.d.x, var_0.d.x));
    return true;
}

fn func_2() -> vec4<u32> {
    var var_0 = !(2541i >= max(_wgslsmith_mod_i32(-23875i, u_input.c), ~u_input.c));
    let var_1 = Struct_1(global0[_wgslsmith_index_u32(~reverseBits(u_input.b), 11u)], max(countOneBits((vec3<u32>(u_input.b, 0u, u_input.a.x) << (vec3<u32>(79637u, 0u, 12231u) % vec3<u32>(32u))) & ~global1[_wgslsmith_index_u32(1u, 14u)]), _wgslsmith_clamp_vec3_u32(reverseBits(u_input.a), vec3<u32>(1u, _wgslsmith_sub_u32(u_input.b, u_input.a.x), 38818u), ~u_input.a)), (select(func_3(-1985f, Struct_1(global0[_wgslsmith_index_u32(1u, 11u)], vec3<u32>(u_input.b, 0u, 46742u), global0[_wgslsmith_index_u32(0u, 11u)], vec2<f32>(-2772f, -921f))), func_3(-393f, Struct_1(false, u_input.a, true, vec2<f32>(510f, -957f))), any(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)], global0[_wgslsmith_index_u32(59489u, 11u)]))) && ((u_input.c | u_input.c) >= 1i)) || ((32003i & u_input.c) == (i32(-1i) * -2147483647i)), vec2<f32>(-1917f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(410f))))));
    let var_2 = true;
    return min(vec4<u32>(1u, 0u, firstLeadingBit(_wgslsmith_div_u32(var_1.b.x, 7087u)) ^ 10748u, u_input.a.x ^ var_1.b.x), _wgslsmith_add_vec4_u32(~(vec4<u32>(4294967295u, 4294967295u, var_1.b.x, 8578u) >> (abs(vec4<u32>(0u, var_1.b.x, 8834u, 48126u)) % vec4<u32>(32u))), select(vec4<u32>(38209u, var_1.b.x, var_1.b.x, ~27965u), vec4<u32>(67213u, reverseBits(4294967295u), 1u, 1u), _wgslsmith_f_op_f32(ceil(var_1.d.x)) <= _wgslsmith_f_op_f32(var_1.d.x + var_1.d.x))));
}

fn func_1(arg_0: u32, arg_1: vec3<bool>, arg_2: u32) -> u32 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_0 = countOneBits(~firstTrailingBit(-vec2<i32>(u_input.c, -1i))) << (_wgslsmith_mod_vec2_u32((_wgslsmith_mult_vec2_u32(vec2<u32>(9033u, 80384u), vec2<u32>(0u, u_input.a.x)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(13011u, 0u), vec2<u32>(u_input.a.x, 78661u), vec2<u32>(1u, arg_0))) & (vec2<u32>(arg_0, 34806u) >> (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 21954u), u_input.a.yx) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 1u) & vec2<u32>(0u, arg_0), ~u_input.a.zx) >> (u_input.a.yy % vec2<u32>(32u))) % vec2<u32>(32u));
    global1 = array<vec3<u32>, 14>();
    var var_1 = func_2();
    return reverseBits(~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 4294967295u, 37996u, 8718u) >> ((vec4<u32>(arg_0, 15857u, var_1.x, 0u) >> (vec4<u32>(1u, u_input.b, 5827u, u_input.a.x) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(~vec4<u32>(44018u, 0u, 4294967295u, var_1.x), ~vec4<u32>(arg_2, 1u, 20215u, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 11>();
    var var_0 = (func_1(20338u, vec3<bool>(select(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(36110u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), false, u_input.a.x == 4294967295u), u_input.b) >= firstLeadingBit(_wgslsmith_div_u32(func_2().x, ~18689u))) != !(~firstTrailingBit(u_input.c) >= min(-1i & u_input.c, 9282i | u_input.c));
    var var_1 = 0u;
    var var_2 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, abs(~func_2().x)), 11u)], select(vec3<u32>(_wgslsmith_div_u32(~u_input.b, u_input.b), ~(~u_input.b), 51086u), vec3<u32>(54851u, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 38528u, 4294967295u, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x), vec4<u32>(15796u, 42641u, u_input.a.x, 4294967295u))), 62579u), false), !global0[_wgslsmith_index_u32(select(~(~u_input.b), ~u_input.b, global0[_wgslsmith_index_u32(u_input.b, 11u)]), 11u)], _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -1000f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1800f, 1036f) + vec2<f32>(977f, -156f))))), !select(select(vec2<bool>(false, true), vec2<bool>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.b, 11u)]), true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(25085u, 11u)]), true))));
    let var_3 = Struct_1(any(vec3<bool>(!any(vec2<bool>(true, false)), global0[_wgslsmith_index_u32(select(4799u, func_2().x, true), 11u)], true)), abs(_wgslsmith_clamp_vec3_u32(u_input.a, u_input.a, vec3<u32>(1u, u_input.a.x ^ var_2.b.x, countOneBits(u_input.b)))), !any(!vec2<bool>(var_2.c, var_2.c)), var_2.d);
    var var_4 = Struct_1(all(!select(select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 11u)], var_3.a, false, true), vec4<bool>(false, var_3.c, var_3.a, global0[_wgslsmith_index_u32(var_3.b.x, 11u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(var_3.b.x, 11u)], true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(104784u, 11u)], true, global0[_wgslsmith_index_u32(var_2.b.x, 11u)], false), vec4<bool>(true, true, true, true)), any(vec3<bool>(false, var_2.c, true)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(~var_2.b.x, u_input.a.x, var_3.b.x), ~global1[_wgslsmith_index_u32(u_input.b, 14u)], ~vec3<u32>(var_3.b.x, select(var_2.b.x, 24162u, true), ~4294967295u)), true, var_2.d);
    var_0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(~(~(vec4<u32>(var_4.b.x, 0u, 1u, var_4.b.x) >> (vec4<u32>(u_input.a.x, 0u, 763u, var_2.b.x) % vec4<u32>(32u)))), vec4<u32>(1u, 18717u, 16589u, ~var_4.b.x), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u | var_4.b.x, countOneBits(var_3.b.x), abs(2127u), _wgslsmith_mod_u32(3426u, var_3.b.x)), func_2())), vec2<u32>(0u, ~u_input.a.x) | (_wgslsmith_mult_vec2_u32(vec2<u32>(var_4.b.x, var_3.b.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 0u), var_4.b.yy, vec2<u32>(var_3.b.x, 53501u))) | vec2<u32>(12818u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u))), vec4<i32>(reverseBits(select(9751i, u_input.c, var_4.a) << (_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(6123u, var_2.b.x, 4294967295u)) % 32u)), -7931i & abs(-27546i >> (var_4.b.x % 32u)), abs(abs(-2186i)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(9520i, 0i, u_input.c, u_input.c), vec4<i32>(2147483647i, -1i, u_input.c, 1i) & vec4<i32>(-10090i, -36661i, u_input.c, -10931i))), ~(-vec2<i32>(u_input.c, u_input.c)), vec4<i32>(u_input.c >> (var_4.b.x % 32u), _wgslsmith_mod_i32(-abs(-55775i), _wgslsmith_clamp_i32(u_input.c, 13173i, -47147i) << (var_2.b.x % 32u)), u_input.c, 1i));
}

