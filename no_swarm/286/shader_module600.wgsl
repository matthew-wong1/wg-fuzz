struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: Struct_4,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<f32> = vec2<f32>(710f, 1078f);

var<private> global2: array<Struct_4, 32> = array<Struct_4, 32>(Struct_4(vec2<f32>(1280f, -277f)), Struct_4(vec2<f32>(2093f, 2333f)), Struct_4(vec2<f32>(-464f, -544f)), Struct_4(vec2<f32>(281f, 988f)), Struct_4(vec2<f32>(592f, 470f)), Struct_4(vec2<f32>(-608f, -967f)), Struct_4(vec2<f32>(1652f, 2395f)), Struct_4(vec2<f32>(-1369f, 242f)), Struct_4(vec2<f32>(-471f, 286f)), Struct_4(vec2<f32>(-454f, 1000f)), Struct_4(vec2<f32>(175f, -808f)), Struct_4(vec2<f32>(241f, -1269f)), Struct_4(vec2<f32>(1483f, -165f)), Struct_4(vec2<f32>(-151f, 1846f)), Struct_4(vec2<f32>(1043f, -717f)), Struct_4(vec2<f32>(713f, -196f)), Struct_4(vec2<f32>(256f, -607f)), Struct_4(vec2<f32>(-996f, -1253f)), Struct_4(vec2<f32>(506f, -395f)), Struct_4(vec2<f32>(-1000f, 1001f)), Struct_4(vec2<f32>(514f, 371f)), Struct_4(vec2<f32>(-824f, -955f)), Struct_4(vec2<f32>(-455f, 975f)), Struct_4(vec2<f32>(-1212f, 1500f)), Struct_4(vec2<f32>(1000f, 1351f)), Struct_4(vec2<f32>(1646f, -1887f)), Struct_4(vec2<f32>(-660f, -830f)), Struct_4(vec2<f32>(-606f, -1005f)), Struct_4(vec2<f32>(1210f, 302f)), Struct_4(vec2<f32>(-1000f, -345f)), Struct_4(vec2<f32>(1229f, 717f)), Struct_4(vec2<f32>(499f, -950f)));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    let var_0 = !any(!vec3<bool>(global1.x > global1.x, true, any(vec2<bool>(false, true))));
    let var_1 = vec2<bool>(all(!select(!vec4<bool>(true, false, var_0, var_0), select(vec4<bool>(var_0, false, true, var_0), vec4<bool>(false, false, false, true), true), vec4<bool>(true, false, var_0, var_0))), any(vec2<bool>(true, false || !var_0)));
    let var_2 = vec3<f32>(global1.x, -861f, global1.x);
    var var_3 = global1.x;
    var var_4 = -393f;
    return select(select(var_1, var_1, !(!vec2<bool>(false, var_0))), !(!select(!var_1, vec2<bool>(var_1.x, true), vec2<bool>(false, true))), all(!vec3<bool>(var_0, true, var_1.x)));
}

fn func_2(arg_0: f32) -> f32 {
    global2 = array<Struct_4, 32>();
    var var_0 = Struct_2(vec4<bool>(true, !(_wgslsmith_f_op_f32(-global1.x) == arg_0), any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false))), true), vec2<bool>(true, true));
    let var_1 = vec3<i32>(15223i, i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-2147483647i, -1i, 0i, 2147483647i)), 36041i);
    var var_2 = Struct_2(var_0.a, select(func_3(), vec2<bool>(all(func_3()), !(var_1.x != -2147483647i)), false));
    let var_3 = Struct_1(~vec3<u32>(u_input.a, u_input.a, 0u), true, vec2<u32>(u_input.a, firstTrailingBit(u_input.a)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global1.x)))))));
}

