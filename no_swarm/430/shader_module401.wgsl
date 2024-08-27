struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<f32>,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 32>;

var<private> global1: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: i32) -> vec3<i32> {
    var var_0 = Struct_1(u_input.a, global1.c.x, firstLeadingBit(~firstTrailingBit(vec3<u32>(global1.b, global1.b, arg_0.x))));
    let var_1 = ~(~abs(global1.c.xx));
    global1 = Struct_1(-(global1.a ^ (_wgslsmith_clamp_vec3_i32(global1.a, vec3<i32>(var_0.a.x, var_0.a.x, -63591i), vec3<i32>(8954i, 1i, 1i)) | max(var_0.a, vec3<i32>(global1.a.x, u_input.a.x, var_0.a.x)))), 1u, ~var_0.c);
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(103128u), 32u)];
    var var_3 = ~_wgslsmith_sub_i32(-2147483647i, 1i);
    return global1.a;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> i32 {
    return u_input.a.x;
}

fn func_2() -> i32 {
    global1 = Struct_1(u_input.a, min(12470u, global1.b), ~global1.c);
    global0 = array<Struct_3, 32>();
    global0 = array<Struct_3, 32>();
    let var_0 = vec2<i32>(_wgslsmith_clamp_i32(global1.a.x, u_input.a.x, u_input.a.x), -u_input.a.x);
    global0 = array<Struct_3, 32>();
    return reverseBits(func_4(true, Struct_1(func_3(_wgslsmith_mult_vec4_u32(vec4<u32>(global1.c.x, 74355u, 0u, 41838u), vec4<u32>(56921u, 30638u, 4294967295u, global1.b)), vec2<bool>(true, false), 0i & global1.a.x), 127054u, _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(global1.c, global1.c), _wgslsmith_mod_vec3_u32(global1.c, vec3<u32>(global1.c.x, global1.c.x, 4294967295u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-164f, 964f))))), select((4102u >> (global1.b % 32u)) << (global1.b % 32u), global1.c.x, true && any(vec2<bool>(true, true)))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = ~reverseBits(vec3<u32>(4294967295u, global1.b, ~4294967295u));
    var var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_1, firstLeadingBit(arg_1)), 1i), min(-1i, -(~arg_1.x)), max(-1i, func_2()), -2147483647i), vec4<i32>(0i, _wgslsmith_sub_i32(-51791i, firstTrailingBit(-2147483647i)), u_input.a.x, -22527i));
    global1 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, i32(-1i) * -41916i, -1479i), u_input.a), ~(1i << (var_0.x % 32u)), ~global1.a.x), ~0u, vec3<u32>(1u, _wgslsmith_dot_vec2_u32(var_0.yx, ~abs(global1.c.zz)), _wgslsmith_mult_u32(_wgslsmith_div_u32(var_0.x, global1.b), var_0.x) >> (firstTrailingBit(var_0.x | global1.c.x) % 32u)));
    let var_2 = abs(~(global1.a.x << (_wgslsmith_dot_vec3_u32(var_0, vec3<u32>(32032u, global1.b, global1.c.x)) % 32u)));
    var var_3 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(704f, -1000f), 289f))), 796f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(219f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-683f - 607f))))), -1046f);
    return Struct_1(select(~(-vec3<i32>(1612i, arg_1.x, arg_1.x)), -vec3<i32>(u_input.a.x, var_1.x, u_input.a.x) ^ select(vec3<i32>(var_1.x, global1.a.x, 16278i), vec3<i32>(var_2, var_1.x, var_1.x), vec3<bool>(true, true, arg_0.x)), !all(arg_0)) << (_wgslsmith_add_vec3_u32(vec3<u32>(36980u, reverseBits(global1.b), ~var_0.x), ~select(vec3<u32>(var_0.x, 169u, 57777u), global1.c, vec3<bool>(arg_0.x, false, true))) % vec3<u32>(32u)), 1u, max(vec3<u32>(4407u, 1u, 4294967295u), vec3<u32>(36963u, global1.b, var_0.x)));
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> vec3<u32> {
    global1 = Struct_1(u_input.a, arg_1.b, _wgslsmith_clamp_vec3_u32(max(vec3<u32>(_wgslsmith_div_u32(global1.b, arg_0), max(arg_0, global1.b), 4294967295u), vec3<u32>(1u, 22004u, _wgslsmith_div_u32(28106u, global1.b))), arg_1.c, vec3<u32>(30066u, select(_wgslsmith_mod_u32(1u, 12056u), reverseBits(global1.b), arg_1.c.x <= 56376u), arg_0)));
    let var_0 = -794f;
    var var_1 = global0[_wgslsmith_index_u32(~abs(~(abs(global1.c.x) ^ _wgslsmith_add_u32(0u, 4294967295u))), 32u)];
    let var_2 = _wgslsmith_mod_u32(abs(arg_0), 45926u << (arg_0 % 32u));
    var var_3 = Struct_3(var_1.a, vec3<i32>(arg_1.a.x, var_1.b.x, _wgslsmith_sub_i32(-1i, func_1(select(vec3<bool>(var_1.e, false, false), vec3<bool>(var_1.e, var_1.e, var_1.e), vec3<bool>(true, arg_2, var_1.e)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global1.a.x, var_1.a.a.a.x, var_1.b.x), vec4<i32>(global1.a.x, -6372i, 2147483647i, 0i))).a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, var_0, 1000f, _wgslsmith_f_op_f32(min(1000f, var_0))), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0, 265f, 1232f, var_0), var_1.c), var_1.c), true))), var_1.c.zyz, !var_1.e);
    return ~(select(~var_3.a.a.c, _wgslsmith_div_vec3_u32(~var_3.a.a.c, ~var_3.a.a.c), _wgslsmith_f_op_f32(f32(-1f) * -926f) < _wgslsmith_f_op_f32(-var_0)) << (global1.c % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec3<i32>(max(min(2147483647i, global1.a.x), u_input.a.x), -1i, global1.a.x), ~28989u, ~func_5(~global1.b, func_1(vec3<bool>(false, true, true), vec4<i32>(u_input.a.x, global1.a.x, 18735i, -1i)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1491f + _wgslsmith_f_op_f32(ceil(-489f))) + _wgslsmith_f_op_f32(-766f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 1094f) - _wgslsmith_f_op_f32(-1837f - -1000f)))));
    global0 = array<Struct_3, 32>();
    var var_1 = global0[_wgslsmith_index_u32(global1.c.x << (~(4294967295u << (_wgslsmith_sub_u32(~0u, _wgslsmith_clamp_u32(global1.c.x, 27714u, 10348u)) % 32u)) % 32u), 32u)];
    let var_2 = max(_wgslsmith_dot_vec3_u32(~global1.c, vec3<u32>(global1.b, ~firstTrailingBit(var_0.a.c.x), global1.b)), var_1.a.a.b);
    var var_3 = -14616i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(select(~vec2<i32>(2147483647i, global1.a.x), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b.x, 13492i), vec2<i32>(u_input.a.x, -2147483647i), var_1.b.zx), vec2<bool>(true, true)), min(vec2<i32>(func_1(vec3<bool>(var_1.e, var_1.e, false), vec4<i32>(global1.a.x, -11183i, global1.a.x, 28677i)).a.x, 0i), reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(20161i, 32044i), var_0.a.a.yy)))));
}

