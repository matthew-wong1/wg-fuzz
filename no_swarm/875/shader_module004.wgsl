struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec3<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(16119u);

var<private> global1: Struct_1 = Struct_1(vec4<u32>(4294967295u, 33017u, 0u, 1u), true, vec2<u32>(17358u, 4294967295u));

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1346f))) * 912f))));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1270f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f * -2046f)) + 1f))));
    global1 = Struct_1(global1.a, true, ~vec2<u32>(59244u, ~1u));
    let var_2 = _wgslsmith_sub_vec4_i32(max(_wgslsmith_add_vec4_i32(~(~vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), ~arg_0), (arg_0 >> (~global1.a % vec4<u32>(32u))) >> (u_input.b % vec4<u32>(32u))), vec4<i32>(-abs(countOneBits(-17996i)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-20518i, -43188i) >> ((global1.c.x & global1.c.x) % 32u), _wgslsmith_dot_vec4_i32(min(arg_0, arg_0), vec4<i32>(arg_0.x, arg_0.x, -2147483647i, arg_0.x))), -(_wgslsmith_dot_vec2_i32(arg_0.zw, vec2<i32>(arg_0.x, 36633i)) << (arg_3.a.x % 32u)), -(arg_0.x & -15591i) | -arg_0.x));
    global1 = Struct_1(~arg_2.a, false, ~arg_3.a.wz);
    return arg_1;
}

