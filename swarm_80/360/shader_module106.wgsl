struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: u32,
    c: vec4<i32>,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_2,
    c: bool,
    d: vec2<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(false, true, true, false, true, false, false, false, false);

var<private> global1: array<Struct_4, 12>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: f32, arg_3: f32) -> vec2<i32> {
    global0 = array<bool, 9>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_3, _wgslsmith_f_op_f32(f32(-1f) * -630f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-1442f)), 1f, true)) + arg_3)));
    let var_1 = arg_0.e;
    var var_2 = -u_input.a.x > firstTrailingBit(u_input.a.x);
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(arg_3 - _wgslsmith_f_op_f32(max(1804f, _wgslsmith_f_op_f32(step(arg_3, arg_3))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(f32(-1f) * -2187f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1747f))), arg_2)));
    return vec2<i32>(arg_1, -(2147483647i >> (var_1 % 32u)));
}

fn func_2() -> Struct_5 {
    global1 = array<Struct_4, 12>();
    var var_0 = u_input.a.x;
    var_0 = ~_wgslsmith_add_i32(~_wgslsmith_mult_i32(16446i, _wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.zy)), ~(-1i));
    global1 = array<Struct_4, 12>();
    let var_1 = ~1u;
    return Struct_5(-vec4<i32>(1i, firstTrailingBit(_wgslsmith_div_i32(u_input.a.x, -1i)), ~u_input.a.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, -13635i), 0i)), Struct_2(Struct_1(!(true || global0[_wgslsmith_index_u32(25325u, 9u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f)))), countOneBits(u_input.a.x) < (u_input.a.x & -11825i), _wgslsmith_f_op_f32(117f + 693f)), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1449f, -1760f)), -2012f)) + -648f), -_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a.zx, func_3(Struct_3(u_input.a.x, u_input.b, u_input.a, u_input.a.yy, var_1), -1i, -1000f, 1000f)), Struct_1(~0u < firstTrailingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f - -570f)), select(global0[_wgslsmith_index_u32(var_1, 9u)] | global0[_wgslsmith_index_u32(40235u, 9u)], false, !global0[_wgslsmith_index_u32(u_input.b, 9u)]), 1f)), global0[_wgslsmith_index_u32(firstLeadingBit(~(~var_1) >> (76713u % 32u)), 9u)], !vec2<bool>(true, !all(vec4<bool>(true, false, global0[_wgslsmith_index_u32(1u, 9u)], true))), 646f);
}

fn func_1(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: vec3<bool>) -> Struct_1 {
    let var_0 = func_2();
    let var_1 = func_2().e;
    global0 = array<bool, 9>();
    global1 = array<Struct_4, 12>();
    global0 = array<bool, 9>();
    return func_2().b.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 9>();
    let var_0 = Struct_5(reverseBits(vec4<i32>(-1i, ~u_input.a.x, -15242i, _wgslsmith_dot_vec2_i32(u_input.a.xy, u_input.a.yz))) | vec4<i32>(u_input.a.x, ~u_input.a.x, 1i, 1i), Struct_2(Struct_1(true, _wgslsmith_f_op_f32(abs(-455f)), global0[_wgslsmith_index_u32(~u_input.b, 9u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(164f - -1541f))), _wgslsmith_f_op_f32(1f + -734f), 1186f, vec2<i32>(u_input.a.x, u_input.a.x), func_1(global0[_wgslsmith_index_u32(1576u, 9u)], 33386u, -_wgslsmith_sub_i32(u_input.a.x, 0i), !select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], true, global0[_wgslsmith_index_u32(u_input.b, 9u)]), vec3<bool>(false, true, false)))), all(select(!select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(55236u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], true, true), vec3<bool>(global0[_wgslsmith_index_u32(61792u, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)], true)), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 9u)], false), true)), select(select(vec2<bool>(true, true), select(!vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], global0[_wgslsmith_index_u32(u_input.b, 9u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 9u)]), vec2<bool>(true, true)), false), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], !global0[_wgslsmith_index_u32(47322u, 9u)]), !global0[_wgslsmith_index_u32(62126u, 9u)]), -1128f);
    global0 = array<bool, 9>();
    let var_1 = global0[_wgslsmith_index_u32(u_input.b, 9u)];
    var var_2 = any(vec2<bool>(!(_wgslsmith_f_op_f32(var_0.e * -135f) > _wgslsmith_f_op_f32(f32(-1f) * -2100f)), !global0[_wgslsmith_index_u32(min(53630u, u_input.b), 9u)]));
    var var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -725f)) * -839f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b - 444f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.e, 1324f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.b, var_0.e) - vec2<f32>(333f, var_0.b.e.b)))))))));
    var var_4 = vec2<i32>(_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec2_i32(func_3(Struct_3(u_input.a.x, u_input.b, var_0.a.yyw, var_0.a.wx, 41562u), 0i, var_0.b.e.b, var_0.b.e.b), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.a.x, 1i), var_0.a.ww, vec2<bool>(true, true)), vec2<i32>(-11253i, 2147483647i) >> (vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), select(vec2<i32>(17868i, 27611i), vec2<i32>(u_input.a.x, var_0.b.d.x), var_0.d)))), _wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, _wgslsmith_mod_i32(func_3(Struct_3(6356i, u_input.b, u_input.a, vec2<i32>(u_input.a.x, u_input.a.x), u_input.b), -u_input.a.x, _wgslsmith_f_op_f32(trunc(var_3.x)), var_3.x).x, ~u_input.a.x | 17248i)));
    global1 = array<Struct_4, 12>();
    let var_5 = global1[_wgslsmith_index_u32(1u, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_5.e.d, select(countOneBits(vec2<u32>(var_5.b, u_input.b) << (vec2<u32>(82171u, 927u) % vec2<u32>(32u))), select(vec2<u32>(var_5.b, 10128u) ^ vec2<u32>(4294967295u, var_5.b), _wgslsmith_sub_vec2_u32(vec2<u32>(var_5.b, u_input.b), vec2<u32>(4294967295u, 1u)), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 9u)], true)), var_0.d) & vec2<u32>(firstLeadingBit(1u) << (abs(1u) % 32u), reverseBits(u_input.b)), countOneBits(~var_0.a), u_input.a.x, ~vec2<u32>(var_5.b, _wgslsmith_div_u32(_wgslsmith_div_u32(87853u, var_5.b), _wgslsmith_mod_u32(5326u, var_5.b))));
}

