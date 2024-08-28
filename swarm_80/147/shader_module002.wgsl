struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_2,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<bool, 14>;

var<private> global2: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec3<u32>(64785u, 4563u, 1u), true, -1831f, vec2<u32>(0u, 28509u)), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), false, -1345f, vec2<u32>(1u, 16688u)), Struct_1(vec3<u32>(154735u, 29401u, 1554u), true, -693f, vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(13012u, 0u, 94921u), false, -333f, vec2<u32>(4294967295u, 0u)), Struct_1(vec3<u32>(43019u, 0u, 62632u), true, 589f, vec2<u32>(35684u, 0u)), Struct_1(vec3<u32>(7725u, 123138u, 4294967295u), false, -366f, vec2<u32>(1u, 4294967295u)), Struct_1(vec3<u32>(0u, 71627u, 1u), false, 454f, vec2<u32>(1u, 1u)), Struct_1(vec3<u32>(29301u, 4294967295u, 4294967295u), false, -1208f, vec2<u32>(4294967295u, 75117u)), Struct_1(vec3<u32>(45099u, 16438u, 4294967295u), false, -313f, vec2<u32>(0u, 4294967295u)), Struct_1(vec3<u32>(1u, 32119u, 0u), true, 1077f, vec2<u32>(1u, 3126u)), Struct_1(vec3<u32>(1u, 1u, 52185u), true, 452f, vec2<u32>(5587u, 35798u)), Struct_1(vec3<u32>(61950u, 0u, 9388u), false, 355f, vec2<u32>(81265u, 68132u)));

var<private> global3: vec3<u32> = vec3<u32>(22287u, 4294967295u, 86947u);

var<private> global4: array<bool, 26>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    global2 = array<Struct_1, 12>();
    global3 = countOneBits(vec3<u32>(~global3.x, ~abs(1u), global3.x >> ((global3.x & 1u) % 32u)) | vec3<u32>(min(global3.x, 0u & global3.x), 13040u, ~global3.x & global3.x));
    global1 = array<bool, 14>();
    let var_0 = ~_wgslsmith_mod_u32(~min(_wgslsmith_mod_u32(global3.x, 23577u), 0u), 1u);
    global4 = array<bool, 26>();
    return vec4<bool>(all(vec3<bool>(true, true, true)), any(vec3<bool>(global1[_wgslsmith_index_u32(~var_0, 14u)] & all(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(global3.x, 14u)])), global4[_wgslsmith_index_u32(1u, 26u)] | global4[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(0u, 14u)] | all(vec4<bool>(true, global4[_wgslsmith_index_u32(14117u, 26u)], true, global4[_wgslsmith_index_u32(var_0, 26u)])))), (_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-793f * -1433f), -794f, global4[_wgslsmith_index_u32(18406u, 26u)])) <= -1018f) | (!global4[_wgslsmith_index_u32(0u, 26u)] != any(vec4<bool>(true, false, true, true))), global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(reverseBits(var_0 << (1u % 32u)), _wgslsmith_dot_vec2_u32(global3.yy, firstLeadingBit(global3.zx)), reverseBits(global3.x)), 14u)]);
}

