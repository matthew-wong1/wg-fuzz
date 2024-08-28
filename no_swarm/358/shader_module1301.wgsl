struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false));

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: Struct_1;

var<private> global3: u32;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = arg_0;
    var_0 = arg_0;
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec2<bool>) -> u32 {
    let var_0 = vec4<i32>(-26748i, 2147483647i << (arg_0.b.x % 32u), (_wgslsmith_add_i32(reverseBits(-59394i), select(arg_0.a, 1i, true)) & -9546i) >> (countOneBits(~(~u_input.c)) % 32u), _wgslsmith_sub_i32(abs(~func_3(arg_0)), -30900i));
    let var_1 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(42014i, 2147483647i), global2.a, _wgslsmith_dot_vec4_i32(~reverseBits(var_0), max(~vec4<i32>(u_input.a.x, -1i, 1i, 1i), vec4<i32>(var_0.x, -2147483647i, arg_0.a, -2147483647i) << (vec4<u32>(u_input.c, 0u, 14732u, 1u) % vec4<u32>(32u))))), select(u_input.b.yyz, _wgslsmith_mod_vec3_i32(~var_0.yyx, var_0.wxx), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.b.zx, arg_0.b.yy | global2.b.yy), 4294967295u), 13u)]));
    let var_2 = Struct_1(~max(_wgslsmith_add_i32(var_1.x, -29074i), var_1.x), vec3<u32>(_wgslsmith_add_u32(global2.b.x, u_input.c & arg_0.b.x), _wgslsmith_sub_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.c), ~u_input.c), u_input.c), reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b.x, global2.b.x, 40594u, arg_0.b.x), vec4<u32>(1u, 34918u, global2.b.x, 51851u) << (vec4<u32>(global2.b.x, 19592u, u_input.c, u_input.c) % vec4<u32>(32u))))));
    global0 = array<vec3<bool>, 13>();
    let var_3 = vec3<u32>(~_wgslsmith_div_u32(firstTrailingBit(8131u), arg_0.b.x | u_input.c), _wgslsmith_dot_vec3_u32(~global2.b, _wgslsmith_div_vec3_u32(arg_0.b, ~(vec3<u32>(global2.b.x, 4294967295u, 18825u) & var_2.b))), arg_0.b.x);
    return ~(~abs(~arg_0.b.x));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = global2.a;
    let var_1 = ~vec2<u32>(~func_2(Struct_1(global2.a, vec3<u32>(global2.b.x, 0u, 48778u)), u_input.b.wy, vec2<bool>(true, true)) >> (u_input.c % 32u), 4294967295u);
    var var_2 = abs(global2.b) << (global2.b % vec3<u32>(32u));
    var_2 = abs(~vec3<u32>(~26054u, func_2(Struct_1(global2.a, global2.b), max(u_input.d.yy, u_input.d.yz), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_sub_u32(_wgslsmith_add_u32(22047u, u_input.c), ~4294967295u)));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(global2.a, u_input.b.x)), vec3<u32>(0u, var_2.x, countOneBits(u_input.c)));
    return Struct_1(~(_wgslsmith_add_i32(var_3.a, global2.a ^ -55348i) | -2147483647i), global2.b);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global3 = _wgslsmith_add_u32(1457u, arg_1.b.x | ~firstLeadingBit(u_input.c));
    global0 = array<vec3<bool>, 13>();
    let var_0 = any(select(vec2<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, true), false))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), true));
    global3 = _wgslsmith_add_u32(func_1(510f).b.x, 0u);
    var var_1 = func_1(_wgslsmith_f_op_f32(step(-1178f, _wgslsmith_f_op_f32(484f * 1f))));
    return func_1(1000f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_1(-27218i, global2.b), func_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(559f, -666f)))))));
    global2 = func_4(func_1(-1039f), Struct_1(i32(-1i) * -u_input.a.x, vec3<u32>(_wgslsmith_mod_u32(10962u & var_0.b.x, _wgslsmith_mod_u32(0u, 4378u)), var_0.b.x, 1460u)));
    let var_1 = global2.a;
    let var_2 = func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-102f)), _wgslsmith_f_op_f32(sign(185f))));
    var_0 = func_4(func_1(_wgslsmith_f_op_f32(438f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f) + -753f))), Struct_1(~34706i, var_2.b));
    var_0 = Struct_1(min(-(var_2.a | func_4(Struct_1(u_input.d.x, global2.b), Struct_1(0i, var_0.b)).a), _wgslsmith_sub_i32(abs(var_2.a), var_0.a)), select(~func_4(func_1(-214f), var_2).b, _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(var_0.b, vec3<u32>(var_0.b.x, 4895u, 50978u), global2.b), vec3<u32>(var_0.b.x, 33314u, u_input.c)), true & (var_0.a == -3248i)));
    var var_3 = countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.b.x, var_2.b.x, 4294967295u, var_0.b.x) >> (~vec4<u32>(52345u, var_0.b.x, 33948u, var_2.b.x) % vec4<u32>(32u)), vec4<u32>(var_0.b.x, firstTrailingBit(4294967295u), 4294967295u & var_0.b.x, 1u), vec4<u32>(var_0.b.x, firstTrailingBit(global2.b.x), u_input.c << (0u % 32u), _wgslsmith_div_u32(global2.b.x, var_2.b.x))) ^ countOneBits((vec4<u32>(global2.b.x, 4294967295u, var_0.b.x, 1u) << (vec4<u32>(9369u, 29438u, 12247u, 45256u) % vec4<u32>(32u))) | min(vec4<u32>(23540u, global2.b.x, var_0.b.x, 21909u), vec4<u32>(var_2.b.x, u_input.c, var_2.b.x, 1u))));
    global1 = array<vec4<f32>, 7>();
    var_0 = Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.a, 0i, func_1(-291f).a), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, -2147483647i, var_0.a), vec3<i32>(global2.a, global2.a, global2.a), false), u_input.b.xyy ^ vec3<i32>(18068i, global2.a, 1i), min(vec3<i32>(u_input.a.x, var_0.a, u_input.d.x), u_input.b.wyw))), var_2.a), var_3.yzx >> (_wgslsmith_clamp_vec3_u32(var_2.b, vec3<u32>(_wgslsmith_add_u32(var_0.b.x, 0u), 1u, 4294967295u), max(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_3.x, var_3.x, global2.b.x), vec3<u32>(var_0.b.x, 0u, 45239u), global2.b), vec3<u32>(0u, 9703u, var_0.b.x))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.a, ~(-18752i), 0i), _wgslsmith_clamp_vec4_u32(~reverseBits(vec4<u32>(91102u, 91254u, 4294967295u, 4294967295u) >> (vec4<u32>(u_input.c, 1u, 4294967295u, var_3.x) % vec4<u32>(32u))), vec4<u32>(_wgslsmith_add_u32(global2.b.x, u_input.c), ~42457u, 1u, var_3.x & 1u) | vec4<u32>(36353u >> (u_input.c % 32u), _wgslsmith_dot_vec3_u32(var_0.b, var_2.b), _wgslsmith_mult_u32(var_2.b.x, 1u), global2.b.x), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 0u, var_3.x, 3919u), _wgslsmith_add_vec4_u32(vec4<u32>(var_3.x, 4294967295u, 44113u, 4294967295u), vec4<u32>(19797u, var_3.x, var_2.b.x, 10662u)), ~vec4<u32>(11575u, 41906u, 1u, 63767u))), 480f);
}

