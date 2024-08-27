struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 26>;

var<private> global1: array<bool, 20> = array<bool, 20>(false, true, false, false, true, true, false, true, true, false, false, true, true, false, false, false, false, true, true, true);

var<private> global2: u32 = 47639u;

var<private> global3: vec4<u32>;

var<private> global4: vec3<i32> = vec3<i32>(-1i, 31749i, -1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    let var_0 = arg_2;
    var var_1 = vec3<f32>(-1980f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-300f)), -351f, arg_0.a)), arg_0.b), _wgslsmith_f_op_f32(min(1442f, _wgslsmith_f_op_f32(f32(-1f) * -943f))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.yy)));
    let var_3 = global3.x;
    global2 = 4294967295u;
    return select(true, true, !(u_input.a.x <= ~1u));
}

fn func_2(arg_0: u32) -> u32 {
    let var_0 = Struct_1(!(func_3(Struct_1(false, 964f), _wgslsmith_f_op_f32(f32(-1f) * -810f), Struct_1(global1[_wgslsmith_index_u32(arg_0, 20u)], 817f)) || global1[_wgslsmith_index_u32(firstLeadingBit(~1u), 20u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(165f - 432f), _wgslsmith_f_op_f32(1000f * 686f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(353f - 111f), _wgslsmith_f_op_f32(f32(-1f) * -1069f)))) * -355f));
    global4 = vec3<i32>((i32(-1i) * -44335i) ^ _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 8649i, 11230i), vec4<i32>(-1i, u_input.d.x, 0i, u_input.d.x)), firstTrailingBit(select(vec4<i32>(u_input.d.x, global4.x, u_input.b, 2147483647i), vec4<i32>(u_input.b, 19896i, -2147483647i, global4.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], true, global1[_wgslsmith_index_u32(arg_0, 20u)], true)))), max(63702i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-1i, -15866i, global4.x), -41315i) ^ -36249i), -u_input.b);
    global3 = ~_wgslsmith_sub_vec4_u32(u_input.a, _wgslsmith_sub_vec4_u32(~abs(u_input.a), ~(~u_input.a)));
    var var_1 = _wgslsmith_sub_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.b, 2147483647i, 29930i, u_input.d.x), vec4<i32>(firstLeadingBit(-30747i), global4.x << (31805u % 32u), -global4.x, u_input.b)), global4.x);
    let var_2 = vec3<u32>(1u, ~(~global0[_wgslsmith_index_u32(u_input.a.x, 26u)] >> ((1u >> (firstTrailingBit(18450u) % 32u)) % 32u)), ~34667u);
    return 0u;
}

fn func_1() -> bool {
    var var_0 = -(~global4.x);
    global1 = array<bool, 20>();
    global3 = countOneBits(~vec4<u32>(u_input.a.x, u_input.c, ~43591u ^ func_2(0u), 91519u));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstLeadingBit(~(_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.c, 26u)], global0[_wgslsmith_index_u32(22882u, 26u)]), vec2<u32>(global0[_wgslsmith_index_u32(1u, 26u)], global0[_wgslsmith_index_u32(4662u, 26u)])) ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 983u, u_input.c, 16185u), u_input.a), 26u)])), 26u)], 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(222f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(1177f, -581f)), -780f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.zw, global3.yx), 20u)]))))));
    let var_2 = Struct_1(true, var_1.b);
    return select(!(!select(global1[_wgslsmith_index_u32(global3.x & global3.x, 20u)], 357f >= var_2.b, false)), global1[_wgslsmith_index_u32(~8878u, 20u)], (-u_input.d.x != -2147483647i) || select(true && all(vec2<bool>(true, var_1.a)), firstLeadingBit(u_input.b) != 64251i, !(global4.x <= -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.a.x);
    var var_1 = !(!select(vec3<bool>(any(vec2<bool>(false, global1[_wgslsmith_index_u32(14188u, 20u)])), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(15233u, 26u)], var_0), 20u)], func_1()), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23886u, 26u)], 20u)]), false), !vec3<bool>(global1[_wgslsmith_index_u32(34783u, 20u)], false, false)));
    var var_2 = u_input.a.wx;
    global0 = array<u32, 26>();
    global2 = 1u;
    let var_3 = ~firstTrailingBit(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(global3.wzx, abs(u_input.a.zyz)), global3.xwy));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-409f, -1000f, -564f, 247f), vec4<f32>(600f, 846f, -1615f, -294f)))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(586f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -593f), _wgslsmith_f_op_f32(round(1030f))))), _wgslsmith_f_op_f32(ceil(-2336f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(160f, -717f)) - -2008f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), -1200f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1070f - -473f))))))), 272f);
}