fn func_2(arg_0: f32, arg_1: vec2<i32>) -> u32 {
    var var_0 = (false & all(select(func_3(), vec4<bool>(false, global4[_wgslsmith_index_u32(73684u, 26u)], false, true), false))) || false;
    let var_1 = firstTrailingBit(~_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(global3.yx, global3.zx, ~vec2<u32>(54330u, global3.x)), global3.yx));
    global4 = array<bool, 26>();
    let var_2 = Struct_4(Struct_2(global4[_wgslsmith_index_u32(firstLeadingBit(19550u), 26u)], vec4<u32>(var_1.x, ~82283u | (var_1.x >> (79733u % 32u)), _wgslsmith_mod_u32(_wgslsmith_mult_u32(global3.x, global3.x), ~1u), ~37993u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) + _wgslsmith_f_op_f32(f32(-1f) * -608f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(680f, arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-497f * 1236f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(831f - arg_0), arg_0, _wgslsmith_f_op_f32(select(arg_0, arg_0, false))))), max(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.x, var_1.x), countOneBits(vec2<u32>(0u, var_1.x))), var_1 | firstLeadingBit(global3.yy)) | vec2<u32>(~(4294967295u | global3.x), 1u), Struct_2(false, vec4<u32>(4294967295u, countOneBits(firstTrailingBit(var_1.x)), 4294967295u, _wgslsmith_mult_u32(1u, 58314u)), global1[_wgslsmith_index_u32((global3.x & (global3.x >> (1u % 32u))) | ~1u, 14u)]));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1422f))), 2179f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-415f * 1701f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(830f, arg_0, global1[_wgslsmith_index_u32(1u, 14u)])))))));
    return ~21957u;
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    let var_0 = Struct_5(arg_1, global2[_wgslsmith_index_u32(~(~func_2(_wgslsmith_f_op_f32(sign(arg_0)), u_input.d.zx)), 12u)]);
    let var_1 = countOneBits(vec3<u32>(select(~19469u, (0u << (var_0.a % 32u)) << ((var_0.a | arg_1) % 32u), !var_0.b.b), _wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, global3.x), arg_1), _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(min(global3.xx, global3.zz), global3.zy), vec2<u32>(global3.x, global3.x))));
    var var_2 = vec3<bool>(1u > firstTrailingBit(~global3.x >> ((arg_1 >> (var_1.x % 32u)) % 32u)), any(vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 14u)], !(!global1[_wgslsmith_index_u32(arg_1, 14u)]), (var_1.x >= var_1.x) && true, global4[_wgslsmith_index_u32((48021u << (arg_1 % 32u)) >> (16581u % 32u), 26u)])), true & global4[_wgslsmith_index_u32(2906u, 26u)]);
    let var_3 = Struct_4(Struct_2(!var_0.b.b || global1[_wgslsmith_index_u32(arg_1, 14u)], vec4<u32>(~_wgslsmith_div_u32(var_1.x, var_1.x), 4294967295u, select(var_0.b.a.x, 9970u >> (arg_1 % 32u), !var_0.b.b), _wgslsmith_add_u32(var_0.b.a.x ^ 64008u, arg_1)), all(select(select(vec3<bool>(false, false, var_0.b.b), vec3<bool>(global4[_wgslsmith_index_u32(1u, 26u)], global1[_wgslsmith_index_u32(0u, 14u)], false), var_0.b.b), vec3<bool>(global1[_wgslsmith_index_u32(global3.x, 14u)], global1[_wgslsmith_index_u32(arg_1, 14u)], false), func_3().x))), vec3<f32>(-522f, 213f, -1446f), var_1.xz, Struct_2(true, vec4<u32>(arg_1 | 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(4172u, var_0.a, arg_1), var_0.b.a), var_1.x, ~24265u >> ((var_1.x ^ 57921u) % 32u)), true));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    global3 = ~(~vec3<u32>(global3.x, _wgslsmith_add_u32(29655u, max(63096u, 18526u)), _wgslsmith_mult_u32(global3.x ^ 35349u, global3.x)));
    global3 = ~vec3<u32>(_wgslsmith_clamp_u32(global3.x, global3.x << (~global3.x % 32u), 2860u), max((global3.x & 0u) >> (func_1(2125f, 0u) % 32u), _wgslsmith_sub_u32(global3.x, ~20491u)), global3.x);
    let var_1 = 649f;
    var var_2 = all(!vec2<bool>(var_1 <= -1570f, false & global1[_wgslsmith_index_u32(global3.x, 14u)])) && any(vec2<bool>(true, true));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1342f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 691f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, _wgslsmith_f_op_f32(ceil(-394f)), _wgslsmith_div_f32(-657f, -104f))))), true));
    global4 = array<bool, 26>();
    global4 = array<bool, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d);
}

