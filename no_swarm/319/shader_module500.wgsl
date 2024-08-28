struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 20>;

var<private> global2: vec3<f32> = vec3<f32>(839f, -2150f, 445f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<Struct_2, 20>();
    global0 = select(vec3<bool>(global0.x, false, all(select(!global0.xy, !global0.yz, false))), vec3<bool>(all(select(vec4<bool>(false, global0.x, global0.x, global0.x), select(vec4<bool>(global0.x, false, global0.x, false), vec4<bool>(true, false, false, global0.x), vec4<bool>(global0.x, false, true, false)), true)), global0.x, any(select(select(vec4<bool>(true, false, global0.x, false), vec4<bool>(true, global0.x, global0.x, false), vec4<bool>(global0.x, global0.x, global0.x, true)), select(vec4<bool>(false, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, global0.x), false), !vec4<bool>(true, false, global0.x, false)))), global0.x);
    var var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))), 582f, global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-global2.x)) + -1552f)));
    var var_1 = -vec3<i32>(-43411i, _wgslsmith_add_i32(u_input.a.x, u_input.a.x), abs(u_input.a.x));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(-1000f * global2.x)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(605f)))) - var_0.a.x))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x)));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> bool {
    var var_0 = u_input.a.x;
    var var_1 = all(!(!vec4<bool>(true, global0.x, global0.x, false))) != (_wgslsmith_f_op_f32(func_3()) != arg_2);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2, _wgslsmith_f_op_f32(352f * 108f), -414f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, arg_2)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(683f, global2.x, -1860f), vec3<f32>(global2.x, -470f, arg_2), vec3<bool>(false, global0.x, global0.x))))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1140f), _wgslsmith_f_op_f32(518f + -711f), global2.x))) + vec3<f32>(-1186f, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_2)), -717f)))));
    var var_3 = _wgslsmith_mod_vec4_i32(vec4<i32>(countOneBits(-1i & -arg_1), i32(-1i) * -34749i, -arg_0.a.x << (4294967295u % 32u), 1i), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, arg_0.a.x, arg_1, u_input.a.x), vec4<i32>(-971i, -14060i, u_input.a.x, 0i)), vec4<i32>(-59715i, -20493i, arg_1, 44726i)), vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, arg_1, 7463i), arg_1, 1i, firstLeadingBit(-22462i))) << (vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(17517u, 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 11910u, 4294967295u, 3242u), vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x))), u_input.b.x, firstTrailingBit(0u)) % vec4<u32>(32u)));
    var var_4 = all(!select(select(!vec3<bool>(true, true, global0.x), select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(global0.x, true, true), vec3<bool>(global0.x, global0.x, global0.x)), vec3<bool>(true, global0.x, true)), vec3<bool>(any(global0.xz), global0.x, true), vec3<bool>(global0.x, true, !global0.x)));
    return true;
}

fn func_4(arg_0: bool, arg_1: bool) -> f32 {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, global2.x, 263f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -791f, global2.x) + vec3<f32>(global2.x, -1768f, -514f))))));
    let var_0 = u_input.a.x >= _wgslsmith_mod_i32(~max(~(-27778i), _wgslsmith_mult_i32(u_input.a.x, -2147483647i)), u_input.a.x << (_wgslsmith_clamp_u32(u_input.b.x << (u_input.b.x % 32u), min(1u, u_input.b.x), 1u) % 32u));
    let var_1 = Struct_3(!select(vec3<bool>(var_0, global0.x, !arg_1), select(select(vec3<bool>(arg_1, false, true), vec3<bool>(false, false, arg_0), var_0), vec3<bool>(arg_1, arg_1, global0.x), false), true), u_input.b.x, Struct_1(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -33406i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, 19281i))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-17988i, u_input.a.x, -52173i, -32354i), vec4<i32>(0i, u_input.a.x, 1i, u_input.a.x)), vec4<i32>(u_input.a.x, -17804i, -57393i, -1i)))));
    let var_2 = var_1;
    let var_3 = false;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-755f, 1000f)))) + _wgslsmith_f_op_f32(round(-860f))) + -1224f);
}

