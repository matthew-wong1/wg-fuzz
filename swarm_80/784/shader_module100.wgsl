struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -20287i;

var<private> global1: vec4<bool>;

var<private> global2: vec4<i32>;

var<private> global3: vec2<f32> = vec2<f32>(1000f, 158f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    global0 = select(_wgslsmith_add_i32(u_input.a, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a), global2.zw >> (vec2<u32>(40347u, 64277u) % vec2<u32>(32u)))), _wgslsmith_mod_i32(~u_input.a, 0i), true);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.x)) - 1000f) * -1259f));
    var var_1 = vec3<u32>(1u, countOneBits(_wgslsmith_mod_u32(58393u, ~0u)), _wgslsmith_sub_u32(_wgslsmith_add_u32(6859u, 52442u), select(1u, 1u, true)) ^ 1u) ^ max(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(1u, 1u, 1u)), vec3<u32>(~0u, 8804u, _wgslsmith_mult_u32(37881u, 47684u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, 4294967295u, 10657u), _wgslsmith_clamp_vec3_u32(vec3<u32>(116113u, 4294967295u, 0u), vec3<u32>(10120u, 1u, 0u), vec3<u32>(0u, 0u, 0u)), vec3<u32>(1u, 1u, 1u))), vec3<u32>(0u, ~1u, firstLeadingBit(~820u)));
    let var_2 = -_wgslsmith_mult_vec3_i32(abs(-(~vec3<i32>(-2147483647i, 34021i, 1i))), reverseBits(vec3<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global2.x, global2.x, u_input.a), vec4<i32>(global2.x, u_input.a, global2.x, global2.x)), -1i)));
    var_1 = ~abs(reverseBits(vec3<u32>(1u, 67460u, _wgslsmith_sub_u32(1u, 1u))));
    return ~(-global2.x);
}

fn func_2() -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_i32(0i, func_3()) >> (4294967295u % 32u));
    let var_1 = global1.x;
    let var_2 = min(abs(0u), 4294967295u) << (max(firstTrailingBit(~countOneBits(1u)), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 19553u, 0u), vec4<u32>(0u, 2329u, 47179u, 21499u)) ^ reverseBits(4294967295u))) % 32u);
    var var_3 = Struct_1(-_wgslsmith_mod_i32(max(0i, ~u_input.a), ~countOneBits(-1i)));
    global1 = vec4<bool>(!(!global1.x), global1.x, true || global1.x, global1.x);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, global3.x, global3.x, -2878f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.x, global3.x, 295f, global3.x), vec4<f32>(global3.x, 530f, 131f, 406f)))))))));
}

fn func_1(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())), vec4<f32>(803f, global3.x, -1488f, 1553f)) + arg_0);
    let var_1 = global1.ww;
    global2 = -(_wgslsmith_mult_vec4_i32(~vec4<i32>(-38492i, global2.x, global2.x, global2.x) & _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, global2.x), vec4<i32>(global2.x, global2.x, 7170i, global2.x)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-5377i, -11750i, u_input.a, global2.x), vec4<i32>(2147483647i, u_input.a, u_input.a, 1i)), vec4<i32>(u_input.a, u_input.a, global2.x, -50927i))) << (vec4<u32>(~(~4294967295u), countOneBits(0u), select(19876u, _wgslsmith_dot_vec2_u32(vec2<u32>(28342u, 19682u), vec2<u32>(50838u, 25035u)), false), 1u) % vec4<u32>(32u)));
    let var_2 = global2.yxx;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 216f, -1165f, 895f);
    return select(vec4<bool>(true, !global1.x || true, !global1.x, false), !vec4<bool>(select(false, any(global1.zx), var_1.x), !global1.x, _wgslsmith_mod_i32(-1i, -1i) <= abs(global2.x), all(!vec2<bool>(true, var_1.x))), !vec4<bool>(any(global1.wx), var_1.x, var_1.x, _wgslsmith_f_op_f32(-global3.x) > _wgslsmith_f_op_f32(var_0.x * global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 846f, 343f, global3.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(ceil(global3.x)), _wgslsmith_f_op_f32(f32(-1f) * -954f), 757f) * vec4<f32>(-815f, _wgslsmith_f_op_f32(global3.x - 844f), global3.x, global3.x))));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(993f))) - global3.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_2()).x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3.x + -1077f))), _wgslsmith_f_op_f32(-global3.x)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -919f) - var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + global3.x), 350f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstTrailingBit(_wgslsmith_sub_i32(u_input.a ^ u_input.a, ~1i)), ~_wgslsmith_mult_i32(6807i, 9171i)), vec2<i32>(-32249i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(-35592i, -17453i), -global2.zw, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global2.x), global2.zw, global2.ww)), firstLeadingBit(global2.xx))), _wgslsmith_div_f32(969f, 609f), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(29062u, 46086u, 0u, 9815u), vec4<u32>(0u, 4294967295u, 66740u, 21795u), global1.x), vec4<u32>(1u, 1u, 1u, 1u)) | vec4<u32>(1u, 1u, 1u, 1u)));
}

