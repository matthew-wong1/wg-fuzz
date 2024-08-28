struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false, vec3<bool>(true, false, true), vec4<bool>(false, true, false, false)), Struct_1(true, vec3<bool>(false, false, true), vec4<bool>(false, true, false, false)), Struct_1(true, vec3<bool>(false, false, true), vec4<bool>(true, true, true, true)), Struct_1(false, vec3<bool>(true, true, false), vec4<bool>(false, false, true, true)), Struct_1(true, vec3<bool>(true, false, false), vec4<bool>(true, true, false, false)), Struct_1(true, vec3<bool>(false, true, true), vec4<bool>(false, true, false, false)), Struct_1(true, vec3<bool>(false, false, true), vec4<bool>(false, true, true, true)), Struct_1(false, vec3<bool>(true, false, false), vec4<bool>(false, true, false, true)), Struct_1(false, vec3<bool>(true, false, false), vec4<bool>(true, true, true, true)), Struct_1(false, vec3<bool>(true, true, true), vec4<bool>(false, true, true, false)), Struct_1(true, vec3<bool>(false, true, true), vec4<bool>(true, true, true, false)), Struct_1(true, vec3<bool>(true, true, true), vec4<bool>(true, true, true, true)), Struct_1(true, vec3<bool>(true, true, false), vec4<bool>(false, true, false, true)), Struct_1(false, vec3<bool>(true, true, false), vec4<bool>(false, false, true, true)), Struct_1(true, vec3<bool>(false, true, false), vec4<bool>(true, true, false, false)), Struct_1(false, vec3<bool>(true, true, false), vec4<bool>(false, false, false, true)), Struct_1(true, vec3<bool>(false, true, true), vec4<bool>(true, false, false, true)), Struct_1(true, vec3<bool>(true, true, false), vec4<bool>(false, true, false, true)), Struct_1(false, vec3<bool>(true, true, false), vec4<bool>(true, false, true, false)));

var<private> global1: array<Struct_1, 32>;

