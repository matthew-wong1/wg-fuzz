struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec2<f32>,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(52040u, vec3<bool>(true, true, false), -4211i, vec4<i32>(29945i, -68791i, 0i, -45621i));

var<private> global1: vec3<bool>;

var<private> global2: array<i32, 25>;

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = Struct_1(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a), global0.a), vec3<bool>(true, arg_0.b.b.x, _wgslsmith_add_u32(_wgslsmith_add_u32(1u, 68890u), ~global0.a) < _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 49792u, global0.a), ~vec3<u32>(0u, 1u, 20820u))), global3.d.x, select(vec4<i32>(-18560i, -2147483647i, _wgslsmith_div_i32(abs(global0.c), ~(-1i)), global2[_wgslsmith_index_u32(~75062u, 25u)]), arg_0.c.d, vec4<bool>(-188f > _wgslsmith_f_op_f32(abs(arg_3.x)), any(global1.zy), all(!arg_1), false)));
    global2 = array<i32, 25>();
    let var_1 = -1000f;
    return vec4<i32>(abs(-_wgslsmith_clamp_i32(u_input.e << (4294967295u % 32u), u_input.b >> (var_0.a % 32u), abs(-4569i))), select(arg_2.x, ~(~var_0.d.x), select(var_1 >= 289f, true, true) || select(any(vec3<bool>(false, true, true)), all(var_0.b), global3.b.x)), reverseBits(-63878i) & _wgslsmith_div_i32(select(firstTrailingBit(6551i), 2147483647i, true), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-1i, -2147483647i, -1i, -38199i)), global0.d)), i32(-1i) * -_wgslsmith_sub_i32(firstTrailingBit(global0.c), i32(-1i) * -1i));
}

fn func_2(arg_0: u32, arg_1: Struct_4, arg_2: vec3<f32>) -> Struct_3 {
    global0 = Struct_1(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(~78294u, 27125u, 48485u, ~68486u)), ~arg_1.b), vec3<bool>(select(global3.b.x || (-18868i >= u_input.b), !any(vec3<bool>(true, true, global1.x)), !arg_1.d), arg_1.d, true), _wgslsmith_dot_vec4_i32(global3.d << (abs(_wgslsmith_clamp_vec4_u32(arg_1.b, arg_1.b, vec4<u32>(u_input.a, 14306u, u_input.a, arg_0))) % vec4<u32>(32u)), abs(~_wgslsmith_mod_vec4_i32(vec4<i32>(global3.d.x, -21523i, global3.d.x, -2147483647i), vec4<i32>(global0.d.x, global2[_wgslsmith_index_u32(arg_0, 25u)], global0.d.x, u_input.e)))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.b, 2147483647i, global0.c) | abs(vec4<i32>(global3.c, global3.d.x, 0i, -6313i)), -(global3.d & vec4<i32>(33037i, 33488i, 0i, 1i))), -(~2147483647i) ^ _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(0u, 25u)], _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, global2[_wgslsmith_index_u32(global0.a, 25u)], -2147483647i, global3.c), vec4<i32>(25418i, global3.d.x, global2[_wgslsmith_index_u32(4294967295u, 25u)], global0.c)), _wgslsmith_div_i32(0i, -11498i)), select(global3.d.x, ~_wgslsmith_sub_i32(0i, global3.c), all(select(vec3<bool>(global0.b.x, global1.x, global1.x), vec3<bool>(arg_1.d, false, global3.b.x), vec3<bool>(global1.x, global1.x, true)))), -2147483647i));
    global0 = Struct_1(arg_1.b.x, global3.b, 2147483647i, ~(-func_3(Struct_2(vec2<u32>(global0.a, arg_1.b.x), Struct_1(arg_0, vec3<bool>(false, false, arg_1.d), -1i, global3.d), Struct_1(4294967295u, vec3<bool>(global0.b.x, global0.b.x, arg_1.d), global3.c, vec4<i32>(global2[_wgslsmith_index_u32(4294967295u, 25u)], global0.d.x, 4277i, global3.d.x)), u_input.a, Struct_1(22928u, vec3<bool>(global3.b.x, global3.b.x, global3.b.x), -13229i, global3.d)), vec3<bool>(false, arg_1.d, false), global0.d.wx, arg_1.a) << (max(arg_1.b, abs(vec4<u32>(u_input.d, arg_0, global0.a, global3.a))) % vec4<u32>(32u))));
    global2 = array<i32, 25>();
    global0 = Struct_1(1u, vec3<bool>(all(vec3<bool>(any(vec4<bool>(false, global0.b.x, false, true)), true, true)), select(firstTrailingBit(13225u) == ~u_input.d, select(true, arg_2.x > arg_1.a.x, true), false), !all(vec3<bool>(global0.b.x, global0.b.x, false))), abs(_wgslsmith_mod_i32(-(global3.c & 52952i), 2147483647i)), abs(abs(-vec4<i32>(45757i, global0.d.x, 0i, 70954i))));
    let var_0 = -(~_wgslsmith_add_i32(28331i, global2[_wgslsmith_index_u32(arg_1.e, 25u)]) << ((_wgslsmith_dot_vec4_u32(arg_1.b, arg_1.b) | ~4294967295u) % 32u)) >> (_wgslsmith_mult_u32(0u, arg_1.e) % 32u);
    return Struct_3(firstLeadingBit(vec2<u32>(~select(1u, global0.a, arg_1.d), arg_0)));
}

