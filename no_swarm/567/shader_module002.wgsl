struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<Struct_2, 9>;

var<private> global2: bool;

var<private> global3: i32;

var<private> global4: Struct_2;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    return 69677u;
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(abs(-415f));
    let var_1 = global0.x >= _wgslsmith_f_op_f32(global0.x + -694f);
    var var_2 = vec3<i32>(~u_input.d >> (~(~1u) % 32u), min(5074i, u_input.d), _wgslsmith_sub_i32(25365i, ~u_input.d) >> ((1u | global4.c.a.x) % 32u)) & min(u_input.b, vec3<i32>(_wgslsmith_dot_vec2_i32(global4.d.ww & u_input.b.xz, vec2<i32>(global4.b.x, u_input.d)), ~_wgslsmith_div_i32(global4.c.d.x, -1i), reverseBits(19786i ^ u_input.d)));
    global3 = ~global4.e.d.x;
    global3 = 0i;
    return (vec3<i32>(-1i) * -vec3<i32>(0i, 38695i, var_2.x)) | vec3<i32>(_wgslsmith_sub_i32(43503i, u_input.b.x), ~(-1i), 6722i);
}

fn func_2() -> u32 {
    global0 = vec2<f32>(1000f, global0.x);
    var var_0 = global4.e;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global0.x, 778f), -2267f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(global0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global0.x, 261f, -788f, global0.x), vec4<f32>(global0.x, 2410f, -732f, global0.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(1525f, global0.x, 144f, global0.x), vec4<f32>(-1000f, global0.x, -365f, -1619f)))))));
    let var_2 = var_1.yz;
    var var_3 = Struct_2(-22201i, func_3(firstLeadingBit(u_input.e.x)), global4.e, _wgslsmith_mult_vec4_i32(global4.d & vec4<i32>(2147483647i, global4.a >> (18660u % 32u), 0i, 0i), _wgslsmith_add_vec4_i32(global4.d, vec4<i32>(-1i, u_input.b.x, abs(u_input.b.x), firstLeadingBit(-18880i)))), Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(max(vec3<u32>(13758u, global4.e.a.x, u_input.c), var_0.a), vec3<u32>(63316u, var_0.a.x, var_0.a.x) ^ vec3<u32>(var_0.a.x, global4.c.a.x, 19702u)), abs(select(1u, 12450u, true)), ~_wgslsmith_mod_u32(global4.e.a.x, global4.c.a.x)), true, all(select(select(vec3<bool>(false, global4.e.c, false), vec3<bool>(false, global4.c.b, true), vec3<bool>(true, false, global4.e.c)), !vec3<bool>(var_0.c, global4.c.c, var_0.c), select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(true, false, true), true))), vec3<i32>(_wgslsmith_dot_vec4_i32(countOneBits(global4.d), vec4<i32>(var_0.d.x, -21733i, global4.b.x, var_0.d.x)), (global4.d.x >> (82173u % 32u)) & 0i, _wgslsmith_add_i32(1i, u_input.d))));
    return _wgslsmith_sub_u32(1u, firstLeadingBit(_wgslsmith_div_u32(_wgslsmith_div_u32(global4.e.a.x << (u_input.c % 32u), ~0u), ~var_3.e.a.x)));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: bool, arg_3: vec2<u32>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(909f, global0.x)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.x))), -678f);
    return Struct_1(vec3<u32>(abs(8026u), 48125u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 0u, global4.e.a.x, ~u_input.c), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, arg_3.x, arg_3.x, arg_3.x), vec4<u32>(u_input.e.x, 0u, arg_0, 1u))))), !((firstTrailingBit(-17517i) & _wgslsmith_mod_i32(0i, global4.a)) > arg_1.x), arg_2, vec3<i32>(u_input.d, -u_input.b.x, 1i));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3;
    global4 = Struct_2(var_0.d.x, vec3<i32>(global4.d.x, max(-2147483647i, _wgslsmith_mod_i32(_wgslsmith_div_i32(var_0.a, -9765i), -arg_3.e.d.x)), arg_2.d.x), func_4(15028u, vec4<i32>(abs(-36119i), _wgslsmith_add_i32(2147483647i, var_0.a), ~(-2147483647i), -arg_1.a) & (max(vec4<i32>(-41363i, -46693i, global4.b.x, arg_1.a), var_0.d) | var_0.d), true, vec2<u32>(arg_2.a.x, abs(arg_3.e.a.x) << (arg_2.a.x % 32u))), arg_3.d, func_4(var_0.e.a.x, ~vec4<i32>(0i, -global4.a, global4.e.d.x, 0i), true, ~u_input.e));
    var var_1 = vec3<u32>(func_4(_wgslsmith_dot_vec3_u32(arg_2.a, ~(~arg_1.e.a)), min(global4.d, -_wgslsmith_mult_vec4_i32(vec4<i32>(19038i, -80539i, var_0.d.x, arg_3.a), arg_1.d)), arg_1.e.c, ~global4.e.a.zz).a.x, _wgslsmith_mult_u32(~(~1u) ^ arg_3.e.a.x, arg_0), 8864u);
    let var_2 = Struct_2(-(~2147483647i), -arg_1.d.zyy, global4.c, var_0.d, func_4(arg_3.e.a.x, vec4<i32>(global4.b.x, global4.e.d.x, -1i, reverseBits(var_0.a)), false, ~(global4.c.a.zx & u_input.e)));
    var var_3 = vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(234f * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.x)))) < -1215f, func_4(1u, var_2.d, false, vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.e, var_0.c.a.zy), arg_2.a.x), ~(~0u))).c, true);
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(-299f, 429f), vec2<f32>(global0.x, 121f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2280f, -867f))), vec2<f32>(_wgslsmith_f_op_f32(round(1915f)), 927f), !(!var_2.e.c))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.x))), global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global4.c.d.x;
    global1 = array<Struct_2, 9>();
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_clamp_u32(1u, func_1(global4.c, global4.c, Struct_2(2147483647i, u_input.b, Struct_1(vec3<u32>(26648u, u_input.a, 68666u), false, true, vec3<i32>(27733i, u_input.d, global4.c.d.x)), vec4<i32>(11299i, u_input.b.x, u_input.b.x, 22734i), global4.e), global4.e) ^ u_input.a, global4.e.a.x), Struct_2(min(i32(-1i) * -2147483647i, ~2147483647i), vec3<i32>(u_input.b.x, -global4.b.x, 29013i), func_4(func_2(), ~global4.d, global4.a < 22945i, ~vec2<u32>(global4.c.a.x, 56484u)), -(~global4.d), global4.c), func_4(global4.c.a.x, select(abs(global4.d), vec4<i32>(u_input.b.x, global4.d.x, 0i, -7761i), select(vec4<bool>(global4.c.c, true, false, global4.e.b), vec4<bool>(true, global4.c.b, global4.c.c, global4.e.b), global4.c.b)), -889f == _wgslsmith_f_op_f32(select(global0.x, global0.x, global4.c.b)), u_input.e), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5242u, 1u, u_input.c), vec3<u32>(global4.c.a.x, global4.c.a.x, u_input.a)), ~1u, 1u) & max(global4.e.a.x, ~global4.e.a.x), 9u)])));
    var var_0 = Struct_1(global4.e.a, func_4(u_input.c, vec4<i32>(u_input.b.x, u_input.d, -2418i, ~firstLeadingBit(u_input.d)), any(vec2<bool>(!global4.e.b, global4.c.c)), (global4.c.a.yz >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u))) | u_input.e).c, all(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)))), vec3<i32>(-74602i, _wgslsmith_sub_i32(select(u_input.d, u_input.d, global4.e.c) << (~4294967295u % 32u), -max(u_input.b.x, global4.e.d.x)), firstLeadingBit(u_input.b.x)));
    var var_1 = _wgslsmith_f_op_f32(-650f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-231f - global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - global0.x) - -1345f) + _wgslsmith_f_op_f32(-global0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mod_vec2_u32(vec2<u32>(15235u, global4.e.a.x), vec2<u32>(u_input.a, 1u))) | select(_wgslsmith_sub_vec2_u32(var_0.a.yz, ~vec2<u32>(10753u, global4.e.a.x)), ~u_input.e, !(!vec2<bool>(true, global4.c.c))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-631f, global0.x))) * vec2<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_div_f32(_wgslsmith_div_f32(-480f, -1000f), _wgslsmith_f_op_f32(sign(-308f))))), i32(-1i) * -2147483647i, vec4<f32>(-912f, global0.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(global4.e.a.x, Struct_2(global4.e.d.x, vec3<i32>(1i, 24576i, u_input.d), global4.e, global4.d, global4.c), Struct_1(var_0.a, global4.c.b, true, u_input.b), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.e.a.x, 40449u), 9u)])).x)));
}

