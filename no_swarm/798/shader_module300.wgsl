struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1153f;

var<private> global1: array<Struct_1, 26>;

var<private> global2: Struct_1;

var<private> global3: vec4<u32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: i32) -> vec4<u32> {
    global1 = array<Struct_1, 26>();
    var var_0 = select(select(!select(!global2.e.wz, select(vec2<bool>(global2.e.x, true), vec2<bool>(true, global2.e.x), false), vec2<bool>(true, true)), vec2<bool>(select(false, !global2.e.x, select(global2.e.x, global2.e.x, false)), all(vec3<bool>(global2.e.x, global2.e.x, false))), true), global2.e.yx, true);
    var var_1 = !(global2.a >= _wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(global2.a * 675f), true))));
    var var_2 = global2.e;
    var_2 = global2.e;
    return ~u_input.a;
}

fn func_1() -> Struct_2 {
    var var_0 = global2.e.wx;
    let var_1 = select(global2.e, global2.e, !(!global2.e));
    global3 = func_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 2147483647i) << (vec2<u32>(11730u, 4294967295u) % vec2<u32>(32u)), ~(-global2.c.xz)));
    var var_2 = u_input.b.x;
    let var_3 = ~12288u;
    return Struct_2(global2.e, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -384f), -(~0i), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.c.x, u_input.b.x, global2.b, u_input.b.x), vec4<i32>(global2.b, u_input.b.x, 38101i, -2147483647i)), -_wgslsmith_add_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, global2.c.x, 1i, 0i))), ~(abs(var_3) ^ ~global2.d), vec4<bool>(false, true, (global3.x < global3.x) && true, var_0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, -1159f, -602f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, global2.a, 375f, -208f))) - vec4<f32>(_wgslsmith_f_op_f32(-1328f * global2.a), _wgslsmith_f_op_f32(min(192f, 1062f)), global2.a, _wgslsmith_f_op_f32(-global2.a))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-294f, -1236f, -260f, global2.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a, 1166f, 1000f, 1917f))))), !(true || var_1.x), -765f);
}

fn func_3(arg_0: Struct_2) -> vec4<bool> {
    return vec4<bool>(global2.e.x, any(vec3<bool>(!arg_0.b.e.x, -896f <= _wgslsmith_f_op_f32(arg_0.e * arg_0.b.a), global2.e.x)), ~abs(~18913u) >= ~_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.b.d, 1649u), u_input.a.x), arg_0.d);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = firstTrailingBit(9006i) <= (i32(-1i) * -(~0i));
    global3 = select(u_input.a, ~u_input.a | _wgslsmith_add_vec4_u32(~(vec4<u32>(arg_1.d, 0u, arg_1.d, 104210u) >> (u_input.a % vec4<u32>(32u))), u_input.a), ((55651u ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d, 35942u, arg_0.b.d, 4294967295u), u_input.a)) <= abs(137170u)) && (global2.a >= _wgslsmith_div_f32(317f, arg_0.b.a)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1508f)), arg_0.e))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(arg_1.a + -1660f))) - arg_2.a);
    var var_2 = func_1().b;
    var_2 = func_1().b;
    return vec3<bool>(!var_2.e.x, all(!(!global2.e.wwz)), !(!all(vec2<bool>(var_2.e.x, true)) || (1f >= var_2.a)));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec3<bool>, arg_3: u32) -> Struct_1 {
    global1 = array<Struct_1, 26>();
    return Struct_1(_wgslsmith_f_op_f32(global2.a * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(176f - _wgslsmith_f_op_f32(-1989f * global2.a))))), u_input.b.x, vec4<i32>(global2.b, global2.c.x, u_input.b.x, arg_0), 16401u, global2.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(16009i >> (firstTrailingBit(~global3.x ^ 4294967295u) % 32u), 61444u, func_4(Struct_2(func_3(func_1()), func_1().b, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2.a, -588f, -1381f, -625f), vec4<f32>(global2.a, global2.a, global2.a, global2.a)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1255f, global2.a, 150f, 745f)))), func_1().d, global2.a), Struct_1(_wgslsmith_f_op_f32(-global2.a), ~1i, global2.c, ~(~global2.d), vec4<bool>(true, true, true, true)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, 1u, 4294967295u, 1u), abs(vec4<u32>(global3.x, u_input.a.x, 4294967295u, global3.x))), global2.d), 26u)]), max(0u, u_input.c));
    var var_1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~15245u, ~_wgslsmith_clamp_vec4_i32(var_1.c >> (u_input.a % vec4<u32>(32u)), vec4<i32>(2147483647i, global2.c.x << (16610u % 32u), var_0.c.x | global2.b, -global2.c.x), select(reverseBits(vec4<i32>(-23312i, var_1.c.x, var_1.c.x, u_input.b.x)), var_0.c ^ var_1.c, all(var_0.e.wy))), vec2<i32>(u_input.b.x, 1i), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(565f, var_0.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2148f), _wgslsmith_f_op_f32(var_0.a + var_1.a)), var_0.a), func_1().c.zxy), ~vec4<i32>(~2147483647i ^ -global2.c.x, global2.c.x, _wgslsmith_clamp_i32(u_input.b.x, -global2.b, -3589i), var_0.c.x >> (global2.d % 32u)));
}

