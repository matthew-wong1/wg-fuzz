struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<f32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec2<u32>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: bool = true;

var<private> global2: Struct_5 = Struct_5(vec3<bool>(false, true, true), vec2<i32>(-11029i, 2147483647i));

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_2 {
    global2 = Struct_5(global2.a, _wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(1i), _wgslsmith_sub_i32(global2.b.x, global0[_wgslsmith_index_u32(u_input.a.x, 2u)])), reverseBits(vec2<i32>(global0[_wgslsmith_index_u32(3720u, 2u)], -1i)) >> (vec2<u32>(u_input.a.x, 107218u) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)));
    global0 = array<i32, 2>();
    let var_0 = reverseBits(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 2u)], -1i >> (_wgslsmith_clamp_u32(~u_input.a.x, ~82093u, 10353u) % 32u), abs(~_wgslsmith_sub_i32(0i, global0[_wgslsmith_index_u32(18406u, 2u)]))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1303f - 911f), -2276f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1209f + 293f), _wgslsmith_f_op_f32(568f + -914f))), _wgslsmith_div_f32(-1580f, 3200f)))));
    var var_2 = Struct_4(~firstTrailingBit(abs(vec4<i32>(global2.b.x, -2147483647i, -2147483647i, -2147483647i)) ^ _wgslsmith_mult_vec4_i32(vec4<i32>(30505i, 0i, var_0, var_0), vec4<i32>(7245i, -35643i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]))), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-227f * _wgslsmith_f_op_f32(ceil(-607f))), _wgslsmith_f_op_f32(min(var_1, _wgslsmith_f_op_f32(-var_1))))), !vec4<bool>(true, 50675u < u_input.c.x, all(vec3<bool>(global2.a.x, global2.a.x, true)), global2.a.x || global2.a.x), max(global2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, global0[_wgslsmith_index_u32(u_input.b, 2u)]), select(vec3<i32>(var_0, -1i, global0[_wgslsmith_index_u32(32731u, 2u)]), vec3<i32>(26669i, 0i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<bool>(false, global2.a.x, false)))), Struct_2(false), -38585i), max(max(abs(select(vec2<u32>(18441u, 26301u), vec2<u32>(u_input.c.x, u_input.c.x), global2.a.x)), vec2<u32>(u_input.c.x, u_input.c.x ^ 57999u)), ~((vec2<u32>(67046u, u_input.c.x) | u_input.a.yx) ^ vec2<u32>(u_input.b, 5505u))), _wgslsmith_sub_u32(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 41531u) >> (vec4<u32>(u_input.a.x, u_input.c.x, 4294967295u, u_input.b) % vec4<u32>(32u)), vec4<u32>(57718u, u_input.a.x, 105930u, 1u))), Struct_2(false));
    return var_2.b.d;
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> vec2<i32> {
    let var_0 = any(!select(vec3<bool>(false, true, global2.a.x), global2.a, select(select(global2.a, global2.a, global2.a.x), select(vec3<bool>(true, global2.a.x, global2.a.x), vec3<bool>(false, false, global2.a.x), global2.a.x), global0[_wgslsmith_index_u32(u_input.b, 2u)] >= global2.b.x)));
    global0 = array<i32, 2>();
    let var_1 = Struct_3(arg_1.x, vec4<bool>(global2.a.x, false, false, false), reverseBits(~(-21402i)), func_2(), _wgslsmith_div_i32(-11189i & global2.b.x, 1i));
    let var_2 = !var_1.b.ywz;
    global0 = array<i32, 2>();
    return select(-select(-global2.b, global2.b, any(global2.a)) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.b | 10001u, u_input.a.x), firstLeadingBit(~u_input.b)) % vec2<u32>(32u)), global2.b, true);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<bool>) -> u32 {
    let var_0 = reverseBits(~max(abs(arg_2.c | arg_0.x), arg_2.c));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -416f), vec4<bool>(arg_2.b.x, arg_1.x, all(vec3<bool>(true, arg_2.a <= -1000f, global2.a.x)), arg_3.x), -global2.b.x, func_2(), -45161i);
    let var_2 = arg_3;
    global2 = Struct_5(!select(!(!arg_3), select(select(vec3<bool>(false, false, true), vec3<bool>(false, arg_2.d.a, arg_2.b.x), global2.a.x), arg_1.xzx, vec3<bool>(false, var_1.d.a, arg_3.x)), true), firstLeadingBit(_wgslsmith_mult_vec2_i32(func_3(1000f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 738f, -583f))), vec2<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.b, 2u)], var_0), arg_0.x))));
    var var_3 = select(select(select(var_1.b, vec4<bool>(arg_2.e > 23174i, false, true, any(arg_1)), u_input.a.x >= u_input.b), vec4<bool>(any(!vec4<bool>(arg_2.d.a, arg_3.x, true, arg_3.x)), var_1.a != _wgslsmith_f_op_f32(select(var_1.a, var_1.a, true)), func_2().a, var_1.d.a), arg_2.b), vec4<bool>(true, func_2().a, all(var_2), arg_3.x), select(select(var_2.x, !(arg_2.b.x & arg_2.d.a), true), func_2().a, -(~(-2147483647i)) >= -firstLeadingBit(global2.b.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 2>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-315f, 1413f, 144f) * vec3<f32>(765f, -871f, 775f))))));
    let var_1 = ~firstLeadingBit(u_input.c);
    var var_2 = _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(reverseBits(max(-vec3<i32>(-1i, 1i, global2.b.x), ~vec3<i32>(0i, global0[_wgslsmith_index_u32(4294967295u, 2u)], global2.b.x))), firstLeadingBit(~vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(22181u, 2u)], 0i))), -vec3<i32>(abs(global2.b.x), global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(var_1.x, 2u)] ^ global0[_wgslsmith_index_u32(4294967295u, 2u)]) | vec3<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(max(4294967295u, 0u), 2u)], -36164i), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(global2.b.x, -9574i, global2.b.x, global2.b.x)), vec4<i32>(-17384i, 5113i, global2.b.x, 1492i)), _wgslsmith_div_i32(_wgslsmith_div_i32(global2.b.x, global0[_wgslsmith_index_u32(39051u, 2u)]), 0i & global2.b.x)));
    global1 = ~(~(~func_1(vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], var_2.x, global2.b.x, global0[_wgslsmith_index_u32(58387u, 2u)]), vec4<bool>(global2.a.x, global2.a.x, global2.a.x, true), Struct_3(var_0.x, vec4<bool>(false, false, false, true), 8290i, Struct_2(global2.a.x), global2.b.x), global2.a))) != 3994u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(53446u, 4294967295u, ~_wgslsmith_div_u32(0u, 148112u)), ~countOneBits(vec3<u32>(u_input.b, u_input.b, var_1.x)) >> (var_1 % vec3<u32>(32u))), _wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(max(u_input.b, 36536u)), var_1.x << ((4294967295u << (var_1.x % 32u)) % 32u)), 37235u), countOneBits(select(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, var_1.x, 4294967295u, var_1.x), vec4<u32>(u_input.c.x, 42239u, 4294967295u, u_input.c.x)), abs(vec4<u32>(17063u, 20658u, 14083u, u_input.a.x))), firstLeadingBit(30621u), !global2.a.x)), vec3<u32>(reverseBits(~29912u), ~(~(var_1.x >> (1u % 32u))), _wgslsmith_clamp_u32(var_1.x, var_1.x, u_input.a.x)), countOneBits(_wgslsmith_mod_i32(~(-37858i), reverseBits(global2.b.x)) | _wgslsmith_div_i32(2147483647i, _wgslsmith_mult_i32(global2.b.x, global0[_wgslsmith_index_u32(var_1.x, 2u)]))));
}

