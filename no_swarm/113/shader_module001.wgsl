struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: u32,
    d: Struct_2,
}

struct Struct_5 {
    a: i32,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 24088i;

var<private> global1: bool;

var<private> global2: bool = true;

var<private> global3: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true));

var<private> global4: array<vec3<f32>, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<f32>) -> vec4<i32> {
    var var_0 = ~vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.a.zx, firstTrailingBit(vec2<i32>(u_input.a.x, -2147483647i))), u_input.a.x, u_input.b.x, reverseBits(1i));
    return _wgslsmith_add_vec4_i32(firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -u_input.a.x, u_input.b.x, firstLeadingBit(u_input.b.x)), ~vec4<i32>(var_0.x, u_input.a.x, 0i, 43241i) ^ abs(vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a.x)))), ~vec4<i32>(max(u_input.a.x, _wgslsmith_sub_i32(var_0.x, 579i)), -9492i, 0i, var_0.x));
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_1(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u))));
    global2 = false;
    global0 = 2147483647i;
    let var_1 = _wgslsmith_dot_vec4_i32(-select(func_3(Struct_4(true, 43560u, 13785u, Struct_2(vec2<f32>(1832f, -246f), var_0, 40919u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-559f, -121f, 224f, -276f))), -vec4<i32>(1i, -22797i, 1i, 9259i), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false)))), vec4<i32>(_wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a.x), vec2<i32>(19763i, -45711i)), _wgslsmith_mod_i32(u_input.a.x, 2147483647i))), -21226i, abs(-countOneBits(arg_0.x)), u_input.b.x));
    var var_2 = 4294967295u;
    return var_0;
}

fn func_4(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1141f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(f32(-1f) * -1157f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(217f + -1000f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(arg_3.b.d.a.x - arg_3.b.d.a.x))), !arg_3.b.a)), -113f);
    global2 = true;
    var_0 = _wgslsmith_f_op_f32(1074f * -212f);
    let var_1 = arg_3.b;
    global4 = array<vec3<f32>, 31>();
    return arg_2;
}

fn func_1(arg_0: vec2<bool>) -> Struct_3 {
    global2 = true;
    let var_0 = vec2<f32>(-1446f, -1842f);
    let var_1 = select(!global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, _wgslsmith_mult_u32(26065u, 1u), 1u), ~_wgslsmith_div_u32(4294967295u, 1u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(92463u, 53966u), vec2<u32>(5122u, 1u))), 18u)], vec3<bool>((_wgslsmith_dot_vec3_i32(u_input.a, u_input.a) == ~(-2147483647i)) & true, all(vec3<bool>(arg_0.x, true, true)), arg_0.x), false);
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1690f, 229f, -857f, -173f), vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1388f, -339f, -1204f, var_0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, 351f, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(980f, 437f, var_0.x, var_0.x))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -957f, 231f, var_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 347f, 524f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-963f, var_0.x, 1227f, var_0.x))))), vec4<f32>(133f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(var_0.x, 306f)), 1f)), _wgslsmith_f_op_f32(f32(-1f) * -385f)));
    var var_3 = select(select(select(vec2<bool>(true, true), vec2<bool>(!var_1.x, !var_1.x), !select(vec2<bool>(arg_0.x, true), var_1.zy, var_1.x)), arg_0, !(!(var_1.x | false))), !(!(!(!vec2<bool>(arg_0.x, true)))), all(select(select(!vec4<bool>(var_1.x, arg_0.x, false, var_1.x), select(vec4<bool>(arg_0.x, false, var_1.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(var_1.x, true, true, false)), all(vec3<bool>(false, arg_0.x, var_1.x))), !(!vec4<bool>(false, true, arg_0.x, false)), var_1.x)));
    return func_4(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 28108u, 42111u), ~vec3<u32>(24123u, 11335u, 0u)) > ~1u, var_0, Struct_3(-2103f), Struct_5(_wgslsmith_add_i32(u_input.a.x, 36736i), Struct_4(arg_0.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(78328u, 77736u), vec2<u32>(56966u, 8708u)), min(1u, 1u)), reverseBits(~4294967295u), Struct_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_2.x), vec2<f32>(-2269f, -684f), vec2<bool>(false, true))), func_2(vec2<i32>(19984i, u_input.a.x)), max(4294967295u, 4294967295u)))));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_3) -> vec2<f32> {
    let var_0 = arg_1.wz;
    let var_1 = Struct_5(1i, arg_0);
    let var_2 = var_1.b.d.b.a;
    global2 = false;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -293f)), _wgslsmith_f_op_f32(-arg_0.d.a.x)))));
    return _wgslsmith_f_op_vec2_f32(arg_0.d.a - _wgslsmith_div_vec2_f32(arg_0.d.a, _wgslsmith_f_op_vec2_f32(min(arg_0.d.a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(var_1.b.d.a, vec2<f32>(arg_0.d.a.x, -1452f)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_5(Struct_4(false, 38927u, 44305u, Struct_2(vec2<f32>(-1318f, -1267f), Struct_1(vec4<u32>(0u, 18702u, 16424u, 4294967295u)), 4294967295u)), vec4<i32>(1i, -43365i, 2147483647i, u_input.a.x) & vec4<i32>(-4693i, -1i, 46932i, -18640i), func_1(vec2<bool>(true, false)), Struct_3(-1243f))))), func_2(select(u_input.b, u_input.b, !select(vec2<bool>(false, false), vec2<bool>(false, false), true))), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 90958u, 19288u) & func_2(vec2<i32>(u_input.b.x, 42401i)).a.xww, _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(10045u, 5826u), ~5715u, ~33143u), ~vec3<u32>(1u, 1u, 1u))));
    let var_2 = var_1.c;
    global2 = false;
    global1 = !(!(!all(vec4<bool>(false, false, false, true))) == true);
    var var_3 = !(!all(vec4<bool>(any(vec4<bool>(false, false, true, true)), true, any(vec3<bool>(false, true, false)), true)));
    global3 = array<vec3<bool>, 18>();
    global1 = true;
    global2 = !select(1i != func_3(Struct_4(false, 3283u, 1u, Struct_2(var_1.a, Struct_1(var_1.b.a), 22422u)), vec4<f32>(var_1.a.x, var_1.a.x, -478f, var_1.a.x)).x, true, true) && (select(-(~u_input.b.x), u_input.b.x, true) > -_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(72866i, u_input.a.x), u_input.a.zy), u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(-reverseBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b.x, -1i)), ~vec2<i32>(u_input.b.x, -17462i))), var_2, _wgslsmith_add_u32(var_1.b.a.x, ~(~(~34910u))));
}

