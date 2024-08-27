struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<i32>(0i, -1i, -1i, 2147483647i), -212f, vec2<u32>(38740u, 72132u)), Struct_1(vec4<i32>(-1i, 2147483647i, 10441i, -14999i), 1141f, vec2<u32>(118147u, 0u)));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32) -> f32 {
    var var_0 = ~(u_input.d.yyx << (~abs(select(u_input.d.xzy, vec3<u32>(4294967295u, 26354u, 48799u), false)) % vec3<u32>(32u)));
    let var_1 = -u_input.a;
    var var_2 = vec2<f32>(-478f, 570f);
    let var_3 = (-2426i << (countOneBits(~(14111u >> (var_0.x % 32u))) % 32u)) & -(_wgslsmith_add_i32(~var_1, i32(-1i) * -22612i) << (~u_input.e % 32u));
    let var_4 = var_0.x >> (4294967295u % 32u);
    return 732f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> vec3<bool> {
    var var_0 = vec4<i32>(40164i, select(abs(min(firstLeadingBit(-2147483647i), u_input.a >> (arg_1 % 32u))), ~u_input.a, any(vec3<bool>(true, true, true))), 94447i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, u_input.a), -_wgslsmith_mult_i32(firstTrailingBit(arg_2), 1i)));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -406f))))) != -2809f;
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1922f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(178f + -1122f))) - 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(func_3(-285f))))));
    var var_3 = var_0.wxy;
    var_3 = var_0.wyw;
    return !vec3<bool>(all(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(360f)) * _wgslsmith_f_op_f32(-1000f * 622f)) != _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(747f * 798f))), true);
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    let var_0 = select(!func_2(arg_2.c.x, ~select(4294967295u, u_input.b, true), u_input.a), vec3<bool>(func_2(~26510u, _wgslsmith_sub_u32(4294967295u, 2866u) | _wgslsmith_sub_u32(arg_1, arg_2.c.x), u_input.a).x, false, !(!(arg_2.b == arg_2.b))), vec3<bool>(-3676f >= arg_2.b, !select(false, false, true), true));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b + -167f) * _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(arg_2.b + arg_2.b)))), arg_2.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(289f, arg_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -1565f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(arg_2.b, arg_2.b), _wgslsmith_f_op_f32(-arg_2.b), any(var_0.xy))), all(!vec2<bool>(true, var_0.x))))));
    global0 = array<Struct_1, 2>();
    var var_2 = vec4<i32>(_wgslsmith_mult_i32(~u_input.a, u_input.a), ~(-2147483647i), -30413i, -abs(_wgslsmith_dot_vec2_i32(-arg_2.a.xx, min(vec2<i32>(arg_2.a.x, arg_2.a.x), vec2<i32>(arg_2.a.x, 0i)))));
    var var_3 = u_input.d.x;
    return min(abs(-countOneBits(arg_2.a)), ~vec4<i32>(~(arg_2.a.x << (arg_1 % 32u)), 1i, ~(-11272i) ^ ~arg_0, reverseBits(~0i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(u_input.d.x) | 1u, 2u)];
    var var_1 = var_0.a.xx;
    let var_2 = Struct_2(_wgslsmith_mult_vec4_i32(-abs(func_1(-2147483647i, var_0.c.x, global0[_wgslsmith_index_u32(var_0.c.x, 2u)], 1i)), _wgslsmith_sub_vec4_i32(var_0.a, _wgslsmith_mod_vec4_i32(var_0.a, var_0.a)) & vec4<i32>(u_input.a & -17750i, u_input.a ^ u_input.a, _wgslsmith_add_i32(-43919i, var_1.x), var_1.x)), abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(84455u, 94724u, var_0.c.x), vec3<u32>(1u, 9260u, u_input.d.x))) >> (((~var_0.c.x & min(4294967295u, 0u)) | u_input.b) % 32u), Struct_1(var_0.a, var_0.b, ~(~u_input.c.xy >> (var_0.c % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(67200u, 2u)], !(var_0.b < var_0.b));
    var var_3 = Struct_3(select(all(func_2(var_0.c.x, ~4294967295u, -11362i).yy), true, var_2.e));
    var var_4 = vec3<bool>(true, false, !all(!(!vec2<bool>(var_3.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(_wgslsmith_sub_vec4_u32(u_input.c, ~vec4<u32>(u_input.b, 18215u, 0u, var_0.c.x))), vec4<u32>(4294967295u, ~(~(~14351u)), countOneBits(firstLeadingBit(firstTrailingBit(var_0.c.x))), countOneBits(u_input.d.x)));
}

