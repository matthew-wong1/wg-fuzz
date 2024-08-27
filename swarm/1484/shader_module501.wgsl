struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7>;

var<private> global1: i32 = -1i;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec2<u32>) -> f32 {
    let var_0 = Struct_1(vec2<bool>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.c.x, 797f))) <= arg_1.c.x), any(vec4<bool>(arg_1.a.x, !(arg_1.c.x > -584f), true, !arg_1.b == (-464f < arg_1.c.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.c - arg_1.c) - vec4<f32>(778f, arg_1.c.x, arg_1.c.x, arg_1.c.x)) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c.x, -1529f, -751f, arg_1.c.x)), vec4<f32>(-617f, 1219f, arg_1.c.x, -638f)))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.c.x - -466f)), _wgslsmith_f_op_f32(-arg_1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.x)), arg_1.c.x)), arg_3);
    let var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(140f)) + _wgslsmith_f_op_f32(floor(515f))))), 993f), var_0.c.x);
    let var_2 = max(65728u, ~(~countOneBits(var_0.d.x ^ arg_1.d.x)));
    global1 = arg_2;
    var var_3 = vec2<i32>(arg_0, -1i) & ~_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), firstLeadingBit(vec2<i32>(arg_0, 20409i)));
    return var_0.c.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = Struct_1(arg_1.a, arg_0.a.x, vec4<f32>(_wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(793f, -1699f, arg_1.b)), _wgslsmith_f_op_f32(func_3(35263i, global2[_wgslsmith_index_u32(4294967295u, 21u)], arg_2.x, arg_0.d)), true)), _wgslsmith_f_op_f32(round(-574f)))), _wgslsmith_f_op_f32(exp2(arg_0.c.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.c.x)))), arg_0.d);
    global2 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, arg_1.d.x, 1u, ~var_0.d.x), vec4<u32>(~_wgslsmith_mod_u32(0u, arg_0.d.x), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d.x, arg_0.d.x, 1u), vec3<u32>(arg_1.d.x, 4294967295u, 52026u)), vec3<u32>(25207u, var_0.d.x, 15860u)), 4294967295u)), min(~(~(~vec4<u32>(arg_1.d.x, arg_1.d.x, 24195u, 63650u))), ~_wgslsmith_sub_vec4_u32(~vec4<u32>(var_0.d.x, 10180u, 34258u, 52139u), vec4<u32>(arg_1.d.x, arg_0.d.x, var_0.d.x, var_0.d.x))), abs(min(~(vec4<u32>(1u, 4294967295u, arg_1.d.x, 0u) | vec4<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, u_input.a)), firstTrailingBit(max(vec4<u32>(6251u, 1u, 43852u, u_input.a), vec4<u32>(u_input.a, 1958u, arg_1.d.x, 41924u))))));
    let var_2 = vec2<u32>(var_1.x, min(~countOneBits(43400u) >> (reverseBits(arg_0.d.x & u_input.a) % 32u), u_input.a));
    let var_3 = global0[_wgslsmith_index_u32(~13594u, 7u)];
    return 4294967295u;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<bool> {
    global2 = array<Struct_1, 21>();
    let var_0 = (~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(arg_1, 117746u) | arg_2.d) << (arg_1 % 32u)) <= ~_wgslsmith_sub_u32(u_input.a, reverseBits(~0u));
    var var_1 = vec3<u32>(func_2(global0[_wgslsmith_index_u32(arg_1, 7u)], Struct_1(vec2<bool>(true, true), (-492f == arg_0.x) & (18265u != u_input.a), arg_2.c, reverseBits(~vec2<u32>(10245u, 45654u))), vec4<i32>(abs(u_input.b), 1i, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(-21012i, u_input.b), vec2<i32>(1i, 1i)))), ~(arg_2.d.x | (0u ^ firstTrailingBit(22168u))), ~_wgslsmith_dot_vec2_u32(abs(arg_2.d), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(14572u, 1u), arg_2.d, arg_2.d)));
    var_1 = vec3<u32>(37063u, 57652u, u_input.a);
    var_1 = max(firstLeadingBit(~abs(vec3<u32>(arg_1, arg_1, 3376u))), ~firstLeadingBit(min(vec3<u32>(var_1.x, arg_1, 0u), vec3<u32>(var_1.x, 4294967295u, arg_1))));
    return arg_3;
}

