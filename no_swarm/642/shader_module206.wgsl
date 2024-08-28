struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec3<bool>, 19>;

var<private> global2: vec4<f32> = vec4<f32>(1683f, -1516f, 1434f, -1319f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -925f), _wgslsmith_f_op_f32(ceil(235f))));
    global0 = 1u;
    let var_1 = u_input.a.x;
    global0 = ~u_input.a.x & ~38093u;
    var var_2 = ~vec2<u32>(countOneBits(4294967295u), var_1);
    return Struct_2(Struct_1(global2.xyz, u_input.a.x, _wgslsmith_add_vec4_u32(~vec4<u32>(4294967295u, 1u, var_1, 32099u), reverseBits(vec4<u32>(u_input.a.x, 5771u, var_1, var_1) ^ vec4<u32>(u_input.a.x, 15714u, 9172u, 5103u))), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, var_1), abs(u_input.a.zx)) >> (vec2<u32>(~u_input.a.x, select(u_input.a.x, 27706u, false)) % vec2<u32>(32u))), Struct_1(_wgslsmith_f_op_vec3_f32(-global2.zzy), u_input.a.x, vec4<u32>(max(4294967295u, var_1), 12602u, min(78063u, _wgslsmith_sub_u32(var_1, 1u)), u_input.a.x), u_input.a.wy));
}

fn func_3() -> vec4<f32> {
    var var_0 = select(vec3<bool>(!select(true, all(vec2<bool>(false, false)), select(true, true, false)), true, false), !vec3<bool>(true, false, all(vec3<bool>(false, true, false))), !(!vec3<bool>(false, any(global1[_wgslsmith_index_u32(41350u, 19u)]), true)));
    let var_1 = select(select(vec4<bool>(any(select(var_0.zx, var_0.xy, vec2<bool>(var_0.x, true))), _wgslsmith_f_op_f32(step(global2.x, 1625f)) < _wgslsmith_f_op_f32(f32(-1f) * -1295f), true, !any(vec4<bool>(false, false, true, true))), select(vec4<bool>(true, var_0.x, var_0.x, all(global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(var_0.x, false, true, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), true), !vec4<bool>(false, false, false, var_0.x), select(vec4<bool>(true, var_0.x, false, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), false))), !(!vec4<bool>(var_0.x, true, var_0.x, true))), !(!vec4<bool>(!var_0.x, var_0.x, u_input.a.x > 1u, true)), select(true, u_input.b <= _wgslsmith_add_i32(~u_input.b, ~(-2147483647i)), false));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -669f), global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.x, 1546f))), _wgslsmith_f_op_f32(f32(-1f) * -1327f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, global2.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(792f, 968f, global2.x, global2.x))))))));
    var var_2 = Struct_3(func_2(select(!(!var_1), var_1, !var_1)), _wgslsmith_f_op_vec3_f32(-global2.yyz));
    let var_3 = 1u;
    return vec4<f32>(1000f, 354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2264f + global2.x)) + _wgslsmith_f_op_f32(-global2.x)) - -1226f), global2.x);
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: vec4<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = arg_0.a.b;
    var_0 = ~4294967295u;
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.a.x, -1139f, arg_0.a.a.x) + vec3<f32>(arg_3.b.a.x, -1174f, global2.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, arg_0.a.a.x, arg_2.x))), abs(~(~u_input.a.x)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, arg_3.a.c.x, u_input.a.x), vec4<u32>(55184u, 0u, arg_0.b.c.x, 85051u))), firstLeadingBit(~arg_0.a.c.xx & (vec2<u32>(arg_3.a.c.x, arg_3.a.d.x) & arg_3.a.d))), arg_0.a);
    let var_2 = countOneBits(vec3<u32>(0u, arg_3.b.b, _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(0u, 70050u, arg_3.a.d.x)) >> ((var_1.a.c.xxy | vec3<u32>(3402u, 0u, 50810u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(~vec3<u32>(arg_3.b.d.x, u_input.a.x, var_1.b.c.x), vec3<u32>(var_1.b.c.x, arg_0.b.d.x, 4294967295u)))));
    let var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(func_2(vec4<bool>(false, true, true, false)).b.a.x)) + _wgslsmith_div_f32(_wgslsmith_div_f32(-1396f, -348f), arg_0.a.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-161f)), 1131f, arg_0.b.c.x < 128565u)), 933f), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, 3552u), u_input.a.zx) >> (113055u % 32u)), max(~_wgslsmith_add_vec4_u32(arg_3.a.c, ~var_1.a.c), var_1.a.c), firstTrailingBit(countOneBits(vec2<u32>(16428u, arg_0.a.c.x)) << (_wgslsmith_mod_vec2_u32(arg_0.b.c.zw, var_2.yz) % vec2<u32>(32u))) << (_wgslsmith_sub_vec2_u32(select(~var_1.b.c.zz, vec2<u32>(var_2.x, 0u), vec2<bool>(true, true)), func_2(vec4<bool>(false, false, true, false)).b.c.yz << (vec2<u32>(u_input.a.x, arg_0.a.b) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return -22408i << (arg_3.b.d.x % 32u);
}

fn func_1(arg_0: vec4<f32>) -> f32 {
    let var_0 = (func_4(func_2(vec4<bool>(true, false, false, false)), ~(u_input.b << (2472u % 32u)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1051f, global2.x, global2.x, arg_0.x), _wgslsmith_f_op_vec4_f32(func_3()))), func_2(vec4<bool>(true, true, false, false))) | -16446i) | -(-1i ^ _wgslsmith_div_i32(-1i, u_input.b));
    let var_1 = u_input.a.x;
    global1 = array<vec3<bool>, 19>();
    var var_2 = true;
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_0 * arg_0)))));
    return 339f;
}