fn func_2() -> Struct_1 {
    var var_0 = ~10757u | u_input.b.x;
    var var_1 = _wgslsmith_f_op_f32(ceil(734f));
    global1 = Struct_1(global1.a, all(select(!func_3(vec4<i32>(2147483647i, -2147483647i, 15601i, 2147483647i), vec2<bool>(true, global1.b), Struct_1(vec4<u32>(u_input.a.x, global1.c.x, global0.a, 36042u), global1.b, vec2<u32>(u_input.b.x, 4294967295u)), Struct_1(global1.a, false, vec2<u32>(global1.a.x, 24649u))), vec2<bool>(true, global1.b), true)), u_input.a.xy);
    global2 = array<Struct_2, 15>();
    var_0 = select(1u, _wgslsmith_div_u32(~45u, 16187u), false);
    return Struct_1(_wgslsmith_clamp_vec4_u32(u_input.b, select(_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(global0.a, global1.c.x, 1u, global1.a.x)), global1.a << (vec4<u32>(global1.c.x, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(24261u, select(76975u, global0.a, global1.b), 0u & global1.a.x, ~global0.a), !(!vec4<bool>(global1.b, true, false, global1.b))), vec4<u32>(global1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 1106u) & u_input.b.yy, vec2<u32>(u_input.a.x, global0.a)), 1u, 4294967295u)), any(vec3<bool>(global1.b || global1.b, any(vec4<bool>(true, false, false, global1.b)), true)), global1.a.wx);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = select(select(select(select(select(vec4<bool>(var_0.b, arg_0.x, arg_1.b, global1.b), vec4<bool>(true, false, true, var_0.b), vec4<bool>(var_0.b, false, false, arg_0.x)), vec4<bool>(false, false, arg_1.b, arg_1.b), select(vec4<bool>(arg_1.b, false, arg_0.x, global1.b), vec4<bool>(true, true, arg_0.x, false), vec4<bool>(false, arg_1.b, false, true))), !(!vec4<bool>(false, global1.b, false, false)), select(vec4<bool>(true, true, false, arg_0.x), !vec4<bool>(false, false, var_0.b, arg_1.b), !arg_1.b)), select(vec4<bool>(arg_0.x, global1.b, true, true), select(select(vec4<bool>(global1.b, global1.b, true, true), vec4<bool>(false, false, false, arg_0.x), var_0.b), !vec4<bool>(true, true, var_0.b, arg_0.x), !vec4<bool>(arg_0.x, global1.b, arg_0.x, arg_1.b)), !select(vec4<bool>(arg_0.x, global1.b, var_0.b, arg_1.b), vec4<bool>(false, false, true, global1.b), vec4<bool>(true, true, global1.b, false))), !select(select(vec4<bool>(true, global1.b, false, arg_2.x), vec4<bool>(false, false, arg_2.x, arg_0.x), vec4<bool>(arg_2.x, false, global1.b, global1.b)), select(vec4<bool>(false, arg_0.x, true, false), vec4<bool>(arg_1.b, arg_1.b, false, false), global1.b), select(vec4<bool>(var_0.b, true, arg_0.x, var_0.b), vec4<bool>(arg_1.b, arg_1.b, true, arg_1.b), false))), select(select(vec4<bool>(any(arg_0), all(arg_0), global1.b, global1.b || true), vec4<bool>(true, all(vec4<bool>(true, false, true, false)), true, any(vec4<bool>(false, var_0.b, true, false))), !select(vec4<bool>(var_0.b, true, true, false), vec4<bool>(arg_2.x, arg_2.x, true, true), arg_0.x)), select(vec4<bool>(true, arg_0.x, false, false), vec4<bool>(true, true, select(arg_2.x, true, var_0.b), arg_1.b & true), var_0.b), select(!vec4<bool>(false, arg_0.x, false, false), !(!vec4<bool>(arg_2.x, arg_0.x, false, true)), true)), vec4<bool>(global1.b, false, all(select(!arg_0, select(arg_0, arg_0, false), true)), func_3(_wgslsmith_sub_vec4_i32(~vec4<i32>(-3163i, -51138i, -1i, -32667i), _wgslsmith_add_vec4_i32(vec4<i32>(1i, -33107i, -23919i, -36273i), vec4<i32>(-12342i, 68427i, 0i, -8421i))), select(!arg_0.yy, arg_2, global1.b), Struct_1(vec4<u32>(u_input.a.x, 1u, global0.a, global1.a.x), true, u_input.b.xy), Struct_1(vec4<u32>(global1.c.x, 1u, 1u, 76037u), arg_0.x, ~var_0.a.wz)).x));
    var var_2 = _wgslsmith_add_vec3_i32(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), _wgslsmith_div_vec3_i32(~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 16022i, 2147483647i), vec3<i32>(54156i, 2035i, -1i)), _wgslsmith_clamp_i32(-39305i, 22142i, -3381i), min(1665i, 45528i)), vec3<i32>(-1i, _wgslsmith_mod_i32(firstTrailingBit(-2147483647i), _wgslsmith_mult_i32(1i, 16919i)), 17325i)));
    var var_3 = func_2();
    var var_4 = arg_1;
    return global2[_wgslsmith_index_u32(51830u, 15u)];
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> i32 {
    var var_0 = Struct_1(~arg_0.a, global1.b, ~_wgslsmith_mod_vec2_u32(u_input.a.xx, ~(~arg_0.a.zz)));
    global2 = array<Struct_2, 15>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(275f - -1100f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(382f + 1273f)))))));
    var var_2 = func_4(vec3<bool>(reverseBits(-47514i) >= (i32(-1i) * -arg_1), true, true), func_2(), select(vec2<bool>(_wgslsmith_mult_u32(61455u, arg_0.c.x) == 4294967295u, arg_0.b), vec2<bool>(false, true), !(!select(vec2<bool>(global1.b, false), vec2<bool>(global1.b, true), var_0.b))));
    var var_3 = ~1i;
    return abs(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(arg_1, -22296i, arg_1)), ~select(vec3<i32>(arg_1, arg_1, arg_1), vec3<i32>(arg_1, -13801i, 1i), vec3<bool>(arg_0.b, true, false))) ^ countOneBits(~_wgslsmith_div_i32(arg_1, -19572i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(abs(~u_input.b), any(!vec4<bool>(true, global1.b, true, true)), _wgslsmith_mult_vec2_u32(u_input.b.wy ^ vec2<u32>(global0.a, global1.c.x), vec2<u32>(4294967295u, 42877u))), -45765i) >> (global1.c.x % 32u);
    let var_1 = vec3<bool>(any(vec3<bool>(true == global1.b, !global1.b, true)) | true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f) - -135f)) <= _wgslsmith_f_op_f32(-206f - _wgslsmith_f_op_f32(select(686f, _wgslsmith_f_op_f32(ceil(445f)), true))), true);
    let var_2 = vec3<bool>(any(!select(select(var_1.yx, vec2<bool>(true, var_1.x), vec2<bool>(true, var_1.x)), !var_1.yy, !vec2<bool>(global1.b, true))), !(any(vec4<bool>(global1.b, var_1.x, true, var_1.x)) | var_1.x) && var_1.x, false);
    let var_3 = _wgslsmith_mod_i32(~(-24973i), -2147483647i);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-936f))), _wgslsmith_f_op_f32(1650f * _wgslsmith_f_op_f32(round(802f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(676f, -484f)))))) * -673f);
    global1 = func_2();
    global1 = Struct_1(u_input.b, global1.b, vec2<u32>(_wgslsmith_add_u32(select(global1.c.x, 29213u, global1.b), 1u), u_input.b.x) & firstTrailingBit(global1.c & _wgslsmith_mod_vec2_u32(global1.a.wx, vec2<u32>(89997u, 483u))));
    var var_5 = Struct_2(32881u | ~global1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1689i, u_input.b.x, _wgslsmith_f_op_f32(min(341f, var_4)), global1.a.yww, global1.c.x);
}

