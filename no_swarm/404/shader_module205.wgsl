struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(24307u, 0u, 74417u), vec3<u32>(27541u, 0u, 55234u), vec3<u32>(75120u, 18395u, 4294967295u), vec3<u32>(0u, 39422u, 110628u), vec3<u32>(0u, 89237u, 34161u), vec3<u32>(0u, 4294967295u, 57215u), vec3<u32>(4294967295u, 0u, 53521u), vec3<u32>(7129u, 1u, 1u), vec3<u32>(33120u, 45630u, 1u), vec3<u32>(1u, 40351u, 44892u), vec3<u32>(1u, 19671u, 33287u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(56253u, 1u, 1450u), vec3<u32>(4294967295u, 19554u, 57923u), vec3<u32>(70622u, 36821u, 63655u), vec3<u32>(1u, 1u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(32159u, 84984u, 1u), vec3<u32>(0u, 36199u, 0u), vec3<u32>(1u, 75297u, 0u), vec3<u32>(31054u, 1u, 1693u), vec3<u32>(4294967295u, 85986u, 4294967295u), vec3<u32>(0u, 4294967295u, 0u));

var<private> global1: array<vec2<i32>, 20>;

var<private> global2: bool;

var<private> global3: vec4<u32>;

var<private> global4: array<vec3<i32>, 2> = array<vec3<i32>, 2>(vec3<i32>(0i, 0i, 1i), vec3<i32>(-6368i, 0i, -13476i));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(372f))), 216f, _wgslsmith_f_op_f32(ceil(225f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1300f, 1320f))))));
    let var_1 = abs(u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(var_0 - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -729f), true)), _wgslsmith_f_op_f32(f32(-1f) * -1046f), -507f, var_0.x));
    global2 = any(select(vec2<bool>(true, true), !select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, false), true), false & (~41627u >= (0u << (global3.x % 32u)))));
    global3 = ~select(~_wgslsmith_mult_vec4_u32(select(vec4<u32>(global3.x, 0u, global3.x, 39730u), vec4<u32>(global3.x, global3.x, 36421u, global3.x), vec4<bool>(true, false, true, true)), max(vec4<u32>(15528u, 16398u, global3.x, global3.x), vec4<u32>(global3.x, global3.x, global3.x, 4294967295u))), abs(abs(~vec4<u32>(43550u, global3.x, 61493u, 4294967295u))), true);
    return select(vec3<bool>(true, (abs(-43869i) > _wgslsmith_mod_i32(var_1, u_input.a.x)) && true, true), select(select(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true))), select(vec3<bool>(select(true, true, false), var_2.x == var_2.x, false), !select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), -272f <= _wgslsmith_f_op_f32(-var_2.x)), any(!select(vec2<bool>(false, true), vec2<bool>(true, false), true))), select(true, !(!any(vec4<bool>(true, false, false, false))), false));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = global3.x;
    let var_1 = Struct_1(select(~_wgslsmith_mult_vec3_u32(~vec3<u32>(46322u, 0u, global3.x), vec3<u32>(global3.x, 6634u, global3.x)), vec3<u32>(reverseBits(~4294967295u), 19020u, _wgslsmith_mod_u32(abs(1u), global3.x)), select(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), func_3(), vec3<bool>(true, all(vec3<bool>(true, false, false)), true))), max(abs(global1[_wgslsmith_index_u32(reverseBits(4294967295u), 20u)]), vec2<i32>(u_input.a.x, 17188i)), arg_0.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1738f, _wgslsmith_f_op_f32(f32(-1f) * -1060f), 917f, _wgslsmith_f_op_f32(arg_0.x - 398f)))))));
    let var_2 = _wgslsmith_f_op_f32(-arg_0.x);
    let var_3 = -1071f;
    global2 = (_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(957f + var_3) - _wgslsmith_f_op_f32(ceil(-2295f)))))) || true;
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(299f, arg_0, -787f)))))));
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = 122f;
    let var_2 = u_input.a;
    let var_3 = abs((_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, arg_2.b.x), func_2(arg_1.xwx).b) << (~vec2<u32>(1u, global3.x) % vec2<u32>(32u))) ^ vec2<i32>(-u_input.a.x, -1i));
    global2 = true;
    return func_1(var_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1141f, 403f, -634f) + vec4<f32>(-1037f, -266f, -254f, 137f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-215f, -788f, -260f, 845f)) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1180f, -300f, 1000f, 682f))))))), func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-984f - -1401f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1049f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1314f), _wgslsmith_f_op_f32(-func_2(vec3<f32>(-189f, 564f, 1161f)).c)) < _wgslsmith_f_op_f32(704f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-372f))))));
    global2 = true;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(var_0.d.x)), var_0.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.d.x + var_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-249f + var_0.d.x) - -2089f)))), 1115f);
    let var_2 = var_0;
    global3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(~27779u, ~var_2.a.x, 1u, firstTrailingBit(51295u)), reverseBits(vec4<u32>(var_2.a.x, var_0.a.x, firstLeadingBit(1u), var_0.a.x)));
    global1 = array<vec2<i32>, 20>();
    let var_3 = _wgslsmith_f_op_f32(ceil(642f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(var_3, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1486f)) * 1653f), -1136f), select(vec2<i32>(0i, _wgslsmith_clamp_i32(~(-1i), ~u_input.a.x, ~u_input.a.x)), vec2<i32>(var_0.b.x, 434i), select(_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(global3.x, 2u)], u_input.a) < _wgslsmith_mod_i32(var_2.b.x, -12100i), any(vec2<bool>(true, true)), _wgslsmith_div_f32(var_0.d.x, var_0.c) < -1000f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(330f)), _wgslsmith_f_op_f32(var_3 * var_2.c), _wgslsmith_f_op_f32(max(var_3, var_3))) - _wgslsmith_f_op_vec3_f32(-func_2(vec3<f32>(-327f, var_1.x, var_2.d.x)).d.wxx)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1055f))), var_2.d.x, var_2.c)), -func_4(-2147483647i, var_0.d, func_2(_wgslsmith_f_op_vec3_f32(-var_0.d.yzw)), true).b.x);
}

