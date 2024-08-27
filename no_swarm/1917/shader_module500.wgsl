struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, true, false);

var<private> global1: vec2<bool>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> f32 {
    var var_0 = Struct_2(Struct_1(-1034f, select(select(select(vec3<bool>(true, false, global0.x), vec3<bool>(global0.x, global0.x, global0.x), global0.wyw), vec3<bool>(global0.x, true, false), true), global0.zwy, false), _wgslsmith_f_op_f32(f32(-1f) * -888f), abs(u_input.b.x & reverseBits(4294967295u))), u_input.a, abs(arg_0.c.wzy), !global0.yyz, vec4<u32>(4294967295u, 4294967295u, _wgslsmith_div_u32(u_input.b.x, ~16479u), countOneBits(22854u)));
    var var_1 = countOneBits(~u_input.b.x) ^ ~var_0.a.d;
    var var_2 = all(select(select(vec3<bool>(!global1.x, true, u_input.a > u_input.a), vec3<bool>(false, true, global1.x || false), global1.x), vec3<bool>(true, global0.x, global0.x), true));
    let var_3 = max(_wgslsmith_div_u32(var_0.e.x, firstTrailingBit(u_input.b.x)), firstLeadingBit(var_0.a.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(897f * _wgslsmith_div_f32(arg_0.b.x, arg_0.d)))));
}

fn func_2() -> Struct_2 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(238f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1021f, -909f)))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, -26407i, 17634i), vec4<i32>(-2147483647i, -40767i, -2147483647i, 36052i)), select(u_input.a, -1i, true), -1i, u_input.a), _wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(min(-714f, 1000f)))))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-232f)), 581f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(1405f, 2574f) * vec2<f32>(577f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-753f, 1610f))))))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, -44620i, 2147483647i, firstTrailingBit(~u_input.a)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, -2147483647i, -2147483647i, 2147483647i), -vec4<i32>(u_input.a, 2147483647i, 0i, -6974i) & ~vec4<i32>(92168i, -84225i, 2427i, u_input.a)), ~vec4<i32>(-1i, abs(u_input.a), ~u_input.a, -u_input.a)), 529f);
    global1 = !vec2<bool>(var_0.b.x >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.a)))), select(false | all(vec2<bool>(global0.x, false)), !global0.x, _wgslsmith_f_op_f32(-var_0.b.x) < -492f));
    var var_1 = abs(_wgslsmith_dot_vec2_u32(u_input.b.xz, countOneBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(18716u, 15452u), vec2<u32>(u_input.b.x, u_input.b.x)), ~u_input.b.x))));
    let var_2 = u_input.b;
    var_0 = Struct_3(var_0.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b.x, _wgslsmith_f_op_f32(-var_0.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.b.x))))), reverseBits(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -2147483647i, -42831i, 2147483647i), vec4<i32>(u_input.a, var_0.c.x, -7557i, var_0.c.x)), u_input.a, u_input.a | var_0.c.x, min(var_0.c.x, u_input.a))) | countOneBits(_wgslsmith_sub_vec4_i32(var_0.c, vec4<i32>(var_0.c.x, 1i, u_input.a, 30161i)) | var_0.c), var_0.b.x);
    return Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)), 1000f), select(select(select(global0.wwz, global0.yyw, true), !global0.xyx, global0.wzz), global0.yyw, !(!global0.x)), var_0.a, ~(~var_2.x) ^ u_input.b.x), _wgslsmith_dot_vec4_i32(countOneBits(-_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, 0i, var_0.c.x, var_0.c.x), vec4<i32>(-24028i, u_input.a, u_input.a, u_input.a))), var_0.c), _wgslsmith_sub_vec3_i32(reverseBits(var_0.c.xwx), ~_wgslsmith_mult_vec3_i32(var_0.c.ywx, vec3<i32>(0i, -2147483647i, u_input.a) & vec3<i32>(-2147483647i, u_input.a, var_0.c.x))), !global0.yyx, abs(abs(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 80696u, 4294967295u, 21420u), vec4<u32>(8400u, 30528u, 11304u, 5035u))))));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> i32 {
    let var_0 = vec3<u32>(arg_0, 1u, arg_0);
    let var_1 = -110f;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(var_1 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) - -622f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, 822f))))), -(~(-vec4<i32>(-2147483647i, u_input.a, -1i, arg_2.b))), 1010f);
    let var_3 = ~min(u_input.b.x ^ 4294967295u, max(1u, abs(max(arg_0, arg_2.a.d))));
    var var_4 = ~_wgslsmith_clamp_vec3_u32(~(~arg_2.e.yxz << (vec3<u32>(u_input.b.x, var_0.x, 1u) % vec3<u32>(32u))), var_0 & _wgslsmith_mult_vec3_u32(var_0, vec3<u32>(var_3, arg_0, u_input.b.x)), ~max(vec3<u32>(4294967295u, var_3, 30616u), ~arg_2.e.zxy));
    return ~1i;
}

fn func_1() -> vec4<u32> {
    var var_0 = vec2<i32>(~_wgslsmith_add_i32(2147483647i & u_input.a, ~(~u_input.a)), ~5798i);
    var var_1 = ~_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_div_i32(min(41586i, 32043i), -40518i), func_4(u_input.b.x ^ 1u, 1u, func_2())), vec2<i32>(u_input.a, firstTrailingBit(_wgslsmith_div_i32(u_input.a, -2147483647i))));
    global0 = vec4<bool>(any(select(vec3<bool>(false, !global1.x, global1.x), global0.yyx, global1.x)), _wgslsmith_f_op_f32(-2448f + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1713f, -508f)))) >= _wgslsmith_f_op_f32(-489f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-933f, -299f))), global0.x, !(false || (global0.x | (1u < u_input.b.x))));
    var var_2 = 1i;
    var var_3 = u_input.b.x;
    return ~((vec4<u32>(~4294967295u, max(4294967295u, 0u), ~1u, 69749u) >> (firstTrailingBit(vec4<u32>(0u, 67404u, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))) & vec4<u32>(u_input.b.x, u_input.b.x << (1u % 32u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(1823u, 15875u, 4294967295u, u_input.b.x), vec4<u32>(0u, u_input.b.x, 0u, 1u)), ~u_input.b.x, !global0.x), u_input.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !vec2<bool>(true & all(!global0.xzz), all(!vec4<bool>(global1.x, global1.x, global0.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec4<u32>(abs(u_input.b.x), _wgslsmith_sub_u32(firstLeadingBit(4294967295u), u_input.b.x) & 20088u, countOneBits(30382u), u_input.b.x), select(firstTrailingBit(func_1()), _wgslsmith_mult_vec4_u32(~vec4<u32>(14589u, 1u, 4294967295u, u_input.b.x), ~select(vec4<u32>(1u, 0u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 47007u, u_input.b.x, 4294967295u), vec4<bool>(false, global0.x, global1.x, global0.x))), select(select(select(vec4<bool>(false, false, global1.x, true), vec4<bool>(global1.x, false, global1.x, false), global1.x), !vec4<bool>(true, global0.x, global0.x, global1.x), !vec4<bool>(true, global0.x, true, false)), select(select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(false, global0.x, global0.x, true)), vec4<bool>(false, global0.x, false, true), global1.x), select(vec4<bool>(global1.x, false, global0.x, false), select(vec4<bool>(true, global0.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global0.x), vec4<bool>(false, global1.x, true, global1.x)), true))), -1194f);
}

