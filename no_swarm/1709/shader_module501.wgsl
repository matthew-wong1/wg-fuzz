struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<i32>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7>;

var<private> global1: bool = false;

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(-1000f, -238f, 1000f), vec3<f32>(1000f, -224f, -153f), vec3<f32>(566f, 1000f, 249f), vec3<f32>(1616f, 160f, 1000f), vec3<f32>(-589f, 1674f, -435f), vec3<f32>(129f, 761f, -1570f), vec3<f32>(637f, 390f, 810f), vec3<f32>(1548f, 716f, -237f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 7u)];
    var_0 = Struct_3(Struct_2(8753u, var_0.c.x), false, u_input.b.yzw, -311f, u_input.b.yy);
    global2 = array<vec3<f32>, 8>();
    let var_1 = global0[_wgslsmith_index_u32(30809u, 7u)];
    global0 = array<Struct_3, 7>();
    return ~min(var_0.a.a, reverseBits(_wgslsmith_add_u32(~0u, var_0.a.a ^ arg_1.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> f32 {
    global2 = array<vec3<f32>, 8>();
    let var_0 = select(u_input.b.zyw, countOneBits(abs(_wgslsmith_div_vec3_i32(u_input.b.wzy, u_input.b.xww))), !(~(u_input.a.x >> (4294967295u % 32u)) < ~45360u));
    global0 = array<Struct_3, 7>();
    var var_1 = func_3(-1349f, reverseBits(select(vec4<u32>(29666u, u_input.a.x, 0u, u_input.a.x) >> (vec4<u32>(u_input.a.x, 0u, u_input.a.x, 75499u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 27010u, 4294967295u), false))) >> (24075u % 32u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-280f, 1268f, 790f, 413f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(141f, -826f, 1590f, -1614f) - vec4<f32>(439f, 383f, 870f, -936f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1067f, 1045f, 1401f, -503f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.x))));
}

fn func_4(arg_0: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1737f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - _wgslsmith_f_op_f32(-arg_0.x)))), 375f, 511f));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1008f);
    let var_2 = global0[_wgslsmith_index_u32(max(min(25515u, 1u), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.a.x, 27777u, 51688u, u_input.a.x) << (abs(vec4<u32>(u_input.a.x, 0u, 0u, u_input.a.x)) % vec4<u32>(32u))), ~vec4<u32>(~u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, 0u), u_input.a.x))), 7u)];
    let var_3 = vec3<u32>((~2282u ^ (var_2.a.a | u_input.a.x)) | var_2.a.a, _wgslsmith_add_u32(~abs(u_input.a.x), var_2.a.a), ~(~(u_input.a.x | 1u))) & ~countOneBits(~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_2.a.a, 17840u), vec3<u32>(1u, 0u, 37747u)));
    var var_4 = countOneBits(4294967295u);
    return var_0.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = ~_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, arg_1.a, arg_2.a) >> (select(vec3<u32>(u_input.a.x, 5547u, 58013u), vec3<u32>(u_input.a.x, arg_2.a, arg_2.a), true) % vec3<u32>(32u)), firstLeadingBit(~vec3<u32>(u_input.a.x, 0u, 15240u))), ~(~vec3<u32>(arg_2.a, 40725u, 30776u) ^ _wgslsmith_add_vec3_u32(vec3<u32>(arg_2.a, 4294967295u, 1u), vec3<u32>(40623u, 4294967295u, u_input.a.x))));
    var var_1 = arg_0;
    var var_2 = ~var_0.x;
    let var_3 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-945f, -155f)), _wgslsmith_f_op_f32(max(-609f, -308f)))), _wgslsmith_f_op_f32(func_4(vec2<f32>(_wgslsmith_f_op_f32(ceil(1406f)), _wgslsmith_f_op_f32(func_2(vec3<bool>(true, false, var_1.b), Struct_1(u_input.c, false, false))))))), 1f, -310f, _wgslsmith_f_op_f32(-586f - _wgslsmith_f_op_f32(635f + _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-904f, -738f), vec2<f32>(-1000f, 407f), vec2<bool>(arg_0.c, true))))))));
    global2 = array<vec3<f32>, 8>();
    return arg_1.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: f32) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<bool>(true, true, true), Struct_1(-arg_0.x, true, false))), 1098f), _wgslsmith_f_op_f32(188f + 1184f));
    let var_1 = u_input.a.x;
    global1 = _wgslsmith_dot_vec3_i32(~(-abs(u_input.b.zyx)), abs(-vec3<i32>(-1i, u_input.b.x, arg_0.x))) != u_input.b.x;
    var var_2 = Struct_1(-min(-9782i, ~1i), any(vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true))), !(42014u >= u_input.a.x), !(u_input.b.x <= -45528i))), true);
    var var_3 = Struct_1(_wgslsmith_dot_vec4_i32(abs(u_input.b), vec4<i32>(abs(u_input.c), ~(-6493i), ~arg_0.x, -5576i)), all(select(select(vec4<bool>(false, var_2.c, false, var_2.c), !vec4<bool>(false, false, var_2.c, var_2.c), any(vec3<bool>(false, true, var_2.b))), vec4<bool>(true, false, var_2.b, var_2.b), vec4<bool>(false, var_2.c, var_1 > u_input.a.x, var_2.b))), true);
    return Struct_3(Struct_2(arg_1.x, arg_0.x), select(any(select(select(vec4<bool>(var_2.c, true, var_3.c, var_3.c), vec4<bool>(false, var_3.b, false, true), vec4<bool>(false, false, var_3.b, var_2.c)), select(vec4<bool>(var_2.b, false, var_3.c, false), vec4<bool>(var_2.b, var_2.c, false, true), var_3.c), vec4<bool>(var_2.c, var_2.b, var_2.b, false))), false, ((0i | var_3.a) != 8799i) | (!var_3.b | var_3.b)), ~_wgslsmith_div_vec3_i32(~vec3<i32>(var_2.a, -1i, -1i), vec3<i32>(2147483647i, var_2.a, 0i)) << (((vec3<u32>(6967u, 4294967295u, u_input.a.x) & vec3<u32>(0u, arg_1.x, 1u)) >> ((_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 7331u, 0u), arg_1.zxw) << ((vec3<u32>(3049u, 25613u, 4294967295u) ^ arg_1.wwy) % vec3<u32>(32u))) % vec3<u32>(32u))) % vec3<u32>(32u)), -1499f, _wgslsmith_clamp_vec2_i32(arg_0.yy, ~_wgslsmith_sub_vec2_i32(-arg_0.zz, firstTrailingBit(vec2<i32>(var_3.a, 12361i))), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_0.x, 1i, -1i), 0i), ~(u_input.b.yz >> (arg_1.xx % vec2<u32>(32u))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(-abs(u_input.b.yyy), vec4<u32>(~func_1(Struct_1(-54799i, false, true), Struct_2(u_input.a.x, 1i), Struct_2(u_input.a.x, 1i)), 14035u, func_1(Struct_1(i32(-1i) * -26001i, all(vec4<bool>(true, false, false, false)), true), Struct_2(228u, u_input.c), Struct_2(~4294967295u, u_input.b.x)), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(u_input.a.x, 31133u)), vec2<u32>(u_input.a.x, u_input.a.x), countOneBits(vec2<u32>(23259u, 30963u))), vec2<u32>(u_input.a.x, ~u_input.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1385f) + -229f), -757f)));
    var var_1 = -(~u_input.b << (vec4<u32>(var_0.a.a, ~min(var_0.a.a, u_input.a.x), 51094u, ~38900u) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(var_0.d - var_0.d)))), ~_wgslsmith_div_u32(func_1(Struct_1(var_0.a.b, false, var_0.b), func_5(var_0.c, vec4<u32>(4294967295u, var_0.a.a, 3261u, var_0.a.a), var_0.d).a, var_0.a), func_3(_wgslsmith_f_op_f32(func_4(vec2<f32>(var_0.d, var_0.d))), vec4<u32>(u_input.a.x, 0u, 4250u, u_input.a.x))), -(vec3<i32>(0i, _wgslsmith_div_i32(-2147483647i, u_input.b.x), var_1.x) >> (vec3<u32>(~var_0.a.a, ~99187u, func_3(1384f, vec4<u32>(65265u, var_0.a.a, 1732u, 4294967295u))) % vec3<u32>(32u))), u_input.a);
}

