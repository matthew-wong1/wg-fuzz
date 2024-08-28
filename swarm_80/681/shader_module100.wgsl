struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 9>;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(-416f, 1u, 445f, 48503u);

var<private> global3: Struct_2 = Struct_2(23771i, vec2<f32>(-1128f, 925f), Struct_1(357f, 0u, -1104f, 4294967295u), vec2<u32>(0u, 45734u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0;
    global3 = arg_0;
    let var_1 = Struct_2(~(-2147483647i), _wgslsmith_f_op_vec2_f32(global3.b + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2.a + 1000f), -405f), vec2<f32>(-277f, 731f))), arg_1, abs(~firstTrailingBit(~u_input.b)));
    var var_2 = 35021u;
    var var_3 = i32(-1i) * -arg_0.a;
    return 70173u;
}

fn func_1() -> f32 {
    var var_0 = Struct_1(947f, ~u_input.e, global3.c.a, func_2(Struct_2(-(u_input.c.x | global3.a), global3.b, Struct_1(_wgslsmith_f_op_f32(global3.c.a + global2.c), ~u_input.d, _wgslsmith_f_op_f32(f32(-1f) * -668f), select(global2.d, 32558u, false)), vec2<u32>(u_input.b.x, ~4294967295u)), Struct_1(global2.c, ~(4294967295u ^ global0[_wgslsmith_index_u32(0u, 9u)]), -562f, _wgslsmith_mult_u32(~u_input.b.x, firstLeadingBit(63203u)))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - 1495f), global2.b, 1000f, ~(~global1.x));
    var var_2 = u_input.c.zy << (global1.zz % vec2<u32>(32u));
    var var_3 = global3.c;
    var var_4 = Struct_1(_wgslsmith_f_op_f32(var_3.c - 2451f), _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(global2.b, global3.c.b), global3.d), global1.xy), reverseBits(4294967295u)), var_1.c, firstLeadingBit(min(abs(global1.x), var_1.d)) << (21253u % 32u));
    return global2.c;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>) -> u32 {
    global0 = array<u32, 9>();
    global1 = _wgslsmith_clamp_vec3_u32(~(~arg_1), vec3<u32>(6803u, ~arg_1.x >> (~1u % 32u), arg_1.x), select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(13495u, 1u, arg_1.x), arg_1, arg_1), select(vec3<u32>(global0[_wgslsmith_index_u32(global2.b, 9u)], 4294967295u, 64575u), ~arg_1, vec3<bool>(true, true, true)), (1u > global2.d) & false) >> (vec3<u32>(1u << (_wgslsmith_add_u32(global3.d.x, global1.x) % 32u), ~arg_1.x, arg_0.c.b) % vec3<u32>(32u)));
    global2 = Struct_1(-1143f, arg_0.d.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-193f + _wgslsmith_f_op_f32(global3.b.x + arg_0.c.c))), 1u);
    let var_0 = Struct_1(global2.a, 82427u, global3.b.x, 1u);
    var var_1 = ~0i;
    return ~(global1.x << (global1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a, u_input.a, global3.a, u_input.a), max(vec4<i32>(u_input.a, 0i, -4900i, 11023i) ^ vec4<i32>(global3.a, 39823i, 2147483647i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.c.x, 1i, u_input.a, global3.a), vec4<i32>(global3.a, -59652i, u_input.a, global3.a)))));
    var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(countOneBits(29933i), _wgslsmith_sub_i32(countOneBits(var_0.x), u_input.a), select(~35415i, _wgslsmith_div_i32(2147483647i, -37847i), any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global3.a, u_input.a, 22679i), vec4<i32>(14778i, -2147483647i, -2147483647i, -80853i), vec4<i32>(u_input.c.x, 49093i, var_0.x, -2147483647i)), _wgslsmith_sub_vec4_i32(vec4<i32>(-46894i, u_input.a, -12935i, 0i), vec4<i32>(global3.a, 33708i, var_0.x, var_0.x))), countOneBits(~vec4<i32>(-1124i, u_input.a, var_0.x, global3.a)))), vec4<i32>(global3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(9409i, -2147483647i, -48808i, 0i) & vec4<i32>(global3.a, var_0.x, -15196i, 379i), vec4<i32>(2147483647i, global3.a, -63805i, 2147483647i) | vec4<i32>(-2147483647i, u_input.a, global3.a, 28379i)), var_0.x, abs(_wgslsmith_mult_i32(1i, u_input.a))) << ((~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 9u)], 9u)], 9u)], global3.c.b, 1u, global0[_wgslsmith_index_u32(global2.d, 9u)]) ^ (vec4<u32>(global0[_wgslsmith_index_u32(28819u, 9u)], global2.b, global2.d, global2.d) << (select(vec4<u32>(global3.c.b, 4294967295u, 41516u, u_input.d), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 9u)], 9u)], 1352u, global3.c.b, global1.x), false) % vec4<u32>(32u)))) % vec4<u32>(32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) * global2.c), 113f)), u_input.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c + -336f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(419f)))) + global2.c)), _wgslsmith_mult_u32(max(0u, abs(61534u)) ^ global0[_wgslsmith_index_u32(~(~36697u), 9u)], func_3(Struct_2(var_0.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.x, -1336f) + vec2<f32>(-1305f, 1305f)), Struct_1(global3.c.c, global0[_wgslsmith_index_u32(0u, 9u)], global2.c, u_input.e), global1.zy), ~vec3<u32>(global1.x, 4294967295u, 39437u))));
    global3 = Struct_2(1i, _wgslsmith_div_vec2_f32(global3.b, global3.b), Struct_1(var_1.a, _wgslsmith_dot_vec4_u32((vec4<u32>(global2.b, 85728u, u_input.e, global0[_wgslsmith_index_u32(var_1.d, 9u)]) | vec4<u32>(50050u, global1.x, global0[_wgslsmith_index_u32(u_input.b.x, 9u)], var_1.b)) | ~vec4<u32>(518u, 1u, 40899u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, global3.d.x, global2.d, 0u), vec4<u32>(global0[_wgslsmith_index_u32(u_input.e, 9u)], 1u, global2.d, 27295u))), global2.c, ~(~_wgslsmith_clamp_u32(global2.b, 1u, global3.c.d))), abs(max(global1.yx, _wgslsmith_add_vec2_u32(global1.yz, vec2<u32>(2193u, 4294967295u)))));
    let var_2 = Struct_2(1i, _wgslsmith_f_op_vec2_f32(-global3.b), global3.c, ~(~_wgslsmith_div_vec2_u32(~vec2<u32>(74940u, 18596u), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, global1.x), u_input.b))));
    let var_3 = global3.c;
    let x = u_input.a;
    s_output = StorageBuffer(1u >> (func_2(var_2, Struct_1(global3.b.x, 60892u, -509f, func_3(var_2, vec3<u32>(u_input.d, global3.d.x, var_2.d.x)))) % 32u));
}

