struct Struct_1 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(arg_3.b.x, 17u)];
    global0 = array<Struct_1, 17>();
    global2 = array<Struct_1, 28>();
    let var_1 = ~(~_wgslsmith_add_vec2_i32(u_input.a.xx, vec2<i32>(2147483647i, 1i) >> (vec2<u32>(11492u, u_input.c.x) % vec2<u32>(32u))));
    global2 = array<Struct_1, 28>();
    return global2[_wgslsmith_index_u32(abs(var_0.b.x), 28u)];
}

fn func_3() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 4294967295u), 17u)];
    global1 = _wgslsmith_sub_vec4_i32(vec4<i32>(~u_input.b, _wgslsmith_add_i32(13688i, 30475i), var_0.a.x << (u_input.c.x % 32u), u_input.a.x), vec4<i32>(firstLeadingBit((u_input.b & 2147483647i) ^ abs(-1i)), u_input.a.x, -(~(-1i)), _wgslsmith_clamp_i32(countOneBits(58156i), ~(-1i), 2147483647i)));
    var var_1 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, all(vec2<bool>(true, false))), !(u_input.b == abs(-1i))), select(!vec4<bool>(any(vec4<bool>(true, true, false, false)), true, true, true), vec4<bool>(_wgslsmith_f_op_f32(-1559f + 1555f) != _wgslsmith_f_op_f32(-var_0.c), !(u_input.d == 0u), abs(u_input.d) == u_input.d, true), !(all(vec4<bool>(false, true, false, true)) & any(vec2<bool>(false, true)))), vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), all(vec4<bool>(true, true, true, true)))), false, any(select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), true)), false));
    var var_2 = global0[_wgslsmith_index_u32(var_0.b.x, 17u)];
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.c)));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(2155f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2516f, -870f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(floor(249f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1612f)) - _wgslsmith_f_op_f32(abs(-695f)))))));
    let var_1 = func_1(u_input.a.xy, global0[_wgslsmith_index_u32(~(~1u), 17u)], !arg_0, global0[_wgslsmith_index_u32(countOneBits(4294967295u) & reverseBits(_wgslsmith_div_u32(u_input.c.x, countOneBits(u_input.d))), 17u)]);
    let var_2 = abs(u_input.a);
    global0 = array<Struct_1, 17>();
    global1 = _wgslsmith_add_vec4_i32(vec4<i32>((_wgslsmith_div_i32(1i, var_2.x) ^ 1i) ^ u_input.b, countOneBits(firstTrailingBit(11202i >> (var_1.b.x % 32u))), min(i32(-1i) * -950i, 45876i), -25501i), -(~(-(var_2 & u_input.a))));
    return -451f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~abs(~vec3<u32>(u_input.d, 20995u, 47076u)));
    var var_1 = func_1(global1.xw, Struct_1(vec2<i32>(~global1.x, 2147483647i), abs(reverseBits(vec4<u32>(u_input.d, 4294967295u, var_0.x, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-678f - _wgslsmith_f_op_f32(1492f * 762f)))), all(!(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true)))), global2[_wgslsmith_index_u32(~0u, 28u)]);
    var var_2 = func_1(global1.zw, Struct_1(vec2<i32>(-(u_input.b ^ 60332i), ~global1.x), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(true))), _wgslsmith_f_op_f32(floor(1000f)))), !select(-1000f != var_1.c, false, true) | all(vec4<bool>(true, any(vec4<bool>(true, true, false, true)), false, true)), func_1(vec2<i32>(u_input.b, -min(0i, u_input.b)), Struct_1(var_1.a, select(var_1.b, vec4<u32>(var_1.b.x, 4294967295u, 26987u, u_input.d), vec4<bool>(true, true, false, true)) << (var_1.b % vec4<u32>(32u)), _wgslsmith_div_f32(-600f, 908f)), all(vec2<bool>(var_1.c == 1555f, true)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_1.b, ~reverseBits(var_1.b)), 28u)]));
    global0 = array<Struct_1, 17>();
    let var_3 = abs(-_wgslsmith_mod_i32(u_input.b, ~(-2147483647i)));
    global1 = vec4<i32>(-36988i, max(~1i, global1.x), var_1.a.x, 2147483647i);
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))));
    let x = u_input.a;
    s_output = StorageBuffer(125f, abs(~(~_wgslsmith_div_vec2_u32(vec2<u32>(0u, u_input.c.x), u_input.c))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(abs(countOneBits(vec4<i32>(var_3, 45552i, var_3, u_input.a.x))), max(_wgslsmith_mult_vec4_i32(u_input.a, vec4<i32>(var_3, var_1.a.x, 0i, 16848i)), u_input.a)), select(vec4<i32>(~global1.x, var_1.a.x, -1i, countOneBits(0i)), firstTrailingBit(abs(u_input.a)), vec4<bool>(true, true, true, true))));
}

