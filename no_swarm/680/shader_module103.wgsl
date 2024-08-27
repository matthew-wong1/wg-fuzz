struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
    d: f32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(1u, 90686u, 0u, 56495u, 111461u, 83806u, 38794u, 3707u, 90069u, 40438u, 8199u, 34149u, 6280u, 1u, 0u, 0u, 12830u, 4294967295u, 4294967295u, 0u, 0u, 26137u, 27365u, 18136u);

var<private> global1: u32 = 4294967295u;

var<private> global2: vec3<i32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    global0 = array<u32, 24>();
    let var_0 = arg_1;
    global2 = vec3<i32>(~firstLeadingBit(_wgslsmith_clamp_i32(arg_2.d.x, 2147483647i, 1i) ^ _wgslsmith_add_i32(-1i, u_input.a.x)), min(-(min(-1i, -1i) >> (~arg_2.b % 32u)), u_input.a.x), abs(u_input.a.x) >> (select(abs(~arg_2.a), arg_2.b, 43885u == _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(65333u, 24u)], global0[_wgslsmith_index_u32(arg_2.a, 24u)]), vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(19996u, 24u)], 25022u))) % 32u));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.b, firstTrailingBit(4294967295u)), ~select(vec2<u32>(0u, global0[_wgslsmith_index_u32(arg_2.b, 24u)]), vec2<u32>(arg_0.b, arg_0.b), arg_0.c) | countOneBits(vec2<u32>(1u, arg_0.b))), 78250u, false, ~vec4<i32>(arg_0.d.x, select(arg_0.d.x, u_input.a.x << (arg_0.a % 32u), true), select(i32(-1i) * -1i, ~global2.x, false && arg_0.c), _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, u_input.a.x, -2147483647i, 0i), arg_2.d, vec4<bool>(false, arg_2.c, false, true)), -vec4<i32>(0i, u_input.a.x, arg_0.e, -48140i))), 2147483647i);
    global2 = ~vec3<i32>(_wgslsmith_mod_i32(-81494i, -arg_0.e) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 14252u, arg_0.a, arg_2.a), vec4<u32>(arg_0.b, var_1.a, var_1.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56620u, 24u)], 24u)]) << (vec4<u32>(arg_0.a, 56829u, arg_2.a, 18487u) % vec4<u32>(32u))) % 32u), 0i, i32(-1i) * -_wgslsmith_add_i32(global2.x, u_input.a.x));
    return ~global2.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = false;
    var var_1 = select(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -1i, arg_2.e, global2.x) | (arg_0.d | vec4<i32>(u_input.a.x, -1i, 1497i, 0i)), -(arg_0.d >> (vec4<u32>(arg_1.x, 0u, 51160u, arg_2.a) % vec4<u32>(32u)))), firstLeadingBit(arg_0.d), false);
    var var_2 = arg_2;
    let var_3 = arg_0.c;
    var_1 = _wgslsmith_clamp_vec4_i32(reverseBits(arg_2.d ^ ~vec4<i32>(global2.x, u_input.a.x, -1i, arg_2.d.x)) & vec4<i32>(abs(u_input.a.x), i32(-1i) * -arg_0.e, _wgslsmith_div_i32(func_3(arg_0, -735f, Struct_1(arg_1.x, 54827u, var_2.c, arg_2.d, -1i)), ~arg_0.e), arg_2.d.x), ~(-(abs(arg_0.d) & var_2.d)), -vec4<i32>(global2.x, var_2.e, _wgslsmith_mod_i32(_wgslsmith_sub_i32(var_2.d.x, var_1.x), _wgslsmith_dot_vec2_i32(var_1.yw, global2.yx)), -635i));
    return 1102f;
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> u32 {
    global0 = array<u32, 24>();
    global2 = select(firstLeadingBit(countOneBits(u_input.a)), arg_1.d.wxx, arg_0 < arg_0);
    let var_0 = true;
    var var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_clamp_u32(~((arg_1.a ^ arg_1.a) >> (22801u % 32u)), abs(abs(_wgslsmith_sub_u32(arg_1.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(93299u, 24u)], 24u)]))), firstTrailingBit(global0[_wgslsmith_index_u32(109u, 24u)])), ~reverseBits(_wgslsmith_add_u32(0u, arg_1.b)) ^ 1u, arg_1.c, -(~countOneBits(firstLeadingBit(arg_1.d))), -arg_1.e >> (arg_1.a % 32u));
    return arg_1.b;
}

