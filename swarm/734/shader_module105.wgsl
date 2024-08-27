struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: i32,
    d: vec4<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15> = array<u32, 15>(1u, 76104u, 1u, 67177u, 71993u, 0u, 38915u, 4294967295u, 33688u, 27176u, 29992u, 21264u, 4294967295u, 77534u, 37688u);

var<private> global1: Struct_3;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1676f, 354f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-697f, -1000f)) + -799f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-843f * _wgslsmith_f_op_f32(181f + -977f)) + -1327f), 1319f, -339f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -312f, -719f, 1508f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -282f, -452f, -309f) - vec4<f32>(-517f, 1094f, -527f, 1000f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-164f, 1305f, 771f, 527f) + vec4<f32>(-1000f, 2209f, 1000f, -400f))))), !select(vec4<bool>(true, true, true, all(vec2<bool>(true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, true, true))));
    var var_1 = countOneBits(vec3<u32>(~global0[_wgslsmith_index_u32(~global1.e.a.a.x, 15u)], global1.e.a.a.x, global0[_wgslsmith_index_u32(global1.d.x ^ global0[_wgslsmith_index_u32(min(global1.a.x, u_input.c.x), 15u)], 15u)])) | vec3<u32>(~global1.e.a.a.x, abs(4294967295u), 1685u);
    var_1 = global1.e.a.a.yyz;
    return u_input.b.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global0 = array<u32, 15>();
    global1 = Struct_3(firstLeadingBit(~abs(_wgslsmith_mult_vec4_u32(global1.a, u_input.a))), arg_3, reverseBits(-(min(global1.c, u_input.e.x) << (~0u % 32u))), firstLeadingBit(_wgslsmith_sub_vec4_u32(firstTrailingBit(~vec4<u32>(arg_3.a.a.x, 4032u, 0u, 0u)), ~global1.e.a.a)), arg_3);
    global1 = Struct_3(arg_3.a.a, Struct_2(global1.e.a), abs(_wgslsmith_mod_i32(func_3(), ~countOneBits(u_input.b.x))), ~_wgslsmith_div_vec4_u32(u_input.a, ~arg_3.a.a | countOneBits(vec4<u32>(0u, u_input.a.x, 1u, 703u))), arg_3);
    global1 = Struct_3(~(~vec4<u32>(0u, ~15193u, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, arg_2.a.x), 15u)], 41613u)), arg_3, arg_0.x, u_input.a, arg_3);
    var var_0 = arg_3.a;
    return Struct_3(select(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 4294967295u, u_input.d, 4294967295u) & arg_3.a.a, ~u_input.a)), vec4<u32>(~arg_3.a.a.x ^ _wgslsmith_dot_vec2_u32(global1.a.zw, arg_2.a.xw), abs(32917u), 49413u, arg_3.a.a.x), any(!vec2<bool>(arg_1, true))), global1.b, -abs(global1.c), _wgslsmith_mod_vec4_u32(arg_3.a.a, select(u_input.a, vec4<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(u_input.c.x), 15u)], global1.e.a.a.x, 14472u << (1u % 32u), global0[_wgslsmith_index_u32(1u, 15u)]), false)), global1.e);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool) -> Struct_3 {
    let var_0 = func_2(u_input.b.zyw, arg_1, global1.e.a, Struct_2(Struct_1(min(u_input.a, ~vec4<u32>(0u, global0[_wgslsmith_index_u32(1u, 15u)], u_input.d, 60054u)))));
    global1 = var_0;
    global0 = array<u32, 15>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(max(-1445f, _wgslsmith_f_op_f32(trunc(arg_0.x)))), arg_0.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(arg_0.x * -677f), -1000f, _wgslsmith_f_op_f32(step(794f, arg_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -1000f, 700f) * vec3<f32>(arg_0.x, 752f, arg_0.x)))))));
    let var_2 = Struct_1(var_0.a & _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(global1.e.a.a, vec4<u32>(4294967295u, 33795u, global1.b.a.a.x, global0[_wgslsmith_index_u32(74279u, 15u)])), min(vec4<u32>(4294967295u, 38871u, global0[_wgslsmith_index_u32(var_0.b.a.a.x, 15u)], 0u), vec4<u32>(global1.d.x, var_0.e.a.a.x, 1u, global1.e.a.a.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.c.x, global1.d.x, 90102u, 58831u), abs(global1.a))));
    return Struct_3(vec4<u32>(12793u, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d, 15673u) & ~var_0.d.x, _wgslsmith_dot_vec3_u32(var_2.a.zwz, ~vec3<u32>(37041u, 1u, 4294967295u))), ~global1.a.x >> (max(global1.b.a.a.x, 0u) % 32u), min(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.a.a.x, var_2.a.x, 40757u, global1.d.x), vec4<u32>(global0[_wgslsmith_index_u32(13615u, 15u)], 21634u, 0u, 22239u))), ~u_input.c.x | ~0u)), global1.b, u_input.e.x, global1.e.a.a, var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    var var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1457f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1591f - 1000f))))), false && (u_input.e.x > _wgslsmith_dot_vec2_i32(vec2<i32>(12571i, global1.c), firstLeadingBit(vec2<i32>(-2147483647i, 16846i)))));
    var var_1 = Struct_2(func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-983f, -3549f) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(361f, 101f))))), true).b.a);
    var var_2 = true;
    let var_3 = select(~vec2<u32>(~(~var_0.d.x), firstLeadingBit(var_0.d.x) << (func_1(vec2<f32>(1252f, 250f), true).e.a.a.x % 32u)), max(~vec2<u32>(1u, _wgslsmith_mod_u32(global1.e.a.a.x, 4294967295u)), var_0.d.zw), vec2<bool>(true, false));
    global0 = array<u32, 15>();
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -315f);
    let var_5 = vec3<i32>(select(abs(_wgslsmith_add_i32(firstTrailingBit(1i), var_0.c)), func_3(), true), global1.c, -abs(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(78911u);
}

