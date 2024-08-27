struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 12> = array<bool, 12>(true, false, true, true, false, true, true, false, false, true, true, false);

var<private> global1: i32;

var<private> global2: i32;

var<private> global3: vec2<bool>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<i32>) -> bool {
    global0 = array<bool, 12>();
    let var_0 = vec3<bool>(true, any(select(arg_0.d, vec4<bool>(u_input.a.x == arg_1.x, all(arg_0.d.www), true, arg_0.e >= 30481u), !(!arg_0.d))), true && !(!any(arg_0.d.yxx)));
    var var_1 = !global3.x;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-368f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1787f)), 1211f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-441f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-226f - 1000f) * _wgslsmith_f_op_f32(trunc(-205f)))))));
    let var_3 = Struct_1(vec2<u32>(32128u, reverseBits(arg_0.b)), _wgslsmith_mod_u32(10738u, min(~firstTrailingBit(arg_0.a.x), _wgslsmith_div_u32(arg_0.b, 1u))), 4294967295u, select(!(!vec4<bool>(global3.x, arg_0.d.x, true, global3.x)), select(arg_0.d, !(!arg_0.d), select(true, !global3.x, arg_0.d.x)), vec4<bool>(true, any(arg_0.d.wx), true, !var_0.x && global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(78673u, 39158u), 12u)])), firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0.b, arg_0.e), abs(115267u))) | _wgslsmith_sub_u32(min(max(arg_0.a.x, arg_0.a.x), _wgslsmith_clamp_u32(4294967295u, arg_0.c, arg_0.c)), ~arg_0.b));
    return global0[_wgslsmith_index_u32(arg_0.c, 12u)];
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    global3 = arg_1.d.zw;
    global2 = u_input.a.x;
    global3 = !(!select(vec2<bool>(arg_0, any(arg_1.d)), select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_1.c, 12u)], global0[_wgslsmith_index_u32(1u, 12u)]), vec2<bool>(true, false), vec2<bool>(true, global3.x)), !vec2<bool>(arg_0, false), true), global3.x));
    var var_0 = firstLeadingBit(u_input.a.x);
    let var_1 = arg_1;
    return select(select(vec4<bool>(true, true, !var_1.d.x, false), !vec4<bool>(global3.x, any(arg_1.d), global0[_wgslsmith_index_u32(var_1.e, 12u)], true), all(!vec2<bool>(false, global3.x))), vec4<bool>(global0[_wgslsmith_index_u32(arg_1.a.x, 12u)], true, true, any(!arg_1.d)), select(vec4<bool>(0u <= arg_1.c, (true != arg_0) & true, true, ~34734u >= arg_1.b), !var_1.d, all(var_1.d.yyw)));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.a.x, -12061i);
    global2 = ~6792i;
    var var_1 = select(vec4<bool>(true, !all(!vec4<bool>(true, global0[_wgslsmith_index_u32(arg_2.x, 12u)], global3.x, arg_3)), !any(vec2<bool>(false, global3.x)), all(!vec2<bool>(arg_3, false)) && any(vec2<bool>(global3.x, global0[_wgslsmith_index_u32(arg_2.x, 12u)]))), func_4(!select(arg_3, arg_3, false) | !(false && global0[_wgslsmith_index_u32(0u, 12u)]), Struct_1(vec2<u32>(~4294967295u, 1u), ~arg_2.x, arg_2.x >> (arg_2.x % 32u), vec4<bool>(global3.x, global0[_wgslsmith_index_u32(73665u, 12u)], func_3(Struct_1(arg_2, 4294967295u, 4294967295u, vec4<bool>(true, true, false, false), arg_2.x), u_input.a), true), ~(~arg_2.x))), !any(vec4<bool>(false, true, all(vec3<bool>(false, global3.x, true)), all(vec3<bool>(global0[_wgslsmith_index_u32(arg_2.x, 12u)], global3.x, arg_3)))));
    global0 = array<bool, 12>();
    let var_2 = true | all(select(func_4(false, Struct_1(arg_2, arg_2.x, arg_2.x, vec4<bool>(true, false, true, true), arg_2.x)).wzz, select(!vec3<bool>(false, var_1.x, var_1.x), var_1.www, select(var_1.ywz, var_1.wyx, var_1.wyz)), !var_1.yzz));
    return Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u >> (_wgslsmith_clamp_u32(arg_2.x, arg_2.x, 0u) % 32u), arg_2.x), max(~abs(arg_2), select(_wgslsmith_div_vec2_u32(vec2<u32>(32938u, arg_2.x), vec2<u32>(arg_2.x, arg_2.x)), arg_2, select(var_1.zz, var_1.wy, var_2)))), ~reverseBits(_wgslsmith_clamp_u32(~2323u, 84394u, arg_2.x)), arg_2.x, !(!vec4<bool>(arg_3, true, false | global0[_wgslsmith_index_u32(arg_2.x, 12u)], arg_3)), _wgslsmith_sub_u32(~1u, 1u));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_1) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2068f + 2070f) + _wgslsmith_f_op_f32(f32(-1f) * -1673f))) + 1175f)));
    global2 = reverseBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1.wxw, vec3<i32>(1i, 2147483647i, _wgslsmith_sub_i32(arg_1.x, u_input.a.x))), vec3<i32>(-6931i, abs(2147483647i), _wgslsmith_mod_i32(_wgslsmith_div_i32(1i, u_input.a.x), _wgslsmith_dot_vec4_i32(arg_1, vec4<i32>(25694i, u_input.a.x, -2147483647i, 22483i))))));
    var var_1 = 1000f;
    global1 = max(_wgslsmith_clamp_i32(-select(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), arg_1.wwy), u_input.a.x & -1i, any(arg_2.d)), -9744i, -11113i), ~(~u_input.a.x));
    var var_2 = ((abs(min(vec4<u32>(arg_2.a.x, 4180u, 62124u, 49963u), vec4<u32>(4294967295u, arg_2.c, 4294967295u, 12084u))) ^ _wgslsmith_add_vec4_u32(vec4<u32>(873u, 4294967295u, 13749u, 56859u), ~vec4<u32>(arg_2.a.x, 8054u, 0u, arg_2.b))) ^ _wgslsmith_mult_vec4_u32(~firstLeadingBit(vec4<u32>(arg_2.b, arg_2.c, arg_2.c, 21177u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_2.c, 4294967295u, 32778u, arg_2.a.x), vec4<u32>(arg_2.c, arg_2.b, arg_2.a.x, 96094u)), ~vec4<u32>(arg_2.e, 4294967295u, arg_2.b, arg_2.c), vec4<u32>(4294967295u, arg_2.b, arg_2.a.x, arg_2.b)))) << ((vec4<u32>(reverseBits(abs(arg_2.a.x)), countOneBits(_wgslsmith_dot_vec2_u32(arg_2.a, vec2<u32>(arg_2.a.x, arg_2.b))), 1u, countOneBits(_wgslsmith_mod_u32(arg_2.b, arg_2.b))) ^ (vec4<u32>(arg_2.a.x & arg_2.c, arg_2.a.x >> (arg_2.e % 32u), 95814u, ~arg_2.e) ^ ~firstLeadingBit(vec4<u32>(45651u, arg_2.b, 9785u, arg_2.b)))) % vec4<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1020f, -322f, 301f))))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))));
}