fn func_5(arg_0: f32, arg_1: vec3<bool>, arg_2: u32, arg_3: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.zzx - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(399f, arg_0, 1537f) - vec3<f32>(global2.x, -166f, 483f)), arg_3, select(vec3<bool>(arg_1.x, false, false), global1[_wgslsmith_index_u32(arg_2, 19u)], global1[_wgslsmith_index_u32(arg_2, 19u)])))))), ~1u, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, 71991u, u_input.a.x, 62199u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 13268u, 20044u, 4294967295u), u_input.a)), vec4<u32>(arg_2, 17535u, 99011u, 4294967295u) >> (u_input.a % vec4<u32>(32u))), abs(u_input.a)), _wgslsmith_clamp_vec2_u32((~u_input.a.xy ^ min(u_input.a.xy, u_input.a.yz)) & (~u_input.a.yx | (u_input.a.yz | vec2<u32>(46186u, arg_2))), u_input.a.yw, min(vec2<u32>(arg_2, 1u), vec2<u32>(arg_2, arg_2)) >> (_wgslsmith_add_vec2_u32(~vec2<u32>(54618u, 93715u), vec2<u32>(69857u, arg_2)) % vec2<u32>(32u))));
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, -656f, global2.x, global2.x), vec4<f32>(arg_3.x, var_0.a.x, -719f, -870f)))))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(804f)))) + arg_0);
    var var_2 = global2.x;
    global1 = array<vec3<bool>, 19>();
    return !select(vec4<bool>(true, !arg_1.x && arg_1.x, _wgslsmith_mult_i32(u_input.b, u_input.b) >= _wgslsmith_dot_vec2_i32(vec2<i32>(44964i, u_input.b), vec2<i32>(u_input.b, u_input.b)), any(select(vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, false, arg_1.x, arg_1.x), arg_1.x))), !(!select(vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, true, arg_1.x, false), vec4<bool>(false, true, arg_1.x, arg_1.x))), vec4<bool>(arg_1.x, any(arg_1.zx), all(!vec3<bool>(true, arg_1.x, false)), any(select(vec3<bool>(false, false, arg_1.x), global1[_wgslsmith_index_u32(u_input.a.x, 19u)], arg_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(global2.x, _wgslsmith_div_f32(-135f, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -674f), _wgslsmith_f_op_f32(f32(-1f) * -277f))))), !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.a, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(52133u, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, u_input.a)) | 28549u, 19u)], u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2001f)) * global2.x), 292f, _wgslsmith_f_op_vec4_f32(func_3()).x));
    var_0 = !(!select(vec4<bool>(var_0.x & false, false, true, 16034u <= u_input.a.x), vec4<bool>(true, var_0.x, !var_0.x, var_0.x), true));
    global1 = array<vec3<bool>, 19>();
    var var_1 = vec3<i32>(16364i, -33116i, -(~u_input.b | -1i));
    let var_2 = 20134i;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, global2.yxz);
}

