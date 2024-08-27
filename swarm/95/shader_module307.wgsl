struct Struct_1 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19>;

var<private> global1: bool;

var<private> global2: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(-1i, -27762i), vec2<i32>(0i, -50384i), vec2<i32>(2147483647i, -5818i), vec2<i32>(-15446i, 2147483647i), vec2<i32>(i32(-2147483648), 29024i), vec2<i32>(2147483647i, 12559i), vec2<i32>(-1i, -1i), vec2<i32>(-23330i, i32(-2147483648)), vec2<i32>(2147483647i, -9400i), vec2<i32>(i32(-2147483648), 1737i), vec2<i32>(0i, -1i), vec2<i32>(-1i, 0i), vec2<i32>(44826i, 11739i), vec2<i32>(-1441i, 2376i), vec2<i32>(-10549i, 9783i), vec2<i32>(3063i, 2147483647i), vec2<i32>(1i, 51645i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-10005i, i32(-2147483648)), vec2<i32>(49624i, 0i));

var<private> global3: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(33871u, 19u)]), vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(8139u, 19u)]), true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], -962f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(684f, 1104f), vec2<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(42993u, 19u)]))), vec2<f32>(-1000f, global0[_wgslsmith_index_u32(1u, 19u)])))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1116f + 726f), _wgslsmith_f_op_f32(abs(208f))))), all(vec4<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, u_input.c)) <= reverseBits(u_input.c), -11952i != select(u_input.d, -1i, false), false))));
    let var_1 = vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], 1629f, _wgslsmith_f_op_f32(trunc(-1101f)), -2526f);
    global2 = array<vec2<i32>, 20>();
    var var_2 = vec4<u32>(~(~u_input.c), u_input.c, 12365u, ~1u);
    var var_3 = Struct_1(-35760i, 40021u, select(false, false, any(vec3<bool>(true, false, true))), firstTrailingBit(_wgslsmith_add_i32(-1i, u_input.a.x)), var_1);
    return var_1;
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global0 = array<f32, 19>();
    var var_0 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.c, 19u)], arg_0.x)) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(40503u, 19u)]))) > arg_0.x) != false;
    global0 = array<f32, 19>();
    return Struct_1(~2147483647i, _wgslsmith_mult_u32(80061u, max(~4294967295u, ~_wgslsmith_add_u32(4294967295u, u_input.c))), all(vec4<bool>(true, ~43621u >= ~u_input.c, true, false)), 16510i << (_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(28527u, u_input.c, 4294967295u), vec3<u32>(0u, 1u, 77610u)), max(vec3<u32>(u_input.c, 35148u, u_input.c), vec3<u32>(u_input.c, u_input.c, 1u))) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 19u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 19u)]), 111f) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(func_3()), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 882f, 113f, -464f))))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> bool {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(162f, 656f, arg_0)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_0, global0[_wgslsmith_index_u32(arg_1.b, 19u)], -529f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.e.www) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 1000f, -1197f)))))));
    global1 = true;
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(-countOneBits(_wgslsmith_dot_vec2_i32(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(var_0.a, u_input.b << (1u % 32u)), abs(arg_1.a), -15486i)), _wgslsmith_add_i32(_wgslsmith_div_i32(arg_1.a, -firstLeadingBit(arg_1.d)), -47038i), ~(-firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.xz, global2[_wgslsmith_index_u32(76956u, 20u)]))));
    var var_2 = arg_1;
    global0 = array<f32, 19>();
    return false;
}

