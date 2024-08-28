struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 11533u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    var var_0 = firstLeadingBit(~vec3<u32>(select(u_input.b.x, u_input.b.x, true), 0u, u_input.b.x) | _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b.x, 13889u, 5406u), vec3<u32>(4294967295u, u_input.b.x, u_input.b.x)), vec3<u32>(~1u, _wgslsmith_dot_vec2_u32(vec2<u32>(75407u, u_input.b.x), vec2<u32>(u_input.b.x, u_input.b.x)), firstLeadingBit(78002u))));
    var var_1 = !(!vec2<bool>(true, 8950i < (u_input.a >> (19674u % 32u))));
    var_0 = _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(~var_0.x ^ ~4294967295u), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x) | _wgslsmith_clamp_u32(u_input.b.x ^ 1u, abs(18602u), var_0.x), ~34250u), countOneBits(vec3<u32>(var_0.x, firstTrailingBit(30680u) ^ 4294967295u, ~_wgslsmith_mult_u32(4294967295u, 1u))), select(firstTrailingBit(max(_wgslsmith_div_vec3_u32(vec3<u32>(5220u, 42676u, 33535u), vec3<u32>(4294967295u, var_0.x, 107171u)), vec3<u32>(79616u, var_0.x, u_input.b.x))), ~(~(~vec3<u32>(u_input.b.x, 18323u, u_input.b.x))), vec3<bool>(any(!vec3<bool>(var_1.x, true, var_1.x)), any(select(vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, var_1.x, false, false), var_1.x)), all(select(vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(var_1.x, false, false), vec3<bool>(false, false, var_1.x))))));
    var var_2 = !any(vec4<bool>((var_1.x | var_1.x) | any(vec3<bool>(var_1.x, true, var_1.x)), any(select(vec2<bool>(false, var_1.x), vec2<bool>(var_1.x, true), vec2<bool>(false, true))), !(var_1.x | false), true));
    let var_3 = Struct_1(~countOneBits(select(max(vec4<u32>(0u, 13137u, u_input.b.x, 4294967295u), vec4<u32>(u_input.b.x, 1u, 45369u, u_input.b.x)), ~vec4<u32>(u_input.b.x, var_0.x, u_input.b.x, 8037u), select(vec4<bool>(false, true, false, false), vec4<bool>(true, var_1.x, false, var_1.x), var_1.x))));
    return u_input.a < firstTrailingBit(-u_input.a);
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: bool) -> vec2<u32> {
    let var_0 = arg_1;
    let var_1 = select(vec2<bool>(any(!vec3<bool>(true, arg_2, arg_2)), arg_2), !(!select(vec2<bool>(arg_2, arg_2), select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, true), vec2<bool>(arg_2, arg_2)), !vec2<bool>(true, arg_2))), select(!(!select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, false), vec2<bool>(arg_2, arg_2))), select(select(!vec2<bool>(arg_2, arg_2), !vec2<bool>(arg_2, arg_2), !arg_2), !(!vec2<bool>(true, arg_2)), arg_2 & all(vec4<bool>(false, arg_2, arg_2, arg_2))), vec2<bool>(!all(vec3<bool>(true, false, false)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 4294967295u, 0u), var_0.a.wxz) < arg_1.a.x)));
    var var_2 = !var_1.x;
    global0 = _wgslsmith_mod_u32(min(_wgslsmith_clamp_u32(~var_0.a.x, 1u, 2227u), u_input.b.x), ~(~0u));
    global0 = 16241u;
    return select(~reverseBits(~(~vec2<u32>(0u, u_input.b.x))), abs(var_0.a.ww), select(!(!(!vec2<bool>(true, arg_2))), vec2<bool>(any(!vec2<bool>(var_1.x, true)), (u_input.a >> (6378u % 32u)) >= 0i), select(!vec2<bool>(arg_2, var_1.x), vec2<bool>(all(var_1), var_1.x), select(vec2<bool>(arg_2, false), select(vec2<bool>(arg_2, false), var_1, var_1), false))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: u32) -> vec2<i32> {
    let var_0 = Struct_1(vec4<u32>(47699u, ~(~u_input.b.x | arg_3), ~(~(~25158u)), arg_3));
    global0 = var_0.a.x;
    let var_1 = var_0.a;
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_dot_vec2_u32(~var_0.a.xy, func_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.xw) * arg_1.xy) + vec2<f32>(-1971f, _wgslsmith_f_op_f32(164f - -762f))), var_0, func_3()));
    return _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(arg_2) & select(arg_2, vec2<i32>(u_input.a, var_2), false), vec2<i32>(arg_2.x >> (var_0.a.x % 32u), -1i), vec2<i32>(-1i | var_2, ~u_input.a)) & -arg_2, -(vec2<i32>(u_input.a | -2147483647i, firstLeadingBit(var_2)) >> (vec2<u32>(~u_input.b.x, 10621u) % vec2<u32>(32u))));
}

