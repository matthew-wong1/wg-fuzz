struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<i32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: bool,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<bool>,
    c: bool,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: vec4<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 23>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec3<i32>, 10> = array<vec3<i32>, 10>(vec3<i32>(-8925i, -48001i, 66963i), vec3<i32>(2147483647i, 35003i, -1i), vec3<i32>(23924i, 17499i, 2147483647i), vec3<i32>(1i, -24900i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, 0i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(27304i, 0i, 1i), vec3<i32>(-1i, 1i, 0i), vec3<i32>(2147483647i, -1i, -607i), vec3<i32>(-49575i, -26552i, -46515i));

var<private> global3: Struct_1 = Struct_1(-7639i, 31931u, true, vec2<i32>(-34256i, 1i), 14344u);

var<private> global4: Struct_4;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    global1 = u_input.b.zxz;
    let var_0 = Struct_5(arg_0, vec3<bool>(all(!select(vec4<bool>(global3.c, global4.b, global4.b, true), vec4<bool>(global4.b, arg_3.c, arg_2, global3.c), false)), !(!arg_3.c), any(!vec2<bool>(arg_3.c, true)) || all(!vec4<bool>(global3.c, true, global3.c, false))), all(select(!vec3<bool>(true, arg_3.c, arg_3.c), select(vec3<bool>(global4.b, arg_3.c, true), vec3<bool>(arg_3.c, false, arg_2), true), select(!vec3<bool>(arg_3.c, global4.b, global4.b), vec3<bool>(arg_2, arg_3.c, arg_2), any(vec2<bool>(true, arg_3.c))))), Struct_2(all(select(select(vec4<bool>(false, false, arg_1.c, false), vec4<bool>(global4.b, true, false, global4.b), global3.c), select(vec4<bool>(arg_3.c, arg_2, true, global4.b), vec4<bool>(true, global4.b, true, global4.b), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, arg_1.c, true), global4.b))), global4.b), _wgslsmith_f_op_f32(floor(-354f)));
    global0 = array<Struct_3, 23>();
    var var_1 = vec3<i32>(1i, -14078i, -2147483647i);
    var var_2 = Struct_5(min(~(u_input.d.x >> (var_0.a % 32u)), ~22091u), var_0.b, true, var_0.d, _wgslsmith_f_op_f32(step(483f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(229f + var_0.e)), _wgslsmith_f_op_f32(round(696f))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-977f, 905f) - 585f), _wgslsmith_f_op_f32(var_0.e * _wgslsmith_div_f32(1536f, var_0.e)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e * -574f)));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32) -> vec3<u32> {
    let var_0 = Struct_2(global3.c, false);
    global4 = Struct_4(~abs(~global4.a), (-17301i == _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.x, u_input.b.x, 2147483647i), vec3<i32>(u_input.c, u_input.a, global3.a)), _wgslsmith_add_vec3_i32(vec3<i32>(36223i, global3.d.x, -45282i), vec3<i32>(global3.d.x, global3.a, u_input.a)))) != (-12960i < u_input.b.x));
    global3 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, u_input.b), abs(u_input.b)) << (countOneBits(~vec4<u32>(4294967295u, global4.a.x, 0u, global4.a.x)) % vec4<u32>(32u)), abs(abs(vec4<i32>(global1.x, u_input.e.x, u_input.c, 12188i))) ^ vec4<i32>(global1.x, _wgslsmith_sub_i32(2147483647i, global3.a), min(global1.x, 22813i), _wgslsmith_mult_i32(u_input.c, global3.d.x))), _wgslsmith_sub_u32(countOneBits(global3.b), global3.e), false, _wgslsmith_sub_vec2_i32(global1.yx, (u_input.b.yy >> (global4.a.zz % vec2<u32>(32u))) | global1.xz), 37280u);
    global3 = Struct_1(reverseBits(-_wgslsmith_clamp_i32(~global3.a, 1i, -4748i)), min(1u, 63190u), global3.c, firstTrailingBit(vec2<i32>(max(firstTrailingBit(-51677i), ~2147483647i), u_input.a)), arg_1 << (firstTrailingBit(global3.b) % 32u));
    global0 = array<Struct_3, 23>();
    return vec3<u32>(_wgslsmith_add_u32(abs(50999u), 0u), _wgslsmith_clamp_u32(1u, 1u, arg_1), ~(~(~global3.e)));
}

