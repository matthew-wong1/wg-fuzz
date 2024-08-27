struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
    c: vec3<f32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: Struct_3,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(36033u, 53081u, 10947u, 1u);

var<private> global1: array<Struct_1, 20>;

var<private> global2: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1478f, 276f) * -273f))) - -458f), 939f);
    var var_1 = Struct_2(global0.xzx);
    return -212f;
}

fn func_2(arg_0: vec4<bool>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x, vec2<i32>(-1i, ~0i), true))));
    let var_1 = vec4<i32>(u_input.b, -firstLeadingBit(u_input.b), 1i, u_input.b);
    var var_2 = Struct_3(!select(select(select(vec3<bool>(true, true, arg_0.x), vec3<bool>(false, false, true), false), select(vec3<bool>(arg_0.x, false, false), vec3<bool>(arg_0.x, arg_0.x, false), arg_0.zwz), arg_0.wyw), !arg_0.wxz, any(vec3<bool>(arg_0.x, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(790f - 1752f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-239f - -458f)))), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-539f)) + _wgslsmith_div_f32(121f, 323f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(963f * -1333f), -753f), 196f), var_1.x, firstTrailingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-13603i, u_input.a, 15752i) & vec3<i32>(0i, -1i, -1i), vec3<i32>(u_input.b, u_input.b, 1i)) & select(_wgslsmith_div_vec3_i32(var_1.xxx, var_1.xyz), min(vec3<i32>(var_1.x, -28378i, u_input.a), var_1.zyw), select(vec3<bool>(arg_0.x, false, arg_0.x), vec3<bool>(true, arg_0.x, true), arg_0.zxw))));
    var var_3 = var_1.xz;
    var var_4 = Struct_4(_wgslsmith_f_op_vec2_f32(var_2.c.yz + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, var_2.c.x), var_2.c.yy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.c.yx))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, 1949f, -1056f, 1254f) * vec4<f32>(var_2.b, var_2.b, 294f, -819f)) + vec4<f32>(var_2.b, var_2.c.x, -1000f, var_2.b))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(!arg_0.x, var_2.e.zy ^ vec2<i32>(u_input.a, var_3.x), u_input.b >= -18495i)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(var_2.c.x)), _wgslsmith_div_f32(-304f, _wgslsmith_f_op_f32(-var_2.b)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.c.x, _wgslsmith_f_op_f32(427f - var_2.b), 1f, _wgslsmith_f_op_f32(step(var_2.c.x, var_2.c.x))) - vec4<f32>(var_2.c.x, var_2.b, var_2.b, -884f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2.b, _wgslsmith_f_op_f32(step(var_2.c.x, var_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -526f), var_2.b))))), Struct_3(arg_0.wyx, var_2.b, var_2.c, -19619i, max(_wgslsmith_div_vec3_i32(vec3<i32>(var_2.d, var_2.e.x, 45918i), var_1.zxz), var_2.e)), _wgslsmith_add_u32(36154u, ~min(global0.x, 1573u)));
    return var_4.d;
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec2<i32>) -> vec4<u32> {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(abs(arg_0.c.yz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2154f)) + 1015f), func_2(select(vec4<bool>(arg_0.a.x, arg_0.a.x, true, true), vec4<bool>(false, true, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, false, false, true))).c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1440f + arg_0.c.x), -205f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1077f, 276f, -1000f, arg_0.b))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 609f, 233f, arg_0.c.x)))), select(select(vec4<bool>(false, true, arg_0.a.x, false), vec4<bool>(false, false, arg_0.a.x, arg_0.a.x), vec4<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_0.a.x), vec4<bool>(true, true, false, arg_0.a.x), vec4<bool>(false, false, true, arg_0.a.x)), all(arg_0.a.yz))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -690f, -171f, arg_0.c.x) - vec4<f32>(arg_0.c.x, arg_0.c.x, -1000f, arg_0.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, 252f, arg_0.b, -215f)))))), Struct_3(!vec3<bool>(arg_0.a.x, all(vec3<bool>(false, arg_0.a.x, arg_0.a.x)), true || arg_0.a.x), _wgslsmith_f_op_f32(arg_0.c.x + _wgslsmith_f_op_f32(-198f + -1000f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.b))), _wgslsmith_f_op_f32(round(arg_0.c.x)), -405f), _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_clamp_i32(arg_0.e.x, _wgslsmith_div_i32(arg_2.x, arg_2.x), -24728i)), vec3<i32>(-(27733i ^ arg_0.e.x), -2147483647i, _wgslsmith_div_i32(arg_0.e.x, arg_0.d) << (~arg_1.x % 32u))), 4294967295u);
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.e, firstTrailingBit(var_0.e), global0.x), _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 1u, arg_1.x), firstTrailingBit(vec3<u32>(9013u, 27728u, var_0.e)))), vec3<u32>(_wgslsmith_mod_u32(min(26291u, arg_1.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, global0.x, arg_1.x, var_0.e), vec4<u32>(var_0.e, 4543u, 6139u, 0u))), global0.x, ~abs(1u))), vec3<u32>(~global0.x, min(~arg_1.x, _wgslsmith_div_u32(arg_1.x, 87504u)), _wgslsmith_add_u32(countOneBits(arg_1.x), _wgslsmith_sub_u32(reverseBits(arg_1.x), arg_1.x))));
    let var_2 = ~global0.xxx;
    global2 = func_2(vec4<bool>(select(all(var_0.d.a), arg_0.a.x && all(vec4<bool>(false, var_0.d.a.x, arg_0.a.x, arg_0.a.x)), var_0.d.a.x | (var_0.c.x >= var_0.c.x)), false, var_0.d.a.x, !(all(arg_0.a) && arg_0.a.x))).a.x;
    global2 = arg_0.a.x;
    return vec4<u32>(_wgslsmith_div_u32(reverseBits(~_wgslsmith_add_u32(arg_1.x, var_2.x)), abs(~46006u)), abs(5940u), 13192u, 1u);
}

