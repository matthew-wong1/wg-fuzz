struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(1u, 69749u, 11812u, 15965u), vec4<u32>(19583u, 73593u, 0u, 67734u), vec4<u32>(1u, 20968u, 1u, 1u), vec4<u32>(44025u, 0u, 4294967295u, 1436u), vec4<u32>(63171u, 4294967295u, 13782u, 29403u), vec4<u32>(29643u, 66689u, 1u, 34224u), vec4<u32>(2368u, 0u, 11361u, 1u), vec4<u32>(1u, 1u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 1u, 37814u), vec4<u32>(0u, 4578u, 85849u, 82984u), vec4<u32>(0u, 4294967295u, 1u, 0u), vec4<u32>(39798u, 9719u, 4294967295u, 14813u), vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(3092u, 32521u, 1u, 1u), vec4<u32>(4294967295u, 25663u, 79441u, 4294967295u), vec4<u32>(1u, 4294967295u, 0u, 26467u), vec4<u32>(31796u, 83705u, 17995u, 37128u), vec4<u32>(27912u, 28651u, 62987u, 1u), vec4<u32>(35603u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 56221u), vec4<u32>(4294967295u, 17770u, 19080u, 72098u), vec4<u32>(4294967295u, 4294967295u, 31253u, 4294967295u), vec4<u32>(4294967295u, 80214u, 0u, 62818u));

var<private> global2: array<vec4<f32>, 20>;

var<private> global3: array<Struct_2, 2>;

