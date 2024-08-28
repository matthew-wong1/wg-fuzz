struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<f32, 14>;

var<private> global2: array<vec3<bool>, 12>;

var<private> global3: array<vec2<bool>, 20>;

var<private> global4: vec3<f32> = vec3<f32>(-1000f, -767f, -1555f);

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global4.x + -1000f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 14u)] * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(u_input.a.x, 14u)]))), global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(51005u, 2782u), vec2<u32>(69557u, 4294967295u)), ~u_input.a.x), 14u)])));
    var var_1 = global0.b.x;
    var var_2 = var_0.ywz;
    let var_3 = Struct_3(firstLeadingBit(global0.a), vec2<bool>(false, global0.b.x));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1358f, global1[_wgslsmith_index_u32(31083u, 14u)])))))));
    return !global0.b;
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: f32, arg_3: vec4<bool>) -> f32 {
    var var_0 = !vec4<bool>((abs(-2147483647i) != global0.a) && global0.b.x, true, arg_3.x, arg_3.x);
    let var_1 = Struct_3(-_wgslsmith_dot_vec4_i32(vec4<i32>(-global0.a, 0i & global0.a, countOneBits(global0.a), 2147483647i), firstLeadingBit(vec4<i32>(global0.a, global0.a, 1i, global0.a) | vec4<i32>(-1i, global0.a, 6274i, global0.a))), vec2<bool>(true, any(func_3()) == !global0.b.x));
    var var_2 = 1i;
    var var_3 = Struct_3(global0.a, global3[_wgslsmith_index_u32(40540u, 20u)]);
    let var_4 = Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, global1[_wgslsmith_index_u32(1u, 14u)], global1[_wgslsmith_index_u32(4294967295u, 14u)], global4.x)))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(u_input.a.x, 14u)]))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_3) -> Struct_1 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(func_2(u_input.a.x, _wgslsmith_f_op_f32(sign(601f)), -434f, !vec4<bool>(false, true, global0.b.x, global0.b.x))))), global4.x);
    global1 = array<f32, 14>();
    var var_1 = global4.x;
    var_1 = var_0.x;
    global0 = arg_2;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x - 169f), _wgslsmith_f_op_f32(min(global4.x, -1000f))))) * _wgslsmith_f_op_f32(global4.x + 878f)), select(!global0.b.x, !(any(vec3<bool>(arg_2.b.x, false, true)) || (global1[_wgslsmith_index_u32(u_input.a.x, 14u)] != global1[_wgslsmith_index_u32(u_input.a.x, 14u)])), arg_2.b.x), !(!select(select(vec4<bool>(true, true, true, arg_2.b.x), vec4<bool>(arg_2.b.x, global0.b.x, true, true), arg_2.b.x), !vec4<bool>(false, arg_2.b.x, true, true), vec4<bool>(false, global0.b.x, true, global0.b.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.x, 1539f, -241f, global4.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(81814u, 14u)], arg_0.a, global4.x, arg_0.a) * vec4<f32>(-330f, global1[_wgslsmith_index_u32(0u, 14u)], 1073f, 1026f)), !arg_0.c)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-696f, -1395f, global1[_wgslsmith_index_u32(4294967295u, 14u)], 447f)) * vec4<f32>(global4.x, 1076f, global4.x, arg_0.a))) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(1u, 758f, global1[_wgslsmith_index_u32(u_input.a.x, 14u)], vec4<bool>(false, false, true, global0.b.x))), _wgslsmith_div_f32(global4.x, arg_0.a), true)), -1795f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.a)), -1171f)), 507f)));
    global4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(154f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(860f, -243f)), -1009f, arg_0.c.x))), _wgslsmith_f_op_f32(select(1270f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.a, 1159f) * _wgslsmith_f_op_f32(-982f + global1[_wgslsmith_index_u32(u_input.a.x, 14u)])), arg_1.b.x))));
    let var_1 = arg_0;
    let var_2 = u_input.a;
    let var_3 = false;
    return func_1(vec3<u32>(1u, 1u, ~(arg_2 << (max(var_2.x, arg_2) % 32u))), -(vec2<i32>(-1i) * -vec2<i32>(global0.a, arg_3)) ^ _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.a, arg_1.a) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))), ~vec2<i32>(1i, -1i) >> ((vec2<u32>(54896u, arg_2) >> (vec2<u32>(arg_2, 37579u) % vec2<u32>(32u))) % vec2<u32>(32u))), arg_1);
}