fn func_2(arg_0: Struct_3, arg_1: bool, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_0.a)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1312f, -1000f, arg_0.a.x, -110f))))), arg_0.a));
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_3(~38314u, Struct_1(30091i, 4294967295u, arg_1, u_input.b.ww, 0u), false, Struct_1(global3.d.x, u_input.d.x, true, vec2<i32>(1i, -39282i), global4.a.x))), _wgslsmith_f_op_f32(min(arg_0.a.x, 1f))))), u_input.d.x);
    let var_2 = arg_2;
    let var_3 = ~(~(~countOneBits(abs(u_input.b.wzw))));
    global4 = Struct_4((countOneBits(var_1) & u_input.d.www) << (global4.a % vec3<u32>(32u)), arg_1);
    return global0[_wgslsmith_index_u32(21063u, 23u)];
}

fn func_5(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: Struct_3) -> Struct_1 {
    let var_0 = firstTrailingBit(firstTrailingBit(vec3<u32>(countOneBits(min(global3.b, global4.a.x)), abs(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, u_input.d.x)), 35552u)));
    var var_1 = Struct_1(min(max(global1.x, -81584i), _wgslsmith_clamp_i32(438i, ~26727i, global1.x)), u_input.d.x, true, vec2<i32>(u_input.a, 0i) >> (global4.a.zz % vec2<u32>(32u)), global3.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_f32(-arg_3.a.x)), 696f) - arg_1.xy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -241f), _wgslsmith_f_op_f32(step(-778f, arg_1.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(314f, arg_2.a.x) + arg_3.a.yy)), global4.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-290f, _wgslsmith_f_op_f32(-663f + 387f)))), any(!(!select(vec4<bool>(false, global4.b, arg_0, true), vec4<bool>(var_1.c, true, true, arg_0), global4.b)))));
    global1 = select(vec3<i32>(-52495i, reverseBits(~firstLeadingBit(u_input.a)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(-23645i, -25367i, global1.x), 20530i, 2147483647i) | 2147483647i), vec3<i32>(firstLeadingBit(countOneBits(41357i >> (global4.a.x % 32u))), 1i, 2147483647i >> (var_1.b % 32u)), any(vec2<bool>(false, true)));
    let var_3 = !((any(vec3<bool>(false, true, true)) == true) & true);
    return Struct_1(countOneBits(firstTrailingBit(reverseBits(_wgslsmith_mod_i32(var_1.a, var_1.d.x)))), var_1.e, var_3, global1.zz, ~1u);
}

