struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28>;

var<private> global1: array<Struct_1, 11>;

var<private> global2: Struct_3 = Struct_3(vec2<f32>(685f, -318f), Struct_2(vec3<bool>(true, false, true), Struct_1(645f, 376f, 23747i, vec4<f32>(1280f, -284f, -526f, 634f), vec4<f32>(370f, 1284f, 362f, 568f)), -25089i, Struct_1(-907f, 517f, 30823i, vec4<f32>(-1010f, -489f, 797f, -297f), vec4<f32>(356f, -186f, -1149f, 875f))), 2147483647i, Struct_1(-189f, 913f, 0i, vec4<f32>(-1000f, -972f, 1289f, -1329f), vec4<f32>(2448f, -1000f, -880f, -1146f)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(abs(0u), 28u)]))));
    var var_1 = global2.b.b;
    var var_2 = 17730i;
    var var_3 = global1[_wgslsmith_index_u32(u_input.b.x, 11u)];
    var var_4 = false;
    return false;
}

fn func_3() -> i32 {
    let var_0 = -1i;
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(246f, -842f) * global2.d.d.yy), _wgslsmith_f_op_vec2_f32(step(global2.d.d.zy, global2.a)))) + vec2<f32>(-886f, -100f))), Struct_2(select(vec3<bool>(!global2.b.a.x, true, false & global2.b.a.x), vec3<bool>(u_input.c < var_0, any(vec3<bool>(global2.b.a.x, global2.b.a.x, false)), false), !(15225i > u_input.a.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(849f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(142f)) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 28u)] - 2544f)), 27214i, _wgslsmith_f_op_vec4_f32(global2.d.d * vec4<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), _wgslsmith_f_op_vec4_f32(-global2.b.d.e)), var_0 ^ var_0, Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -734f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 28u)]) + 307f), global2.c, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(global2.b.b.d)))), vec4<f32>(-424f, -1805f, global0[_wgslsmith_index_u32(abs(u_input.b.x), 28u)], 1201f))), i32(-1i) * -37067i, global1[_wgslsmith_index_u32(u_input.b.x, 11u)]);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.d.d.wyx * _wgslsmith_f_op_vec3_f32(global2.d.d.yyz - _wgslsmith_f_op_vec3_f32(global2.d.d.zzz * global2.d.e.wyz))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(global2.b.b.d.ywy)))));
    var var_3 = u_input.b.x;
    var_3 = min(_wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(u_input.b.x, u_input.b.x, 1u)), abs(~0u)), ~_wgslsmith_mult_u32(reverseBits(~u_input.b.x), 45365u));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(14938i, global2.d.c), vec2<i32>(var_1.d.c, global2.d.c)), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, -33370i, var_0), vec4<i32>(14808i, var_1.b.d.c, -56901i, u_input.a.x)), -19608i, select(-1i, u_input.a.x, global2.b.a.x)), vec4<i32>(u_input.a.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), vec4<u32>(u_input.b.x, 23017u, 3383u, u_input.b.x)) % 32u), -19174i, reverseBits(var_0 | var_1.c), 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(~max(global2.d.c, -33509i), 2147483647i), countOneBits(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, global2.b.b.c), u_input.a, vec2<i32>(var_0, var_1.d.c))))));
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_2();
    global2 = Struct_3(_wgslsmith_f_op_vec2_f32(global2.d.d.wx - vec2<f32>(206f, global2.d.d.x)), global2.b, u_input.c, Struct_1(769f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], ~func_3(), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1897f, 214f, global0[_wgslsmith_index_u32(66597u, 28u)], global2.a.x))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.d.b, global2.b.d.a, 1814f, -1037f) - global2.b.b.e))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-395f, global2.a.x)))), 2224f, _wgslsmith_f_op_f32(-global2.b.b.d.x), 651f)));
    global1 = array<Struct_1, 11>();
    var var_1 = global0[_wgslsmith_index_u32(4294967295u, 28u)];
    var var_2 = u_input.b.x;
    return Struct_1(_wgslsmith_f_op_f32(-global2.a.x), -871f, arg_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(u_input.b.x, 28u)], 859f)) * _wgslsmith_f_op_f32(trunc(887f))), 180f, -509f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(52126u, 28u)])) - _wgslsmith_div_vec4_f32(vec4<f32>(947f, _wgslsmith_f_op_f32(select(global2.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], global2.b.a.x)), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 28u)] * global0[_wgslsmith_index_u32(u_input.b.x, 28u)]), _wgslsmith_f_op_f32(select(global2.a.x, global2.a.x, global2.b.a.x))), vec4<f32>(global2.d.a, -785f, global0[_wgslsmith_index_u32(u_input.b.x, 28u)], _wgslsmith_f_op_f32(1480f * global0[_wgslsmith_index_u32(u_input.b.x, 28u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-882f, _wgslsmith_f_op_f32(1202f * 401f), _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.b.x, 28u)])), 347f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(~(~6487u) << (_wgslsmith_mult_u32(min(~u_input.b.x, 0u), 1u) % 32u), ~_wgslsmith_div_u32(~(u_input.b.x & 0u), ~1u | ~u_input.b.x));
    var var_1 = global2.b.b.e;
    let var_2 = global2.b;
    let var_3 = func_1(select(2147483647i, -2147483647i, all(!(!vec4<bool>(var_2.a.x, true, true, true)))));
    global1 = array<Struct_1, 11>();
    let var_4 = Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(var_0, 28u)], -1591f) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(1460f - -500f), _wgslsmith_f_op_f32(f32(-1f) * -229f))))), Struct_2(vec3<bool>(var_2.a.x, !global2.b.a.x, ~global2.b.d.c < _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-6885i, u_input.c))), func_1(-15232i), abs(reverseBits(2147483647i)) ^ global2.c, global1[_wgslsmith_index_u32(~(~(~0u)), 11u)]), -8848i, Struct_1(_wgslsmith_f_op_f32(1486f - -1175f), 794f, min(-1i << (select(var_0, var_0, var_2.a.x) % 32u), select(0i, 0i, global2.b.a.x) | (u_input.c ^ -39144i)), vec4<f32>(_wgslsmith_f_op_f32(2352f - func_1(u_input.c).b), _wgslsmith_f_op_f32(-var_3.b), -783f, _wgslsmith_f_op_f32(select(var_2.b.b, global2.d.b, true))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.e.x, -250f, var_3.a, var_2.b.d.x)), _wgslsmith_f_op_vec4_f32(select(var_2.d.e, global2.b.d.d, var_2.a.x)))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1074f, -223f, 1207f), vec4<f32>(-143f, var_1.x, global2.a.x, var_3.e.x))) * var_4.b.b.e)))) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_3.e), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-354f, -438f, var_1.x, var_1.x), var_4.b.d.e)))));
    global1 = array<Struct_1, 11>();
    let var_5 = _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 27966u), vec2<u32>(4294967295u, var_0)), _wgslsmith_div_u32(19330u, ~var_0), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.b.x, var_0), vec3<u32>(1u, 23142u, 4294967295u))), u_input.b), _wgslsmith_dot_vec4_u32(~(firstTrailingBit(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u)) & (vec4<u32>(4294967295u, 35932u, var_0, u_input.b.x) ^ vec4<u32>(73090u, 34169u, 3711u, 1u))), vec4<u32>(var_0 ^ firstTrailingBit(var_0), ~u_input.b.x, _wgslsmith_dot_vec3_u32(~u_input.b, abs(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x))), ~57119u)));
    let x = u_input.a;
    s_output = StorageBuffer(2532f, -23129i);
}

