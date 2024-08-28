struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<i32, 25>;

var<private> global2: vec4<bool>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec4<u32>) -> Struct_1 {
    global1 = array<i32, 25>();
    return arg_2;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> i32 {
    global1 = array<i32, 25>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1199f - 712f), arg_1.a)), arg_1.a) * _wgslsmith_f_op_f32(trunc(arg_1.a)));
    var var_1 = Struct_2(vec2<bool>(false, any(vec4<bool>(any(vec4<bool>(global2.x, true, global2.x, global2.x)), all(vec4<bool>(global2.x, global2.x, false, false)), all(vec3<bool>(false, global2.x, true)), any(vec4<bool>(global2.x, false, true, true))))), _wgslsmith_div_vec4_u32(~(~select(vec4<u32>(14118u, 79001u, 46161u, u_input.b), vec4<u32>(arg_0, 92898u, 2101u, u_input.b), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), min(max(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 1u), vec4<u32>(43138u, 4294967295u, 4294967295u, 3415u)), vec4<u32>(0u, 0u, 37091u, u_input.b)), ~vec4<u32>(0u, 7739u, arg_0, arg_0))), !global2.x);
    var var_2 = vec4<u32>(0u, ~(0u | _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 45366u, var_1.b.x), min(vec4<u32>(var_1.b.x, 1u, arg_0, u_input.b), var_1.b))), 0u, ~(~(~1u >> (_wgslsmith_mult_u32(u_input.b, arg_0) % 32u))));
    return global0.x;
}

