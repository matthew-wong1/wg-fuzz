struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1 = Struct_1(vec2<f32>(894f, -763f), 2147483647i, -2579f, vec3<f32>(-646f, -296f, -1243f), false);

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<f32>(249f, -302f), -1i, -450f, vec3<f32>(-762f, 1739f, -1208f), true), Struct_1(vec2<f32>(-302f, -2613f), 4260i, 751f, vec3<f32>(587f, -1262f, -106f), true), Struct_1(vec2<f32>(-514f, -1433f), 0i, 1111f, vec3<f32>(-1040f, -2227f, 1355f), true), Struct_1(vec2<f32>(-179f, 201f), 2255i, 1749f, vec3<f32>(849f, 775f, -938f), true), Struct_1(vec2<f32>(-278f, 2733f), 42060i, 851f, vec3<f32>(770f, 798f, 1248f), true), Struct_1(vec2<f32>(-254f, -412f), -20023i, -618f, vec3<f32>(1096f, -330f, 1459f), false), Struct_1(vec2<f32>(-1486f, 1406f), 45722i, -1010f, vec3<f32>(-999f, -719f, -1286f), true), Struct_1(vec2<f32>(-1021f, -772f), -53177i, 1167f, vec3<f32>(-1000f, -885f, 804f), true), Struct_1(vec2<f32>(1000f, -1911f), -32073i, 464f, vec3<f32>(726f, -484f, 199f), true), Struct_1(vec2<f32>(1427f, 2011f), -1i, -1611f, vec3<f32>(931f, 461f, -572f), true));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<f32>) -> vec3<i32> {
    global1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(850f, global1.a.x) - _wgslsmith_f_op_vec2_f32(arg_0.zx + arg_0.xz)) - _wgslsmith_f_op_vec2_f32(select(arg_0.zy, _wgslsmith_f_op_vec2_f32(vec2<f32>(472f, arg_0.x) + vec2<f32>(arg_0.x, arg_0.x)), vec2<bool>(true, global0.x))))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(-38254i, u_input.a.x), vec2<i32>(-2147483647i, u_input.a.x) & vec2<i32>(28224i, 31956i), !global0.xy) | vec2<i32>(global1.b, _wgslsmith_mod_i32(u_input.a.x, -32915i)), _wgslsmith_mod_vec2_i32(u_input.a.zy, vec2<i32>(_wgslsmith_mod_i32(global1.b, 13476i), u_input.a.x))), global1.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1000f, global1.a.x, true)), _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1505f))))), false);
    var var_0 = global2[_wgslsmith_index_u32(1u, 10u)];
    var var_1 = ~((vec4<i32>(-1i) * -(vec4<i32>(var_0.b, -13218i, var_0.b, u_input.a.x) | vec4<i32>(36856i, var_0.b, u_input.a.x, -845i))) & vec4<i32>(-29982i, var_0.b, u_input.a.x, 0i));
    global1 = global2[_wgslsmith_index_u32(min(~(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(16138u, 20907u), vec2<u32>(0u, 1u)), _wgslsmith_sub_u32(4294967295u, 50084u)) & 0u), ~1u), 10u)];
    return u_input.a;
}

fn func_2(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    let var_0 = func_3(global1.d);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1742f), arg_2.a.x);
    var var_2 = global1.c;
    let var_3 = global2[_wgslsmith_index_u32(1u, 10u)];
    let var_4 = global2[_wgslsmith_index_u32(min(1u, 55178u), 10u)];
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(var_4.c)), _wgslsmith_f_op_f32(208f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(var_3.c * global1.c)))), -55225i, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * 964f) * -726f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-870f, 673f)))))), vec3<f32>(599f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1008f, arg_2.c))), _wgslsmith_f_op_f32(var_3.c + var_1.x)), false);
}

