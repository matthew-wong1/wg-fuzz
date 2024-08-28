struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: vec2<f32>,
    d: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1129f, 184f, 1117f, 502f), vec4<f32>(1000f, 1562f, -848f, -351f)), Struct_1(vec4<f32>(-1213f, -227f, -227f, 1341f), vec4<f32>(-179f, -1199f, 466f, 1000f)), Struct_1(vec4<f32>(-855f, 1201f, -433f, -239f), vec4<f32>(168f, 631f, -128f, 753f)));

var<private> global2: array<Struct_3, 30>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, abs(u_input.b), 4332u, u_input.b), vec4<u32>(countOneBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 32303u), vec3<u32>(26469u, 10126u, 0u))), reverseBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(29452u, 4294967295u, 1u, 83155u)), abs(vec4<u32>(u_input.b, 4294967295u, u_input.b, 26590u)))), ~min(u_input.b, 21851u), ~(~1593u)));
    global2 = array<Struct_3, 30>();
    var var_1 = Struct_2(global1.b, global1.b, global1.a);
    global0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_1.a.a.x))));
    let var_2 = global1.b.a.x;
    return 49019u;
}

fn func_2(arg_0: Struct_4, arg_1: vec4<i32>) -> bool {
    var var_0 = vec3<u32>(~1u, 33924u, func_3());
    var var_1 = firstLeadingBit(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c ^ u_input.a, 8132i & arg_1.x, _wgslsmith_add_i32(1i, 22467i)), vec3<i32>(abs(arg_0.a.a), i32(-1i) * -959i, ~2147483647i))));
    var_1 = vec3<i32>(15729i, _wgslsmith_div_i32(-33651i, _wgslsmith_sub_i32(var_1.x, -41235i >> (max(1u, u_input.b) % 32u))), -12098i ^ _wgslsmith_dot_vec2_i32(vec2<i32>(min(-2147483647i, 39089i), _wgslsmith_add_i32(-1i, 2147483647i)), -u_input.d.yz));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1278f);
    var_0 = ~(~vec3<u32>(min(~u_input.b, u_input.b), firstTrailingBit(var_0.x), 21894u));
    return true;
}

fn func_4(arg_0: bool) -> vec2<bool> {
    let var_0 = 68257u;
    let var_1 = Struct_4(Struct_3(u_input.a, vec2<bool>(arg_0, all(vec4<bool>(true, arg_0, true, false))), vec4<bool>(!arg_0, !arg_0, false, func_2(Struct_4(global2[_wgslsmith_index_u32(var_0, 30u)], var_0, global1.c.b.ww, vec2<f32>(632f, 285f)), vec4<i32>(21918i, u_input.a, u_input.a, -29250i)) | arg_0), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-766f)) * global1.c.b.x)))), 78146u, global1.b.b.xw, _wgslsmith_f_op_vec2_f32(-global1.c.b.yx));
    var var_2 = var_1;
    var_2 = Struct_4(var_2.a, ~1u, var_1.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1425f, _wgslsmith_f_op_f32(max(var_2.c.x, _wgslsmith_f_op_f32(457f - 258f))))));
    var var_3 = global1.b;
    return vec2<bool>(81935i < _wgslsmith_sub_i32(var_1.a.a, _wgslsmith_sub_i32(-22215i >> (1u % 32u), i32(-1i) * -32816i)), false);
}