fn func_4(arg_0: vec2<bool>) -> vec4<u32> {
    global1 = u_input.b;
    let var_0 = vec2<i32>(~u_input.b, _wgslsmith_dot_vec3_i32(-vec3<i32>(~1i, 0i, u_input.b), ~_wgslsmith_mod_vec3_i32(select(vec3<i32>(u_input.b, u_input.b, 4531i), vec3<i32>(1i, 0i, u_input.b), false), vec3<i32>(u_input.b, u_input.b, u_input.b))));
    let var_1 = u_input.a;
    global1 = var_0.x ^ 17770i;
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-690f, -186f), _wgslsmith_f_op_f32(ceil(-1087f)), _wgslsmith_f_op_f32(-383f + -617f)) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1295f, 432f, 1070f))))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1099f, 605f, -1109f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(0i, global0[_wgslsmith_index_u32(var_1, 7u)], var_0.x, vec2<u32>(4294967295u, u_input.a))), 1f, 1f)))));
    return (vec4<u32>(var_1, 1u, u_input.a, countOneBits(max(var_1, 4294967295u))) >> (firstLeadingBit(select(vec4<u32>(u_input.a, var_1, 39172u, 31209u) ^ vec4<u32>(u_input.a, 46683u, var_1, 76655u), ~vec4<u32>(1u, 31961u, u_input.a, 387u), select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x), arg_0.x))) % vec4<u32>(32u))) << (max(select(vec4<u32>(~var_1, 4294967295u, var_1 << (11286u % 32u), ~var_1), ~vec4<u32>(u_input.a, var_1, u_input.a, u_input.a) & vec4<u32>(var_1, 27187u, 8630u, var_1), arg_0.x), select(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, var_1, u_input.a, var_1), abs(vec4<u32>(4294967295u, u_input.a, 35521u, 44534u))), select(~vec4<u32>(29499u, 1u, var_1, 32361u), abs(vec4<u32>(u_input.a, 0u, 4294967295u, u_input.a)), arg_0.x | true), true)) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 21>();
    var var_0 = (_wgslsmith_mult_vec4_i32(vec4<i32>(min(u_input.b, u_input.b), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(1i, -26766i)), u_input.b, _wgslsmith_clamp_i32(-24066i, u_input.b, u_input.b)), ~vec4<i32>(u_input.b, u_input.b, u_input.b, -1i)) >> (func_4(select(func_1(vec3<f32>(-134f, -476f, 598f), u_input.a, Struct_1(vec2<bool>(false, true), false, vec4<f32>(-316f, -864f, 932f, 917f), vec2<u32>(0u, u_input.a)), vec2<bool>(false, false)), vec2<bool>(true, true), true)) % vec4<u32>(32u))) & _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(74549i, -20387i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, 9786i)), _wgslsmith_div_vec4_i32(vec4<i32>(74247i, u_input.b, u_input.b, 0i), vec4<i32>(-2147483647i, 0i, -4923i, u_input.b))) ^ min(~vec4<i32>(u_input.b, 2687i, u_input.b, 2147483647i), ~vec4<i32>(-29085i, u_input.b, u_input.b, u_input.b)), vec4<i32>(u_input.b, -1i, u_input.b ^ u_input.b, -43926i) << (_wgslsmith_add_vec4_u32(vec4<u32>(79441u, 1u, u_input.a, u_input.a), _wgslsmith_sub_vec4_u32(vec4<u32>(59380u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 34321u, 4294967295u, u_input.a))) % vec4<u32>(32u)));
    var var_1 = select(select(any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)))), _wgslsmith_clamp_i32(0i & u_input.b, u_input.b << (9301u % 32u), 2147483647i) <= (_wgslsmith_div_i32(u_input.b, 9397i) ^ _wgslsmith_div_i32(u_input.b, -10512i)), true), true, all(select(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, true)), true, true), vec3<bool>(func_1(vec3<f32>(-702f, -236f, -473f), u_input.a, Struct_1(vec2<bool>(false, false), true, vec4<f32>(-2043f, -1387f, 146f, 609f), vec2<u32>(u_input.a, 1u)), vec2<bool>(true, true)).x, true, true))));
    var var_2 = Struct_1(!vec2<bool>(false, !any(vec4<bool>(true, false, false, false))), any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-290f, -994f, 597f, 1318f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-425f, -550f, 1004f, -918f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(233f, 1000f, 241f, 1000f))) + vec4<f32>(_wgslsmith_f_op_f32(func_3(1i, Struct_1(vec2<bool>(true, false), true, vec4<f32>(937f, -394f, -2496f, -986f), vec2<u32>(4294967295u, 1u)), 0i, vec2<u32>(4294967295u, 1u))), 972f, _wgslsmith_f_op_f32(f32(-1f) * -441f), -2572f))), vec2<u32>(u_input.a, select(u_input.a, _wgslsmith_add_u32(u_input.a, 24988u), all(vec4<bool>(false, false, true, false)))) & _wgslsmith_clamp_vec2_u32(~(~vec2<u32>(6294u, u_input.a)), ~abs(vec2<u32>(46781u, 318u)), ~(vec2<u32>(u_input.a, 59750u) & vec2<u32>(1u, u_input.a))));
    var var_3 = var_0.x;
    var_2 = Struct_1(select(vec2<bool>(u_input.a <= var_2.d.x, !all(vec4<bool>(var_2.a.x, true, var_2.a.x, var_2.b))), vec2<bool>(1u < _wgslsmith_clamp_u32(u_input.a, u_input.a, var_2.d.x), false), var_2.a.x), any(vec3<bool>(all(select(vec4<bool>(true, true, var_2.a.x, false), vec4<bool>(var_2.b, false, true, var_2.b), var_2.a.x)), true, true)), _wgslsmith_f_op_vec4_f32(-var_2.c), var_2.d);
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(var_2.d.x, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, var_2.d.x), _wgslsmith_add_vec2_u32(var_2.d, vec2<u32>(37398u, u_input.a))))), vec4<i32>((i32(-1i) * -61456i) | ~var_0.x, -8100i, -16942i, ~(-23409i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-var_2.c.wxy))), vec4<i32>(~(i32(-1i) * -u_input.b), ~(~_wgslsmith_clamp_i32(-2147483647i, 8310i, var_0.x)), 1i, u_input.b));
}

