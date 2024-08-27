struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(54573u, 2894u, 1u), vec3<u32>(1u, 105110u, 4294967295u));

var<private> global1: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: u32, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_5(Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-287f, arg_2.x, -492f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x), vec3<f32>(-186f, -2488f, 198f)))), ~select(reverseBits(1u), 7946u, true), arg_2), _wgslsmith_f_op_f32(exp2(arg_2.x)), firstTrailingBit(reverseBits(global1.x)) | 7813u);
    var var_1 = firstTrailingBit(var_0.a.b);
    var var_2 = var_0.a;
    global1 = vec2<u32>(23304u, arg_0);
    return Struct_2(Struct_1(vec3<bool>(var_0.a.a.a.a.x, true, !var_2.a.a.a.x)), var_2.a.b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<bool> {
    global0 = array<vec3<u32>, 2>();
    var var_0 = -(~(-19610i));
    var var_1 = vec3<f32>(668f, arg_0.b.x, _wgslsmith_f_op_f32(floor(arg_0.b.x)));
    var var_2 = ~max(_wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, 26168u, 1u, 24433u), vec4<u32>(35120u, 1u, 4294967295u, global1.x) | vec4<u32>(1u, global1.x, global1.x, global1.x)) << (vec4<u32>(global1.x, ~global1.x, 81283u & global1.x, firstTrailingBit(global1.x)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(9828u, ~global1.x), global1.x, _wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(global1.x, 17465u)), ~(global1.x >> (global1.x % 32u))));
    global1 = vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(15030u, global1.x) << (vec2<u32>(global1.x, var_2.x) % vec2<u32>(32u)), vec2<u32>(var_2.x, global1.x)), min(0u, 59825u)) << (firstTrailingBit(vec2<u32>(max(4294967295u, _wgslsmith_div_u32(4294967295u, var_2.x)), _wgslsmith_add_u32(1u, var_2.x))) % vec2<u32>(32u));
    return select(select(select(!select(vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(false, arg_0.a.a.x, true, arg_0.a.a.x), arg_0.a.a.x), select(vec4<bool>(true, arg_0.a.a.x, false, true), select(vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, true), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, true, true, arg_0.a.a.x)), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, true, false)), select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x), select(vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, false), vec4<bool>(true, arg_0.a.a.x, true, true), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, arg_0.a.a.x)), !arg_0.a.a.x)), select(select(!vec4<bool>(true, arg_0.a.a.x, false, true), vec4<bool>(false, true, true, true), arg_0.a.a.x), !select(vec4<bool>(arg_0.a.a.x, false, true, arg_0.a.a.x), vec4<bool>(true, true, false, arg_0.a.a.x), vec4<bool>(true, arg_0.a.a.x, arg_0.a.a.x, true)), false), !select(select(vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(false, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, true, true, true)), select(vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, false), vec4<bool>(true, arg_0.a.a.x, false, arg_0.a.a.x), vec4<bool>(false, arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x)), select(vec4<bool>(arg_0.a.a.x, true, arg_0.a.a.x, true), vec4<bool>(false, arg_0.a.a.x, true, false), vec4<bool>(false, true, arg_0.a.a.x, false)))), !select(select(select(vec4<bool>(false, false, arg_0.a.a.x, true), vec4<bool>(false, false, false, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, true)), !vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, false), arg_0.a.a.x), !vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.a.x, true), true), func_2(max(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 29864u, 1u), vec4<u32>(16969u, 1u, 1u, global1.x), vec4<u32>(1u, global1.x, 0u, global1.x)), vec4<u32>(var_2.x, var_2.x, global1.x, var_2.x)), _wgslsmith_dot_vec4_u32(select(vec4<u32>(48639u, var_2.x, global1.x, 1u), vec4<u32>(global1.x, 108095u, 4294967295u, 7206u), arg_0.a.a.x), ~vec4<u32>(4294967295u, var_2.x, var_2.x, 1u))), vec4<i32>(_wgslsmith_clamp_i32(arg_1.x, i32(-1i) * -2147483647i, ~arg_1.x), -arg_1.x, min(2147483647i | arg_1.x, firstLeadingBit(-2147483647i)), arg_1.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(198f)), var_1.x) + var_1.xz)).a.a.x);
}

