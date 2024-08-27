struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec4<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(true, vec3<i32>(-1i, i32(-2147483648), 8661i), vec3<f32>(-771f, 451f, 1460f)), Struct_3(false, vec3<i32>(4394i, -1i, 2820i), vec3<f32>(-1477f, -672f, -702f)), Struct_3(false, vec3<i32>(1i, 0i, 2147483647i), vec3<f32>(3327f, 873f, 497f)), Struct_3(true, vec3<i32>(i32(-2147483648), 0i, 23825i), vec3<f32>(447f, -1190f, -1790f)), Struct_3(true, vec3<i32>(17749i, 11726i, 0i), vec3<f32>(1000f, -1207f, -1000f)), Struct_3(false, vec3<i32>(i32(-2147483648), -1i, 2147483647i), vec3<f32>(1126f, 297f, -1000f)), Struct_3(true, vec3<i32>(85083i, 0i, 200i), vec3<f32>(-339f, 204f, -1000f)), Struct_3(true, vec3<i32>(-23832i, 2147483647i, -26994i), vec3<f32>(-822f, -117f, -783f)), Struct_3(false, vec3<i32>(22286i, 1i, 2147483647i), vec3<f32>(862f, 1000f, 503f)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: vec4<f32>) -> bool {
    let var_0 = vec4<i32>(~min(~(~u_input.c.x), u_input.c.x), u_input.c.x, -(_wgslsmith_clamp_i32(-16882i, u_input.c.x, _wgslsmith_clamp_i32(22037i, u_input.c.x, u_input.c.x)) >> (~arg_0.x % 32u)), -2147483647i);
    var var_1 = true;
    var_1 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(2147483647i, 0i), var_0.x, select(u_input.c.x, firstTrailingBit(~_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -6182i), var_0.yxz)), !(!all(vec2<bool>(false, true)))), u_input.c.x);
    global0 = array<Struct_3, 9>();
    return all(!(!vec4<bool>(true, true, arg_1.x <= arg_1.x, true)));
}

