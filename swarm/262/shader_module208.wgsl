struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 29> = array<vec2<bool>, 29>(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(11878u, 1u, 4294967295u), vec3<u32>(29334u, 0u, 24891u), vec3<u32>(0u, 67340u, 0u), vec3<u32>(28501u, 76028u, 24785u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(10403u, 22218u, 48975u), vec3<u32>(4294967295u, 34168u, 0u), vec3<u32>(1u, 4294967295u, 6898u), vec3<u32>(12398u, 4294967295u, 4294967295u), vec3<u32>(17807u, 35832u, 1u), vec3<u32>(83081u, 0u, 14432u), vec3<u32>(28265u, 19036u, 35898u), vec3<u32>(38265u, 13311u, 34259u), vec3<u32>(1u, 23400u, 4294967295u), vec3<u32>(2301u, 1u, 1u), vec3<u32>(19245u, 1u, 0u), vec3<u32>(0u, 12690u, 17064u), vec3<u32>(18829u, 0u, 17269u), vec3<u32>(39485u, 1u, 1u), vec3<u32>(25999u, 1u, 4294967295u), vec3<u32>(1u, 2052u, 0u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(1u, 73307u, 0u), vec3<u32>(46631u, 92253u, 25652u), vec3<u32>(18232u, 0u, 19824u), vec3<u32>(10264u, 58554u, 4294967295u));

var<private> global2: vec2<u32> = vec2<u32>(44487u, 83256u);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    let var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(660f, -147f)) - -148f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), countOneBits(~select(vec3<u32>(79817u, u_input.a, global2.x), global1[_wgslsmith_index_u32(0u, 27u)], true))), firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), max(vec4<i32>(27449i, -2147483647i, 2147483647i, 2147483647i), vec4<i32>(60692i, 1i, 0i, -1i)), vec4<i32>(49420i, 2134i, 2500i, 13184i) << (vec4<u32>(global2.x, 4294967295u, u_input.a, global2.x) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(~vec4<i32>(-52298i, 1i, -64446i, 1i), firstTrailingBit(vec4<i32>(29706i, 3312i, 2147483647i, -39248i))), vec4<i32>(~(-19715i), min(2147483647i, 0i), -18708i, 1i))), min(-vec4<i32>(~7437i, 1i, -14153i << (global2.x % 32u), _wgslsmith_clamp_i32(1i, 2147483647i, 1i)), vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(0i), reverseBits(2147483647i)), _wgslsmith_clamp_i32(1i, 2147483647i, ~(-2147483647i)), _wgslsmith_dot_vec4_i32(-vec4<i32>(-12306i, -7569i, 2938i, -95494i), ~vec4<i32>(19803i, 2147483647i, 34431i, 0i)), abs(1i))));
    global1 = array<vec3<u32>, 27>();
    global0 = array<vec2<bool>, 29>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.x - var_0.a.a.x) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-548f, var_0.a.a.x) * _wgslsmith_f_op_f32(-556f * var_0.a.a.x))))) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.a.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-1000f, var_0.a.a.x))))), -625f)));
    let var_2 = 4000u;
    return !arg_0.x || arg_0.x;
}

fn func_2() -> Struct_1 {
    global1 = array<vec3<u32>, 27>();
    global0 = array<vec2<bool>, 29>();
    global0 = array<vec2<bool>, 29>();
    let var_0 = select(vec3<bool>(true, true, true), !vec3<bool>(true, true, select(true, true, false)), vec3<bool>(func_3(vec4<bool>(true, true, true, true)), any(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), true));
    global0 = array<vec2<bool>, 29>();
    return Struct_1(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -3198f), -2210f), vec2<f32>(697f, -1080f))), ~(~(~countOneBits(global1[_wgslsmith_index_u32(28742u, 27u)]))));
}