fn func_1() -> Struct_1 {
    global3 = vec2<bool>(((_wgslsmith_clamp_u32(11207u, 42028u, 0u) ^ 1u) >= ~max(1u, 143454u)) & any(select(!vec4<bool>(global3.x, false, false, global3.x), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 12u)], true, global3.x, global3.x), !vec4<bool>(global3.x, false, global0[_wgslsmith_index_u32(17414u, 12u)], false))), !((u_input.a.x & reverseBits(u_input.a.x)) > _wgslsmith_dot_vec3_i32(vec3<i32>(-2848i, u_input.a.x, -40487i) & vec3<i32>(2147483647i, u_input.a.x, u_input.a.x), vec3<i32>(1i, -1i, 0i) & vec3<i32>(u_input.a.x, -1557i, u_input.a.x))));
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(!vec4<bool>(true, global0[_wgslsmith_index_u32(11128u, 12u)], false, global0[_wgslsmith_index_u32(14120u, 12u)]), reverseBits(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), func_2(vec3<f32>(1012f, 1000f, -740f), 1i, vec2<u32>(50889u, 56364u), false)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f))) * vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1209f - _wgslsmith_f_op_f32(-1147f * -115f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1167f)))), _wgslsmith_f_op_f32(f32(-1f) * -351f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f)))));
    global0 = array<bool, 12>();
    let var_1 = _wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 1u)), vec2<u32>(1u, 1u));
    global0 = array<bool, 12>();
    return Struct_1(var_1, ~firstLeadingBit(func_2(_wgslsmith_f_op_vec3_f32(var_0 * var_0), 1i, _wgslsmith_mod_vec2_u32(var_1, var_1), true).e), ~(~_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(38019u, var_1.x, var_1.x)), vec3<u32>(0u, 1u, 1u))), !vec4<bool>(func_3(func_2(var_0, u_input.a.x, vec2<u32>(var_1.x, 114577u), false), u_input.a), true, true, all(vec4<bool>(true, true, true, true))), _wgslsmith_add_u32(2916u, var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 65021u), ~vec2<u32>(7696u, var_0.a.x), vec2<u32>(~23463u, var_0.a.x)) | var_0.a, _wgslsmith_add_u32(~var_0.e, ~_wgslsmith_clamp_u32(var_0.c, ~4294967295u, _wgslsmith_clamp_u32(1u, var_0.a.x, 1u))), var_0.e ^ var_0.b, func_1().d, _wgslsmith_clamp_u32(17027u, 4294967295u, ~var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1645f, 1000f) + vec2<f32>(-1248f, 793f)), vec2<f32>(269f, -2361f))), vec2<f32>(_wgslsmith_f_op_f32(163f + -351f), 644f)) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1262f, 1565f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1309f - 1974f) * _wgslsmith_f_op_f32(floor(522f))))), func_1().c, 4294967295u);
}

