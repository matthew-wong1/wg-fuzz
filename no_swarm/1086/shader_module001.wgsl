struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
    c: Struct_1,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1;

var<private> global2: array<vec4<u32>, 18> = array<vec4<u32>, 18>(vec4<u32>(45958u, 57759u, 35559u, 25585u), vec4<u32>(17600u, 57385u, 63233u, 1u), vec4<u32>(91531u, 1u, 0u, 22399u), vec4<u32>(46456u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 4294967295u, 4294967295u, 6102u), vec4<u32>(1u, 53565u, 32998u, 4294967295u), vec4<u32>(47682u, 5927u, 57884u, 4294967295u), vec4<u32>(1u, 4294967295u, 33726u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 35514u, 63138u), vec4<u32>(1u, 1u, 1467u, 317u), vec4<u32>(61531u, 57321u, 35805u, 0u), vec4<u32>(4294967295u, 56409u, 70623u, 62653u), vec4<u32>(29253u, 46794u, 1u, 0u), vec4<u32>(4294967295u, 4294967295u, 7386u, 0u), vec4<u32>(36146u, 1u, 1u, 17563u), vec4<u32>(82498u, 1u, 4294967295u, 1u), vec4<u32>(112700u, 43873u, 22680u, 30220u), vec4<u32>(4886u, 1u, 11138u, 7401u));

var<private> global3: array<Struct_1, 7>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec2<u32> {
    global2 = array<vec4<u32>, 18>();
    global3 = array<Struct_1, 7>();
    global3 = array<Struct_1, 7>();
    var var_0 = Struct_2(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(u_input.e.x, u_input.e.x, arg_1.d)), arg_1.b, 4294967295u)), u_input.a | 1u, arg_1.c, arg_1.d & arg_1.b, true | arg_1.e);
    var var_1 = vec2<u32>(~u_input.c, arg_1.a.x);
    return ~(~(vec2<u32>(arg_1.a.x, arg_0) >> (max(vec2<u32>(53025u, u_input.a), vec2<u32>(var_1.x, 6510u)) % vec2<u32>(32u)))) | vec2<u32>(countOneBits(47684u), 17138u);
}

fn func_2() -> u32 {
    let var_0 = u_input.d.zz;
    global3 = array<Struct_1, 7>();
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, -1000f, 1829f))), vec3<f32>(_wgslsmith_f_op_f32(223f - -550f), _wgslsmith_f_op_f32(861f - -304f), _wgslsmith_f_op_f32(1044f - 710f)))), -u_input.b, global1.a.x);
    global2 = array<vec4<u32>, 18>();
    let var_2 = min(vec2<u32>(max(countOneBits(u_input.e.x) ^ _wgslsmith_div_u32(u_input.c, u_input.a), ~max(34666u, 11088u)), ~(0u >> (countOneBits(27656u) % 32u))), func_3(_wgslsmith_mult_u32(83492u, min(u_input.e.x, 28322u) | countOneBits(4294967295u)), Struct_2(u_input.e.xzz, ~1u, Struct_1(vec3<i32>(var_0.x, -2147483647i, 17257i), var_0.x), ~(~59878u), !(var_1.a.x < var_1.a.x))));
    return 49845u;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_4) -> u32 {
    global0 = 300f;
    var var_0 = global1.b;
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1592f), _wgslsmith_f_op_f32(-arg_1))), (~arg_2.a.d >= 4294967295u) && !(1u > u_input.a)))));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -2400f) - vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_1, -513f))), _wgslsmith_f_op_f32(-433f + _wgslsmith_f_op_f32(sign(arg_1))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))))), arg_1));
    var var_2 = Struct_4(arg_2.a, min(abs(~u_input.d.zw) << (vec2<u32>(~u_input.e.x, ~1u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(select(select(arg_0.c.a.xz, u_input.b.yx, vec2<bool>(true, false)), -vec2<i32>(1i, arg_2.a.c.a.x), all(vec2<bool>(arg_2.a.e, arg_2.a.e))), _wgslsmith_mod_vec2_i32(~vec2<i32>(629i, 2147483647i), vec2<i32>(14900i, global1.b)))));
    return ~max(reverseBits(u_input.e.x), 4294967295u);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec4<u32>) -> vec2<f32> {
    var var_0 = global3[_wgslsmith_index_u32(func_4(Struct_2(~(_wgslsmith_sub_vec3_u32(arg_3.wyy, vec3<u32>(1u, u_input.a, 0u)) << (_wgslsmith_mod_vec3_u32(vec3<u32>(32280u, u_input.c, u_input.c), vec3<u32>(48822u, 4294967295u, arg_3.x)) % vec3<u32>(32u))), ~u_input.e.x, arg_0.a.c, _wgslsmith_div_u32(_wgslsmith_add_u32(35140u, min(arg_0.a.d, arg_0.a.a.x)), func_2()), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -497f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-463f * arg_1.x))))), arg_0), 7u)];
    var var_1 = max(_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, _wgslsmith_div_i32(26646i, firstLeadingBit(-16583i))), _wgslsmith_dot_vec3_i32(~global1.a, var_0.a)), ~(~u_input.d.x));
    let var_2 = Struct_2(~(~select(arg_3.yyx, _wgslsmith_mult_vec3_u32(u_input.e.wzx, vec3<u32>(88346u, 55063u, arg_0.a.b)), arg_2)), _wgslsmith_div_u32(arg_3.x, _wgslsmith_sub_u32(1u, ~func_3(4294967295u, arg_0.a).x)), Struct_1(u_input.b, ~(-var_0.a.x)), ~(~arg_0.a.d), all(select(vec2<bool>(false, true), select(!vec2<bool>(true, arg_0.a.e), arg_2.zz, true), !vec2<bool>(false, arg_0.a.e))));
    var_1 = var_2.c.a.x;
    let var_3 = Struct_2(_wgslsmith_add_vec3_u32(u_input.e.zwy, vec3<u32>(u_input.a, select(~4294967295u, var_2.d, any(arg_2.yx)), var_2.d)), arg_3.x, Struct_1(-_wgslsmith_mult_vec3_i32(countOneBits(var_0.a), -u_input.b), ~(~(-var_0.b))), ~(51264u >> (_wgslsmith_sub_u32(~arg_0.a.a.x, 1u) % 32u)), arg_2.x);
    return vec2<f32>(_wgslsmith_f_op_f32(sign(-1041f)), arg_1.x);
}