fn func_1(arg_0: vec2<bool>) -> i32 {
    global1 = func_4(global0[_wgslsmith_index_u32(37266u, 19u)], func_2(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(11935u, 19u)] + _wgslsmith_div_f32(-374f, 966f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 19u)] - 1000f) * _wgslsmith_f_op_f32(1988f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -697f)))), true);
    var var_0 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3()).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(1u, 19u)], -785f))))), 643f));
    var var_1 = Struct_1(var_0.d, ~0u, any(vec4<bool>(true, false, true, arg_0.x)), -(~(_wgslsmith_dot_vec3_i32(vec3<i32>(9360i, var_0.a, var_0.a), u_input.a) >> (~u_input.c % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.c, 19u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c, 19u)] * global0[_wgslsmith_index_u32(4294967295u, 19u)]), -546f, _wgslsmith_f_op_f32(-645f + 383f)))));
    var var_2 = !vec4<bool>(any(!(!vec3<bool>(true, var_0.c, true))), true, true, var_0.c);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_0.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.e.x, var_0.e.x))) + var_1.e.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1066f)), _wgslsmith_f_op_vec4_f32(func_3()).x)), -215f);
    return var_0.a;
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = ~(~vec3<u32>(24441u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(u_input.c, 19252u)), vec2<u32>(arg_0.b, arg_0.b) & vec2<u32>(u_input.c, u_input.c)), 1u));
    global0 = array<f32, 19>();
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1057f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f + -632f))) + vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-100f - -740f))), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.c, 19u)])))), _wgslsmith_f_op_vec2_f32(arg_0.e.zx - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec4_f32(func_3()).zz + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_0.e.ww + vec2<f32>(447f, 1119f)))))));
    global0 = array<f32, 19>();
    let var_2 = !select(select(select(vec3<bool>(arg_0.c, arg_0.c, false), vec3<bool>(false, arg_0.c, true), all(vec4<bool>(arg_0.c, false, arg_0.c, true))), select(vec3<bool>(false, true, arg_0.c), select(vec3<bool>(arg_0.c, true, true), vec3<bool>(false, arg_0.c, false), vec3<bool>(arg_0.c, false, true)), !vec3<bool>(true, arg_0.c, false)), func_2(_wgslsmith_f_op_vec3_f32(-arg_0.e.xxy)).c), vec3<bool>(true, !arg_0.c && arg_0.c, any(!vec3<bool>(arg_0.c, false, true))), !select(!vec3<bool>(arg_0.c, false, arg_0.c), !vec3<bool>(arg_0.c, arg_0.c, arg_0.c), select(vec3<bool>(arg_0.c, arg_0.c, arg_0.c), vec3<bool>(arg_0.c, false, arg_0.c), vec3<bool>(false, false, true))));
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(Struct_1(-2147483647i, 0u << (max(43143u, u_input.c) % 32u), true, max(u_input.a.x, func_1(vec2<bool>(false, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1290f, global0[_wgslsmith_index_u32(4294967295u, 19u)], -103f, global0[_wgslsmith_index_u32(u_input.c, 19u)]), vec4<f32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)], -1287f, -849f), true)) * vec4<f32>(276f, 329f, 369f, -313f)))), abs(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(~u_input.c, u_input.c))), any(vec3<bool>(!any(vec4<bool>(false, true, true, false)), true, !func_4(588f, Struct_1(12645i, u_input.c, true, u_input.d, vec4<f32>(1139f, 1103f, -1000f, global0[_wgslsmith_index_u32(u_input.c, 19u)])), true))), u_input.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(u_input.c, 19u)])))))));
    var var_1 = 572i;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, _wgslsmith_f_op_f32(min(1000f, 2289f)), 732f))));
    let var_3 = vec2<i32>(66845i, var_0.a);
    global1 = !(all(select(vec2<bool>(true, true), vec2<bool>(var_0.c, var_2.c), false)) & var_0.c) || var_0.c;
    let var_4 = var_2.b;
    let var_5 = func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1262f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.e.x - 835f), _wgslsmith_f_op_f32(var_0.e.x + var_0.e.x))), _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(1u, 19u)], _wgslsmith_f_op_f32(-2590f - -267f))))));
    var_2 = func_2(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.e.x + global0[_wgslsmith_index_u32(16751u, 19u)])), -204f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -302f), var_2.e.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(var_0.e.wyy, vec3<f32>(var_5.e.x, -690f, -1703f))) * _wgslsmith_f_op_vec3_f32(-var_5.e.wxw))))));
    var var_6 = 1000f;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mod_i32(~(-20803i), 1i), var_2.b);
}