var<private> global4: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(u_input.e.x, 23u)], vec4<u32>(~31078u, ~1u, 1u, _wgslsmith_add_u32((1u >> (u_input.d % 32u)) ^ firstLeadingBit(0u), ~reverseBits(u_input.a.x))));
    let var_1 = var_0;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(160f, 1f)))), _wgslsmith_f_op_f32(-1177f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-165f, -1981f, true))), _wgslsmith_div_f32(-3793f, -369f)))), -773f);
    let var_3 = vec3<bool>(18554i >= _wgslsmith_dot_vec2_i32(max(_wgslsmith_add_vec2_i32(u_input.c.xx, vec2<i32>(arg_0.x, -16467i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-36484i, u_input.b.x), vec2<i32>(-20297i, u_input.c.x), vec2<i32>(2147483647i, 73721i))), -(~u_input.c.yy)), any(select(vec4<bool>(true, true, false, all(vec2<bool>(false, false))), vec4<bool>(true, true, any(vec2<bool>(true, true)), true), !select(false, false, true))), any(select(vec3<bool>(select(true, false, true), true, false), vec3<bool>(true, false, true), false)));
    let var_4 = arg_0.x;
    return var_1;
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    let var_0 = Struct_5(vec2<u32>(countOneBits(~max(u_input.a.x, 26177u)), ~_wgslsmith_mult_u32(func_3(arg_0.zz), 41113u)), global3[_wgslsmith_index_u32(min(~0u, ~1u), 2u)], Struct_1(select(_wgslsmith_clamp_i32(global0.x >> (u_input.e.x % 32u), arg_0.x, ~0i), 24864i, select(any(vec3<bool>(true, true, false)), true, u_input.d > u_input.d)), ~u_input.d, ~1u, ~1u));
    global1 = array<vec4<u32>, 23>();
    var var_1 = Struct_3(var_0.b, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(758f, 128f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 399f))), true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-487f, -1161f))))))));
    let var_2 = var_0.b;
    global1 = array<vec4<u32>, 23>();
    return Struct_3(Struct_2(true, var_1.a.c, Struct_1(22154i, var_1.a.e.d, ~(~1u), ~_wgslsmith_div_u32(var_1.a.d.c, 0u)), Struct_1(-1i, ~21821u, ~u_input.d, 1u), var_0.b.d), vec2<f32>(var_1.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1000f, var_1.b.x, all(vec4<bool>(var_1.a.a, false, var_2.a, var_1.a.a))))))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: u32) -> vec3<f32> {
    global4 = func_3(-reverseBits(-vec2<i32>(9644i, u_input.b.x)));
    var var_0 = false || ((!arg_0.x && select(all(arg_0.xx), all(vec3<bool>(arg_0.x, arg_1.a.a, true)), true)) | select(arg_1.a.a, false, all(!vec2<bool>(arg_0.x, arg_1.a.a))));
    global3 = array<Struct_2, 2>();
    let var_1 = arg_1.a.e;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(~0u, 20u)] - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1.b.x, arg_1.b.x, -382f, 663f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(arg_2, 20u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b.x, -1000f, 1036f, -1195f) * global2[_wgslsmith_index_u32(0u, 20u)]))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-1037f, 747f)), _wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), -1869f, -1000f)))));
    return vec3<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b.x) * arg_1.b.x) - arg_1.b.x)), _wgslsmith_f_op_f32(func_2(_wgslsmith_div_vec4_i32(-vec4<i32>(global0.x, 40521i, arg_1.a.c.a, 0i), max(vec4<i32>(arg_1.a.e.a, 50462i, 0i, -10581i), vec4<i32>(-1i, -1i, 56382i, arg_1.a.d.a)))).b.x * _wgslsmith_f_op_f32(1733f - _wgslsmith_f_op_f32(step(177f, _wgslsmith_f_op_f32(round(-1020f)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>) -> Struct_5 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1948f))), _wgslsmith_f_op_f32(f32(-1f) * -154f))), arg_0.x) - _wgslsmith_f_op_f32(arg_0.x - arg_0.x));
    global0 = abs(-vec4<i32>(~u_input.b.x, -9484i, u_input.c.x >> (u_input.e.x % 32u), reverseBits(-2147483647i))) | ~reverseBits(max(select(vec4<i32>(1i, u_input.b.x, -1i, 3756i), vec4<i32>(u_input.c.x, -1i, 22241i, -34338i), false), vec4<i32>(18204i, -2147483647i, -1401i, global0.x)));
    var var_1 = func_2(select(vec4<i32>(u_input.b.x, _wgslsmith_div_i32(u_input.c.x, 11041i), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_sub_i32(1i, global0.x)), _wgslsmith_div_i32(-1i, global0.x) << (10971u % 32u)), _wgslsmith_add_vec4_i32(min(vec4<i32>(16657i, -2147483647i, global0.x, u_input.b.x), vec4<i32>(global0.x, 5463i, u_input.b.x, global0.x)) | ~vec4<i32>(-1i, u_input.c.x, -12397i, -1i), _wgslsmith_add_vec4_i32(vec4<i32>(-57244i, 0i, 2147483647i, -10803i) >> (global1[_wgslsmith_index_u32(0u, 23u)] % vec4<u32>(32u)), vec4<i32>(u_input.b.x, global0.x, 0i, u_input.b.x))), arg_1.x));
    var_1 = func_2(vec4<i32>((_wgslsmith_div_i32(var_1.a.c.a, 30674i) >> ((var_1.a.b.c << (40790u % 32u)) % 32u)) << (min(1u >> (var_1.a.d.c % 32u), 4294967295u) % 32u), countOneBits(select(reverseBits(global0.x), 2147483647i, all(vec3<bool>(true, var_1.a.a, arg_1.x)))), _wgslsmith_mult_i32(38604i, _wgslsmith_mod_i32(u_input.b.x & -1i, var_1.a.e.a | var_1.a.b.a)), global0.x >> (_wgslsmith_dot_vec2_u32(u_input.e, ~u_input.a) % 32u)));
    var var_2 = all(select(vec3<bool>((var_1.a.b.a < 1i) & true, any(vec4<bool>(arg_1.x, false, false, arg_1.x)) && arg_1.x, all(!vec4<bool>(false, arg_1.x, var_1.a.a, arg_1.x))), arg_1, var_1.a.a));
    return Struct_5(~u_input.e, func_2(~abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-35125i, global0.x, global0.x, -27203i), vec4<i32>(u_input.c.x, -18578i, u_input.c.x, -7312i)))).a, var_1.a.c);
}