fn func_4(arg_0: Struct_1) -> vec4<u32> {
    global1 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(global1.d.x - arg_0.c), -1174f), global1.b, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-395f)))), _wgslsmith_f_op_vec3_f32(floor(arg_0.d)), all(global0.xz));
    let var_0 = vec3<u32>(1u, abs(~0u), 1u);
    var var_1 = global1.b;
    let var_2 = _wgslsmith_div_i32(-2147483647i, u_input.a.x & _wgslsmith_dot_vec2_i32(max(u_input.a.zy, vec2<i32>(2147483647i, u_input.a.x) & u_input.a.yz), -vec2<i32>(1i, u_input.a.x) | -vec2<i32>(-53832i, arg_0.b)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + global1.d.x))) + global1.d.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.d.x), arg_0.c))), _wgslsmith_f_op_f32(-global1.a.x), true)), _wgslsmith_f_op_f32(abs(-160f)));
    return max(countOneBits(~(vec4<u32>(var_0.x, var_0.x, 73143u, var_0.x) | vec4<u32>(0u, 1u, var_0.x, var_0.x))) & _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(18911u, 13747u, var_0.x, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x))), ~vec4<u32>(var_0.x, 26182u, var_0.x, 17345u) | _wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 37502u), vec4<u32>(0u, var_0.x, var_0.x, 51420u))), vec4<u32>(1u, 13471u, 1263u, 8508u));
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(arg_1, arg_0.d.x)), 1f, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-831f, _wgslsmith_f_op_f32(-arg_0.a.x)))), arg_0.b << ((4294967295u & _wgslsmith_clamp_u32(15256u, 1u, ~66052u)) % 32u), _wgslsmith_f_op_f32(-171f - arg_0.c), _wgslsmith_f_op_vec3_f32(-arg_0.d), any(!select(select(vec2<bool>(true, true), global0.zy, global0.x), select(global0.xx, global0.yy, global0.yz), global0.yy)));
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a.x * var_1.d.x), -305f, _wgslsmith_f_op_f32(global1.d.x * var_1.a.x)))))));
    global2 = array<Struct_1, 10>();
    let var_3 = func_2(global0.xy, !(!((true | arg_0.e) && !global1.e)), func_2(global0.yy, global1.e, Struct_1(_wgslsmith_f_op_vec2_f32(-var_1.d.xx), abs(func_2(global0.yy, global0.x, arg_0).b), _wgslsmith_f_op_f32(abs(global1.d.x)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(global1.d)), _wgslsmith_div_vec3_f32(vec3<f32>(var_2.x, var_2.x, global1.a.x), var_1.d))), !select(var_0, false, var_1.e))));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) + -579f))), _wgslsmith_f_op_f32(global1.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(928f, -2861f)) * var_2.x))), -1i, _wgslsmith_f_op_f32(select(var_1.c, var_1.c, var_3.b > _wgslsmith_sub_i32(_wgslsmith_div_i32(-8181i, var_3.b), var_3.b & var_1.b))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(var_2, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.d.x, 688f, arg_1)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.d), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.c, 1420f, var_2.x), vec3<f32>(-381f, 120f, arg_1))), select(vec3<bool>(false, false, true), vec3<bool>(global1.e, true, false), vec3<bool>(false, false, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(348f, var_2.x, -419f)))))), true);
}

fn func_1() -> u32 {
    var var_0 = func_5(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~(~7522u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(34314u, 21939u, 8684u), vec3<u32>(4294967295u, 26697u, 4294967295u)), 1u, 1u), _wgslsmith_sub_vec4_u32(func_4(func_2(vec2<bool>(global1.e, global1.e), global1.e, global2[_wgslsmith_index_u32(55955u, 10u)])), ~countOneBits(vec4<u32>(48817u, 66524u, 30294u, 1320u)))), 10u)], _wgslsmith_f_op_f32(-1f));
    global0 = vec3<bool>(!select(true, func_2(global0.yx, global1.e, global2[_wgslsmith_index_u32(56828u, 10u)]).e, true), global0.x, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(6764u, 4294967295u, 60246u), vec3<u32>(27579u, 10913u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u)), countOneBits(vec3<u32>(1u, 59509u, 49800u))) < ~1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(global1.d * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1323f, _wgslsmith_div_f32(global1.d.x, global1.d.x), _wgslsmith_f_op_f32(global1.a.x + -1076f))) * var_0.d));
    var var_2 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.c - global1.c), _wgslsmith_f_op_f32(var_1.x * 1000f))), _wgslsmith_f_op_vec2_f32(select(var_0.a, var_1.yy, select(select(vec2<bool>(var_0.e, false), vec2<bool>(true, var_0.e), vec2<bool>(var_0.e, false)), vec2<bool>(var_0.e, true), global1.e)))), 2147483647i, var_0.a.x, vec3<f32>(-1000f, -951f, var_0.c), var_0.e);
    let var_3 = global1.e;
    return 24063u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 1u >> (_wgslsmith_mult_u32(func_1(), 2484u) % 32u)), ~0u << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 42982u), ~vec3<u32>(33709u, 9060u, 17799u)) % 32u)), 10u)];
    var var_0 = 670f;
    let var_1 = !(!select(vec4<bool>(any(vec4<bool>(global1.e, global1.e, false, global0.x)), true, true, false), select(vec4<bool>(global1.e, global1.e, global0.x, false), vec4<bool>(true, global1.e, global0.x, global0.x), !vec4<bool>(global1.e, global0.x, true, false)), !(!vec4<bool>(global0.x, false, false, global1.e))));
    global0 = select(var_1.zyx, vec3<bool>(!any(var_1.zwy), true, all(vec2<bool>(-1i != u_input.a.x, any(var_1)))), any(select(vec4<bool>(var_1.x || global0.x, !global1.e, true, var_1.x | global1.e), vec4<bool>(!var_1.x, global1.e | false, false, true), !var_1)));
    var_0 = 1545f;
    let var_2 = vec4<f32>(func_5(global2[_wgslsmith_index_u32(func_1(), 10u)], 1f).c, global1.c, _wgslsmith_f_op_f32(max(580f, _wgslsmith_f_op_f32(global1.c + -312f))), global1.a.x);
    global2 = array<Struct_1, 10>();
    let var_3 = Struct_1(global1.d.zx, u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - -614f))) - func_5(func_5(func_2(vec2<bool>(true, false), true, global2[_wgslsmith_index_u32(4294967295u, 10u)]), _wgslsmith_f_op_f32(f32(-1f) * -1459f)), 2608f).c), global1.d, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(2147483647i, _wgslsmith_add_i32(0i, func_2(global0.zz, var_3.e, Struct_1(global1.a, 0i, 226f, vec3<f32>(633f, 106f, var_2.x), false)).b), _wgslsmith_mod_i32(global1.b, min(-1i, global1.b))), 65782i);
}