fn func_5(arg_0: vec2<f32>) -> bool {
    var var_0 = Struct_1(select(-vec3<i32>(global1.a.x, global1.b, u_input.b.x) ^ global1.a, global1.a, true && all(vec3<bool>(false, false, true))) & abs(vec3<i32>(max(u_input.b.x, global1.a.x), 1i, _wgslsmith_div_i32(global1.a.x, 1i))), u_input.d.x);
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~(~_wgslsmith_add_u32(0u, _wgslsmith_div_u32(1u, u_input.e.x))), 4294967295u, ~(abs(u_input.c ^ u_input.e.x) & _wgslsmith_sub_u32(~u_input.a, ~u_input.c))), 7u)];
    var var_1 = firstTrailingBit(~global1.a.zz);
    var var_2 = select(!(!vec2<bool>(all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)))), select(vec2<bool>(!any(vec2<bool>(false, true)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), !(u_input.c >= 58855u)), vec2<bool>(false | select(true, false, true), true)), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, false), true), var_0.a.x >= global1.a.x), vec2<bool>(true, true), true), ~reverseBits(14096i) >= u_input.b.x));
    let var_3 = arg_0.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.c, min(u_input.e.x, max(u_input.e.x, ~(23430u << (u_input.a % 32u)))), 1704u, 21254u);
    global0 = -267f;
    let var_1 = select(vec4<bool>(true, true, all(vec4<bool>(any(vec4<bool>(true, true, false, false)), false, true, u_input.a != 15172u)), func_5(_wgslsmith_f_op_vec2_f32(func_1(Struct_4(Struct_2(vec3<u32>(u_input.a, u_input.e.x, 19026u), u_input.c, global3[_wgslsmith_index_u32(22197u, 7u)], var_0.x, true), global1.a.yz), vec3<f32>(1112f, 536f, 680f), vec3<bool>(false, true, false), vec4<u32>(1u, u_input.a, 37483u, 25110u)))) || false), !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false)))), true);
    global1 = Struct_1(-vec3<i32>(_wgslsmith_div_i32(_wgslsmith_div_i32(43207i, global1.b), -2147483647i), -1i, u_input.b.x), global1.a.x);
    let var_2 = Struct_2(u_input.e.xwz, ~26577u, global3[_wgslsmith_index_u32(57270u, 7u)], select(~(~var_0.x) | 1u, 1u, -global1.a.x <= _wgslsmith_clamp_i32(_wgslsmith_div_i32(-39545i, u_input.b.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.a.x, global1.b, u_input.d.x), vec3<i32>(-2147483647i, 2147483647i, -1i)), -26719i)), ~_wgslsmith_add_u32(~u_input.c, 44927u) <= 0u);
    global1 = Struct_1(-u_input.d.wxw, _wgslsmith_clamp_i32(~(9574i ^ min(global1.b, var_2.c.a.x)), _wgslsmith_dot_vec4_i32(u_input.d, abs(u_input.d)), global1.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(567f, 1175f, -333f) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -626f, 1620f), vec3<f32>(651f, -482f, -1030f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(820f, -995f, -422f)), vec3<f32>(951f, 398f, 1000f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1356f, -269f, 165f))))))), abs(1i), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(var_0.yzw, vec3<u32>(~var_0.x, 74415u, u_input.e.x)), var_2.d), ~(-(~reverseBits(global1.a.x))));
}