fn func_1() -> bool {
    global0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(reverseBits(~vec4<u32>(12094u, 45972u, global0.x, global0.x)), ~vec4<u32>(1u, 44601u, global0.x, 1u)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 38455u, 8857u), global0.zxw), global0.zzy & global0.yzw), ~11058u, global0.x, _wgslsmith_mult_u32(countOneBits(global0.x), global0.x))), ~_wgslsmith_add_vec4_u32(func_4(func_2(vec4<bool>(true, false, false, true)), vec2<u32>(83490u, 0u), vec2<i32>(u_input.a, 26992i)), vec4<u32>(global0.x, 35371u, 3523u, 32712u) ^ ~vec4<u32>(11046u, 0u, global0.x, global0.x)));
    global2 = (!func_2(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false))).a.x || !(u_input.a < _wgslsmith_sub_i32(u_input.b, u_input.a))) && true;
    var var_0 = _wgslsmith_f_op_f32(149f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-343f - 560f), _wgslsmith_f_op_f32(trunc(1809f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1494f - -1057f)))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-323f, 796f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-400f, _wgslsmith_f_op_f32(-1000f - 577f)))) + _wgslsmith_f_op_f32(round(1040f)))));
    let var_2 = -607f;
    return !(all(func_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true))).a.xz) & false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(ceil(527f))));
    var var_1 = select(select(vec3<bool>(func_1() & true, ~20511i > -u_input.a, true), vec3<bool>(all(vec4<bool>(true, true, true, true)) & any(vec3<bool>(false, false, true)), true, all(vec4<bool>(true, true, true, true))), select(func_2(vec4<bool>(true, true, true, true)).a, !select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))), !select(func_2(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))).a, vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(!(!func_2(vec4<bool>(false, false, false, true)).a), !select(vec3<bool>(true, false, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), func_2(vec4<bool>(true, false, false, false)).a), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)));
    var var_2 = global0.x >= _wgslsmith_clamp_u32(1u, 48612u, ~_wgslsmith_mod_u32(~0u, ~0u));
    global0 = firstTrailingBit(select(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.x, global0.x, 6415u, 1u), vec4<u32>(16137u, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 49292u, 19652u, global0.x)), ~vec4<u32>(63791u, 36177u, global0.x, global0.x)) | ((vec4<u32>(global0.x, global0.x, 40863u, 69679u) & vec4<u32>(global0.x, 4294967295u, 1u, global0.x)) | ~vec4<u32>(14460u, 27875u, 22262u, 4938u)), ~vec4<u32>(~global0.x, 1u, 3786u, 1u), vec4<bool>(false, all(select(vec4<bool>(true, true, var_1.x, var_1.x), vec4<bool>(var_1.x, false, true, var_1.x), false)), !var_1.x, var_1.x)));
    let var_3 = ~global0.xx | global0.ww;
    var var_4 = Struct_1(vec3<u32>(global0.x, _wgslsmith_add_u32(~30794u, ~global0.x), firstLeadingBit(~(~global0.x))), func_2(!vec4<bool>(true, false, true, func_2(vec4<bool>(var_1.x, true, true, var_1.x)).a.x)).c.x, -u_input.a, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, u_input.a), max(vec2<i32>(18448i, u_input.b), vec2<i32>(u_input.b, 17155i)))), countOneBits(min(abs(vec2<i32>(u_input.a, -28611i)), vec2<i32>(1i, u_input.a) & vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1057f, -1379f, 131f))) * vec3<f32>(-1000f, -1000f, 1072f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mult_i32(~(-18115i), _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, u_input.b)), ~vec2<i32>(u_input.a, u_input.a))), var_4.d), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(553f, -107f, 1650f, -1393f)), vec4<f32>(-381f, _wgslsmith_f_op_f32(295f - 2269f), -664f, var_4.e.x))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(234f + var_4.e.x), var_4.e.x), -1125f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1069f)) - func_2(vec4<bool>(true, var_1.x, false, true)).b), _wgslsmith_f_op_f32(-var_4.e.x))), -2147483647i, vec3<i32>(var_4.c, -16385i, max(u_input.b, 1i)));
}