var<private> global2: array<vec2<u32>, 22>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32((4294967295u << (~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(74778u, 67781u, 0u), vec3<u32>(123u, 39472u, 15582u)), 1u) % 32u)) << (~1u % 32u), 19u)];
    global2 = array<vec2<u32>, 22>();
    var var_1 = ~vec4<u32>(firstLeadingBit(28972u), ~(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 53424u), vec3<u32>(1u, 70291u, 7840u)) | min(8750u, 0u)), min(_wgslsmith_clamp_u32(1u, 4294967295u, 1335u) ^ _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(57523u, 22u)], global2[_wgslsmith_index_u32(51442u, 22u)]), ~(~41136u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 1u), global2[_wgslsmith_index_u32(~7560u, 22u)]) >> (~1u % 32u));
    global2 = array<vec2<u32>, 22>();
    let var_2 = Struct_1(arg_1.a, select(!(!var_0.b), var_0.c.xyy, vec3<bool>(all(var_0.c.zyw), var_0.c.x, !(!var_0.a))), select(arg_3.c, select(vec4<bool>(select(false, true, arg_1.b.x), any(arg_1.b.yz), all(arg_1.c), all(vec4<bool>(false, arg_1.c.x, arg_3.a, var_0.c.x))), vec4<bool>(false, arg_1.c.x, arg_1.c.x, !arg_3.c.x), !(!vec4<bool>(true, arg_1.a, true, true))), true));
    return select(1u, select(var_1.x, ~(~2118u), true || any(arg_1.c)), true & all(select(select(vec2<bool>(true, true), vec2<bool>(true, true), var_2.b.zz), vec2<bool>(true, var_2.c.x), false)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = 1f;
    var var_1 = global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(673f, 667f), vec2<f32>(-795f, 1605f)))), global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 21973u), 32u)], vec3<f32>(_wgslsmith_f_op_f32(1373f - 1000f), _wgslsmith_f_op_f32(-1089f * 1630f), _wgslsmith_f_op_f32(f32(-1f) * -605f)), global1[_wgslsmith_index_u32(~1u, 32u)]), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 18356u, 4294967295u, 4420u), _wgslsmith_clamp_vec4_u32(vec4<u32>(12407u, 4294967295u, 1u, 31116u), vec4<u32>(3743u, 4294967295u, 5611u, 1u), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)))), 32u)];
    let var_2 = arg_1.c.x;
    var var_3 = select(_wgslsmith_dot_vec4_u32(~(select(vec4<u32>(18191u, 51798u, 64430u, 36139u), vec4<u32>(61809u, 9835u, 20526u, 35050u), true) ^ vec4<u32>(1u, 1u, 1u, 1u)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(12213u, 22u)], vec2<u32>(1u, 8502u)), ~4294967295u, 65510u, 1u)), ~_wgslsmith_mult_u32(5898u << (1u % 32u), ~firstTrailingBit(29215u)), any(select(arg_1.c.xzx, vec3<bool>(all(var_1.c.yzy), all(vec2<bool>(arg_1.a, false)), true), vec3<bool>(all(arg_1.c.yy), !var_2, arg_0))));
    let var_4 = arg_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    return Struct_1(true, select(vec3<bool>(true, true, true), !vec3<bool>(true, true, all(vec3<bool>(true, false, false))), false), vec4<bool>(select(true, any(vec3<bool>(true, true, true)), false), all(vec4<bool>(true, true, true, true)), false, true));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    global0 = array<Struct_1, 19>();
    let var_0 = func_4(~_wgslsmith_sub_vec4_u32(max(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(1u, 1u, 1u, 1u)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))) - 1057f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(f32(-1f) * -677f)), _wgslsmith_div_f32(679f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(arg_0.x, global1[_wgslsmith_index_u32(95554u, 32u)]))))), _wgslsmith_mod_u32(reverseBits(min(~1u, ~0u)), 4294967295u));
    var var_1 = ~_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mod_u32(9211u, 45826u)), ~30448u) & select(0u, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 0u, 39936u, 47801u), vec4<u32>(4294967295u, 67477u, 30607u, 61271u)), vec4<u32>(1u, 1u, 1u, 1u)), !(-63447i != _wgslsmith_div_i32(-10793i, u_input.a.x)));
    var_1 = 0u;
    var var_2 = func_4(_wgslsmith_add_vec4_u32(~abs(~vec4<u32>(4294967295u, 0u, 1u, 42617u)), select(abs(vec4<u32>(4294967295u, 15681u, 0u, 0u)), vec4<u32>(1u, _wgslsmith_add_u32(34935u, 1u), 34420u, 40263u), !(!vec4<bool>(var_0.a, false, arg_0.x, var_0.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1170f, -1000f, -370f), vec3<f32>(-602f, 740f, 1621f)))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1720f) * _wgslsmith_f_op_f32(f32(-1f) * -276f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1072f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(298f, 2749f, var_0.a)), _wgslsmith_f_op_f32(1276f * 546f), true)))), 47422u);
    return func_4(_wgslsmith_mult_vec4_u32(vec4<u32>(abs(1u), 1u, ~_wgslsmith_clamp_u32(32484u, 92288u, 11698u), _wgslsmith_div_u32(_wgslsmith_div_u32(162096u, 31688u), 25596u)), max(vec4<u32>(48909u, 35200u, ~28384u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), vec3<u32>(32437u, 11250u, 0u))), vec4<u32>(4294967295u, func_3(vec2<f32>(1000f, 1326f), global0[_wgslsmith_index_u32(32574u, 19u)], vec3<f32>(431f, 1000f, 888f), var_0), ~0u, ~20166u))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-251f, -1304f, 1521f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(705f, 427f, _wgslsmith_f_op_f32(-1760f + 672f)))), ~select(countOneBits(20569u), abs(40974u), false) << (4294967295u % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 19>();
    let var_0 = u_input.a.x;
    global0 = array<Struct_1, 19>();
    let var_1 = func_1(vec2<bool>(!all(vec2<bool>(true, false)), all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(-129f, -184f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(687f, -732f)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-2019f, -743f), -911f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(~var_0, -11663i ^ _wgslsmith_div_i32(25098i | var_0, -7561i)), reverseBits(_wgslsmith_clamp_i32(1i, ~u_input.a.x, 1i)));
}