fn func_1(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.a) - arg_0.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1327f), arg_1.a.x, arg_1.c.x, _wgslsmith_f_op_f32(sign(arg_1.a.x)))), arg_1.a), !(1i == -global2[_wgslsmith_index_u32(53957u, 25u)])));
    let var_1 = func_2(u_input.d, arg_1, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.c.x, _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(round(-566f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.a.x)) * _wgslsmith_f_op_f32(-155f * 1002f))))));
    let var_2 = _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_1.e, arg_0.e), 25u)], max(global3.d.x, 0i));
    let var_3 = -28011i;
    let var_4 = var_0.x;
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_1(Struct_4(vec4<f32>(-921f, -1250f, -615f, 1670f), vec4<u32>(0u, 23169u, global3.a, 44910u), vec2<f32>(-793f, 1189f), true, global0.a), Struct_4(vec4<f32>(2382f, 809f, 1950f, -157f), vec4<u32>(u_input.d, global0.a, 25738u, 53910u), vec2<f32>(-382f, 1518f), global1.x, global0.a), global0.d.xyw, u_input.a)), _wgslsmith_f_op_f32(-962f + 2637f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-1181f, 189f)), _wgslsmith_f_op_f32(f32(-1f) * -1150f)))))));
    let var_1 = 66410u;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_2(vec2<u32>(max(4294967295u, 83701u), 14529u), Struct_1(abs(global3.a), select(global3.b, vec3<bool>(global1.x, false, global1.x), true), ~global0.d.x, min(global3.d, vec4<i32>(-2147483647i, global3.c, global3.d.x, global0.c))), Struct_1(var_1, global3.b, ~global2[_wgslsmith_index_u32(var_1, 25u)], vec4<i32>(u_input.c, global3.d.x, global0.d.x, -30259i)), (22756u >> (global0.a % 32u)) >> (_wgslsmith_sub_u32(93118u, 10008u) % 32u), Struct_1(global3.a << (13433u % 32u), select(vec3<bool>(global1.x, true, true), vec3<bool>(true, true, true), global3.b.x), _wgslsmith_dot_vec2_i32(vec2<i32>(global3.d.x, -23398i), global3.d.zx), -global0.d)), global0.b, ~_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 12198i), reverseBits(global0.d.zx), vec2<i32>(-2147483647i, global2[_wgslsmith_index_u32(4294967295u, 25u)]) | vec2<i32>(global2[_wgslsmith_index_u32(0u, 25u)], -2147483647i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-3328f - -1000f), _wgslsmith_f_op_f32(ceil(-1857f)), -537f, -150f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(147f, -1094f, -1000f, 922f) * vec4<f32>(600f, -240f, -519f, -506f))))), _wgslsmith_dot_vec4_u32(~select(vec4<u32>(u_input.a, u_input.d, 0u, 4294967295u), vec4<u32>(0u, global0.a, global3.a, global0.a), global0.b.x) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, global0.a, 0u, 16207u), vec4<u32>(4294967295u, var_1, global0.a, 4294967295u)), (countOneBits(vec4<u32>(26460u, 63556u, global3.a, 1u)) | _wgslsmith_div_vec4_u32(vec4<u32>(u_input.d, 77494u, 4294967295u, u_input.a), vec4<u32>(u_input.a, global0.a, 42758u, 1148u))) >> (~(vec4<u32>(34515u, var_1, 60224u, 1u) | vec4<u32>(0u, u_input.a, 61867u, u_input.a)) % vec4<u32>(32u))), vec3<u32>(var_1, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 7510u, 67203u), vec3<u32>(global3.a, global0.a, var_1)) | ~vec3<u32>(var_1, u_input.a, global3.a), _wgslsmith_add_vec3_u32(~vec3<u32>(global3.a, global0.a, 4294967295u), abs(vec3<u32>(global3.a, 33324u, 4294967295u)))), 4294967295u), _wgslsmith_sub_u32(firstLeadingBit(~global3.a), ~54299u));
}

