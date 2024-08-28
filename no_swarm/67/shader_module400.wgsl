struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(18666i, 2147483647i);

var<private> global1: array<bool, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = any(select(vec4<bool>(any(vec2<bool>(true, false)), true, _wgslsmith_f_op_f32(arg_1.a * -650f) <= _wgslsmith_f_op_f32(step(arg_1.a, 1381f)), any(!vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], false))), select(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], false), vec4<bool>(false, true, global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(u_input.b, 26u)]), global1[_wgslsmith_index_u32(1u, 26u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(15714u, 26u)], global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], false), vec4<bool>(true, false, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(55457u, 26u)], true)), true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(61746u, 26u)]), !vec4<bool>(global1[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(111u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 26u)], false, true, false)), true), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.d.x, 26u)], global1[_wgslsmith_index_u32(u_input.c, 26u)]), true), vec4<bool>(true, global1[_wgslsmith_index_u32(31266u, 26u)], false, global1[_wgslsmith_index_u32(22909u, 26u)]), !vec4<bool>(false, true, global1[_wgslsmith_index_u32(4294967295u, 26u)], true))));
    var var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.a)) * arg_1.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -727f)))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-131f)))))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-110f * arg_1.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a, arg_1.a))))));
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, -_wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, u_input.e.x), -global0.x)), _wgslsmith_clamp_vec2_i32(~min(abs(vec2<i32>(-3540i, global0.x)), u_input.e.zz), vec2<i32>(~arg_0, _wgslsmith_div_i32(-2264i, 1i)) ^ (min(vec2<i32>(u_input.e.x, global0.x), u_input.e.zy) << (u_input.d.zz % vec2<u32>(32u))), u_input.e.zx));
    var var_2 = Struct_2(vec2<f32>(-675f, _wgslsmith_f_op_f32(abs(arg_1.a))), Struct_1(1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, var_1.b.a))), Struct_1(-733f));
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(global0.x, arg_0)), (vec2<i32>(u_input.e.x, u_input.e.x) | vec2<i32>(0i, 11338i)) << ((u_input.d.yz >> (vec2<u32>(u_input.b, 40132u) % vec2<u32>(32u))) % vec2<u32>(32u))) & max(u_input.e.x, _wgslsmith_mult_i32(max(-2147483647i, 2147483647i), min(2147483647i, u_input.e.x))), _wgslsmith_add_i32(max(-abs(2147483647i), 3363i), u_input.e.x));
    return !select(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 26u)], false)), vec2<bool>(true, true)), vec2<bool>(true, true), !select(!vec2<bool>(var_0, var_0), select(vec2<bool>(global1[_wgslsmith_index_u32(21654u, 26u)], var_0), vec2<bool>(true, true), vec2<bool>(global1[_wgslsmith_index_u32(23975u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)])), all(vec2<bool>(true, true))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: bool) -> u32 {
    let var_0 = 840f;
    let var_1 = func_3(26093i & _wgslsmith_dot_vec3_i32(u_input.e, -u_input.e), arg_1.b);
    global0 = u_input.e.yz;
    var var_2 = abs(-u_input.e.x);
    global1 = array<bool, 26>();
    return 15711u;
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: bool) -> vec4<bool> {
    global0 = vec2<i32>(~u_input.e.x, i32(-1i) * -(2895i >> (func_2(Struct_1(1482f), Struct_2(vec2<f32>(arg_0.x, arg_0.x), Struct_1(591f), arg_0.x, Struct_1(arg_1.x)), vec3<f32>(arg_0.x, arg_0.x, 1000f), arg_2) % 32u)));
    global0 = min(vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_add_i32(global0.x, 39509i), reverseBits(global0.x)), global0.x), u_input.e.zy);
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(~min(21684u, abs(u_input.d.x)), u_input.c, 4294967295u, 1u), _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.a)), vec4<u32>(59525u, countOneBits(u_input.a), u_input.d.x, max(48119u, 78493u))), ~_wgslsmith_add_vec4_u32(~vec4<u32>(u_input.b, 4294967295u, u_input.c, u_input.c), vec4<u32>(u_input.b, 25370u, u_input.d.x, u_input.a)), ~reverseBits(vec4<u32>(u_input.c, u_input.d.x, 1u, u_input.d.x) >> (vec4<u32>(26178u, 86752u, u_input.a, 33112u) % vec4<u32>(32u)))), reverseBits(_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a, u_input.d.x, 4294967295u, 60150u)), reverseBits(select(vec4<u32>(u_input.d.x, u_input.d.x, u_input.c, 0u), vec4<u32>(u_input.b, u_input.a, 4294967295u, u_input.c), vec4<bool>(global1[_wgslsmith_index_u32(54528u, 26u)], false, true, true))))));
    global0 = _wgslsmith_add_vec2_i32(abs(~(vec2<i32>(-1i) * -u_input.e.yz)), select(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.x, u_input.e.x, u_input.e.x), vec3<i32>(-17232i, 39322i, 0i)) & global0.x, -62096i), vec2<i32>(global0.x, _wgslsmith_add_i32(reverseBits(global0.x), _wgslsmith_mod_i32(u_input.e.x, u_input.e.x))), func_3(_wgslsmith_mult_i32(~u_input.e.x, ~u_input.e.x), Struct_1(-1186f))));
    var var_1 = Struct_2(arg_1, Struct_1(arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * arg_0.x), Struct_1(arg_1.x));
    return !(!select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 26u)], false, arg_2, global1[_wgslsmith_index_u32(u_input.a, 26u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(2641u, 26u)], true, global1[_wgslsmith_index_u32(4058u, 26u)], arg_2), vec4<bool>(arg_2, false, true, false), true), global1[_wgslsmith_index_u32(firstLeadingBit(1u), 26u)]), !(!vec4<bool>(false, arg_2, false, false)), !(arg_2 || arg_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, global1[_wgslsmith_index_u32(4294967295u, 26u)], true), global1[_wgslsmith_index_u32(u_input.c, 26u)]), vec4<bool>(false, false, true, global1[_wgslsmith_index_u32(u_input.d.x, 26u)]), global1[_wgslsmith_index_u32(firstTrailingBit(u_input.c), 26u)]), func_1(vec3<f32>(1458f, 503f, -820f), vec2<f32>(-322f, 125f), global1[_wgslsmith_index_u32(~4294967295u, 26u)]), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 26u)], true, true), func_1(vec3<f32>(-813f, 1247f, 851f), vec2<f32>(-2136f, 1000f), global1[_wgslsmith_index_u32(u_input.d.x, 26u)]))), vec4<bool>(_wgslsmith_div_i32(u_input.e.x, -41936i) > 54633i, false, global1[_wgslsmith_index_u32(98462u, 26u)], global1[_wgslsmith_index_u32(26088u, 26u)]), vec4<bool>(false, false, any(func_1(vec3<f32>(-911f, -525f, -1087f), vec2<f32>(255f, 1038f), global1[_wgslsmith_index_u32(u_input.d.x, 26u)]).wwx), global1[_wgslsmith_index_u32(u_input.b, 26u)]));
    let var_1 = ~(~_wgslsmith_div_vec4_u32(abs(vec4<u32>(4294967295u, 24174u, u_input.d.x, u_input.c)), firstTrailingBit(vec4<u32>(0u, u_input.a, 0u, u_input.b))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-297f))), 906f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(984f)))))));
    var var_3 = u_input.d.zx;
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a, _wgslsmith_f_op_f32(trunc(var_2.a)), -481f), vec3<f32>(_wgslsmith_f_op_f32(sign(var_2.a)), var_2.a, var_2.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -451f), _wgslsmith_f_op_f32(-var_2.a), abs(u_input.e.yx), 465f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1052f, -1000f, -779f, 1990f) - vec4<f32>(1000f, 1000f, var_4.x, 300f)))));
}