fn func_1() -> Struct_5 {
    var var_0 = select(select(vec4<bool>(false, true, true, _wgslsmith_mod_u32(4294967295u, global1.x) != max(36012u, global1.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec3<bool>(true, true, false)), any(vec4<bool>(false, false, false, false))), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true))), select(vec4<bool>(false, any(vec2<bool>(true, false)), true, any(vec3<bool>(true, true, false))), !func_3(func_2(0u, vec4<i32>(u_input.c, u_input.c, u_input.b, u_input.a.x), vec2<f32>(1017f, -434f)), _wgslsmith_sub_vec2_i32(u_input.e, u_input.a)), select(vec4<bool>(false, true, false, u_input.e.x >= u_input.a.x), vec4<bool>(any(vec3<bool>(true, true, false)), true, false, true), select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), all(vec4<bool>(false, true, false, false))))), select(vec4<bool>(_wgslsmith_f_op_f32(floor(2207f)) != 1104f, true, _wgslsmith_sub_i32(-2147483647i, -5478i) > u_input.b, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), true))), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, false, true), all(vec2<bool>(true, true))), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), true)), select(func_3(Struct_2(Struct_1(vec3<bool>(false, true, false)), vec3<f32>(-373f, 1279f, 506f)), u_input.e), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false)))));
    global1 = vec2<u32>(~_wgslsmith_div_u32(16857u & global1.x, global1.x), ~(global1.x ^ (global1.x ^ global1.x))) << (abs(~(vec2<u32>(1u, 1u) ^ ~vec2<u32>(1u, global1.x))) % vec2<u32>(32u));
    global1 = min(min(countOneBits((vec2<u32>(global1.x, 46066u) ^ vec2<u32>(89954u, global1.x)) | _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(global1.x, 43695u))), _wgslsmith_mod_vec2_u32(vec2<u32>(global1.x, 46839u), _wgslsmith_div_vec2_u32(vec2<u32>(33087u, 0u), vec2<u32>(global1.x, global1.x))) | ~(~vec2<u32>(global1.x, 92574u))), reverseBits(vec2<u32>(~global1.x, 1u)) | (reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, 32409u))) << ((abs(vec2<u32>(7526u, 1u)) << (~vec2<u32>(global1.x, global1.x) % vec2<u32>(32u))) % vec2<u32>(32u))));
    var var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~13950u, ~0u), select(~global1.x, abs(4294967295u), true)), 57323u, global1.x, 4294967295u));
    global0 = array<vec3<u32>, 2>();
    return Struct_5(Struct_3(Struct_2(func_2(countOneBits(3527u), vec4<i32>(26201i, 2147483647i, -2147483647i, u_input.a.x) & vec4<i32>(u_input.e.x, 1i, -1i, u_input.b), vec2<f32>(498f, -1275f)).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(369f, 1595f, 1412f)) - vec3<f32>(-1000f, 312f, 683f))), _wgslsmith_dot_vec4_u32(vec4<u32>(37396u, _wgslsmith_mod_u32(10432u, 4294967295u), 75435u, ~global1.x), ~firstTrailingBit(vec4<u32>(global1.x, global1.x, var_1.x, var_1.x))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1178f, -642f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-323f - -1393f))), ~(~(~_wgslsmith_sub_u32(126858u, 1u))));
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    global0 = array<vec3<u32>, 2>();
    var var_0 = vec4<u32>(arg_0.a.b, countOneBits(~arg_0.a.b), 4294967295u, (global1.x << (_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(global1.x, 29579u)) % 32u)) << (59863u % 32u));
    let var_1 = Struct_4(21231i ^ u_input.a.x, func_1().a);
    let var_2 = func_1().a.a.a.a.zz;
    let var_3 = u_input.a;
    return Struct_4(_wgslsmith_mult_i32(var_1.a, 1i) & _wgslsmith_mult_i32(u_input.c >> ((28076u & arg_0.c) % 32u), 0i), arg_0.a);
}