fn func_1() -> bool {
    var var_0 = 1u;
    let var_1 = select(vec3<bool>(true, !global2.x, global2.x), global2.zww, !(!select(global2.x, global2.x, false) || !any(global2.yww)));
    var var_2 = -_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-27236i, global0.x), global0.wz), global0.x), vec2<i32>(func_3(u_input.b, func_2(vec2<i32>(-27289i, -5765i), Struct_2(var_1.zy, vec4<u32>(0u, u_input.b, u_input.b, 30469u), var_1.x), Struct_1(-1841f), vec4<u32>(6031u, 48610u, 1u, u_input.b))), ~(~u_input.d)));
    var_2 = min(_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-u_input.e.x, 0i)), global0.ww), ~(vec2<i32>(min(0i, 15362i), 1i) | vec2<i32>(global1[_wgslsmith_index_u32(1u, 25u)], reverseBits(global1[_wgslsmith_index_u32(u_input.b, 25u)]))));
    let var_3 = 0u;
    return true;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(select(arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), global2.x));
    global1 = array<i32, 25>();
    let var_1 = _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(max(_wgslsmith_mod_vec4_u32(arg_2.b, ~arg_2.b), ~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, arg_2.b.x, arg_2.b.x, 4294967295u), vec4<u32>(u_input.b, 2941u, 31212u, u_input.b))), vec4<u32>(~u_input.b, ~_wgslsmith_clamp_u32(arg_2.b.x, 4294967295u, arg_2.b.x), 7966u, ~u_input.b)), firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 0u, 1u) >> (vec4<u32>(reverseBits(4294967295u), ~arg_2.b.x, ~arg_2.b.x, ~23031u) % vec4<u32>(32u))));
    let var_2 = func_2(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(global0.wyw, select(global0.zxw, u_input.e, vec3<bool>(true, arg_2.c, true))), ~(~u_input.e)), 22028i), arg_2, func_2(max(~vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], -2147483647i), global0.xw), Struct_2(vec2<bool>(false, true), _wgslsmith_mult_vec4_u32(max(vec4<u32>(11370u, 1u, var_1.x, var_1.x), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), ~vec4<u32>(21195u, 51194u, 1u, var_1.x)), true), arg_1, _wgslsmith_clamp_vec4_u32(select(var_1, var_1, global2.x), firstLeadingBit(firstTrailingBit(vec4<u32>(1u, u_input.b, 0u, u_input.b))), ~(~vec4<u32>(60395u, 4294967295u, arg_2.b.x, 4294967295u)))), _wgslsmith_mult_vec4_u32(select(reverseBits(select(vec4<u32>(1u, 3416u, arg_2.b.x, arg_2.b.x), var_1, true)), ~select(var_1, vec4<u32>(u_input.b, var_1.x, arg_2.b.x, var_1.x), vec4<bool>(global2.x, false, false, arg_0.x)), select(select(vec4<bool>(false, arg_2.c, arg_0.x, arg_0.x), vec4<bool>(false, global2.x, true, arg_2.c), vec4<bool>(arg_0.x, true, true, arg_0.x)), !vec4<bool>(false, true, arg_0.x, true), select(vec4<bool>(arg_2.c, arg_2.c, arg_0.x, false), vec4<bool>(global2.x, false, arg_0.x, global2.x), vec4<bool>(arg_0.x, true, true, false)))), ~select(_wgslsmith_add_vec4_u32(var_1, vec4<u32>(11284u, arg_2.b.x, u_input.b, u_input.b)), vec4<u32>(1u, 47165u, arg_2.b.x, u_input.b) | vec4<u32>(var_1.x, 1u, arg_2.b.x, u_input.b), select(vec4<bool>(arg_2.a.x, arg_2.c, arg_2.a.x, arg_0.x), vec4<bool>(false, global2.x, global2.x, global2.x), arg_2.c))));
    global1 = array<i32, 25>();
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -1406f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(129f, -859f)) - _wgslsmith_f_op_f32(f32(-1f) * -1396f)), -2508f))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(368f)))), _wgslsmith_f_op_f32(-var_0.x)));
    global2 = select(vec4<bool>(global2.x, global2.x, any(select(vec2<bool>(true, global2.x), global2.yz, global2.x)) == true, true), !vec4<bool>(select(false, global2.x, global2.x || true), select(global2.x, true, global2.x), any(vec3<bool>(false, true, global2.x)), _wgslsmith_f_op_f32(var_0.x + -330f) >= _wgslsmith_div_f32(var_1, var_1)), (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(79640u, 0u, u_input.b), vec3<u32>(u_input.b, 1u, 0u)), ~4294967295u) << (1u % 32u)) >= ~firstTrailingBit(0u));
    let var_2 = func_4(select(!vec2<bool>(true, global2.x), global2.yx, vec2<bool>(func_1(), any(vec2<bool>(global2.x, true)))), func_2(countOneBits(-vec2<i32>(17914i, 11624i)), Struct_2(select(global2.zy, vec2<bool>(global2.x, false), global2.zy), abs(vec4<u32>(29136u, 43561u, u_input.b, u_input.b)), global2.x), func_2(_wgslsmith_add_vec2_i32(-u_input.e.xx, ~global0.xw), Struct_2(select(vec2<bool>(false, true), global2.zy, global2.zz), vec4<u32>(1110u, 52422u, u_input.b, 6105u), true), Struct_1(_wgslsmith_div_f32(var_1, var_0.x)), vec4<u32>(u_input.b << (u_input.b % 32u), u_input.b, u_input.b, u_input.b)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 134273u, 41092u, 91875u), countOneBits(vec4<u32>(u_input.b, u_input.b, u_input.b, 89588u))), ~vec4<u32>(u_input.b, 4294967295u, 0u, 1u) << (vec4<u32>(u_input.b, u_input.b, 4294967295u, 95593u) % vec4<u32>(32u)))), Struct_2(select(select(global2.xw, global2.yx, !global2.xw), vec2<bool>(global2.x & global2.x, true), !global2.ww), reverseBits(min(vec4<u32>(34211u, u_input.b, u_input.b, u_input.b), vec4<u32>(u_input.b, 43697u, u_input.b, 0u))), global2.x));
    let var_3 = _wgslsmith_dot_vec3_i32(u_input.e, ~(-global0.yxz));
    let x = u_input.a;
    s_output = StorageBuffer(global0.yx, _wgslsmith_clamp_vec2_u32(select(select(vec2<u32>(4294967295u, 33922u) & vec2<u32>(var_2.b.x, u_input.b), var_2.b.wx | var_2.b.wx, !vec2<bool>(var_2.a.x, false)), vec2<u32>(var_2.b.x | 0u, 4294967295u), false), reverseBits(firstLeadingBit(vec2<u32>(var_2.b.x, 1u)) >> (abs(var_2.b.xx) % vec2<u32>(32u))), abs(vec2<u32>(~var_2.b.x, 0u << (var_2.b.x % 32u)))), _wgslsmith_sub_i32(global0.x, var_3), abs(vec4<i32>(abs(u_input.d), 14774i, -global0.x, 0i) << (var_2.b % vec4<u32>(32u))), vec4<f32>(436f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(max(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_0.x) - _wgslsmith_f_op_f32(-var_0.x)))), var_0.x));
}

