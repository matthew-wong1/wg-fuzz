struct Struct_1 {
    a: vec2<f32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: array<i32, 31>;

var<private> global2: array<vec3<i32>, 7> = array<vec3<i32>, 7>(vec3<i32>(-10607i, 0i, 2147483647i), vec3<i32>(-10450i, -11609i, -1i), vec3<i32>(11700i, -23624i, 5552i), vec3<i32>(0i, 2243i, -57808i), vec3<i32>(-13894i, -1i, -1i), vec3<i32>(-21934i, 2147483647i, 2147483647i), vec3<i32>(-1i, -26840i, i32(-2147483648)));

var<private> global3: array<u32, 12>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(select(347f, _wgslsmith_f_op_f32(101f + _wgslsmith_f_op_f32(f32(-1f) * -780f)), true));
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-168f, _wgslsmith_f_op_f32(sign(2079f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, 2266f))))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, global3[_wgslsmith_index_u32(4294967295u, 12u)], 0u, 9322u), vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.a, 12u)], 12u)], 0u, global3[_wgslsmith_index_u32(0u, 12u)])), ~vec4<u32>(u_input.a, 25724u, u_input.a, 0u), ~vec4<u32>(u_input.a, 4294967295u, 0u, global3[_wgslsmith_index_u32(u_input.a, 12u)])) & max(~vec4<u32>(global3[_wgslsmith_index_u32(116u, 12u)], 0u, global3[_wgslsmith_index_u32(86838u, 12u)], 34416u), vec4<u32>(u_input.a, u_input.a, global3[_wgslsmith_index_u32(24853u, 12u)], global3[_wgslsmith_index_u32(u_input.a, 12u)])), select(true, !(global1[_wgslsmith_index_u32(66230u, 31u)] == 10603i), !select(true, true, true)), -abs(vec2<i32>(u_input.b, u_input.b) & vec2<i32>(68402i, global1[_wgslsmith_index_u32(4294967295u, 31u)]))), -_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b, -21009i)), vec2<i32>(max(7166i, u_input.b), _wgslsmith_clamp_i32(u_input.b, -58736i, -1i))), abs(23174i), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-761f - 1000f), _wgslsmith_f_op_f32(floor(174f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(721f, -3147f)))), vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(3530u, 6573u, 1u, 11971u), vec4<u32>(32071u, u_input.a, 0u, u_input.a)), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(firstTrailingBit(0u), 12u)], 12u)], 1u, _wgslsmith_mult_u32(4294967295u, ~u_input.a)), -33746i >= _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(25901u, 31u)], -103864i, 2147483647i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 31u)]), vec4<i32>(1i, -4080i, u_input.b, u_input.b), vec4<i32>(global1[_wgslsmith_index_u32(0u, 31u)], 0i, global1[_wgslsmith_index_u32(u_input.a, 31u)], 0i)), countOneBits(vec4<i32>(u_input.b, u_input.b, global1[_wgslsmith_index_u32(18278u, 31u)], -3287i))), ~(-vec2<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 31u)], u_input.b))));
    global3 = array<u32, 12>();
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0.a.a.x, -1000f, var_0.d.a.x)))) - vec4<f32>(-537f, _wgslsmith_div_f32(-400f, _wgslsmith_div_f32(-455f, var_0.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.a.x, var_0.a.a.x, false))), -712f)));
    var var_2 = ~0i;
    return -2599f;
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> u32 {
    global3 = array<u32, 12>();
    global0 = -161f;
    let var_0 = Struct_2(arg_0, global1[_wgslsmith_index_u32(~(~abs(u_input.a << (7756u % 32u))), 31u)], arg_0.d.x, Struct_1(_wgslsmith_f_op_vec2_f32(-arg_0.a), abs(~vec4<u32>(1u, arg_0.b.x, u_input.a, 0u)) << (vec4<u32>(u_input.a, _wgslsmith_dot_vec3_u32(arg_0.b.wzw, vec3<u32>(arg_0.b.x, 1u, 45753u)), reverseBits(67598u), _wgslsmith_clamp_u32(arg_0.b.x, 56227u, global3[_wgslsmith_index_u32(31705u, 12u)])) % vec4<u32>(32u)), (~global3[_wgslsmith_index_u32(1u, 12u)] | ~0u) > _wgslsmith_add_u32(global3[_wgslsmith_index_u32(u_input.a << (arg_0.b.x % 32u), 12u)], 1u >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(13532u, 12u)], 12u)], 12u)] % 32u)), select(vec2<i32>(global1[_wgslsmith_index_u32(~arg_0.b.x, 31u)], _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 18027i, global1[_wgslsmith_index_u32(arg_0.b.x, 31u)], 0i), vec4<i32>(37927i, global1[_wgslsmith_index_u32(0u, 31u)], u_input.b, 93741i))), ~vec2<i32>(arg_0.d.x, -54258i), !(-2147483647i == global1[_wgslsmith_index_u32(4294967295u, 31u)]))));
    global1 = array<i32, 31>();
    var var_1 = Struct_3(vec4<f32>(-832f, _wgslsmith_f_op_f32(select(var_0.d.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.a.x), var_0.d.a.x)), all(select(vec2<bool>(arg_1, false), vec2<bool>(arg_0.c, true), vec2<bool>(false, arg_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(max(-1765f, _wgslsmith_f_op_f32(ceil(arg_0.a.x))))));
    return u_input.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32) -> vec3<f32> {
    global3 = array<u32, 12>();
    let var_0 = Struct_3(vec4<f32>(-425f, arg_1, _wgslsmith_f_op_f32(arg_1 * arg_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))));
    global1 = array<i32, 31>();
    var var_1 = abs(1u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0.a, _wgslsmith_f_op_vec4_f32(var_0.a * vec4<f32>(-218f, -358f, 1236f, -752f)), any(vec4<bool>(true, true, true, true)))) * var_0.a));
    return var_2.xwy;
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = arg_0.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1666f, _wgslsmith_f_op_f32(abs(1067f)), _wgslsmith_f_op_f32(-138f + -954f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-735f, 211f, 1121f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1074f, 392f))))) + _wgslsmith_f_op_vec3_f32(func_4(vec2<u32>(~global3[_wgslsmith_index_u32(~1u, 12u)], _wgslsmith_add_u32(~global3[_wgslsmith_index_u32(0u, 12u)], func_2(Struct_1(vec2<f32>(-1050f, -599f), vec4<u32>(arg_0.x, 0u, arg_0.x, u_input.a), false, vec2<i32>(-2147483647i, -4925i)), true))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(986f + 461f), _wgslsmith_div_f32(-830f, 320f))))));
    global2 = array<vec3<i32>, 7>();
    var var_2 = vec2<u32>(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(4294967295u, ~1u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, 1u, 18962u, 59004u), vec4<u32>(4294967295u, 16139u, 29610u, u_input.a))), 12u)], min(_wgslsmith_mod_u32(1u, func_2(Struct_1(var_1.zz, vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(76811u, 12u)], u_input.a, 4294967295u), true, vec2<i32>(-17970i, u_input.b)), true)), _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(max(vec4<u32>(21649u, u_input.a, arg_0.x, 48169u), vec4<u32>(47944u, 4294967295u, arg_0.x, 0u)), reverseBits(vec4<u32>(4294967295u, 52910u, u_input.a, 30772u))), vec4<u32>(u_input.a, 113853u, arg_0.x >> (global3[_wgslsmith_index_u32(0u, 12u)] % 32u), 7250u))));
    let var_3 = _wgslsmith_f_op_f32(floor(2191f));
    return Struct_1(vec2<f32>(-211f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_3))))), min(~vec4<u32>(arg_0.x, 0u, arg_0.x, 112760u), _wgslsmith_add_vec4_u32(vec4<u32>(0u, 39309u, 1u, 39560u) >> (vec4<u32>(23881u, u_input.a, u_input.a, arg_0.x) % vec4<u32>(32u)), select(vec4<u32>(4294967295u, 1u, 0u, 1u), vec4<u32>(1u, 4294967295u, 52814u, arg_0.x), vec4<bool>(true, false, true, true)))) | vec4<u32>(func_2(Struct_1(var_1.yz, vec4<u32>(16647u, 29920u, arg_0.x, 61280u), true, vec2<i32>(-21043i, 1i)), false), var_2.x, countOneBits(u_input.a), ~var_2.x), false, -vec2<i32>(~u_input.b, min(-13874i, _wgslsmith_mult_i32(-2147483647i, global1[_wgslsmith_index_u32(65178u, 31u)]))));
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> Struct_1 {
    let var_0 = Struct_2(Struct_1(arg_0.a, vec4<u32>(_wgslsmith_add_u32(func_2(Struct_1(arg_0.a, arg_0.b, false, vec2<i32>(-11144i, -115519i)), arg_0.c), u_input.a << (0u % 32u)), arg_0.b.x, firstLeadingBit(u_input.a), ~(~global3[_wgslsmith_index_u32(1u, 12u)])), arg_0.c, ~(~arg_0.d)), 2147483647i | -u_input.b, 55874i, func_1(arg_0.b.xwx));
    let var_1 = any(vec3<bool>(false, !(!select(var_0.d.c, false, false)), any(vec2<bool>(true, var_0.d.c)) & (select(arg_0.c, false, false) || var_0.d.c)));
    let var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-787f, _wgslsmith_f_op_f32(max(-374f, -534f)), 2471f, func_1(arg_0.b.yyz).a.x) - vec4<f32>(arg_1, _wgslsmith_f_op_f32(arg_0.a.x + 1358f), arg_0.a.x, 1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.a.x, 3483f, -1882f, arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, var_0.a.a.x, arg_0.a.x, 521f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 937f, arg_1, arg_0.a.x)))), select(vec4<bool>(!var_1, true, false, select(true, false, arg_0.c)), vec4<bool>(any(vec2<bool>(var_1, var_0.d.c)), !var_0.a.c, arg_0.c, false), all(vec2<bool>(arg_0.c, var_0.d.c)) == (var_0.a.c | true)))));
    let var_3 = select(select(vec4<bool>(select(u_input.a, 21759u, var_0.d.c) > arg_0.b.x, func_1(arg_0.b.wzz).c, func_1(var_0.a.b.ywy | var_0.a.b.zww).c, var_1), !vec4<bool>(var_0.a.c, var_1, true, true), !select(select(vec4<bool>(var_0.a.c, true, var_0.a.c, var_1), vec4<bool>(true, var_1, arg_0.c, true), var_1), vec4<bool>(true, var_0.d.c, var_1, var_0.d.c), false)), select(!select(!vec4<bool>(arg_0.c, true, false, false), select(vec4<bool>(var_0.a.c, true, var_1, true), vec4<bool>(true, var_0.d.c, arg_0.c, arg_0.c), vec4<bool>(false, false, var_0.d.c, true)), arg_0.c), select(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, var_1, true), vec4<bool>(false, false, arg_0.c, arg_0.c)), select(vec4<bool>(true, true, true, true), vec4<bool>(arg_0.c, var_1, arg_0.c, var_0.a.c), false), arg_0.c), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, arg_0.c), select(vec4<bool>(true, var_0.d.c, false, false), vec4<bool>(var_0.a.c, true, var_0.a.c, true), true)), all(select(vec4<bool>(arg_0.c, arg_0.c, var_0.d.c, arg_0.c), vec4<bool>(false, true, true, var_0.d.c), vec4<bool>(false, true, true, true)))), var_1), true);
    global0 = -147f;
    return func_1(var_0.a.b.xyz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = -1346f;
    global3 = array<u32, 12>();
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(425f, 816f))), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u) >> (vec4<u32>(0u, 63554u, 4294967295u, 0u) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 31794u, global3[_wgslsmith_index_u32(1u, 12u)], 23340u)), !(!any(vec3<bool>(true, false, true))), -vec2<i32>(-36532i, i32(-1i) * -55930i)), ((u_input.b | -global1[_wgslsmith_index_u32(u_input.a, 31u)]) & -(~global1[_wgslsmith_index_u32(38993u, 31u)])) & u_input.b, _wgslsmith_mult_i32(u_input.b, u_input.b), func_5(func_1(vec3<u32>(u_input.a, 0u, u_input.a) << (~vec3<u32>(43690u, u_input.a, global3[_wgslsmith_index_u32(4294967295u, 12u)]) % vec3<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)))), -2147483647i));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.a.x, 1449f, -167f, var_0.a.a.x)));
    let var_2 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(588f * _wgslsmith_div_f32(-308f, var_1.a.x)), _wgslsmith_f_op_f32(-var_0.a.a.x)), func_1(var_0.a.b.yyw << (select(vec3<u32>(global3[_wgslsmith_index_u32(83775u, 12u)], 39212u, global3[_wgslsmith_index_u32(var_0.d.b.x, 12u)]), var_0.a.b.xzw, vec3<bool>(true, false, true)) % vec3<u32>(32u))).b, false || any(vec3<bool>(false, true, var_0.d.c)), ~(-select(var_0.a.d, var_0.a.d, false))), -42266i, max(var_0.c, countOneBits(u_input.b)), func_5(var_0.d, var_0.d.a.x, u_input.b));
    var var_3 = ~(-_wgslsmith_clamp_i32(-16117i, 1i, -2535i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(func_5(func_1(select(var_0.a.b.xyx, vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12418u, 12u)], 12u)], global3[_wgslsmith_index_u32(0u, 12u)], u_input.a), var_0.a.c)), var_0.a.a.x, 17802i).d, ~(-vec2<i32>(u_input.b, var_0.b))));
}

