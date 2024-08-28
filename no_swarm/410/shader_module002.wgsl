struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: vec3<bool>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<u32, 7>();
    var var_0 = min(4294967295u, ~max(~(u_input.b & 28017u), 1u));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(arg_2.b));
    var var_2 = global0[_wgslsmith_index_u32(46883u, 7u)];
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.a.a.x, _wgslsmith_f_op_f32(-542f * -760f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1201f, -1628f, true))))) + _wgslsmith_f_op_vec3_f32(-arg_2.b.xyy));
    return vec3<bool>(arg_3.b, true, arg_3.b);
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(1i, 1i, 1109i)) >> (firstLeadingBit(~vec3<u32>(56936u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(36931u, 7u)], 7u)], 0u)) % vec3<u32>(32u)), abs(vec3<i32>(~(-27052i), -u_input.a.x, u_input.a.x << (1u % 32u)))), u_input.a.x);
    global1 = !select(!vec3<bool>(true, !global1.x, global1.x), select(select(!vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, true, true), func_3(vec3<f32>(-592f, 356f, -603f), global1.x, Struct_2(vec2<f32>(-811f, 599f), vec4<f32>(-623f, 1058f, -1000f, -1000f), Struct_1(global1.x)), Struct_3(Struct_2(vec2<f32>(-1370f, 1000f), vec4<f32>(174f, -450f, 779f, 336f), Struct_1(false)), global1.x, vec3<f32>(-2582f, 1000f, -1432f)))), vec3<bool>(global1.x, var_0 <= -1i, any(vec4<bool>(global1.x, global1.x, true, global1.x))), select(!vec3<bool>(false, true, global1.x), select(vec3<bool>(global1.x, true, false), vec3<bool>(false, global1.x, global1.x), global1.x), vec3<bool>(false, true, global1.x))), vec3<bool>(all(!global1.xz), (35761i | var_0) < (2147483647i << (u_input.b % 32u)), true));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(240f, -866f)), -309f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-325f + _wgslsmith_f_op_f32(f32(-1f) * -1776f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-827f, _wgslsmith_f_op_f32(f32(-1f) * -664f)) - vec2<f32>(_wgslsmith_f_op_f32(ceil(895f)), _wgslsmith_f_op_f32(step(446f, 471f)))))));
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    return Struct_1(true);
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = true;
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_1, arg_1)), vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1455f - arg_0.c.x)))), 210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-315f)) - 133f) * -747f)));
    var var_2 = vec4<bool>(var_0, 25156u > _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(~(6376u | u_input.b), 7u)], ~firstLeadingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)])), any(select(select(select(vec4<bool>(arg_2.a, false, arg_0.a.c.a, arg_2.a), vec4<bool>(false, var_0, false, true), vec4<bool>(global1.x, true, arg_2.a, false)), select(vec4<bool>(global1.x, arg_0.a.c.a, false, false), vec4<bool>(true, true, var_0, arg_0.a.c.a), vec4<bool>(arg_2.a, arg_2.a, false, true)), false), select(!vec4<bool>(true, true, var_0, true), vec4<bool>(arg_0.b, arg_2.a, false, var_0), select(vec4<bool>(true, arg_2.a, true, true), vec4<bool>(false, global1.x, false, arg_2.a), false)), vec4<bool>(func_2().a, false, true, true))), global1.x & any(func_3(vec3<f32>(arg_1.x, -378f, 322f), arg_0.b, Struct_2(vec2<f32>(-895f, var_1.x), arg_0.a.b, Struct_1(false)), arg_0).xx));
    var var_3 = _wgslsmith_mod_u32(61955u >> (global0[_wgslsmith_index_u32(~(~(~31789u)), 7u)] % 32u), 1u);
    global0 = array<u32, 7>();
    return global1.xy;
}

