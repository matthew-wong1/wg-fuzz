struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-29256i), Struct_1(2147483647i), Struct_1(-35532i), Struct_1(2147483647i), Struct_1(-31648i));

var<private> global1: array<bool, 23> = array<bool, 23>(true, true, true, false, false, false, false, true, true, false, true, false, false, true, false, true, true, true, false, false, true, true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    global1 = array<bool, 23>();
    global1 = array<bool, 23>();
    global0 = array<Struct_1, 5>();
    var var_0 = ~vec3<i32>(_wgslsmith_sub_i32(-23011i, ~(u_input.b >> (u_input.c % 32u))), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.e, vec2<i32>(u_input.d, 13517i)) | (u_input.d ^ 14793i), u_input.a.x), _wgslsmith_mod_i32(-1i, min(u_input.d, 1i)));
    let var_1 = Struct_3(~(~(countOneBits(vec2<u32>(30998u, 4020u)) ^ ~vec2<u32>(u_input.c, u_input.c))), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.c), u_input.c) >> (u_input.c % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.c, max(u_input.c, 1u)), abs(firstTrailingBit(vec2<u32>(u_input.c, u_input.c))))), 5u)], (~(i32(-1i) * -31776i) ^ countOneBits(~u_input.a.x)) << (_wgslsmith_sub_u32(u_input.c, 2129u) % 32u));
    return var_0.x;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(-vec2<i32>((u_input.b ^ -7542i) << (65885u % 32u), ~firstTrailingBit(u_input.e.x)));
    let var_1 = Struct_4(-1405f, -var_0.x);
    global1 = array<bool, 23>();
    var var_2 = _wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(1u, 1u, 1u))), ~countOneBits(countOneBits(~vec3<u32>(u_input.c, u_input.c, u_input.c))));
    let var_3 = !(!(global1[_wgslsmith_index_u32(4294967295u, 23u)] || (false | global1[_wgslsmith_index_u32(20988u, 23u)])) | all(vec2<bool>(false != global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(u_input.c >> (73893u % 32u), 23u)])));
    return Struct_1(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-11293i, var_1.b, var_0.x, u_input.e.x), vec4<i32>(-38141i, var_0.x, var_1.b, u_input.d)), reverseBits(vec4<i32>(var_1.b, var_0.x, 1i, var_0.x))), min(func_3(), firstLeadingBit(0i))) | firstTrailingBit(~(~0i)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = func_2();
    global0 = array<Struct_1, 5>();
    var var_1 = Struct_3(abs(reverseBits(firstLeadingBit(vec2<u32>(41867u, 4294967295u)) | (vec2<u32>(u_input.c, 27544u) & vec2<u32>(4294967295u, 4294967295u)))), global0[_wgslsmith_index_u32(1u, 5u)], var_0.a);
    var_0 = func_2();
    let var_2 = Struct_1(arg_0.x);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(vec2<i32>(abs(i32(-1i) * -20802i), select(1766i, 1i, !global1[_wgslsmith_index_u32(u_input.c, 23u)]))), select(vec2<bool>(global1[_wgslsmith_index_u32(61578u, 23u)], all(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.c, 23u)], false, global1[_wgslsmith_index_u32(1u, 23u)], true))), vec2<bool>(false, global1[_wgslsmith_index_u32(~(~u_input.c), 23u)]), global1[_wgslsmith_index_u32(abs(17918u), 23u)]), func_1(u_input.e), func_2());
    let var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(648f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(404f)))))), var_0.c.a);
    var var_2 = reverseBits(vec3<i32>(1i, var_1.b << (0u % 32u), countOneBits(_wgslsmith_div_i32(-34207i << (u_input.c % 32u), func_2().a))));
    var var_3 = var_1;
    var_3 = Struct_4(_wgslsmith_f_op_f32(-var_3.a), var_0.c.a);
    var_2 = countOneBits(-vec3<i32>(var_2.x, -_wgslsmith_div_i32(var_1.b, var_2.x), _wgslsmith_mult_i32(abs(var_1.b), var_1.b)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.c, ~u_input.c));
}