fn func_1() -> vec4<bool> {
    var var_0 = u_input.d.x;
    let var_1 = Struct_3(max(~_wgslsmith_mod_i32(u_input.a, _wgslsmith_div_i32(-2147483647i, 2147483647i)), u_input.a ^ u_input.a), select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, false)), func_4(func_2(Struct_4(Struct_3(51352i, vec2<bool>(true, true), vec4<bool>(true, false, false, true), global1.a.b.x), 4294967295u, vec2<f32>(-811f, global1.b.a.x), vec2<f32>(global1.a.a.x, global1.a.a.x)), vec4<i32>(u_input.c, 5092i, u_input.c, u_input.d.x))), select(vec2<bool>(false, true), vec2<bool>(true, false), true)), func_4(true), vec2<bool>(all(vec2<bool>(true, true)), true)), vec4<bool>(false, (select(false, true, true) && (global1.a.a.x < 1000f)) & true, func_4(u_input.a <= 2147483647i).x | true, _wgslsmith_f_op_f32(trunc(127f)) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.a.x) + 853f)), -529f);
    var var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(firstTrailingBit(~45688u ^ (u_input.b ^ 7997u)), min(~firstLeadingBit(u_input.b), u_input.b)), _wgslsmith_add_vec2_u32(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 15899u), vec2<u32>(6854u, u_input.b), vec2<u32>(1u, u_input.b)) ^ firstTrailingBit(vec2<u32>(u_input.b, u_input.b))), ~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 7842u) & vec2<u32>(0u, u_input.b), _wgslsmith_add_vec2_u32(vec2<u32>(60222u, 18086u), vec2<u32>(0u, u_input.b)))), ~(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 39083u), vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 3126u))) ^ abs(vec2<u32>(24543u, 1u) | vec2<u32>(u_input.b, u_input.b))));
    let var_3 = var_1.d;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.b.zxz * global1.c.b.xzx), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global1.c.b.ywx * global1.b.a.yzz))), global1.c.b.yxx))));
    return select(select(vec4<bool>(all(var_1.b) || !var_1.c.x, false, true, true & func_4(true).x), !(!vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.b.x)), vec4<bool>(any(!var_1.c), all(!var_1.c), func_4(true).x, true)), var_1.c, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_1());
    global1 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1044f, global1.c.a.x, 712f, -366f) * global1.a.a))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.c.a.x)), global1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1380f), _wgslsmith_f_op_f32(f32(-1f) * -552f))), _wgslsmith_f_op_vec4_f32(-global1.c.b)), Struct_1(vec4<f32>(global1.b.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global1.c.b.x, -492f))), _wgslsmith_f_op_f32(select(global1.b.b.x, _wgslsmith_f_op_f32(floor(global1.c.b.x)), true)), -1835f), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(select(global1.b.b.x, global1.b.b.x, false))), _wgslsmith_div_f32(_wgslsmith_div_f32(-244f, global1.a.b.x), _wgslsmith_f_op_f32(-global1.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1753f * 395f) - 1213f), -1225f)), Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, 271f, global1.a.a.x, 646f)))), global1.b.b));
    global1 = Struct_2(global1.b, Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global1.b.b.x - -806f), global1.b.a.x, _wgslsmith_f_op_f32(f32(-1f) * -904f), 854f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, global1.a.a.x, global1.c.a.x, 549f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b.a.x, global1.c.a.x, 223f, 1773f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c.b.x, global1.b.a.x, global1.b.b.x, -1000f))))), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.c.b.x, global1.a.b.x, -690f, _wgslsmith_f_op_f32(660f - global1.c.b.x)))), global1.b.a));
    var var_1 = Struct_5(17677i);
    global1 = Struct_2(global1.c, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1028f + global1.b.b.x), _wgslsmith_f_op_f32(max(global1.a.b.x, global1.a.b.x)), global1.a.b.x, _wgslsmith_f_op_f32(-global1.c.a.x)) - vec4<f32>(_wgslsmith_f_op_f32(-global1.a.a.x), -677f, global1.a.a.x, _wgslsmith_f_op_f32(-global1.b.a.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.c.b.x, global1.b.a.x, var_0))), 846f, -201f, -441f)), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(1345f * global1.a.b.x), global1.c.b.x, -360f, 1000f)), global1.b.b));
    var var_2 = ~(~(~vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.b, u_input.b)), u_input.b, ~1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(322f, 1378f, -325f, 1043f) - _wgslsmith_div_vec4_f32(vec4<f32>(global1.a.b.x, -612f, global1.c.b.x, global1.b.a.x), _wgslsmith_f_op_vec4_f32(global1.b.b - global1.a.a))) - vec4<f32>(2246f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(396f, -767f)))), _wgslsmith_f_op_f32(step(global1.c.b.x, _wgslsmith_f_op_f32(step(-257f, global1.c.b.x)))), _wgslsmith_f_op_f32(-global1.a.b.x))), 1u, 1361f);
}