fn func_1(arg_0: u32, arg_1: bool) -> Struct_3 {
    global2 = vec3<f32>(1127f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global2.x)))), _wgslsmith_f_op_f32(func_4(global0.x, func_2(Struct_1(vec2<i32>(u_input.a.x, 0i)), u_input.a.x >> (u_input.b.x % 32u), -184f) && any(global0.xx))));
    let var_0 = arg_0;
    return Struct_3(!select(select(select(vec3<bool>(false, false, global0.x), vec3<bool>(global0.x, false, false), global0.x), !vec3<bool>(true, global0.x, false), any(vec4<bool>(global0.x, true, arg_1, false))), vec3<bool>(global0.x | global0.x, all(vec3<bool>(true, arg_1, true)), select(arg_1, global0.x, true)), vec3<bool>(!arg_1, global0.x, true)), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(~u_input.b, reverseBits(u_input.b)), firstLeadingBit(select(vec2<u32>(38867u, 25771u), u_input.b, global0.zy))), Struct_1(countOneBits(u_input.a)));
}

fn func_5(arg_0: vec3<i32>, arg_1: Struct_3) -> Struct_4 {
    var var_0 = arg_1.b;
    var var_1 = Struct_4(select(37072u, countOneBits(82051u), !(global2.x > global2.x)), Struct_1(select(arg_0.zy, u_input.a, global0.x)), arg_1.c);
    var var_2 = global1[_wgslsmith_index_u32(arg_1.b << (var_1.a % 32u), 20u)];
    var_1 = Struct_4(_wgslsmith_dot_vec4_u32(vec4<u32>(~42892u, u_input.b.x, ~0u, abs(u_input.b.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(firstTrailingBit(0u), _wgslsmith_clamp_u32(arg_1.b, 0u, var_1.a), abs(u_input.b.x), 43529u), _wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(arg_1.b, arg_1.b, 5653u, 40404u)), max(vec4<u32>(u_input.b.x, 4294967295u, arg_1.b, u_input.b.x), vec4<u32>(4294967295u, 0u, 0u, 0u)), select(vec4<u32>(arg_1.b, arg_1.b, 4294967295u, var_1.a), vec4<u32>(25155u, 4294967295u, var_1.a, 1u), arg_1.a.x)))), arg_1.c, Struct_1(_wgslsmith_mod_vec2_i32(firstTrailingBit(var_1.c.a ^ vec2<i32>(1i, -4222i)), vec2<i32>(-2147483647i, ~30987i))));
    let var_3 = !vec2<bool>(any(!(!vec4<bool>(arg_1.a.x, true, global0.x, arg_1.a.x))), !(!(0i <= u_input.a.x)));
    return Struct_4(abs(abs(32370u)), var_1.c, Struct_1(arg_1.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(-43688i);
    global1 = array<Struct_2, 20>();
    let var_1 = true;
    var var_2 = func_5(vec3<i32>(_wgslsmith_mod_i32(~u_input.a.x & u_input.a.x, ~8973i), u_input.a.x, -34715i), func_1(~1u, true));
    let var_3 = _wgslsmith_div_u32(1u, abs(_wgslsmith_mult_u32(~(var_2.a >> (var_2.a % 32u)), 12569u)));
    let var_4 = ~_wgslsmith_div_i32(~func_5(vec3<i32>(-16265i, var_0, var_2.b.a.x), func_1(9254u, true)).b.a.x, -var_2.c.a.x);
    let var_5 = -24334i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(-((vec3<i32>(var_4, u_input.a.x, var_0) | vec3<i32>(56866i, var_5, var_4)) | abs(vec3<i32>(19257i, var_0, 1i))), -_wgslsmith_div_vec3_i32(vec3<i32>(var_2.c.a.x, var_4, 1909i), vec3<i32>(var_2.c.a.x, -1i, -2147483647i)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.a, 4294967295u, 1u), abs(vec3<u32>(u_input.b.x, var_3, u_input.b.x))) % vec3<u32>(32u))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(957f)), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(sign(-151f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(429f)) - global2.x), global2.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * global2.x), _wgslsmith_f_op_f32(308f - global2.x)) * 859f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2093f, _wgslsmith_f_op_f32(1478f - _wgslsmith_div_f32(1264f, global2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-607f)), _wgslsmith_f_op_f32(ceil(1452f)))), _wgslsmith_f_op_f32(-global2.x))));
}

