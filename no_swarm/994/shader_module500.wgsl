struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<bool>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: u32,
    d: i32,
    e: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: Struct_4 = Struct_4(vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> f32 {
    global1 = array<Struct_1, 11>();
    global0 = array<vec2<f32>, 18>();
    var var_0 = ~(-countOneBits(_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1.x, -1i), ~vec2<i32>(u_input.a, 2147483647i))));
    var var_1 = Struct_2(arg_1.xz);
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.d.x, arg_0.d.x, -1200f), vec3<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-arg_0.d.x), 1211f), vec3<f32>(_wgslsmith_f_op_f32(abs(1993f)), _wgslsmith_f_op_f32(f32(-1f) * -557f), 1188f))), vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.d.x, 708f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1181f)))), arg_0.d.x)), _wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(max(arg_0.d.x, -1885f)))))));
    return var_2.x;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1971f, arg_1, -1000f, arg_1))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1175f, arg_1, 1000f, arg_1))))))), vec4<f32>(arg_2.d.x, -634f, arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.d.x, 1197f))), 163f)), arg_2.c));
    global0 = array<vec2<f32>, 18>();
    var var_1 = !(!arg_2.c);
    global0 = array<vec2<f32>, 18>();
    var var_2 = Struct_2(reverseBits(-min(_wgslsmith_mult_vec2_i32(vec2<i32>(-28139i, u_input.a), vec2<i32>(arg_2.b, -21629i)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(arg_2.b, -26838i)))));
    return -14655i;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(step(1489f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1446f - _wgslsmith_f_op_f32(818f * _wgslsmith_f_op_f32(-arg_1.b.x))) - arg_1.b.x)));
    global1 = array<Struct_1, 11>();
    let var_1 = 2147483647i;
    var var_2 = _wgslsmith_f_op_f32(-arg_1.b.x);
    var var_3 = func_4(arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1038f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1191f, 1078f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(16681u, 11u)], vec3<i32>(u_input.a, 20752i, -7232i))))))), global1[_wgslsmith_index_u32(global2.a.x, 11u)]);
    return Struct_2(_wgslsmith_add_vec2_i32(min(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-89014i, -1i), vec2<i32>(u_input.a, 81979i)), _wgslsmith_div_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(u_input.a, arg_1.d))), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(9485i, u_input.a), vec2<i32>(var_1, var_1)))), vec2<i32>(-83715i, firstTrailingBit(~11758i))));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> bool {
    global0 = array<vec2<f32>, 18>();
    var var_0 = Struct_2(vec2<i32>(-16695i, -28057i));
    let var_1 = firstLeadingBit(firstLeadingBit(arg_1.a));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-369f * _wgslsmith_f_op_f32(arg_1.d.x - arg_1.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(181f))) - _wgslsmith_f_op_f32(f32(-1f) * -215f))) * arg_1.d.x);
    var var_3 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1091f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(899f))))) == var_3.d.x;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(select(vec4<bool>(true, !all(vec3<bool>(false, false, false)), false, func_5(func_2(vec2<bool>(false, true), Struct_3(vec4<bool>(false, true, true, true), vec2<f32>(997f, 1318f), global2.a.x, 2147483647i, vec4<bool>(true, true, true, true))), Struct_1(49981u, u_input.a, vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(global2.a.x, 18u)]), true)), !vec4<bool>(true, true, func_5(Struct_2(vec2<i32>(u_input.a, 0i)), global1[_wgslsmith_index_u32(global2.a.x, 11u)], false), true), !all(vec2<bool>(true, true))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(1145f, 1015f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -931f) * 1286f)), 95088u, countOneBits(func_2(vec2<bool>(true, true), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), true), global0[_wgslsmith_index_u32(global2.a.x, 18u)], ~global2.a.x, -u_input.a, vec4<bool>(true, true, true, true))).a.x), vec4<bool>(true, !all(vec2<bool>(true, true)), true, true));
    let var_1 = var_0;
    let var_2 = var_1;
    global0 = array<vec2<f32>, 18>();
    var var_3 = true && (_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(89290u, var_1.c, 41239u)), _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.c, 14504u, var_2.c), vec3<u32>(var_0.c, 4617u, 26142u))), ~vec3<u32>(var_2.c, 1u, 1u) << (vec3<u32>(4294967295u, 1729u, var_2.c) % vec3<u32>(32u))) > abs(_wgslsmith_clamp_u32(1u, ~var_0.c, ~var_1.c)));
    return Struct_1(var_0.c, firstTrailingBit(_wgslsmith_mod_i32(-2147483647i, _wgslsmith_clamp_i32(countOneBits(0i), ~u_input.a, 2147483647i))), vec4<bool>(any(!(!var_1.a)), var_2.a.x, !(!var_2.a.x), select(var_2.b.x >= _wgslsmith_f_op_f32(ceil(-190f)), true, all(vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_1.c, 18u)]))) - var_1.b));
}

fn func_6(arg_0: Struct_1) -> Struct_3 {
    global1 = array<Struct_1, 11>();
    var var_0 = vec4<u32>(0u, ~0u, max(4294967295u, ~(~(~4294967295u))), global2.a.x);
    global0 = array<vec2<f32>, 18>();
    var var_1 = true;
    var var_2 = func_1().c.wzw;
    return Struct_3(arg_0.c, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(var_0.x, 18u)]), _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(var_0.x, 18u)], arg_0.d, func_1().c.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(global2.a.x, 18u)] * vec2<f32>(-612f, 313f))))), abs(countOneBits(arg_0.a)) << (var_0.x % 32u), firstTrailingBit(arg_0.b), !arg_0.c);
}

fn func_7(arg_0: Struct_3) -> StorageBuffer {
    return StorageBuffer(-(-25150i >> (_wgslsmith_add_u32(~4294967295u, _wgslsmith_sub_u32(global2.a.x, 4294967295u)) % 32u)), ~_wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, 4294967295u, 6915u), vec4<u32>(global2.a.x, arg_0.c, global2.a.x, 33867u), vec4<u32>(22932u, 780u, 4294967295u, global2.a.x)), vec4<u32>(arg_0.c << (arg_0.c % 32u), arg_0.c | 25039u, min(25664u, 1u), 45416u << (global2.a.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))) - -1724f), arg_0.c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(111f, arg_0.b.x, arg_0.b.x) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(869f, arg_0.b.x, -316f), vec3<f32>(-927f, 1791f, -1846f), arg_0.a.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x), 1000f, arg_0.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(global2.a.x);
    var_0 = ~(_wgslsmith_add_u32(global2.a.x, 1u) | abs(~(~global2.a.x)));
    let x = u_input.a;
    s_output = func_7(func_6(func_1()));
}