fn func_5(arg_0: u32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global0 = Struct_3(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~(~vec3<i32>(42738i, global0.a, global0.a)), vec3<i32>(i32(-1i) * -2147483647i, reverseBits(14998i), _wgslsmith_dot_vec4_i32(vec4<i32>(-6606i, global0.a, global0.a, global0.a), vec4<i32>(global0.a, global0.a, global0.a, global0.a))), vec3<i32>(abs(global0.a), -26589i, global0.a)), vec3<i32>(global0.a, min(27376i, abs(-62057i)), _wgslsmith_clamp_i32(-1i, -5580i, 2147483647i) & ~global0.a)), select(!global3[_wgslsmith_index_u32(reverseBits(max(9230u, 1172u)), 20u)], global3[_wgslsmith_index_u32(firstTrailingBit(~62328u) >> (~4294967295u % 32u), 20u)], !(!(!global3[_wgslsmith_index_u32(0u, 20u)]))));
    global2 = array<vec3<bool>, 12>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1029f, global1[_wgslsmith_index_u32(0u, 14u)], -1014f)) + vec4<f32>(185f, arg_3.a, 1f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 14u)]))) * vec4<f32>(1070f, 1f, global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.a.x, 48134u)), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -787f))));
    return arg_3;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec2<f32>) -> vec3<f32> {
    global1 = array<f32, 14>();
    global0 = Struct_3(_wgslsmith_add_i32(i32(-1i) * -firstTrailingBit(3297i), firstLeadingBit(-1i)), global3[_wgslsmith_index_u32((_wgslsmith_dot_vec4_u32(u_input.a, u_input.a) >> (71041u % 32u)) << (firstTrailingBit(u_input.a.x) % 32u), 20u)]);
    return _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_3.x, -530f, arg_0.a))), _wgslsmith_div_vec3_f32(vec3<f32>(150f, arg_3.x, arg_0.a), vec3<f32>(2350f, arg_0.a, arg_0.a)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.x, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, 24409u), abs(arg_2)), 14u)], _wgslsmith_f_op_f32(f32(-1f) * -900f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(189f, arg_1.a, 490f))) + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, arg_1.a, 1715f)))))), true));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(713f, -1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1703f))))));
    global4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_6(func_5(_wgslsmith_clamp_u32(20245u, ~u_input.a.x, 1u), global4.x, select(vec3<bool>(global0.b.x, false, global0.b.x), global2[_wgslsmith_index_u32(0u, 12u)], !vec3<bool>(false, global0.b.x, false)), func_4(func_1(vec3<u32>(0u, 34922u, 68422u), vec2<i32>(global0.a, global0.a), Struct_3(0i, global3[_wgslsmith_index_u32(u_input.a.x, 20u)])), Struct_3(-33456i, vec2<bool>(false, global0.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), vec2<u32>(44607u, 1u)), 35099i << (u_input.a.x % 32u))), func_4(func_1(vec3<u32>(95956u, 53121u, 13860u) ^ u_input.a.xyz, vec2<i32>(-11877i, global0.a), Struct_3(global0.a, vec2<bool>(global0.b.x, global0.b.x))), Struct_3(_wgslsmith_clamp_i32(global0.a, global0.a, global0.a), !global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), select(1u, firstLeadingBit(u_input.a.x), u_input.a.x >= u_input.a.x), firstLeadingBit(global0.a) | firstTrailingBit(49475i)), 0u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global4.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, -141f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global4.yy, global4.zy, true)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1253f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(14934u, 14u)]) + _wgslsmith_f_op_f32(global4.x * global1[_wgslsmith_index_u32(u_input.a.x, 14u)]))))));
    global2 = array<vec3<bool>, 12>();
    var var_0 = Struct_3(-2147483647i, !func_4(func_4(func_4(Struct_1(global4.x, true, vec4<bool>(true, global0.b.x, global0.b.x, global0.b.x)), Struct_3(global0.a, global3[_wgslsmith_index_u32(u_input.a.x, 20u)]), 1u, -16383i), Struct_3(1i, global0.b), u_input.a.x, global0.a | global0.a), Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(-73009i, global0.a), vec2<i32>(-33073i, global0.a)), select(global3[_wgslsmith_index_u32(u_input.a.x, 20u)], global3[_wgslsmith_index_u32(u_input.a.x, 20u)], false)), u_input.a.x, -2147483647i).c.wy);
    global2 = array<vec3<bool>, 12>();
    global1 = array<f32, 14>();
    var var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(select(u_input.a, u_input.a, func_1(u_input.a.yww, -vec2<i32>(var_0.a, 21870i), Struct_3(-2147483647i, vec2<bool>(true, true))).c), ~(~u_input.a ^ u_input.a), vec4<u32>(~1u, abs(88276u >> (u_input.a.x % 32u)), u_input.a.x, 3594u)), u_input.a, u_input.a);
    var var_2 = ~22233u;
    global3 = array<vec2<bool>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zxz);
}