fn func_1() -> u32 {
    global1 = !(!(!vec3<bool>(global1.x, any(vec3<bool>(false, global1.x, true)), true)));
    global1 = vec3<bool>(!all(vec3<bool>(true, true, true)), any(func_4(Struct_3(Struct_2(vec2<f32>(1000f, -997f), vec4<f32>(1239f, -972f, -728f, -395f), Struct_1(false)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(247f, 145f, 888f))), vec3<f32>(_wgslsmith_div_f32(1000f, -2415f), _wgslsmith_f_op_f32(1509f - 1243f), -1000f), func_2())), !(global1.x || false));
    global0 = array<u32, 7>();
    let var_0 = 2147483647i << (~u_input.b % 32u);
    var var_1 = select(select(select(select(!vec3<bool>(global1.x, false, global1.x), vec3<bool>(false, global1.x, global1.x), select(vec3<bool>(true, false, false), vec3<bool>(global1.x, false, global1.x), global1.x)), vec3<bool>(global1.x, global1.x, !global1.x), vec3<bool>(true, true, true)), !vec3<bool>(global1.x, true, func_3(vec3<f32>(996f, 1375f, -1000f), true, Struct_2(vec2<f32>(-1173f, -2288f), vec4<f32>(-603f, -573f, 278f, -460f), Struct_1(false)), Struct_3(Struct_2(vec2<f32>(547f, -1057f), vec4<f32>(-1137f, 524f, -614f, -371f), Struct_1(true)), true, vec3<f32>(-1630f, 439f, -342f))).x), !(!(!vec3<bool>(global1.x, false, false)))), func_3(vec3<f32>(1f, 1f, 1f), global1.x, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-322f, 431f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(723f, -258f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(910f, 1159f, -932f, -670f), vec4<f32>(-402f, 382f, -1282f, -1060f)) + vec4<f32>(466f, -124f, -1000f, 366f)), Struct_1(true)), Struct_3(Struct_2(_wgslsmith_div_vec2_f32(vec2<f32>(-1707f, -570f), vec2<f32>(-904f, 780f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1234f, 824f, -1167f, 696f), vec4<f32>(-895f, -2178f, -1027f, 1431f)), func_2()), true, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 269f, 672f))))), !(!func_2().a));
    return u_input.b;
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: vec3<u32>) -> Struct_3 {
    global1 = !vec3<bool>(!global1.x, !(u_input.a.x > _wgslsmith_mod_i32(-60497i, u_input.a.x)), global1.x);
    global1 = vec3<bool>(_wgslsmith_sub_u32(~1u, ~arg_2.x) < func_1(), false, true);
    var var_0 = u_input.a;
    return Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_div_f32(arg_0, -1140f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0, 2196f, arg_0, -380f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(224f, arg_0, arg_0, arg_0) + vec4<f32>(458f, -594f, 554f, arg_0))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1048f, -557f, 519f, 631f), vec4<f32>(-497f, arg_0, arg_0, -479f))))), Struct_1(any(select(vec4<bool>(false, global1.x, false, false), vec4<bool>(global1.x, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, false, global1.x))))), ~(~arg_1 >> (~u_input.b % 32u)) == ~4294967295u, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-302f, -187f), arg_0)), _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * 562f)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(vec3<i32>(-2147483647i ^ u_input.a.x, ~_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), -1i), _wgslsmith_div_i32(u_input.a.x, -(-54385i ^ u_input.a.x))), _wgslsmith_mult_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(u_input.a | vec3<i32>(-2147483647i, -3097i, 2672i), firstTrailingBit(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))));
    let var_1 = vec3<bool>(global1.x, false, true);
    let var_2 = func_5(_wgslsmith_div_f32(1686f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -556f), _wgslsmith_f_op_f32(-1000f + -421f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(940f))))), func_1(), ~(~vec3<u32>(min(u_input.b, 61070u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], global0[_wgslsmith_index_u32(42258u, 7u)])));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-612f, var_2.c.x), var_2.a.b.yy, vec2<bool>(var_1.x, var_2.a.c.a))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a.a.x, var_2.a.a.x) + vec2<f32>(819f, var_2.a.b.x)))))), var_2.a.b, func_2());
    var var_4 = var_1.xz;
    global0 = array<u32, 7>();
    global0 = array<u32, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.x * 110f) * _wgslsmith_f_op_f32(ceil(670f))), -1387f)), 40629u, _wgslsmith_sub_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 5182u, u_input.b)), vec3<u32>(global0[_wgslsmith_index_u32(func_1(), 7u)], _wgslsmith_div_u32(~35800u, 7561u), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(~21156u, 7u)]))), -u_input.a.x, vec3<u32>(min(_wgslsmith_mod_u32(28270u, u_input.b), global0[_wgslsmith_index_u32(u_input.b, 7u)] << (20223u % 32u)), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(u_input.b & u_input.b, 7u)], _wgslsmith_div_u32(4294967295u, 4294967295u)), 7u)], 7u)], ~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, 1u), 7u)]) >> (vec3<u32>(global0[_wgslsmith_index_u32(~(~u_input.b), 7u)], abs(firstLeadingBit(12738u)), ~1u) % vec3<u32>(32u)));
}

