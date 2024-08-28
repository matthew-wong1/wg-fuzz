struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: f32;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<i32>(1676i, -21392i, 27141i), vec2<f32>(576f, -968f)), Struct_1(vec3<i32>(25904i, -1i, -29772i), vec2<f32>(117f, -838f)), Struct_1(vec3<i32>(-27262i, 806i, 1i), vec2<f32>(-1464f, 766f)), Struct_1(vec3<i32>(2946i, i32(-2147483648), 0i), vec2<f32>(-2104f, 129f)), Struct_1(vec3<i32>(-15447i, 33432i, 9277i), vec2<f32>(668f, -1171f)), Struct_1(vec3<i32>(0i, -2613i, i32(-2147483648)), vec2<f32>(-358f, -172f)), Struct_1(vec3<i32>(i32(-2147483648), -1i, 10583i), vec2<f32>(-127f, 1447f)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 5671i), vec2<f32>(-676f, -1558f)), Struct_1(vec3<i32>(39400i, 1i, 17400i), vec2<f32>(1384f, 912f)), Struct_1(vec3<i32>(-48737i, 26330i, -18052i), vec2<f32>(1021f, -1672f)), Struct_1(vec3<i32>(-56650i, -12465i, -1i), vec2<f32>(-1000f, -1850f)), Struct_1(vec3<i32>(i32(-2147483648), 708i, 15507i), vec2<f32>(2458f, 931f)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(u_input.b.xwy, ~u_input.b.xwz), vec2<f32>(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 31u)] + arg_0))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x))))));
    let var_1 = true;
    var var_2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1651f, _wgslsmith_div_f32(2316f, 589f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-503f)))), !(var_1 || true));
    var_0 = Struct_1(vec3<i32>(-var_0.a.x, var_0.a.x, _wgslsmith_clamp_i32(-49256i, var_0.a.x, reverseBits(19731i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_1.yx)))))));
    global0 = array<f32, 31>();
    return ~16268u;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global2 = array<Struct_1, 12>();
    var var_0 = _wgslsmith_mult_u32(3920u, 1u);
    var_0 = 53904u;
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(~arg_0.x, _wgslsmith_mult_u32(min(4294967295u, arg_0.x), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(arg_0.zy, arg_0.zz), ~arg_0.x))), ~4294967295u), 31u)];
    var var_2 = global2[_wgslsmith_index_u32(~1u >> (min(~(~arg_0.x), 1u) % 32u), 12u)];
    return global2[_wgslsmith_index_u32(func_3(var_2.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(917f, -1475f), _wgslsmith_f_op_f32(-1345f * 107f), _wgslsmith_f_op_f32(1271f * var_2.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-334f, global0[_wgslsmith_index_u32(31084u, 31u)], global0[_wgslsmith_index_u32(arg_0.x, 31u)])))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(96772u, 31u)], 1000f, global0[_wgslsmith_index_u32(arg_0.x, 31u)]) - vec3<f32>(550f, 923f, global0[_wgslsmith_index_u32(0u, 31u)])) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 1510f, var_2.b.x) - vec3<f32>(global0[_wgslsmith_index_u32(arg_0.x, 31u)], var_2.b.x, var_2.b.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(64775u, 31u)], 883f, -1047f) * vec3<f32>(1322f, var_2.b.x, var_2.b.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1005f, -1286f, -1558f) - vec3<f32>(1098f, var_2.b.x, var_2.b.x))))))), 12u)];
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_3) -> vec4<f32> {
    global2 = array<Struct_1, 12>();
    var var_0 = global2[_wgslsmith_index_u32(~(~(countOneBits(_wgslsmith_add_u32(4504u, 1u)) ^ arg_0.x)), 12u)];
    var_0 = func_2(arg_0.zxz);
    var_0 = global2[_wgslsmith_index_u32(~reverseBits(~arg_0.x), 12u)];
    global0 = array<f32, 31>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-324f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-202f - var_0.b.x)), -1305f)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.x, global0[_wgslsmith_index_u32(arg_0.x, 31u)], -1313f, global0[_wgslsmith_index_u32(0u, 31u)]))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, 219f, 1000f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.b.x, arg_1, var_0.b.x, var_0.b.x), vec4<f32>(1822f, var_0.b.x, -192f, 1000f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(261f, var_0.b.x, 1787f, var_0.b.x), vec4<f32>(var_0.b.x, arg_1, 785f, arg_2.a.b.x), vec4<bool>(false, false, false, false))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0[_wgslsmith_index_u32(4873u, 31u)];
    global2 = array<Struct_1, 12>();
    var var_0 = abs(~abs(19223i));
    var var_1 = vec3<bool>(true, true || all(vec2<bool>(false, true)), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x) > -27184i);
    var var_2 = countOneBits(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(34464u, 24734u, 46922u, 1u)))));
    var var_3 = u_input.a.x > -1i;
    let var_4 = Struct_2(vec3<f32>(-1000f, 127f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(457f * global0[_wgslsmith_index_u32(var_2.x, 31u)]))))), vec3<i32>(-min(~(-2147483647i), 1i), u_input.b.x, -8003i), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(335f, global0[_wgslsmith_index_u32(max(4294967295u, 26606u), 31u)], 632f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.x, 31u)]))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-667f, global0[_wgslsmith_index_u32(var_2.x, 31u)], global0[_wgslsmith_index_u32(var_2.x, 31u)], -341f))), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, var_2.x, var_2.x, 44684u), vec4<u32>(66739u, var_2.x, 925u, 0u)), _wgslsmith_f_op_f32(f32(-1f) * -865f), Struct_3(global2[_wgslsmith_index_u32(0u, 12u)]))), true)))), var_2.x, _wgslsmith_sub_vec3_u32(var_2.wxz, var_2.zyy ^ firstTrailingBit(vec3<u32>(1u, 51289u, var_2.x))));
    let x = u_input.a;
    s_output = StorageBuffer(max(u_input.b, u_input.b), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 534f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -661f)), _wgslsmith_f_op_f32(select(986f, _wgslsmith_f_op_f32(3204f - global0[_wgslsmith_index_u32(61544u, 31u)]), all(vec3<bool>(true, true, true))))))), vec3<u32>(~(4748u << (var_4.e.x % 32u)) | _wgslsmith_add_u32(0u, var_4.e.x), var_2.x, 3306u), abs(vec3<i32>(i32(-1i) * -29179i, u_input.b.x, -3314i)), _wgslsmith_f_op_vec3_f32(sign(var_4.a)));
}