fn func_1() -> vec2<u32> {
    var var_0 = func_5(all(vec2<bool>(true, global4.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-573f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1019f, 199f)), _wgslsmith_f_op_f32(sign(-1886f))), _wgslsmith_div_f32(983f, -460f), 194f)), global0[_wgslsmith_index_u32(global3.e, 23u)], func_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 4294967295u), vec3<u32>(1u, 29608u, 4294967295u)), _wgslsmith_add_u32(4278u, 75857u)) & global4.a.x, 23u)], global4.b, _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(global4.a.x, 74448u, global4.a.x), 0u)));
    global3 = Struct_1(global1.x, ~(~_wgslsmith_mult_u32(global4.a.x, abs(507u))), !select((1u != var_0.b) | var_0.c, global3.c, !var_0.c != (u_input.d.x != global3.b)), vec2<i32>(abs(~global1.x), global3.a >> (u_input.d.x % 32u)), firstTrailingBit(~0u));
    global1 = ~vec3<i32>(var_0.a, 60444i, _wgslsmith_sub_i32(global1.x, _wgslsmith_dot_vec3_i32(select(vec3<i32>(-2147483647i, -44546i, 2147483647i), global2[_wgslsmith_index_u32(global3.b, 10u)], vec3<bool>(global3.c, false, var_0.c)), -global2[_wgslsmith_index_u32(global3.e, 10u)])));
    let var_1 = var_0.b ^ global3.e;
    global0 = array<Struct_3, 23>();
    return ~firstTrailingBit(global4.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_div_vec3_u32(~abs(global4.a), vec3<u32>(~firstLeadingBit(u_input.d.x), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d.x, 4294967295u), ~1u), global3.e)), 20797u < _wgslsmith_dot_vec2_u32(max(func_1(), u_input.d.wx), firstLeadingBit(vec2<u32>(u_input.d.x, 0u))));
    var var_1 = !select(!vec4<bool>(var_0.b, any(vec3<bool>(global4.b, true, var_0.b)), var_0.b, true), vec4<bool>(global4.b, true, func_5(!global3.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 399f, -1000f, -562f)), global0[_wgslsmith_index_u32(~1u, 23u)], global0[_wgslsmith_index_u32(func_4(vec2<f32>(-280f, -1000f), 0u).x, 23u)]).c, false), any(select(vec3<bool>(global4.b, global4.b, var_0.b), vec3<bool>(global3.c, global3.c, true), var_0.b)) && !(!global4.b));
    let var_2 = Struct_4(~(vec3<u32>(global4.a.x, var_0.a.x, ~0u) ^ ~(~vec3<u32>(u_input.d.x, global4.a.x, 58822u))), global3.c);
    var var_3 = Struct_2(false, all(vec4<bool>(var_0.b, func_5(global4.b, vec4<f32>(-469f, -422f, -1014f, 419f), global0[_wgslsmith_index_u32(1u, 23u)], global0[_wgslsmith_index_u32(4294967295u, 23u)]).c, any(vec4<bool>(false, true, global4.b, false)), var_1.x && var_0.b)) == any(select(vec4<bool>(false, global3.c, var_1.x, global4.b), select(vec4<bool>(global3.c, false, var_1.x, global4.b), vec4<bool>(var_1.x, true, global4.b, true), vec4<bool>(true, true, global4.b, global3.c)), vec4<bool>(global4.b, var_0.b, global3.c, var_0.b))));
    var var_4 = vec3<bool>(var_2.b, func_5(func_5(var_0.b, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1f, 1f, 1f, 1f))), global0[_wgslsmith_index_u32(~(~global3.e), 23u)], global0[_wgslsmith_index_u32(var_0.a.x, 23u)]).c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(861f, -2148f, -130f, -626f)))), func_2(global0[_wgslsmith_index_u32(~(~global4.a.x), 23u)], true, ~9311u), global0[_wgslsmith_index_u32(select(1u, var_2.a.x, false), 23u)]).c, _wgslsmith_f_op_f32(-156f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1565f * -2204f), 131f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1026f)) * -579f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(_wgslsmith_clamp_vec4_u32(~u_input.d, u_input.d, u_input.d), ~u_input.d ^ _wgslsmith_mult_vec4_u32(u_input.d, u_input.d), vec4<bool>(var_1.x, func_5(true, vec4<f32>(-1000f, 1158f, -881f, 703f), global0[_wgslsmith_index_u32(4294967295u, 23u)], Struct_3(vec4<f32>(-493f, -1175f, -1323f, 980f))).c, true, true)), ~vec4<u32>(~48237u, func_4(vec2<f32>(-1339f, 452f), u_input.d.x).x, 0u, 1u)), func_1(), abs(vec4<u32>(~(~53304u), _wgslsmith_sub_u32(global3.e, 10388u), 0u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(global3.b, global3.e), u_input.d.xz)))), vec3<f32>(-724f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(1048f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-790f)), func_2(global0[_wgslsmith_index_u32(4294967295u, 23u)], global4.b, global4.a.x).a.x) - _wgslsmith_f_op_f32(-1f))));
}

