struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -870f;

var<private> global1: vec2<bool>;

var<private> global2: bool = false;

var<private> global3: array<vec3<bool>, 28> = array<vec3<bool>, 28>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global4: array<Struct_1, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1372f, arg_0, -315f), vec3<f32>(-566f, 2677f, -1051f)), vec3<f32>(arg_0, 1194f, -339f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0, arg_0, -370f))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(516f, arg_0, arg_0), vec3<f32>(-408f, 338f, -305f), true)), !vec3<bool>(global1.x, true, true))))) - _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(f32(-1f) * -799f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1155f, arg_0, arg_0) + vec3<f32>(arg_0, arg_0, arg_0))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(402f, arg_0, arg_0))))))));
    let var_1 = abs(max(vec2<i32>(2147483647i, u_input.b.x & min(2147483647i, u_input.b.x)), vec2<i32>(u_input.b.x, firstTrailingBit(1i))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1849f)), _wgslsmith_f_op_f32(-725f + -678f))), 129f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0, 1059f)));
    let var_3 = true;
    return _wgslsmith_mult_vec3_i32(-reverseBits(-(u_input.b.xyz ^ u_input.b.wxy)), min(u_input.b.wzz, ~firstTrailingBit(u_input.b.yzy ^ u_input.b.wwz)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: u32) -> bool {
    var var_0 = 263f;
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-874f))), arg_0.d));
    var var_1 = Struct_1(func_3(289f) >> (u_input.d.xyz % vec3<u32>(32u)), vec4<i32>(u_input.b.x, ~select(~u_input.b.x, arg_0.b.x, global1.x), -_wgslsmith_mult_i32(-1i, u_input.b.x) ^ abs(i32(-1i) * -58008i), firstLeadingBit(_wgslsmith_div_i32(-1i, _wgslsmith_dot_vec3_i32(arg_0.a, vec3<i32>(0i, u_input.b.x, u_input.b.x))))), _wgslsmith_f_op_f32(sign(arg_1.x)), arg_1.x);
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.c), arg_0.d)))) < arg_1.x;
    let var_3 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_0.c) + arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c * arg_0.d)) * _wgslsmith_f_op_f32(f32(-1f) * -1461f)), arg_1.x, -174f)));
    return all(!(!(!(!vec2<bool>(global1.x, true)))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    global1 = !(!(!arg_0.xz));
    let var_0 = !select(arg_0, vec3<bool>(false, all(arg_0.yx), arg_0.x), !(!select(vec3<bool>(arg_0.x, true, true), arg_0, arg_0)));
    var var_1 = _wgslsmith_add_i32(30976i ^ -min(min(u_input.b.x, u_input.b.x), 27381i), 45902i);
    var var_2 = Struct_1(_wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.b.x, u_input.b.x, -24290i)) << (u_input.d.yww % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(firstLeadingBit(u_input.b.xzy), ~vec3<i32>(43802i, 22467i, u_input.b.x))) | select(func_3(_wgslsmith_f_op_f32(abs(1069f))), ~(-u_input.b.yxy), vec3<bool>(any(vec2<bool>(arg_2, arg_2)), var_0.x, u_input.b.x != -11712i)), u_input.b, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x));
    global1 = var_0.zx;
    return global4[_wgslsmith_index_u32(~4294967295u, 26u)];
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    var var_0 = arg_0.wy;
    var var_1 = false;
    var var_2 = func_4(select(global3[_wgslsmith_index_u32(~firstLeadingBit(reverseBits(u_input.c.x)), 28u)], select(vec3<bool>(func_2(Struct_1(u_input.b.zxz, u_input.b, arg_2, 1512f), vec3<f32>(-525f, arg_1.x, arg_1.x), 0u), true, u_input.b.x > u_input.b.x), vec3<bool>(!var_0.x, all(vec3<bool>(arg_0.x, arg_0.x, false)), false && arg_0.x), arg_0.yyz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(1858f - 278f), -1133f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, arg_1.x, arg_2)) * _wgslsmith_f_op_vec3_f32(round(vec3<f32>(841f, arg_2, 299f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, 1909f, arg_1.x), vec3<f32>(-717f, arg_1.x, arg_2)))) - vec3<f32>(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(sign(arg_2)))), arg_2, 976f)), select(true, true, any(arg_0.zx) | global1.x));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c, arg_2, arg_2, 215f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(2567f, var_2.c, -469f, var_2.c)))))));
    global2 = !(select(false, var_0.x, false) != (all(vec3<bool>(var_0.x, arg_0.x, arg_0.x)) | true));
    return global4[_wgslsmith_index_u32(u_input.d.x, 26u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(min(reverseBits(reverseBits(vec3<i32>(arg_0.b.x, u_input.b.x, arg_1.a.x)) | -u_input.b.ywy), abs(func_4(global3[_wgslsmith_index_u32(u_input.c.x << (u_input.c.x % 32u), 28u)], _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.d, -394f, arg_1.c), vec3<f32>(arg_0.d, arg_0.c, 1504f)), !global1.x).a)), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(2147483647i, arg_1.a.x, arg_1.a.x, arg_0.a.x)) ^ -firstLeadingBit(arg_1.b), ~_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, arg_0.a.x, u_input.b.x, arg_1.b.x), arg_1.b) ^ func_4(select(global3[_wgslsmith_index_u32(36510u, 28u)], global3[_wgslsmith_index_u32(u_input.a.x, 28u)], global1.x), vec3<f32>(367f, arg_0.c, arg_0.d), any(vec4<bool>(false, global1.x, global1.x, true))).b, min(~_wgslsmith_mod_vec4_i32(vec4<i32>(23800i, arg_1.b.x, arg_1.b.x, 86044i), u_input.b), vec4<i32>(countOneBits(-34039i), 19711i << (u_input.d.x % 32u), u_input.b.x, u_input.b.x))), -1761f, _wgslsmith_div_f32(arg_1.d, _wgslsmith_f_op_f32(ceil(719f))));
    let var_1 = func_4(select(select(select(global3[_wgslsmith_index_u32(~u_input.d.x, 28u)], vec3<bool>(global1.x, global1.x, true), global1.x), vec3<bool>(true, true, true), !select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, false, false), global1.x)), !select(global3[_wgslsmith_index_u32(~4294967295u, 28u)], vec3<bool>(false, global1.x, global1.x), true), vec3<bool>(global1.x, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, 231f, arg_0.d) + vec3<f32>(1000f, var_0.c, var_0.c)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1188f), _wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(ceil(1814f))))), all(!(!(!vec4<bool>(global1.x, global1.x, global1.x, false)))));
    var var_2 = arg_1;
    global3 = array<vec3<bool>, 28>();
    global0 = _wgslsmith_f_op_f32(max(-716f, _wgslsmith_div_f32(var_2.d, _wgslsmith_f_op_f32(1569f - _wgslsmith_f_op_f32(func_4(global3[_wgslsmith_index_u32(4294967295u, 28u)], vec3<f32>(-1000f, 692f, 392f), global1.x).c + _wgslsmith_f_op_f32(var_1.d + 429f))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2089f + _wgslsmith_f_op_f32(-1000f - arg_0.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(Struct_1(vec3<i32>(-2147483647i, -2147483647i, 2147483647i) << (u_input.a % vec3<u32>(32u)), u_input.b, -1625f, _wgslsmith_f_op_f32(f32(-1f) * -288f)), func_1(vec4<bool>(true, global1.x, global1.x, global1.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1102f, -198f), vec2<f32>(-286f, -976f), vec2<bool>(global1.x, false))), _wgslsmith_f_op_f32(min(873f, 1406f))))))));
    global0 = _wgslsmith_f_op_f32(trunc(563f));
    global1 = select(!select(vec2<bool>(global1.x, global1.x || true), vec2<bool>(false, global1.x), select(!vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, false))), !select(!select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, true), global1.x), vec2<bool>(false && global1.x, true), vec2<bool>(true, !global1.x)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(503f - 1881f)), u_input.d & _wgslsmith_mod_vec4_u32(firstLeadingBit(abs(u_input.d)), u_input.d));
}

