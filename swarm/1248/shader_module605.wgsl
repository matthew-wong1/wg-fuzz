struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: bool;

var<private> global2: array<vec2<u32>, 14>;

var<private> global3: i32;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    global2 = array<vec2<u32>, 14>();
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2323f - -935f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~1u, 23u)] + _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(1333u, 23u)]))))), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(4294967295u, 14u)], global2[_wgslsmith_index_u32(78248u, 14u)]), abs(56890u)), 23u)])), global0[_wgslsmith_index_u32(54855u, 23u)]), select(select(vec2<bool>(global0[_wgslsmith_index_u32(24821u, 23u)] >= -1300f, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, true), !all(vec4<bool>(false, false, false, false))), select(true, all(vec3<bool>(true, true, false)), -u_input.b > -12190i)), -select(vec3<i32>(1i, 1i, 1i), -reverseBits(vec3<i32>(-6709i, 2147483647i, u_input.b)), false));
    global0 = array<f32, 23>();
    let var_1 = (~8657u << (min(_wgslsmith_dot_vec4_u32(vec4<u32>(56367u, 1u, 52063u, 39796u), vec4<u32>(49439u, 0u, 44616u, 33348u)) | _wgslsmith_sub_u32(17103u, 0u), _wgslsmith_mod_u32(0u >> (0u % 32u), 1u)) % 32u)) != _wgslsmith_clamp_u32(41369u, ~_wgslsmith_mult_u32(1u, ~10750u), firstTrailingBit(1u) & 38512u);
    global0 = array<f32, 23>();
    return _wgslsmith_mod_i32(var_0.c.x, var_0.c.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_2) -> Struct_2 {
    let var_0 = vec3<bool>(1i < func_3(), !arg_3.b.x, all(vec4<bool>(true, true, false, true)));
    let var_1 = ~(~vec3<u32>(1u, ~_wgslsmith_sub_u32(1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 1u, 4294967295u))));
    return Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-514f, -1148f, _wgslsmith_div_f32(-870f, -600f), _wgslsmith_f_op_f32(-arg_3.a.x)))) - arg_3.a), !var_0.zy, vec3<i32>(_wgslsmith_mult_i32(arg_0.x ^ 29709i, 12210i), select(0i, _wgslsmith_add_i32(arg_0.x, 29325i), arg_3.b.x), 1i & ~arg_3.c.x) << (var_1 % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool, arg_3: Struct_2) -> Struct_2 {
    global0 = array<f32, 23>();
    global3 = arg_3.c.x;
    global0 = array<f32, 23>();
    let var_0 = Struct_1(vec3<bool>(true, select(arg_2, true, false), true == any(vec3<bool>(true, arg_1, arg_3.b.x))), arg_3.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(183f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 23u)] - _wgslsmith_f_op_f32(-1480f * 698f)), _wgslsmith_f_op_f32(831f + 1000f))), abs(vec4<i32>(_wgslsmith_div_i32(27472i, arg_3.c.x), func_3(), ~countOneBits(1i), -19176i)), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_0, 4294967295u, arg_0), vec3<u32>(arg_0, arg_0, 1u), vec3<u32>(arg_0, 62735u, arg_0)) | ~vec3<u32>(arg_0, 1u, arg_0), ~abs(vec3<u32>(9715u, 48339u, 1u))) >> (max(~(~vec3<u32>(arg_0, 35557u, arg_0)), ~vec3<u32>(1u, 39131u, arg_0) & select(vec3<u32>(arg_0, arg_0, arg_0), vec3<u32>(arg_0, arg_0, arg_0), false)) % vec3<u32>(32u)));
    let var_1 = -select(vec3<i32>(-6935i, min(11811i, -11325i), abs(var_0.d.x)), -min(var_0.d.wzy, var_0.d.wwy), var_0.a) ^ func_2(var_0.d.zz, var_0.d.zz & u_input.a.zy, func_3(), arg_3).c;
    return func_2(~_wgslsmith_sub_vec2_i32(~vec2<i32>(var_1.x, arg_3.c.x), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, var_1.x), ~var_0.d.wx)), ~(arg_3.c.yz << (~vec2<u32>(arg_0, 27975u) % vec2<u32>(32u))) | arg_3.c.xx, _wgslsmith_sub_i32(u_input.a.x, 32782i), Struct_2(arg_3.a, var_0.a.yz, _wgslsmith_sub_vec3_i32(arg_3.c, var_0.d.wwx)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> vec2<bool> {
    var var_0 = func_4(_wgslsmith_div_u32(0u, 1u), all(!vec2<bool>(arg_2, true)) != arg_2, true, func_2(countOneBits(vec2<i32>(u_input.b >> (1u % 32u), -u_input.b)), u_input.a.wz, -min(2147483647i, u_input.b), Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(12432u, 23u)], -343f, -1716f, 400f)), !select(vec2<bool>(true, true), vec2<bool>(false, false), arg_2), ~u_input.a.yzz)));
    let var_1 = Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(96977u | _wgslsmith_clamp_u32(3002u, 1u, 0u), ~30793u), 23u)], global0[_wgslsmith_index_u32(reverseBits(1u), 23u)], _wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(22547u, 23u)]), _wgslsmith_f_op_f32(abs(-206f)))) + -826f)), func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(-var_0.c.x, 16234i), vec2<i32>(_wgslsmith_mult_i32(404i, var_0.c.x), ~2147483647i)), ~firstTrailingBit(var_0.c.zz), max(~(var_0.c.x ^ 1i), 32116i), func_4(1u, all(vec3<bool>(arg_0, true, arg_2)) | arg_2, true, func_2(vec2<i32>(-24000i, -30388i), var_0.c.zy, 15494i, func_2(u_input.a.yx, vec2<i32>(-43318i, u_input.a.x), u_input.c, Struct_2(vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 1000f, 660f, 787f), var_0.b, vec3<i32>(1i, u_input.a.x, var_0.c.x)))))).b, vec3<i32>(25665i, _wgslsmith_dot_vec4_i32(u_input.a, select(u_input.a, vec4<i32>(var_0.c.x, -26778i, -56645i, var_0.c.x), vec4<bool>(false, var_0.b.x, true, arg_0))), -37643i) ^ countOneBits(min(reverseBits(u_input.a.xzy), -var_0.c)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1))), vec4<f32>(-1902f, -1739f, _wgslsmith_f_op_f32(ceil(-1000f)), 1208f)));
    global3 = ~(~select(23174i, ~6843i, true));
    let var_3 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(4294967295u, 23u)])))) + -169f) - _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -1000f))))));
    return !(!vec2<bool>(true, all(select(var_0.b, vec2<bool>(false, var_0.b.x), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.a.x;
    let var_0 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), !select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)), false), select(vec2<bool>(true, u_input.a.x <= -1i), vec2<bool>(true, true), _wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(46211u, 23u)], -910f)) != _wgslsmith_f_op_f32(step(776f, global0[_wgslsmith_index_u32(1u, 23u)]))), !select(vec2<bool>(true, true), vec2<bool>(true, false), func_1(true, vec4<f32>(global0[_wgslsmith_index_u32(0u, 23u)], 2095f, 714f, global0[_wgslsmith_index_u32(0u, 23u)]), true)));
    var var_1 = ~25794u;
    let var_2 = u_input.a;
    var var_3 = Struct_1(vec3<bool>(var_0.x, !(!var_0.x && true), all(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(var_0.x, var_0.x, false, false), vec4<bool>(true, var_0.x, false, false), var_0.x), vec4<bool>(true, var_0.x, true, var_0.x)))), -1000f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1875f, global0[_wgslsmith_index_u32(0u, 23u)], 1000f), vec3<f32>(-387f, 193f, 910f))) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0[_wgslsmith_index_u32(1u, 23u)], 438f, global0[_wgslsmith_index_u32(15009u, 23u)]))))), var_2 | -u_input.a, vec3<u32>(~firstLeadingBit(_wgslsmith_mult_u32(7209u, 1u)), ~firstLeadingBit(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(39626u, 14u)], global2[_wgslsmith_index_u32(23254u, 14u)])), 30777u));
    let var_4 = var_3.a;
    global3 = func_2(-(~var_3.d.xx), ~(vec2<i32>(~(-39690i), _wgslsmith_mult_i32(var_2.x, u_input.a.x)) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(var_2.x, var_3.d.x), u_input.a.yx), u_input.a.yy)), _wgslsmith_mult_i32(u_input.a.x, -firstTrailingBit(u_input.b) | min(~(-2147483647i), _wgslsmith_clamp_i32(var_2.x, u_input.c, var_3.d.x))), func_4(var_3.e.x, var_3.a.x, -337f == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_3.e.x, 23u)])), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.c.x, -1000f, 2103f, 325f))), vec2<bool>(any(vec4<bool>(var_3.a.x, var_4.x, false, var_3.a.x)), var_3.e.x < 1905u), ~(~var_2.wwx)))).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(1u, ~_wgslsmith_clamp_u32(var_3.e.x, ~27589u, _wgslsmith_mod_u32(var_3.e.x, var_3.e.x)), ~var_3.e.x ^ _wgslsmith_div_u32(24469u, var_3.e.x)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.c.zy), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_3.c.zy, vec2<f32>(-154f, 617f))))))));
}

