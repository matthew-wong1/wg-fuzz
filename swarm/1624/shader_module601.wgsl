struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(-284f, 247f), Struct_1(-413f, -198f), Struct_1(306f, 157f), Struct_1(1024f, -486f), Struct_1(1901f, 1000f), Struct_1(1000f, 847f), Struct_1(189f, 201f), Struct_1(-616f, -224f), Struct_1(-806f, 311f), Struct_1(-558f, -705f), Struct_1(719f, 1000f), Struct_1(191f, -1201f));

var<private> global1: array<vec3<f32>, 21>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, -1063f)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(556f, arg_2.b))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1729f, 3026f) - vec2<f32>(500f, -609f)))))));
    var var_1 = select(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), true)), any(vec2<bool>(true, true)));
    var var_2 = min(abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.a, 1u), u_input.a)), ~countOneBits((u_input.a | u_input.a) | 37827u));
    global0 = array<Struct_1, 12>();
    let var_3 = ~min(u_input.a, arg_1);
    return arg_2.b;
}

fn func_2() -> i32 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_mult_i32(-77014i, abs(-26715i)), ~(97442u << (u_input.a % 32u)), global0[_wgslsmith_index_u32(abs(15289u), 12u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1037f - _wgslsmith_f_op_f32(func_3(11468i, u_input.a, Struct_1(603f, -1895f)))))))), 866f);
    var var_1 = ~vec2<i32>(0i, min(0i, 0i));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1307f), _wgslsmith_div_f32(_wgslsmith_div_f32(-295f, -323f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(var_1.x, u_input.a, Struct_1(var_0.x, var_0.x))), 1000f, var_1.x == -27517i)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-777f))))));
    let var_3 = Struct_1(681f, _wgslsmith_f_op_f32(func_3(max(var_1.x, var_1.x), 46269u, global0[_wgslsmith_index_u32(min(u_input.a, ~1u), 12u)])));
    var var_4 = vec2<i32>(var_1.x, select(-21728i, _wgslsmith_mult_i32(23050i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.x, var_1.x, -2147483647i), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)))), _wgslsmith_clamp_i32(~1i, _wgslsmith_mod_i32(var_1.x, -16601i), -1i) > _wgslsmith_add_i32(~2147483647i, var_1.x)));
    return 1i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    var var_0 = vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(select(-2147483647i, -1i, true), ~(-40961i), abs(func_2()), ~_wgslsmith_clamp_i32(-2147483647i, 51269i, -51863i)), -select(firstLeadingBit(vec4<i32>(28628i, 23273i, -2147483647i, 34086i)), firstLeadingBit(vec4<i32>(-26775i, 0i, 10371i, -2147483647i)), false)), ~(-(1i >> (~u_input.a % 32u))), 2147483647i, select(reverseBits(-1i), -_wgslsmith_div_i32(~18177i, _wgslsmith_dot_vec2_i32(vec2<i32>(32941i, 0i), vec2<i32>(-68655i, 2147483647i))), false));
    var_0 = -vec4<i32>(1i, firstTrailingBit(var_0.x), var_0.x, min(firstTrailingBit(0i), var_0.x)) | _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(min(var_0.xw, vec2<i32>(-2147483647i, var_0.x)), vec2<i32>(1i, var_0.x)), 19279i, ~(var_0.x >> (29753u % 32u)), ~_wgslsmith_add_i32(var_0.x, var_0.x)), _wgslsmith_mod_vec4_i32(~firstLeadingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, 2147483647i)), firstTrailingBit(vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -107f);
    var var_2 = max(vec2<u32>(_wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.a, u_input.a), 19860u), u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(~66596u, ~u_input.a), ~(~(~vec2<u32>(u_input.a, 37236u)))));
    var var_3 = true;
    return all(select(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true), vec4<bool>(false, false, false, all(vec2<bool>(false, true))), vec4<bool>(var_2.x >= ~u_input.a, any(vec2<bool>(false, true)) != any(vec3<bool>(true, false, true)), all(vec3<bool>(true, false, true)), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    global1 = array<vec3<f32>, 21>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(470f - -2396f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-129f + 153f)))))), -337f);
    var var_1 = vec3<f32>(-876f, var_0.a, -1194f);
    var var_2 = select(select(!(!select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(true, false), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false)))), vec2<bool>(!func_1(Struct_1(var_1.x, 1134f), Struct_1(var_1.x, var_0.b), Struct_1(var_0.b, 189f)), false || !any(vec2<bool>(true, false))), vec2<bool>(true, !all(vec3<bool>(false, false, false))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.a, 20639u, 34469u, 4294967295u), vec4<u32>(u_input.a, 56861u, 15211u, 79519u), false) >> (vec4<u32>(1u, 64922u, 0u, 70601u) % vec4<u32>(32u)), ~(~vec4<u32>(0u, 0u, u_input.a, u_input.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-504f)) + _wgslsmith_f_op_f32(1115f * var_1.x)), vec4<u32>(abs(5620u), _wgslsmith_add_u32(52763u, ~(u_input.a | 27776u)), _wgslsmith_div_u32(u_input.a, u_input.a), ~u_input.a), ~countOneBits(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), reverseBits(0u), ~5546u)));
}

