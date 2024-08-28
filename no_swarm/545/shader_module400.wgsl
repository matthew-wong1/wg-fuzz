struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: bool = false;

var<private> global2: bool;

var<private> global3: array<Struct_1, 21>;

var<private> global4: array<i32, 8>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = global4[_wgslsmith_index_u32(min(1u, ~abs(43292u)), 8u)];
    global1 = true;
    let var_1 = 34800i;
    return -_wgslsmith_mod_i32(global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(arg_0.a.x, ~2955u), 8u)], arg_0.b);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(u_input.c.xzw, global3[_wgslsmith_index_u32(max(u_input.b.x, reverseBits(firstTrailingBit(~0u))), 21u)], 42891i, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1f)) * _wgslsmith_f_op_f32(min(653f, -1000f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1141f * 820f), _wgslsmith_f_op_f32(2254f * 1378f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))));
    var var_1 = global3[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(6907u, var_0.b.a.x), vec2<u32>(u_input.a.x, var_0.b.a.x)), u_input.a.x >> (max(1u, u_input.a.x) % 32u)), abs(abs(u_input.b))), 21u)];
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, firstLeadingBit(firstTrailingBit(-3790i) ^ 1i), -1i), vec3<i32>(global4[_wgslsmith_index_u32(~78420u, 8u)] << (~u_input.a.x % 32u), -var_1.b & -16650i, min(-2147483647i, -1i)) | ~countOneBits(vec3<i32>(9635i, var_1.b, 17558i)));
    var var_3 = -986f;
    var var_4 = func_3(var_0.b);
    return var_0;
}

fn func_1() -> i32 {
    let var_0 = vec3<i32>(u_input.c.x, 0i << (select(0u, 5979u, true) % 32u), -_wgslsmith_div_i32(-35129i, i32(-1i) * -global4[_wgslsmith_index_u32(1u, 8u)]));
    var var_1 = func_2();
    let var_2 = var_1.b;
    global0 = select(vec2<bool>(global0.x, true), !(!select(select(vec2<bool>(false, global0.x), vec2<bool>(true, true), false), !vec2<bool>(true, global0.x), select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), false))), !vec2<bool>(global0.x, (global0.x | global0.x) | !global0.x));
    global1 = true;
    return ~(_wgslsmith_div_i32(reverseBits(var_2.b), _wgslsmith_mult_i32(-54801i, var_2.b)) ^ -_wgslsmith_clamp_i32(-2147483647i, -1i, global4[_wgslsmith_index_u32(var_1.b.a.x, 8u)])) ^ var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a ^ abs(vec3<u32>(~u_input.b.x, ~u_input.b.x, _wgslsmith_mod_u32(13697u, u_input.a.x))), u_input.c.x, 1i);
    global3 = array<Struct_1, 21>();
    let var_1 = _wgslsmith_mult_i32(func_1(), -28300i);
    let var_2 = _wgslsmith_mult_i32(u_input.c.x, -func_1());
    var var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(~u_input.a.x, 8u)], firstTrailingBit(abs(-20521i))), ~(-_wgslsmith_mult_vec2_i32(vec2<i32>(global4[_wgslsmith_index_u32(0u, 8u)], 0i), max(vec2<i32>(-36315i, 17184i), vec2<i32>(2147483647i, var_0.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<i32>(_wgslsmith_sub_i32(max(-2147483647i, var_1), firstTrailingBit(-4540i)), ~(~u_input.c.x), abs(_wgslsmith_dot_vec3_i32(u_input.c.wzw, u_input.c.yyw))), vec3<i32>(max(u_input.c.x, 2147483647i), func_2().c, _wgslsmith_add_i32(2147483647i, -1i)) >> (u_input.a % vec3<u32>(32u)), global0.x), abs(_wgslsmith_add_u32(~firstTrailingBit(17249u), ~28181u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-821f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(126f)) + _wgslsmith_f_op_f32(541f - 941f))) * -1210f), -2147483647i, countOneBits(_wgslsmith_dot_vec3_u32(func_2().b.a, var_0.a)));
}