fn func_2() -> f32 {
    let var_0 = select(select(vec2<bool>(31519i == u_input.c.x, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true))), vec2<bool>(true, any(vec3<bool>(true, true, true))), true), select(vec2<bool>(func_3(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.d, u_input.d)), vec4<u32>(0u, u_input.a, u_input.b, 7667u) >> (vec4<u32>(u_input.d, 4294967295u, 11973u, 1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 332f, 208f, 264f))), true), vec2<bool>(true, !all(vec2<bool>(true, true))), all(vec3<bool>(true, true, true))), vec2<bool>(any(vec4<bool>(u_input.a >= 1u, all(vec2<bool>(false, true)), u_input.a <= u_input.a, true)), true));
    global0 = array<Struct_3, 9>();
    var var_1 = var_0.x;
    return _wgslsmith_div_f32(-1287f, -1340f);
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-607f, -345f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1242f, 618f) + vec2<f32>(-1055f, 738f)))) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(808f, -1615f))))) + vec2<f32>(_wgslsmith_f_op_f32(-1119f * _wgslsmith_f_op_f32(833f + -457f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1956f)), _wgslsmith_f_op_f32(select(1615f, -379f, true))) * -190f)));
    var var_1 = -51187i;
    var_1 = _wgslsmith_mult_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-13215i, u_input.c.x, 1i, u_input.c.x), _wgslsmith_div_vec4_i32(vec4<i32>(-42899i, 7389i, -1i, u_input.c.x), vec4<i32>(0i, 2147483647i, u_input.c.x, u_input.c.x))), u_input.c.x, u_input.c.x), u_input.c.x) ^ _wgslsmith_mod_i32(-(~(u_input.c.x >> (u_input.b % 32u))), select(1i, u_input.c.x, true));
    let var_2 = ~vec4<u32>(110208u, (_wgslsmith_div_u32(0u, u_input.a) | 0u) ^ ~(u_input.d | 18688u), 19592u, _wgslsmith_sub_u32(firstLeadingBit(u_input.d), 4294967295u));
    let var_3 = global0[_wgslsmith_index_u32(countOneBits((u_input.b << (firstLeadingBit(var_2.x) % 32u)) | 1u), 9u)];
    return global0[_wgslsmith_index_u32(u_input.a, 9u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: Struct_3) -> vec2<bool> {
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    let var_0 = Struct_1(u_input.a, select(vec2<bool>(arg_2.a, all(!vec4<bool>(false, arg_1.a, false, true))), select(!(!vec2<bool>(true, arg_1.a)), vec2<bool>(!arg_1.a, !arg_1.a), false), arg_1.a), !select(!(!vec3<bool>(arg_2.a, arg_2.a, arg_1.a)), vec3<bool>(true, all(vec3<bool>(arg_1.a, true, true)), arg_1.a), arg_2.a || arg_2.a), -arg_0.xw & _wgslsmith_sub_vec2_i32(vec2<i32>(i32(-1i) * -37256i, abs(u_input.c.x)), vec2<i32>(arg_1.b.x, -30005i)), (u_input.a < u_input.b) != (func_1().b.x > -_wgslsmith_div_i32(0i, arg_0.x)));
    let var_1 = Struct_2(var_0, ~countOneBits(vec4<i32>(-33004i, 2147483647i, var_0.d.x, u_input.c.x) << (~vec4<u32>(4145u, u_input.a, var_0.a, 24526u) % vec4<u32>(32u))), -arg_2.b.x);
    let var_2 = -select(firstTrailingBit(12557i), arg_0.x, false) & (var_1.b.x >> (42164u % 32u));
    return vec2<bool>(true, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(func_4(vec4<i32>(u_input.c.x >> (u_input.a % 32u), u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, 13154i), _wgslsmith_mod_i32(u_input.c.x, -33548i)), global0[_wgslsmith_index_u32(4294967295u, 9u)], func_1()), func_4(_wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 13543i)), -vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.c.x)), func_1(), Struct_3(true, -vec3<i32>(-14609i, -1i, u_input.c.x), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 287f, -833f))))), !all(vec2<bool>(true, true))), func_4(vec4<i32>(34050i, ~0i, ~u_input.c.x ^ 0i, ~2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, _wgslsmith_sub_u32(~17669u, 50419u)), 9u)], Struct_3(_wgslsmith_mult_i32(u_input.c.x, -31139i) != -u_input.c.x, u_input.c, vec3<f32>(-122f, -152f, _wgslsmith_f_op_f32(744f * 453f)))), false);
    var_0 = !select(select(vec2<bool>(false, false), !func_4(vec4<i32>(-25995i, u_input.c.x, 14715i, -1i), global0[_wgslsmith_index_u32(22394u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)]), var_0.x), select(select(func_4(vec4<i32>(2147483647i, u_input.c.x, 1i, u_input.c.x), Struct_3(false, vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<f32>(206f, -414f, -698f)), Struct_3(true, vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i), vec3<f32>(-1880f, 896f, -201f))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), var_0.x), func_4(reverseBits(vec4<i32>(u_input.c.x, 1i, 9592i, u_input.c.x)), global0[_wgslsmith_index_u32(7447u, 9u)], func_1()), var_0.x || true), vec2<bool>(var_0.x, false));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_add_u32(abs(1u), _wgslsmith_add_u32(u_input.b, u_input.b)), vec2<bool>(any(select(vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, true), var_0.x)), var_0.x), select(select(vec3<bool>(true, var_0.x, true), !vec3<bool>(var_0.x, var_0.x, false), true), select(!vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, true, var_0.x), func_1().a), select(!vec3<bool>(true, var_0.x, true), vec3<bool>(var_0.x, true, false), func_4(vec4<i32>(-23712i, u_input.c.x, u_input.c.x, 8211i), Struct_3(var_0.x, vec3<i32>(u_input.c.x, 1i, u_input.c.x), vec3<f32>(875f, 1003f, -652f)), Struct_3(false, vec3<i32>(u_input.c.x, u_input.c.x, -1i), vec3<f32>(143f, -1000f, -1067f))).x)), select(vec2<i32>(2147483647i, _wgslsmith_div_i32(u_input.c.x, 2147483647i)), vec2<i32>(abs(1i), 45555i), true && !var_0.x), all(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))), _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c.x, -334i, u_input.c.x, 0i), vec4<i32>(u_input.c.x, u_input.c.x, 0i, 1i)), select(vec4<i32>(-1i, u_input.c.x, 26688i, -30993i) << (vec4<u32>(1u, 76709u, 2158u, 4294967295u) % vec4<u32>(32u)), ~vec4<i32>(7499i, u_input.c.x, 2147483647i, -12063i), !vec4<bool>(false, false, var_0.x, var_0.x))), -(~vec4<i32>(-1i, u_input.c.x, u_input.c.x, -35574i)), ~_wgslsmith_mult_vec4_i32(vec4<i32>(52701i, 0i, 46593i, -2147483647i) ^ vec4<i32>(u_input.c.x, 1i, 1015i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, u_input.c.x, u_input.c.x, 47889i), vec4<i32>(u_input.c.x, -2147483647i, -26390i, -1262i), vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x)))), (-2147483647i & -abs(u_input.c.x)) | (firstTrailingBit(u_input.c.x) << (20039u % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1333f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(837f))))));
    let var_3 = !(!vec3<bool>(false, var_0.x, all(select(var_1.a.c, var_1.a.c, var_1.a.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(u_input.c.xz), _wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 * -876f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 * var_2), _wgslsmith_f_op_f32(max(-123f, var_2))), var_2), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(1008f, -1009f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), var_2, _wgslsmith_f_op_f32(-var_2)))), vec3<u32>(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(1794u, 137739u, var_1.a.a, 4294967295u) & ~vec4<u32>(u_input.b, var_1.a.a, u_input.b, 0u), vec4<u32>(~var_1.a.a, u_input.b, _wgslsmith_clamp_u32(u_input.d, var_1.a.a, u_input.b), 1u)), ~u_input.b));
}

