struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: i32,
    d: u32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: f32,
    d: vec3<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 14>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1381f, 225f, 169f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(369f, -1000f, -1342f))))), vec3<f32>(1f, 1f, 1f)))));
    let var_1 = Struct_2(Struct_1(vec2<bool>(!select(false, true, true), !all(vec4<bool>(false, false, false, true))), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1041f, var_0.x) + vec3<f32>(1425f, 245f, var_0.x)) * vec3<f32>(var_0.x, -147f, 1600f))))), Struct_1(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), vec2<bool>(true, true)), (var_0.x < _wgslsmith_f_op_f32(round(var_0.x))) && !(-406f > var_0.x)), Struct_1(vec2<bool>(37852i != u_input.b, _wgslsmith_f_op_f32(max(var_0.x, -439f)) >= -196f), (~u_input.c | ~u_input.c) >= 4294967295u));
    var_0 = var_1.b;
    let var_2 = var_1.a;
    var var_3 = Struct_3(u_input.c);
    return true;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(u_input.b, -52938i), vec2<i32>(u_input.b, ~u_input.b)) >> (firstLeadingBit(vec2<u32>(~53791u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 7697u), vec3<u32>(15653u, 15639u, u_input.c)))) % vec2<u32>(32u)), (vec2<i32>(-1i) * -firstTrailingBit(vec2<i32>(0i, u_input.b))) & vec2<i32>(u_input.b, _wgslsmith_add_i32(~u_input.b, u_input.b)));
    var var_1 = all(!select(vec3<bool>(true, true, func_3(1u)), vec3<bool>(false, true, true), _wgslsmith_f_op_f32(trunc(200f)) > _wgslsmith_f_op_f32(round(-146f))));
    var var_2 = 1000f;
    var_1 = 1u != u_input.a;
    let var_3 = _wgslsmith_add_vec2_u32(~(abs(~vec2<u32>(0u, u_input.a)) >> (~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.c, u_input.c)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 21842u) ^ vec2<u32>(u_input.a, 1u), abs(vec2<u32>(0u, 10109u)))), vec2<u32>(firstTrailingBit(u_input.c) | (u_input.c | 1u), max(_wgslsmith_clamp_u32(71275u, u_input.a, 43074u), u_input.a))));
    return global0[_wgslsmith_index_u32(17774u, 14u)];
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: bool, arg_3: Struct_1) -> u32 {
    let var_0 = true;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(1f))))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1098f)) + _wgslsmith_f_op_f32(f32(-1f) * -125f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 560f, false)) + _wgslsmith_f_op_f32(438f * 708f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(918f)), _wgslsmith_f_op_f32(1951f * 504f), any(arg_1.a.wwz))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(482f)), _wgslsmith_f_op_f32(round(-699f)))) + -196f));
    let var_2 = vec4<bool>(select((max(1u, u_input.a) == (0u | u_input.c)) | (arg_0 > (-1i | arg_0)), _wgslsmith_f_op_f32(trunc(var_1.x)) != var_1.x, any(select(arg_3.a, !arg_1.a.wz, !var_0))), arg_3.b, any(select(arg_1.a.xzx, vec3<bool>(true, arg_1.a.x, !var_0), !(false && var_0))), arg_3.a.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -114f), 508f) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -308f), 1000f))));
    let var_4 = 12910i;
    return 41860u;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = countOneBits(vec3<u32>(max(_wgslsmith_dot_vec3_u32(arg_1, arg_1), ~arg_1.x) | arg_1.x, func_4(-firstLeadingBit(u_input.b), func_2(), false, Struct_1(arg_2.a, arg_2.b)), arg_1.x));
    var var_1 = vec4<bool>(any(vec2<bool>(arg_2.b, arg_2.a.x)) | true, arg_2.a.x && func_2().b, all(select(vec4<bool>(false, true, arg_2.b, true), vec4<bool>(true, arg_2.b || false, true, true), (arg_2.b || arg_2.a.x) && arg_2.a.x)), all(!(!vec4<bool>(arg_2.b, false, false, false))));
    var var_2 = ~0u;
    let var_3 = u_input.b;
    let var_4 = _wgslsmith_div_u32(select(arg_1.x, u_input.c, false), ~(~(~(~4294967295u))));
    return select(select(select(select(select(vec4<bool>(arg_2.a.x, true, arg_2.b, false), vec4<bool>(arg_2.a.x, false, arg_2.b, arg_2.a.x), true), !vec4<bool>(var_1.x, false, var_1.x, var_1.x), true), select(vec4<bool>(false, arg_2.a.x, false, var_1.x), func_2().a, !arg_2.b), true), vec4<bool>(arg_2.a.x, all(!vec2<bool>(arg_2.a.x, false)), true, var_1.x), select(!vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(true, arg_2.a.x, !var_1.x, arg_2.a.x), !var_1.x)), select(!select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(arg_2.b, true, var_1.x, var_1.x), arg_2.b), !(!select(vec4<bool>(var_1.x, arg_2.a.x, arg_2.b, true), vec4<bool>(true, var_1.x, false, false), vec4<bool>(arg_2.a.x, true, var_1.x, var_1.x))), !vec4<bool>(var_1.x, select(arg_2.a.x, true, arg_2.a.x), var_4 < 61329u, var_1.x)), select(func_2().a, select(!vec4<bool>(false, false, true, var_1.x), func_2().a, vec4<bool>(arg_2.b == true, true, var_1.x, any(vec2<bool>(false, true)))), vec4<bool>(true, any(!var_1.ww), true, all(vec4<bool>(false, true, true, arg_2.b)))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: vec3<f32>) -> vec4<u32> {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1609f * 1412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1851f + arg_2.x))), arg_1, 1558f), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-1015f, arg_1), _wgslsmith_f_op_f32(round(-253f)), _wgslsmith_f_op_f32(trunc(arg_1)), -746f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-885f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_2.x, arg_1), -584f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -2014f))));
    global0 = array<Struct_4, 14>();
    return vec4<u32>(arg_0.d, ~4294967295u << (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c, u_input.a, arg_0.d, 24547u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 47690u, 54344u, u_input.a), vec4<u32>(u_input.a, 108751u, 0u, arg_0.d))) % 32u), u_input.c, u_input.c) ^ (abs(firstLeadingBit(~vec4<u32>(3761u, 4294967295u, u_input.a, arg_0.d))) >> (select(vec4<u32>(1921u, _wgslsmith_clamp_u32(u_input.c, arg_0.d, 4294967295u), ~u_input.c, abs(0u)), ~(~vec4<u32>(97870u, 1u, arg_0.d, 4294967295u)), vec4<bool>(!arg_0.b, arg_0.a.x, false, func_1(u_input.c, vec3<u32>(0u, arg_0.d, u_input.c), Struct_1(arg_0.a.zz, arg_0.b)).x)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    global0 = array<Struct_4, 14>();
    var var_0 = ~func_5(Struct_4(!func_1(u_input.c, vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(vec2<bool>(false, false), true)), false, u_input.b, u_input.a, -(~u_input.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1716f) - _wgslsmith_f_op_f32(ceil(-124f)))), vec3<f32>(1f, 1f, 1f));
    global0 = array<Struct_4, 14>();
    let var_1 = global0[_wgslsmith_index_u32(~func_4(reverseBits(-func_2().e), func_2(), ~abs(var_0.x) < (102007u & _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 30152u, var_0.x, u_input.c), vec4<u32>(u_input.c, var_0.x, var_0.x, u_input.c))), Struct_1(vec2<bool>(all(vec3<bool>(false, false, false)), true), all(vec4<bool>(true, true, true, true)))), 14u)];
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.d, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-545f, 775f, 198f) * vec3<f32>(-1000f, -682f, -615f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(375f, 1000f, -1207f))), !all(vec4<bool>(var_1.b, var_1.b, var_1.b, var_1.b)))), _wgslsmith_f_op_f32(select(342f, -1000f, true)), var_0.xzy, vec3<f32>(_wgslsmith_f_op_f32(ceil(612f)), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-841f * _wgslsmith_f_op_f32(round(546f)))), 1000f));
}