fn func_1(arg_0: vec3<bool>) -> Struct_1 {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(-u_input.a, _wgslsmith_dot_vec2_i32(func_2(arg_0.x, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1972f, 315f, 509f, 2505f), vec4<f32>(-306f, 101f, -520f, 530f), vec4<bool>(true, false, arg_0.x, false))), abs(vec2<i32>(-32579i, -16215i)), 33274u), -(~vec2<i32>(45206i, 32182i)))), -1i, _wgslsmith_mod_i32(-(~(i32(-1i) * -1i)), ~_wgslsmith_dot_vec4_i32(select(vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), arg_0.x), vec4<i32>(33244i, u_input.a, u_input.a, 0i))));
    let var_1 = Struct_1(~vec4<u32>(u_input.b.x, u_input.b.x, ~(u_input.b.x ^ 4294967295u), countOneBits(_wgslsmith_mult_u32(u_input.b.x, 1u))));
    let var_2 = Struct_1(vec4<u32>(_wgslsmith_mod_u32(~49543u, var_1.a.x), var_1.a.x, 16055u, var_1.a.x & var_1.a.x));
    let var_3 = select(func_4(vec2<f32>(-670f, _wgslsmith_f_op_f32(ceil(-210f))), var_2, all(select(arg_0.yy, arg_0.xy, arg_0.yz))).x >> (79701u % 32u), var_2.a.x, true);
    let var_4 = var_2;
    return var_1;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec4<u32>(~arg_0.a.x, arg_0.a.x, arg_0.a.x, ~(~select(~u_input.b.x, 1u, all(vec2<bool>(false, false)))));
    var var_1 = select(select(abs(vec4<i32>(_wgslsmith_sub_i32(u_input.a, 24486i), -1i, max(0i, u_input.a), abs(u_input.a))), ~_wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i, 2147483647i, u_input.a, 2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.a, 1i), true), -vec4<i32>(u_input.a, u_input.a, u_input.a, -1i)), vec4<bool>(true, true, true, true)), select(countOneBits(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.a, -1i, u_input.a, 2147483647i), vec4<i32>(u_input.a, -1i, 0i, u_input.a)), vec4<i32>(-13856i, u_input.a, -24452i, -29420i), vec4<i32>(0i, u_input.a, -57494i, u_input.a) >> (arg_0.a % vec4<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), select(vec2<i32>(u_input.a, -34495i), vec2<i32>(u_input.a, u_input.a), vec2<bool>(false, true))), -2147483647i, _wgslsmith_sub_i32(8450i, ~u_input.a), firstLeadingBit(~u_input.a)), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), false)), vec4<bool>(true, true, true, true), select(true, any(vec4<bool>(false, true, true, false)), true))), 1u != reverseBits(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, var_0.x), vec2<u32>(23906u, u_input.b.x)), u_input.b.x | 4294967295u, u_input.b.x ^ 1u)));
    var_1 = vec4<i32>(_wgslsmith_div_i32(~abs(abs(u_input.a)), _wgslsmith_div_i32(-2147483647i, u_input.a)), 0i, ~var_1.x, u_input.a >> (arg_0.a.x % 32u));
    var_1 = vec4<i32>(firstLeadingBit(_wgslsmith_dot_vec3_i32(var_1.yzz, reverseBits(vec3<i32>(-2147483647i, var_1.x, 28303i)))), -(~var_1.x), min(~abs(-2147483647i), u_input.a), -1i);
    var_1 = select(_wgslsmith_mult_vec4_i32((firstLeadingBit(vec4<i32>(u_input.a, u_input.a, var_1.x, u_input.a)) ^ max(vec4<i32>(1i, 0i, var_1.x, u_input.a), vec4<i32>(var_1.x, -2147483647i, -38651i, var_1.x))) & firstTrailingBit(~vec4<i32>(58186i, -24320i, var_1.x, 1i)), vec4<i32>(_wgslsmith_mult_i32(_wgslsmith_clamp_i32(32483i, var_1.x, 15667i), u_input.a), _wgslsmith_clamp_i32(var_1.x, min(-1i, var_1.x), u_input.a), ~var_1.x >> (~u_input.b.x % 32u), -1i)), vec4<i32>(-1i) * -vec4<i32>(1i, ~var_1.x, ~12046i, u_input.a), true);
    return arg_0;
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> StorageBuffer {
    var var_0 = arg_1;
    var_0 = arg_3;
    var var_1 = vec4<u32>(~(~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_3.a.x, arg_3.a.x), func_4(vec2<f32>(117f, 323f), Struct_1(var_0.a), true).x)), _wgslsmith_div_u32(1u, abs(u_input.b.x)), 1u, u_input.b.x);
    var_1 = (vec4<u32>(~var_1.x << (_wgslsmith_mult_u32(arg_3.a.x, 48593u) % 32u), ~u_input.b.x, 1u, arg_1.a.x) >> (~arg_1.a % vec4<u32>(32u))) | _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, max(arg_1.a.x, 1291u), firstTrailingBit(~u_input.b.x), reverseBits(select(23436u, 30688u, true))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, var_0.a.x, 1822u, 29630u), vec4<u32>(4770u, 38771u, arg_1.a.x, 1u) & vec4<u32>(65524u, 0u, 4294967295u, arg_1.a.x), ~arg_3.a), vec4<u32>(~8814u, ~var_0.a.x, func_4(vec2<f32>(1447f, -1631f), arg_3, false).x, var_1.x), abs(var_0.a)));
    var var_2 = arg_1;
    return StorageBuffer(~(-countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, 61107i), vec3<i32>(arg_0, -16346i, 0i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(1i, func_5(func_1(vec3<bool>(true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-652f * -631f), _wgslsmith_f_op_f32(step(-829f, -928f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-802f + _wgslsmith_f_op_f32(810f * -1266f)))), Struct_1(~((vec4<u32>(0u, 31965u, 1u, 1u) ^ vec4<u32>(u_input.b.x, 0u, u_input.b.x, 58849u)) ^ select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(u_input.b.x, 66173u, u_input.b.x, u_input.b.x), true))));
}