fn func_1() -> Struct_3 {
    global2 = array<vec4<f32>, 20>();
    var var_0 = vec4<bool>(select(true && ((u_input.c.x != -38191i) || true), false, true), 0u < ~u_input.d, firstTrailingBit(u_input.e.x) > u_input.a.x, !any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), false), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))));
    let var_1 = func_5(_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(select(true, all(vec4<bool>(false, var_0.x, var_0.x, false)), false), var_0.x, all(!vec4<bool>(true, false, var_0.x, var_0.x))), func_2(abs(vec4<i32>(u_input.b.x, -1i, -6378i, u_input.c.x)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.e.x, u_input.d, u_input.a.x, u_input.a.x), vec4<u32>(u_input.e.x, 65199u, 25947u, u_input.d)) % vec4<u32>(32u))), ~select(func_2(vec4<i32>(u_input.b.x, -1i, 24302i, global0.x)).a.c.d, firstLeadingBit(4294967295u), true))), vec3<bool>(var_0.x, (_wgslsmith_clamp_i32(global0.x, -2147483647i, -55606i) <= -u_input.b.x) == true, all(!(!var_0.xw))));
    var var_2 = !var_0.xy;
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_4(vec3<bool>(true, var_2.x && false, var_2.x), Struct_3(global3[_wgslsmith_index_u32(u_input.d, 2u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(1009f, 358f) * vec2<f32>(613f, -2162f))), (u_input.d >> (u_input.a.x % 32u)) << (var_1.b.e.c % 32u))).x - 403f)));
    return func_2(-_wgslsmith_div_vec4_i32(vec4<i32>(~(-22842i), -2147483647i, abs(u_input.c.x), _wgslsmith_sub_i32(var_1.b.b.a, 2147483647i)), vec4<i32>(_wgslsmith_mult_i32(31198i, global0.x), -15602i, var_1.b.b.a, _wgslsmith_sub_i32(u_input.b.x, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_sub_i32(4097i, global0.x)), abs(_wgslsmith_mult_u32(~var_0.a.e.d, _wgslsmith_mult_u32(_wgslsmith_mod_u32(56336u, var_0.a.d.b), _wgslsmith_div_u32(var_0.a.d.c, u_input.d)))), func_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1324f, var_0.b.x, var_0.b.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-478f, var_0.b.x, 703f) * vec3<f32>(-823f, var_0.b.x, 1233f)) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(2360f, -1198f, var_0.b.x))))), !select(select(vec3<bool>(true, true, var_0.a.a), vec3<bool>(true, var_0.a.a, false), vec3<bool>(var_0.a.a, true, false)), select(vec3<bool>(true, var_0.a.a, var_0.a.a), vec3<bool>(var_0.a.a, false, true), vec3<bool>(var_0.a.a, var_0.a.a, true)), any(vec3<bool>(false, true, false)))).b.c.b, _wgslsmith_clamp_u32(~7072u, _wgslsmith_mult_u32(7015u, reverseBits(abs(var_0.a.e.c))), 11132u));
    var var_2 = var_0.a.a;
    global1 = array<vec4<u32>, 23>();
    let var_3 = Struct_4(min(firstTrailingBit(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e.x, 33038u, var_0.a.d.b, var_1.c), vec4<u32>(var_1.b, u_input.e.x, u_input.d, 0u), global1[_wgslsmith_index_u32(var_1.d, 23u)]))), var_1.d));
    let var_4 = !select(vec4<bool>(all(!vec2<bool>(false, var_0.a.a)), !(true == var_0.a.a), true, all(!vec2<bool>(var_0.a.a, var_0.a.a))), vec4<bool>(!(var_3.a != var_1.b), all(vec4<bool>(var_0.a.a, var_0.a.a, true, false)), var_0.a.a, false), -_wgslsmith_clamp_i32(-2147483647i, u_input.b.x, -64925i) <= (-var_0.a.d.a << (_wgslsmith_div_u32(var_0.a.d.d, 1u) % 32u)));
    let var_5 = Struct_1(u_input.c.x & u_input.c.x, ~4294967295u, 0u, func_1().a.e.c);
    var var_6 = Struct_1(-var_0.a.e.a, var_5.d, ~(~var_1.b), ~var_5.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.b.x, -499f))))), var_0.b.x, -119f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-513f * 1583f), _wgslsmith_f_op_f32(round(var_0.b.x)))), -547f)), var_0.b.x), 2147483647i);
}

