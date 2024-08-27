struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(15145u, 22181u, 1u, 0u);

var<private> global1: array<vec4<u32>, 11> = array<vec4<u32>, 11>(vec4<u32>(4294967295u, 4294967295u, 137611u, 1u), vec4<u32>(30557u, 0u, 1u, 44772u), vec4<u32>(1u, 26481u, 35252u, 92006u), vec4<u32>(33789u, 1u, 4294967295u, 49857u), vec4<u32>(18693u, 87613u, 1u, 1u), vec4<u32>(49774u, 61325u, 4294967295u, 4294967295u), vec4<u32>(0u, 9704u, 0u, 1u), vec4<u32>(51594u, 44258u, 47082u, 4294967295u), vec4<u32>(40163u, 31932u, 1u, 1u), vec4<u32>(1u, 0u, 90314u, 4294967295u), vec4<u32>(4294967295u, 14971u, 1u, 4323u));

var<private> global2: u32 = 40678u;

var<private> global3: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.a, vec2<f32>(_wgslsmith_f_op_f32(floor(-691f)), arg_1.a.x))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2124f), _wgslsmith_div_f32(arg_2.a.x, _wgslsmith_f_op_f32(1126f - 2277f)))), countOneBits(vec3<i32>(firstLeadingBit(-u_input.b), -u_input.b, -arg_1.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(86655u ^ arg_1.c, 1u), ~u_input.a.xz), !(arg_0.x & (false || !arg_0.x)));
    var_0 = arg_1;
    let var_1 = arg_1.b.x;
    let var_2 = select(abs(vec2<u32>(~1568u, ~32091u)), global0.wx, select(reverseBits(u_input.b), select(arg_2.b.x, -11712i, false), true) < ~reverseBits(arg_1.b.x)) & ~vec2<u32>(0u, 25088u);
    var var_3 = abs(max(abs(u_input.a.zwy), firstTrailingBit(global0.yzz)) << (u_input.d % vec3<u32>(32u)));
    return arg_1.c << (~(~arg_2.c) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a + vec2<f32>(arg_0.a.x, arg_2.a.x)))) * vec2<f32>(-1421f, _wgslsmith_f_op_f32(max(-335f, _wgslsmith_f_op_f32(f32(-1f) * -375f))))), arg_2.b, abs(func_3(select(vec4<bool>(arg_2.d, false, true, arg_1.d), vec4<bool>(arg_1.d, arg_1.d, arg_1.d, true), arg_2.d), Struct_1(vec2<f32>(1565f, -810f), vec3<i32>(0i, arg_1.b.x, -2147483647i), u_input.c, false), Struct_1(vec2<f32>(arg_1.a.x, arg_2.a.x), arg_1.b, arg_0.c, false), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_2.a.x, arg_0.a.x, arg_2.a.x), vec3<f32>(1333f, 767f, arg_1.a.x))))) | abs(~firstLeadingBit(global0.x)), -2147483647i == -u_input.e.x);
    let var_1 = !(!(!vec4<bool>(any(vec2<bool>(true, arg_1.d)), arg_0.d, var_0.d, false)));
    global2 = min(~u_input.a.x, 12618u);
    let var_2 = Struct_1(vec2<f32>(232f, var_0.a.x), abs(vec3<i32>(u_input.b, select(arg_2.b.x, u_input.e.x, any(var_1.yx)), 19834i)), arg_0.c, true);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1336f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-952f - 139f), _wgslsmith_f_op_f32(-arg_2.a.x)), -274f, arg_2.a.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, -180f, var_2.a.x, arg_2.a.x), vec4<f32>(-1376f, arg_1.a.x, arg_2.a.x, 352f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-647f, arg_0.a.x, arg_1.a.x, arg_0.a.x), vec4<f32>(var_2.a.x, var_2.a.x, 1981f, -718f)))))));
    return all(vec2<bool>(var_0.d, all(var_1)));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global0 = abs(~(~(~(~u_input.a))));
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-1842f - arg_1.a.x), arg_1.a.x)))), arg_1.b, u_input.c, all(!vec3<bool>(arg_2.x, true, func_2(Struct_1(arg_1.a, u_input.e, arg_1.c, true), Struct_1(vec2<f32>(arg_1.a.x, arg_1.a.x), u_input.e, 4294967295u, true), Struct_1(vec2<f32>(arg_1.a.x, -412f), vec3<i32>(8485i, arg_1.b.x, u_input.e.x), u_input.d.x, false)))));
    let var_1 = !arg_2.wwx;
    var var_2 = arg_1.a;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(233f, -2402f)))))), min(vec3<i32>(-1i) * -var_0.b, ~(~firstTrailingBit(arg_1.b))), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(0u, arg_1.c)), select((u_input.a.yw | vec2<u32>(1u, 4294967295u)) << (vec2<u32>(var_0.c, 72638u) % vec2<u32>(32u)), vec2<u32>(0u, ~65458u), any(vec4<bool>(var_1.x, arg_0, false, true)))), !(true & (true & arg_2.x)));
    return arg_1;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<i32> {
    global1 = array<vec4<u32>, 11>();
    var var_0 = global0.zyy;
    var var_1 = Struct_1(arg_1.a, -(~(arg_1.b & vec3<i32>(-1i, 17582i, 23937i))), abs(abs(4294967295u)), !arg_1.d);
    let var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.a.x * -332f))), _wgslsmith_f_op_f32(-1893f + _wgslsmith_f_op_f32(f32(-1f) * -784f)), arg_1.a.x) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(-arg_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -477f)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, -205f, 1000f), vec4<f32>(arg_1.a.x, var_1.a.x, 393f, arg_1.a.x))))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(775f)) + 2691f)), arg_1.a.x, 1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_1.a.x + -1000f), _wgslsmith_f_op_f32(trunc(var_1.a.x)), !arg_2.x)))))));
    var var_3 = arg_1.a.x;
    return vec3<i32>(_wgslsmith_mod_i32(-_wgslsmith_div_i32(~u_input.b, 1i), _wgslsmith_mod_i32(arg_1.b.x, abs(_wgslsmith_add_i32(-17025i, 46160i)))), arg_1.b.x, _wgslsmith_dot_vec2_i32(u_input.e.zz, max(vec2<i32>(-2147483647i, 7734i) & (vec2<i32>(13139i, 2840i) << (vec2<u32>(91964u, var_1.c) % vec2<u32>(32u))), arg_1.b.xx | _wgslsmith_div_vec2_i32(var_1.b.zx, vec2<i32>(1i, 41179i)))));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1)) > arg_1, Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), -383f), arg_0.a), arg_0.b, 1u, select(arg_0.d, select(18551i >= arg_0.b.x, all(vec3<bool>(arg_0.d, false, true)), arg_0.d), !(-715f <= arg_0.a.x))), !(!(!(!vec4<bool>(true, arg_0.d, false, arg_0.d)))));
    global1 = array<vec4<u32>, 11>();
    global3 = select(~0u, 0u, !arg_0.d);
    global3 = arg_0.c << (arg_0.c % 32u);
    let var_1 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(610f, arg_0.a.x, arg_0.d)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-176f - var_0.a.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)))), vec3<i32>(select(-select(30075i, 1i, var_0.d), arg_0.b.x, func_2(Struct_1(vec2<f32>(-1021f, arg_0.a.x), u_input.e, var_0.c, arg_0.d), arg_0, Struct_1(vec2<f32>(1000f, var_0.a.x), var_0.b, global0.x, true))), var_0.b.x, _wgslsmith_dot_vec2_i32(-(~u_input.e.zz), var_0.b.zy)), 22631u, var_0.d);
    return func_1(func_2(var_0, var_1, arg_0), func_1(!(1i != arg_0.b.x), var_1, !(!vec4<bool>(false, arg_0.d, false, true))), select(select(!vec4<bool>(false, arg_0.d, false, true), select(vec4<bool>(arg_0.d, var_1.d, arg_0.d, false), vec4<bool>(true, true, true, true), true), arg_0.d), !(!vec4<bool>(false, true, var_1.d, true)), !(!any(vec2<bool>(var_0.d, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-304f, _wgslsmith_f_op_f32(f32(-1f) * -732f))), func_4(global0.xzz, func_1(true, Struct_1(vec2<f32>(239f, 1164f), vec3<i32>(-1i, u_input.b, u_input.b), 1u, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, true, false, true)), ~73935u, all(vec3<bool>(true, true, u_input.c <= u_input.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1650f, 574f)))) - _wgslsmith_f_op_f32(min(-717f, _wgslsmith_f_op_f32(f32(-1f) * -805f)))));
    var var_1 = var_0.b.x;
    let var_2 = select(select(!(!select(vec4<bool>(var_0.d, false, true, true), vec4<bool>(false, false, var_0.d, var_0.d), vec4<bool>(false, false, false, true))), !(!vec4<bool>(false, true, var_0.d, var_0.d)), var_0.d), vec4<bool>(~(~global0.x) <= _wgslsmith_add_u32(~u_input.c, _wgslsmith_clamp_u32(global0.x, 51607u, 4294967295u)), any(select(vec3<bool>(var_0.d, false, var_0.d), select(vec3<bool>(false, var_0.d, var_0.d), vec3<bool>(false, var_0.d, true), vec3<bool>(true, false, var_0.d)), any(vec2<bool>(var_0.d, var_0.d)))), true, false), true);
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, var_0.a.x)))), _wgslsmith_add_vec3_i32(vec3<i32>(-(1i << (var_0.c % 32u)), -_wgslsmith_mult_i32(u_input.b, -9880i), 1i), reverseBits(vec3<i32>(~(-37517i), abs(-1i), ~(-22534i)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1365f * 261f)) + -566f) >= var_0.a.x);
    var var_4 = Struct_1(var_0.a, _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, var_0.b.x), var_0.b)), u_input.b), vec3<i32>(u_input.b, _wgslsmith_add_i32(var_3.b.x, 2147483647i) >> (_wgslsmith_mod_u32(var_0.c, var_3.c) % 32u), -1i)), 23306u, any(vec3<bool>(false, var_2.x & var_3.d, true)));
    let var_5 = vec3<i32>(min(var_0.b.x, ~(-2147483647i)) << (~(~(~0u)) % 32u), -43231i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(func_1(var_0.d, func_1(var_2.x, Struct_1(var_3.a, vec3<i32>(var_0.b.x, 37479i, 13738i), 0u, true), vec4<bool>(var_3.d, false, false, true)), var_2).b.x, -15910i), -_wgslsmith_mult_i32(15040i, 0i) & ~u_input.e.x));
    let var_6 = _wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4536u, _wgslsmith_sub_u32(u_input.a.x, global0.x)), vec2<u32>(~u_input.c, var_4.c)) >> (_wgslsmith_add_vec2_u32(u_input.a.xz, vec2<u32>(min(var_0.c, var_0.c), 5888u)) % vec2<u32>(32u)), global0.yw);
    let var_7 = func_5(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(414f, -1024f)), var_3.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-var_3.b, ~4294967295u, -_wgslsmith_add_vec4_i32(max(vec4<i32>(var_3.b.x, var_5.x, var_7.b.x, var_7.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-4398i, var_7.b.x, 44685i, -2147483647i), vec4<i32>(-22894i, -1i, 0i, var_7.b.x))), vec4<i32>(firstLeadingBit(u_input.b), 2147483647i, ~(-6937i), reverseBits(u_input.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_4.a.x + 292f), _wgslsmith_f_op_f32(select(864f, 918f, false)), var_3.a.x)), vec3<f32>(_wgslsmith_f_op_f32(-func_5(var_3, var_0.a.x).a.x), _wgslsmith_f_op_f32(-var_3.a.x), _wgslsmith_f_op_f32(var_3.a.x * 555f))));
}

