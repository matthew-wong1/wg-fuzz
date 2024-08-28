struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec4<bool>,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 14>;

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    var var_0 = vec4<i32>(-reverseBits(_wgslsmith_mod_i32(firstLeadingBit(2147483647i), ~global2.e.x)), global2.e.x, global2.e.x, countOneBits(_wgslsmith_add_i32(12521i, firstLeadingBit(global2.e.x))));
    let var_1 = firstLeadingBit(countOneBits(vec4<i32>(2147483647i, ~(-2147483647i), _wgslsmith_sub_i32(33788i, ~(-368i)), ~0i)));
    let var_2 = select(global2.c.yx, select(global2.c.yx, global2.c.wx, vec2<bool>(!global2.d, true)), global2.c.wz);
    let var_3 = global2.a;
    var var_4 = Struct_2(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(-global2.e.xwz, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -2147483647i, var_0.x), var_0.wxw)), 1i), -_wgslsmith_add_i32(var_0.x, global2.e.x) & var_1.x), Struct_1(global2.a, global2.b, !vec4<bool>(any(vec2<bool>(var_2.x, var_2.x)), any(global2.c), true, var_2.x), true | var_2.x, vec4<i32>(var_1.x, ~var_0.x, i32(-1i) * -32827i, ~(global2.e.x & -40069i))));
    return ~(63275u ^ _wgslsmith_div_u32(abs(u_input.d), min(global2.b, 1u) >> (countOneBits(31566u) % 32u)));
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(sign(-617f)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global0[_wgslsmith_index_u32(0u, 14u)], -1777f))))), ~4294967295u, select(global2.c, !global2.c, vec4<bool>(any(vec2<bool>(global2.d, false)), true, global2.d, true)), all(vec2<bool>(any(global2.c), false)), abs(vec4<i32>(0i, 0i, global2.e.x, -1i)) ^ select(vec4<i32>(-52726i, global2.e.x, global2.e.x, global2.e.x), min(global2.e, global2.e), vec4<bool>(false, global2.c.x, false, global2.d))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-global1.yx);
    let var_2 = _wgslsmith_mult_vec4_u32(vec4<u32>(~44u, arg_0, func_3(), _wgslsmith_mult_u32(21528u, arg_1) & select(~46807u, arg_0, true)), vec4<u32>(_wgslsmith_sub_u32(global2.b, 10112u), abs(reverseBits(1u)), global2.b, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.c, ~vec4<u32>(22782u, 4294967295u, 74888u, arg_1)), ~(~vec4<u32>(4294967295u, u_input.d, 7530u, 53161u)))));
    global1 = _wgslsmith_f_op_vec3_f32(ceil(var_0.b.a));
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), firstTrailingBit(~1u | _wgslsmith_dot_vec3_u32(u_input.c.yyx, ~u_input.c.xzw)), !vec4<bool>(true, false, any(select(var_0.b.c, global2.c, global2.d)), var_0.b.c.x), true, ~(~global2.e));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, var_1.x, 842f))))), arg_0, var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1089f, global1.x))) <= -685f, vec4<i32>(2147483647i, ~37934i, 1i, _wgslsmith_sub_i32(-global2.e.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 1i), vec2<i32>(var_0.b.e.x, -1i) | vec2<i32>(global2.e.x, 2147483647i)))));
}

fn func_1() -> Struct_1 {
    global1 = global2.a;
    global2 = func_2(~u_input.c.x, _wgslsmith_sub_u32(u_input.b, global2.b));
    global2 = Struct_1(global2.a, ~u_input.a, global2.c, !(!global2.d), global2.e);
    var var_0 = all(select(!(!vec4<bool>(true, false, global2.d, global2.d)), global2.c, global2.d));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2.a)), ~_wgslsmith_div_u32(26558u, u_input.a), global2.c, global2.d, vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2.e.x, global2.e.x, 2147483647i, 0i), vec4<i32>(2147483647i, global2.e.x, -20138i, -47070i)), min(~0i, 1310i), _wgslsmith_mod_i32(_wgslsmith_sub_i32(-4646i, global2.e.x), ~(-11571i)), _wgslsmith_dot_vec4_i32(global2.e & vec4<i32>(-24137i, global2.e.x, global2.e.x, 0i), global2.e)) >> (u_input.c % vec4<u32>(32u)));
    return func_2(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(var_1.b, var_1.b), global2.b, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global2.b, var_1.b, 24846u, 4294967295u)), _wgslsmith_clamp_vec4_u32(u_input.c, u_input.c, u_input.c)), ~vec4<u32>(global2.b, 1u, global2.b, 21004u) << (~vec4<u32>(var_1.b, 119765u, 15752u, u_input.c.x) % vec4<u32>(32u)))), 66079u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = array<f32, 14>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))))));
    var_0 = Struct_1(vec3<f32>(1223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global2.b, 14u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global2.b, 14u)])))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.x, -857f), _wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(global2.b, 14u)]))))), ~((_wgslsmith_mult_u32(4294967295u, u_input.b) << (~1u % 32u)) & ~_wgslsmith_sub_u32(4294967295u, 88245u)), func_2(u_input.a, func_3()).c, var_0.c.x, abs(-vec4<i32>(abs(var_0.e.x), var_0.e.x, 8724i, var_0.e.x)));
    var_0 = func_2(var_0.b, global2.b);
    let x = u_input.a;
    s_output = StorageBuffer(select(~(-(vec3<i32>(global2.e.x, global2.e.x, -2147483647i) >> (vec3<u32>(var_0.b, var_0.b, global2.b) % vec3<u32>(32u)))), vec3<i32>(~(-1i), -(~var_0.e.x), 0i), var_0.c.x), ~var_0.e.x ^ ~var_0.e.x);
}

