struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(true, false, false), 220f);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 27>;

var<private> global3: array<vec2<u32>, 11>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool) -> u32 {
    var var_0 = global1.a;
    var_0 = _wgslsmith_div_i32(_wgslsmith_mult_i32(~u_input.a.x, u_input.a.x), u_input.a.x);
    var_0 = global1.a;
    var var_1 = countOneBits(~vec4<u32>(abs(0u), global1.c, _wgslsmith_clamp_u32(global1.c, global1.c, 0u), firstTrailingBit(53119u)) ^ reverseBits(_wgslsmith_sub_vec4_u32(~vec4<u32>(1314u, 0u, global1.c, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global1.c, 11103u, 1u), vec4<u32>(35382u, global1.c, global1.c, global1.c)))));
    global1 = Struct_1(u_input.a.x, select(select(select(select(vec2<bool>(global0.a.x, global1.b.x), vec2<bool>(false, true), global0.a.yy), select(vec2<bool>(global1.b.x, false), vec2<bool>(true, false), vec2<bool>(arg_0, global0.a.x)), global0.a.xx), select(!global1.b, !global1.b, vec2<bool>(global1.b.x, global0.a.x)), (15552u >= global1.c) || global0.a.x), global0.a.xz, arg_0), global1.c);
    return var_1.x & global1.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_div_vec4_i32(~countOneBits(-_wgslsmith_mod_vec4_i32(vec4<i32>(global1.a, global1.a, 37301i, u_input.a.x), vec4<i32>(global1.a, 0i, -1i, global1.a))), -_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, reverseBits(global1.a), min(0i, 24535i), ~32770i), ~(~vec4<i32>(15389i, -1i, -14910i, global1.a))));
    let var_1 = vec2<bool>(any(global0.a), all(vec3<bool>(true, global1.b.x, all(vec3<bool>(global0.a.x, false, false)))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 333f, 962f) * vec3<f32>(arg_1.b, 133f, 1466f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, global0.b, -1313f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-233f, 257f, 1395f) - vec3<f32>(arg_1.b, -1656f, -1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-368f, 337f), 540f, -489f), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 1000f, 468f)), vec3<f32>(-315f, arg_1.b, arg_1.b))))));
    global1 = Struct_1(global1.a, vec2<bool>(global1.c < global1.c, var_1.x), _wgslsmith_clamp_u32(func_3(!all(vec4<bool>(false, global1.b.x, var_1.x, global1.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 0u, 13739u), ~global1.c, ~global1.c, 40396u | global1.c), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.c, global1.c, 1u, 0u), vec4<u32>(global1.c, global1.c, global1.c, global1.c)))), _wgslsmith_add_u32(global1.c, 32225u) & global1.c));
    return ~_wgslsmith_clamp_u32(func_3(global0.a.x), func_3(var_2.x != _wgslsmith_f_op_f32(global0.b - arg_1.b)), global1.c);
}

fn func_1(arg_0: u32) -> bool {
    var var_0 = global1.c;
    let var_1 = 40442u < func_2(vec3<bool>(false, true, global0.a.x), Struct_2(vec3<bool>(true, true, all(global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -565f)));
    var var_2 = Struct_1(global1.a, vec2<bool>((18729i >> (~arg_0 % 32u)) != (i32(-1i) * -global1.a), false), ~arg_0 ^ arg_0);
    var var_3 = global1.b;
    global0 = global2[_wgslsmith_index_u32(~(~(0u | global1.c)), 27u)];
    return all(select(select(vec4<bool>(arg_0 < var_2.c, true, any(vec4<bool>(global1.b.x, global1.b.x, true, var_3.x)), 659f >= global0.b), select(select(vec4<bool>(var_1, var_2.b.x, false, var_3.x), vec4<bool>(var_3.x, var_1, true, false), false), !vec4<bool>(var_2.b.x, true, var_1, global0.a.x), vec4<bool>(var_2.b.x, true, global0.a.x, var_1)), _wgslsmith_f_op_f32(round(431f)) != _wgslsmith_f_op_f32(max(-1040f, global0.b))), !vec4<bool>(!var_2.b.x, !var_2.b.x, true, true), _wgslsmith_f_op_f32(ceil(global0.b)) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(global0.b, global0.b, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 27>();
    var var_0 = Struct_2(!vec3<bool>(func_1(select(0u, global1.c, global0.a.x)), true, all(global0.a) & !global0.a.x), _wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(-1996f - _wgslsmith_div_f32(-102f, _wgslsmith_f_op_f32(sign(global0.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_dot_vec2_i32(u_input.a ^ u_input.a, firstLeadingBit(vec2<i32>(1i, 1i)))));
}