fn func_5(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = arg_0.b.c.x;
    var_0 = func_4(Struct_5(arg_0.b, _wgslsmith_f_op_f32(floor(512f)), min(1u, arg_0.b.b))).b.c.x;
    global0 = array<vec3<u32>, 2>();
    var var_1 = -select(~(~vec3<i32>(u_input.d, u_input.e.x, -17904i)), _wgslsmith_div_vec3_i32(-(~vec3<i32>(arg_0.a, 0i, 1328i)), vec3<i32>(-32004i, min(-75200i, 0i), ~arg_0.a)), select(!arg_0.b.a.a.a, !vec3<bool>(arg_0.b.a.a.a.x, arg_0.b.a.a.a.x, arg_0.b.a.a.a.x), false));
    let var_2 = _wgslsmith_dot_vec3_u32(countOneBits(~abs(global0[_wgslsmith_index_u32(select(arg_0.b.b, arg_0.b.b, false), 2u)])), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(21984u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)])), _wgslsmith_mod_vec3_u32(~vec3<u32>(2079u, global1.x, 26833u), select(vec3<u32>(arg_0.b.b, global1.x, 85125u), global0[_wgslsmith_index_u32(global1.x, 2u)], arg_0.b.a.a.a.x))), vec3<u32>(~(~arg_0.b.b), global1.x, 24635u), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, 56982u), ~vec2<u32>(global1.x, arg_0.b.b)), vec2<u32>(global1.x, global1.x)), 2u)]));
    return ~countOneBits(~(~vec2<u32>(global1.x, 13750u)) | ~vec2<u32>(7263u, arg_0.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_sub_vec2_u32(func_5(func_4(func_1())) | vec2<u32>(global1.x, 68377u), vec2<u32>(firstLeadingBit(~(global1.x << (global1.x % 32u))), global1.x));
    let var_0 = select(false, true, ~0u < global1.x);
    global1 = vec2<u32>(_wgslsmith_add_u32(1u, 0u), global1.x);
    global1 = firstLeadingBit(~min(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41986u, global1.x), vec2<u32>(global1.x, 19171u)), 34069u & global1.x), reverseBits(vec2<u32>(4294967295u, 1u))));
    let var_1 = vec3<u32>(min(reverseBits(~_wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(global1.x, 2u)], vec3<u32>(62430u, global1.x, 45054u))), global1.x | (global1.x >> (func_4(Struct_5(Struct_3(Struct_2(Struct_1(vec3<bool>(true, var_0, var_0)), vec3<f32>(1000f, 1931f, 615f)), global1.x, vec2<f32>(1194f, 723f)), 1000f, 12917u)).b.b % 32u))), global1.x, ~(4294967295u << ((abs(global1.x) | ~global1.x) % 32u)));
    let var_2 = _wgslsmith_div_vec4_i32(reverseBits(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b, u_input.a.x, 37414i, -75475i) >> (vec4<u32>(76020u, 0u, var_1.x, var_1.x) % vec4<u32>(32u)), -(~vec4<i32>(-1i, u_input.e.x, u_input.b, u_input.a.x)))), vec4<i32>(-_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 18432i, u_input.d, -2147483647i), vec4<i32>(9863i, u_input.e.x, 0i, 23065i)), u_input.a.x | u_input.c), ~(-(u_input.c >> (1u % 32u))), u_input.c, u_input.d));
    let var_3 = func_4(Struct_5(func_1().a, func_2(global1.x, var_2, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3533f, -1582f)))).b.x, var_1.x));
    var var_4 = select(vec2<u32>(1u, var_1.x), firstLeadingBit(var_1.xx), var_3.b.a.a.a.zy);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, select(global0[_wgslsmith_index_u32(var_3.b.b, 2u)], global0[_wgslsmith_index_u32(global1.x, 2u)], true), func_4(Struct_5(func_1().a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.b.x)), ~var_3.b.b)).a, var_3.b.a.b.yx);
}

