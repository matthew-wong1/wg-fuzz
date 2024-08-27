struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, false, true, true, true, true, false, false, false, true);

var<private> global1: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec3<i32>(1i, 1i, 1i), vec4<u32>(5757u, 1500u, 66463u, 12024u), vec3<bool>(true, false, true)), Struct_1(vec3<i32>(i32(-2147483648), 1i, -1i), vec4<u32>(43774u, 0u, 43054u, 28515u), vec3<bool>(true, false, false)));

var<private> global2: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(1267f, -1346f, -405f), vec3<f32>(-1099f, -275f, 1120f), vec3<f32>(-608f, 673f, 430f), vec3<f32>(1000f, 534f, 556f), vec3<f32>(-1066f, -514f, -827f), vec3<f32>(-1000f, -750f, 790f), vec3<f32>(569f, -1041f, -202f), vec3<f32>(565f, 312f, 655f), vec3<f32>(993f, -179f, -535f), vec3<f32>(1453f, -155f, 1347f), vec3<f32>(1412f, 231f, -659f), vec3<f32>(212f, 1122f, 1068f), vec3<f32>(448f, 1114f, -1719f), vec3<f32>(1134f, -1000f, 943f));

var<private> global3: u32;

var<private> global4: Struct_1 = Struct_1(vec3<i32>(19734i, 1i, 62919i), vec4<u32>(1u, 116009u, 104785u, 1u), vec3<bool>(false, true, true));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: u32, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.a, u_input.a & firstTrailingBit(vec2<u32>(0u, global4.b.x) & vec2<u32>(9757u, global4.b.x))), 2u)];
    var var_1 = 1u;
    global1 = array<Struct_1, 2>();
    var var_2 = min(-2147483647i, _wgslsmith_clamp_i32(-2147483647i, countOneBits(global4.a.x | 1i), -75649i));
    let var_3 = arg_3.x;
    return global1[_wgslsmith_index_u32(~(~38625u), 2u)];
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global1 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(~(~u_input.b), global4.a.x, 1i, -_wgslsmith_sub_i32(arg_3.a.x, arg_3.a.x)), _wgslsmith_mod_vec4_i32(~vec4<i32>(global4.a.x, 1i, global4.a.x, 0i), reverseBits(vec4<i32>(u_input.c, 34769i, arg_3.a.x, u_input.b)) | vec4<i32>(-7925i, -78673i, global4.a.x, u_input.c))) & _wgslsmith_add_vec4_i32(vec4<i32>(abs(~(-2147483647i)), min(_wgslsmith_mod_i32(-27111i, 26181i), global4.a.x), i32(-1i) * -u_input.c, 1i), -vec4<i32>(arg_3.a.x, _wgslsmith_clamp_i32(u_input.c, -45784i, u_input.b), -1i, global4.a.x));
    var var_1 = vec3<bool>(true, true, ~(arg_3.b.x | abs(0u)) > 0u);
    global2 = array<vec3<f32>, 14>();
    var_1 = !select(global4.c, select(vec3<bool>(false, false, !global4.c.x), global4.c, all(vec2<bool>(global4.c.x, false))), vec3<bool>(any(!vec3<bool>(true, global0[_wgslsmith_index_u32(70817u, 10u)], true)), !any(vec4<bool>(false, global4.c.x, false, global4.c.x)), u_input.b < -79056i));
    return func_2(-max(_wgslsmith_mod_vec3_i32(select(vec3<i32>(3223i, u_input.c, arg_3.a.x), global4.a, global4.c), global4.a), var_0.yzw), true, ~40474u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(-1044f, -427f), vec2<f32>(-1000f, -869f)), vec2<f32>(arg_0, arg_2))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(332f, arg_2) - vec2<f32>(-256f, arg_0)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 516f) + vec2<f32>(arg_2, -820f)), var_1.yx)))));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = func_3(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1157f, -303f)))))), 1207f, func_2(vec3<i32>(-48911i, global4.a.x, 2147483647i), true, abs(global4.b.x), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(round(-730f)), 499f)))));
    let var_1 = vec3<bool>(func_3(_wgslsmith_f_op_f32(f32(-1f) * -1241f), _wgslsmith_f_op_f32(-1622f * 141f), -123f, func_3(1039f, _wgslsmith_f_op_f32(-1314f + -768f), 1f, Struct_1(vec3<i32>(var_0.a.x, -12222i, -6328i), ~vec4<u32>(4294967295u, var_0.b.x, 42126u, u_input.a.x), select(arg_0.c, vec3<bool>(arg_0.c.x, global4.c.x, arg_0.c.x), var_0.c)))).c.x, select(-(u_input.b << (40216u % 32u)) != 1i, true, !(!(!arg_0.c.x))), any(global4.c.xx));
    let var_2 = var_0;
    let var_3 = arg_0.c.x;
    var var_4 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_clamp_i32(~arg_1, u_input.b, arg_1), -13666i, -_wgslsmith_mult_i32(global4.a.x, 0i)), ~vec4<u32>(global4.b.x, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, global4.b.x), arg_0.b.yw), ~13674u), !vec3<bool>(all(vec2<bool>(true, true)), global4.c.x, false)), global1[_wgslsmith_index_u32(arg_0.b.x, 2u)]);
    return var_0.b.x;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    global0 = array<bool, 10>();
    let var_0 = func_4(func_3(_wgslsmith_f_op_f32(-arg_2), -372f, _wgslsmith_f_op_f32(ceil(arg_2)), func_2(firstLeadingBit(-vec3<i32>(0i, arg_1, -2147483647i)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(global4.b.yyw, vec3<u32>(global4.b.x, global4.b.x, 1u)), ~vec3<u32>(u_input.a.x, arg_3.b.x, 14846u)), 10u)], arg_3.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-140f, -1000f) - vec2<f32>(553f, arg_2))))), -reverseBits(~_wgslsmith_div_i32(-2147483647i, -2147483647i)));
    global3 = ~(~(~func_4(Struct_1(vec3<i32>(arg_1, -2147483647i, arg_0.x), global4.b, vec3<bool>(true, false, global0[_wgslsmith_index_u32(0u, 10u)])), _wgslsmith_mod_i32(52755i, -1i))));
    global4 = func_2(vec3<i32>(firstLeadingBit(-func_2(arg_0, arg_3.c.x, 1u, vec2<f32>(-1523f, 307f)).a.x), arg_3.a.x, -2147483647i), true, 67000u << (func_3(279f, arg_2, _wgslsmith_f_op_f32(f32(-1f) * -855f), func_2(arg_0, false && arg_3.c.x, countOneBits(4874u), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(144f, -678f))))).b.x % 32u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-999f, 239f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(arg_2, arg_2), vec2<f32>(arg_2, arg_2))))))));
    global3 = _wgslsmith_sub_u32(4294967295u, arg_3.b.x);
    return arg_3;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_u32(0u, 16978u);
    var var_1 = Struct_2(func_1(arg_2.a, -1i, -1227f, Struct_1(vec3<i32>(-1i, _wgslsmith_mod_i32(-2147483647i, -316i), ~arg_2.a.x), abs(arg_1.b), !global4.c)), arg_1);
    global4 = Struct_1(countOneBits(vec3<i32>(-1i, 45417i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a.x, 59899i, var_1.b.a.x, arg_1.a.x), vec4<i32>(-34105i, var_1.b.a.x, -18443i, 20010i), vec4<i32>(-2147483647i, var_1.a.a.x, arg_1.a.x, var_1.a.a.x)), firstTrailingBit(vec4<i32>(-35647i, arg_2.a.x, var_1.a.a.x, 47864i))))), vec4<u32>(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(180f + -485f) * 201f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2287f - -170f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1592f + 1000f)), arg_2).b.x, _wgslsmith_clamp_u32(arg_1.b.x, arg_0, arg_1.b.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(29598u, 111674u), vec2<u32>(arg_1.b.x, 4294967295u)), _wgslsmith_add_u32(1u, select(_wgslsmith_dot_vec2_u32(vec2<u32>(global4.b.x, 0u), global4.b.xx), ~global4.b.x, func_2(arg_2.a, true, 29396u, vec2<f32>(980f, 854f)).c.x))), arg_1.c);
    var_0 = ~arg_1.b.x;
    var var_2 = Struct_1(~(-firstLeadingBit(arg_2.a)) & vec3<i32>(-2147483647i, var_1.b.a.x, 35461i), ~(~(~vec4<u32>(1u, u_input.a.x, var_1.b.b.x, u_input.a.x))), !vec3<bool>(!any(vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(0u, 10u)])), false || global4.c.x, global0[_wgslsmith_index_u32(arg_2.b.x, 10u)]));
    return _wgslsmith_clamp_u32(arg_2.b.x, 4294967295u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~4294967295u);
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mod_u32(func_5(32156u, func_1(vec3<i32>(global4.a.x, u_input.b, u_input.c), global4.a.x, 879f, Struct_1(vec3<i32>(u_input.c, u_input.c, 2147483647i), vec4<u32>(49099u, 104133u, global4.b.x, var_0), vec3<bool>(true, global4.c.x, false))), Struct_1(global4.a, vec4<u32>(0u, 1u, global4.b.x, 4294967295u), global4.c)), 4294967295u)), u_input.a.x, global4.b.x, u_input.a.x);
    global2 = array<vec3<f32>, 14>();
    var var_2 = func_1(~global4.a, u_input.c, _wgslsmith_f_op_f32(trunc(1000f)), global1[_wgslsmith_index_u32(4294967295u, 2u)]);
    global1 = array<Struct_1, 2>();
    global1 = array<Struct_1, 2>();
    global4 = global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(var_1, ~global4.b), ~var_2.b.x)), 2u)];
    global1 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(reverseBits(vec3<i32>(u_input.b, u_input.c << (var_2.b.x % 32u), 2705i))), ~(0u | _wgslsmith_dot_vec3_u32(var_1.xzz, _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, global4.b.x, 0u), vec3<u32>(4294967295u, var_0, 1u), vec3<u32>(var_1.x, global4.b.x, 28025u)))), _wgslsmith_f_op_f32(-628f * -1157f), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, reverseBits(global4.b.x), _wgslsmith_div_u32(10626u, var_1.x), ~var_1.x), var_1), global4.b));
}