fn func_5(arg_0: f32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = arg_2.yzz;
    global0 = array<u32, 24>();
    global2 = ~arg_2.yyz;
    var_0 = arg_2.xxx;
    var var_1 = vec2<bool>(!(1881f <= _wgslsmith_f_op_f32(sign(arg_0))), countOneBits(1u) >= (0u << (arg_1.x % 32u)));
    return firstLeadingBit(arg_1.xx) | _wgslsmith_add_vec2_u32(select(vec2<u32>(~1u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12381u, 24u)], 24u)]), arg_1.xx, var_1.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_1.x), arg_1.x), min(vec2<u32>(75835u, 64141u) | arg_1.xz, arg_1.zx), ~(~vec2<u32>(4294967295u, arg_1.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-191f, -2282f, true)) + 1000f)), vec3<u32>(~(75373u & min(0u, global0[_wgslsmith_index_u32(41256u, 24u)])), func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(220f, 816f)), _wgslsmith_f_op_f32(func_2(Struct_1(1u, 1u, false, vec4<i32>(global2.x, 16278i, global2.x, 3287i), u_input.a.x), vec3<u32>(86162u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], global0[_wgslsmith_index_u32(44878u, 24u)]), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], true, vec4<i32>(1i, 2147483647i, -1i, u_input.a.x), -23177i))))), Struct_1(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(12700u, 24u)], 24u)], 24u)], 24u)], 24u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8042u, 24u)], 24u)] % 32u), 24u)], global0[_wgslsmith_index_u32(31367u, 24u)], true, countOneBits(vec4<i32>(-36871i, global2.x, u_input.a.x, 1i)), global2.x), select(-vec2<i32>(-15116i, u_input.a.x), vec2<i32>(29317i, u_input.a.x), true)), 4294967295u), -(~firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(-13613i, -7906i, u_input.a.x, u_input.a.x), vec4<i32>(8026i, global2.x, global2.x, u_input.a.x), vec4<i32>(-26612i, 37922i, u_input.a.x, 11043i)))));
    let var_1 = Struct_1(~func_5(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1473f, -1223f)), ~(vec3<u32>(9254u, var_0.x, 16771u) | vec3<u32>(var_0.x, global0[_wgslsmith_index_u32(153029u, 24u)], global0[_wgslsmith_index_u32(var_0.x, 24u)])), firstTrailingBit(countOneBits(vec4<i32>(u_input.a.x, global2.x, 2147483647i, u_input.a.x)))).x, 1u, 18028u == var_0.x, countOneBits(-min(-vec4<i32>(global2.x, -45990i, 0i, 48247i), vec4<i32>(-2147483647i, -1i, 1i, 2147483647i))), _wgslsmith_add_i32(_wgslsmith_mod_i32(firstLeadingBit(_wgslsmith_div_i32(-2147483647i, 2607i)), _wgslsmith_mult_i32(-2147483647i, u_input.a.x >> (49570u % 32u))), 51145i));
    var_0 = _wgslsmith_sub_vec2_u32(abs(~(~reverseBits(vec2<u32>(var_1.a, 36877u)))), firstTrailingBit(~vec2<u32>(var_0.x, global0[_wgslsmith_index_u32(113125u, 24u)]) | select(~vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 24u)]), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], var_0.x) & vec2<u32>(4294967295u, 45246u), vec2<bool>(true, true))));
    global2 = abs(vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a.x, -3438i), -global2.xx), -2147483647i, _wgslsmith_clamp_i32(40883i, ~38686i, ~func_3(var_1, 1486f, var_1))));
    global1 = 4294967295u;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = u_input.a;
    let var_0 = true;
    var var_1 = _wgslsmith_div_vec4_i32(~((vec4<i32>(-1i) * -vec4<i32>(global2.x, -37380i, -18535i, global2.x)) ^ select(countOneBits(vec4<i32>(u_input.a.x, -19345i, global2.x, -1i)), vec4<i32>(-2147483647i, 2147483647i, global2.x, 28418i) << (vec4<u32>(1u, global0[_wgslsmith_index_u32(86496u, 24u)], global0[_wgslsmith_index_u32(98625u, 24u)], global0[_wgslsmith_index_u32(0u, 24u)]) % vec4<u32>(32u)), select(vec4<bool>(true, false, false, var_0), vec4<bool>(var_0, false, false, true), vec4<bool>(var_0, true, var_0, false)))), vec4<i32>(_wgslsmith_mult_i32(abs(u_input.a.x), _wgslsmith_sub_i32(10285i, u_input.a.x) ^ -1i), -global2.x, 0i, 1i));
    var var_2 = func_1();
    let var_3 = _wgslsmith_sub_vec4_u32(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(62949u, var_2.b, 1u, 0u), vec4<u32>(var_2.b, 23399u, var_2.b, var_2.a) << (vec4<u32>(31797u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 24u)], 24u)], 9559u, var_2.a) % vec4<u32>(32u))))), vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~7656u, var_2.b ^ 52952u) & global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_f32(f32(-1f) * -196f), func_1(), vec2<i32>(u_input.a.x, var_2.e)), 24u)], 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], _wgslsmith_mod_u32(0u, _wgslsmith_sub_u32(4294967295u, global0[_wgslsmith_index_u32(var_2.a, 24u)]) | 4294967295u), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, global0[_wgslsmith_index_u32(var_2.a, 24u)], global0[_wgslsmith_index_u32(3785u, 24u)])), vec3<u32>(1u, var_2.b, 5501u)), var_2.b)));
    var_1 = var_2.d;
    var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1030f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(150f - 171f))))), global2.x, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, -global2.x), 1i, -global2.x), -141f, var_3.wxy);
}