fn func_1(arg_0: Struct_2) -> vec3<u32> {
    let var_0 = func_2();
    let var_1 = vec2<f32>(var_0.a.x, var_0.a.x);
    var var_2 = func_2();
    return firstTrailingBit(_wgslsmith_mult_vec3_u32(max(select(vec3<u32>(1u, 4294967295u, 0u), var_0.b, vec3<bool>(true, true, true)), vec3<u32>(66420u, var_2.b.x, 40873u)), _wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b.x, 0u, global2.x), ~vec3<u32>(6172u, 1u, u_input.a)))) ^ ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.b, global1[_wgslsmith_index_u32(arg_0.a.b.x, 27u)]), ~vec3<u32>(0u, 1u, 4294967295u)), vec3<u32>(_wgslsmith_mult_u32(12267u, arg_0.a.b.x), ~arg_0.a.b.x, var_0.b.x));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> Struct_1 {
    global0 = array<vec2<bool>, 29>();
    var var_0 = arg_1.a.x;
    let var_1 = !arg_3 || true;
    let var_2 = vec4<bool>(var_1, !arg_3, select(true == all(vec4<bool>(var_1, false, arg_3, var_1)), true, true), 1000f <= arg_2.a.a.x);
    var var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-1231f, _wgslsmith_f_op_f32(trunc(457f)), func_3(var_2)))));
    return Struct_1(arg_1.a, ~vec3<u32>(u_input.a ^ 34305u, firstLeadingBit(1u), ~max(0u, 1u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1559f));
    let var_1 = func_4(~(~(global1[_wgslsmith_index_u32(global2.x, 27u)] << (vec3<u32>(41761u, 4294967295u, global2.x) % vec3<u32>(32u))) << (~func_1(Struct_2(Struct_1(vec2<f32>(105f, -120f), global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec4<i32>(-27016i, -24481i, -11325i, 2147483647i), vec4<i32>(2147483647i, -84649i, 1i, -31747i))) % vec3<u32>(32u))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-1075f + _wgslsmith_f_op_f32(307f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-947f, -462f)))), global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 27u)]), Struct_2(func_2(), ~firstTrailingBit(vec4<i32>(-24853i, -3976i, -2147483647i, 6191i)), min(reverseBits(~vec4<i32>(2147483647i, -2147483647i, -7560i, 26812i)), ~vec4<i32>(-13375i, -2147483647i, 1i, -2147483647i))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_add_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(-1i, -1i))), -(19978i >> (global2.x % 32u))) <= -25208i);
    let var_2 = var_1.a;
    let var_3 = _wgslsmith_sub_i32(1i, _wgslsmith_add_i32(~_wgslsmith_sub_i32(firstLeadingBit(-14390i), _wgslsmith_mod_i32(-8015i, -1i)), 1i));
    let var_4 = Struct_2(func_4(~_wgslsmith_sub_vec3_u32(vec3<u32>(9137u, 23082u, 1u), vec3<u32>(u_input.a, var_1.b.x, 49281u)), var_1, Struct_2(var_1, vec4<i32>(10743i, i32(-1i) * -35413i, var_3 | 0i, _wgslsmith_dot_vec2_i32(vec2<i32>(-5304i, var_3), vec2<i32>(var_3, 2147483647i))), -_wgslsmith_mod_vec4_i32(vec4<i32>(-17682i, -1i, -2147483647i, var_3), vec4<i32>(-2147483647i, var_3, var_3, var_3))), all(vec3<bool>(all(vec2<bool>(false, false)), true, true))), _wgslsmith_add_vec4_i32(-countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-31134i, -24557i, var_3, var_3), vec4<i32>(-36704i, -12517i, -27349i, var_3))), ~vec4<i32>(-39165i, ~20464i, _wgslsmith_mult_i32(var_3, 72351i), var_3)), vec4<i32>(~(~37628i), 31133i, var_3, var_3));
    let var_5 = var_4.a;
    var var_6 = var_4.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(firstLeadingBit(var_4.c.xw), ~select(_wgslsmith_clamp_vec2_i32(vec2<i32>(-76858i, 40698i), vec2<i32>(var_3, var_3), vec2<i32>(17119i, var_3)), vec2<i32>(var_4.b.x, -22161i), true)), ~(~abs(6760u)) >> (abs(var_5.b.x) % 32u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_6.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + var_1.a.x), !all(vec3<bool>(false, true, false)))), -397f), ~(~func_1(var_4).zz), select(_wgslsmith_add_vec2_i32(-select(var_4.c.zz, vec2<i32>(-2147483647i, 13121i), true), vec2<i32>(var_4.b.x ^ -1i, -var_3)), vec2<i32>(min(var_4.b.x, 34952i), _wgslsmith_mod_i32(var_3, _wgslsmith_dot_vec3_i32(var_4.c.yww, var_4.b.yzx))), vec2<bool>(true, false)));
}