fn func_1() -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(func_2(global1.x)));
    let var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(0i, -1i, 16050i), 12034i), _wgslsmith_sub_i32(countOneBits(countOneBits(-1i)), abs(0i))), firstTrailingBit(vec2<i32>(reverseBits(~(-38320i)), abs(1i))));
    var var_2 = !(!select(func_3(), vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))));
    var var_3 = var_2.x;
    let var_4 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.x))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(501f, var_4) * vec2<f32>(var_4, global1.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 1975f)))) + vec2<f32>(_wgslsmith_f_op_f32(-1207f * var_4), _wgslsmith_f_op_f32(-var_4))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(356f, _wgslsmith_f_op_f32(min(var_4, -469f))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, global1.x) - vec2<f32>(global1.x, global1.x)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-220f)), var_0) - vec2<f32>(_wgslsmith_div_f32(global1.x, -1172f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4) + _wgslsmith_div_f32(global1.x, 598f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x), vec2<f32>(1f, 1f), vec2<bool>(true, false))) - _wgslsmith_f_op_vec2_f32(func_1())));
    global1 = var_0.a;
    var var_1 = !select(vec2<bool>(any(vec4<bool>(true, false, false, false)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), func_3()), vec2<bool>(true == (64416u <= u_input.a), var_0.a.x < 2179f));
    let var_2 = global2[_wgslsmith_index_u32(~abs(~5296u), 32u)];
    let var_3 = Struct_5(select(!select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(false, true, var_1.x, var_1.x), var_1.x == false), vec4<bool>(var_1.x, !all(vec2<bool>(true, var_1.x)), select(!var_1.x, !var_1.x, false), var_1.x), vec4<bool>(all(select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, true))), true, true, select(27251u, 0u, var_1.x) < u_input.a)), !select(vec3<bool>(false, var_1.x, var_1.x), !(!vec3<bool>(var_1.x, var_1.x, false)), _wgslsmith_div_f32(global1.x, global1.x) == _wgslsmith_f_op_f32(-var_2.a.x)), global2[_wgslsmith_index_u32(1u ^ ~(~u_input.a >> (abs(33526u) % 32u)), 32u)], !any(!(!vec2<bool>(var_1.x, var_1.x))));
    let var_4 = Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(68967u, 4294967295u, 0u) << (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(28300u, 58763u, 0u))), vec3<u32>(1u, ~0u, ~u_input.a)), ~vec3<u32>(~58378u, u_input.a, u_input.a), reverseBits(vec3<u32>(_wgslsmith_div_u32(u_input.a, u_input.a), u_input.a, ~0u))), _wgslsmith_f_op_vec2_f32(func_1()).x <= 299f, select(_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 22083u) | vec2<u32>(u_input.a, u_input.a), reverseBits(vec2<u32>(u_input.a, u_input.a))), ~vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 1u)), select(reverseBits(~vec2<u32>(u_input.a, 1u)), ~abs(vec2<u32>(u_input.a, 63746u)), var_1.x), var_1.x || true));
    global0 = _wgslsmith_f_op_f32(-355f * 823f);
    var var_5 = _wgslsmith_div_u32(1u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(abs(select(var_4.a.zx, vec2<u32>(u_input.a, var_4.c.x), var_1.x)), (var_4.c << (vec2<u32>(var_4.c.x, u_input.a) % vec2<u32>(32u))) ^ reverseBits(vec2<u32>(0u, var_4.a.x))), ~_wgslsmith_div_u32(var_4.a.x, max(110829u, var_4.a.x))));
    var var_6 = Struct_3(Struct_2(!vec4<bool>(true || var_1.x, all(var_3.b.zz), true, true), vec2<bool>(true & (true | var_4.b), any(vec4<bool>(false, true, var_4.b, true)))), Struct_2(!var_3.a, select(!vec2<bool>(var_4.b, false), var_3.b.yx, var_3.a.yw)), any(!vec3<bool>(var_1.x, !var_4.b, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mod_i32(1i, -1i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-54954i, 1i, 65801i)) >> (~_wgslsmith_sub_u32(var_4.a.x, var_4.c.x) % 32u)), 0i);
}

