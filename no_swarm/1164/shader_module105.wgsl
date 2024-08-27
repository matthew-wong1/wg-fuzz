struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8> = array<vec4<f32>, 8>(vec4<f32>(-1571f, 1108f, 117f, 1000f), vec4<f32>(-453f, 1244f, -1475f, 650f), vec4<f32>(-1712f, -205f, -799f, -140f), vec4<f32>(-545f, 1116f, -1702f, 1027f), vec4<f32>(171f, -1485f, 1280f, 601f), vec4<f32>(-374f, -1777f, -788f, 1613f), vec4<f32>(381f, -112f, 1000f, -1000f), vec4<f32>(1000f, 430f, -1465f, 1115f));

var<private> global1: array<Struct_1, 16>;

var<private> global2: array<bool, 21> = array<bool, 21>(true, false, false, false, true, false, true, true, false, true, true, false, true, true, true, false, true, false, true, true, false);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1) -> u32 {
    let var_0 = vec3<bool>(select(false | !(36371i <= u_input.b.x), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(arg_1.b.x, u_input.a, 38588u), arg_1.c), _wgslsmith_dot_vec2_u32(arg_1.b.yx, arg_1.b.yx & vec2<u32>(4294967295u, 0u))), 21u)], (all(vec3<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 21u)])) || (u_input.b.x <= u_input.b.x)) | true), 1000f >= _wgslsmith_f_op_f32(max(arg_1.e, _wgslsmith_f_op_f32(-arg_1.e))), any(arg_0.xzw));
    var var_1 = global1[_wgslsmith_index_u32(arg_1.b.x, 16u)];
    var var_2 = select(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, var_1.d.x, 0i, -countOneBits(1i)), ~vec4<i32>(-16490i, select(-1924i, u_input.b.x, global2[_wgslsmith_index_u32(var_1.a, 21u)]), arg_1.d.x ^ u_input.b.x, abs(-22234i))), ~_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, var_1.d.x, u_input.b.x), vec4<i32>(0i, arg_1.d.x, -1331i, -2147483647i)), vec4<i32>(-34034i, u_input.b.x, u_input.b.x, 0i), firstLeadingBit(vec4<i32>(2147483647i, 11432i, u_input.b.x, u_input.b.x))) << (var_1.b % vec4<u32>(32u)), arg_0);
    let var_3 = !(!(!select(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 21u)]), var_0.zx, any(vec2<bool>(var_0.x, false)))));
    let var_4 = global1[_wgslsmith_index_u32(var_1.c ^ (firstLeadingBit(10287u | u_input.a) & arg_1.b.x), 16u)];
    return u_input.a;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    var var_0 = abs(_wgslsmith_clamp_vec4_u32(~(select(vec4<u32>(4294967295u, 30936u, arg_0.b.x, 24402u), arg_0.b, vec4<bool>(arg_2, true, false, arg_2)) ^ reverseBits(arg_0.b)), arg_0.b, vec4<u32>(max(arg_0.a, arg_0.c), u_input.a >> (u_input.a % 32u), 30204u, ~u_input.a) | arg_0.b));
    global2 = array<bool, 21>();
    global0 = array<vec4<f32>, 8>();
    let var_1 = Struct_1(~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.x, arg_0.b.x, 24452u), var_0.wwy), 0u), _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 44505u, 37177u, 0u), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(arg_0.b, arg_0.b), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.x, u_input.a, 62849u), arg_0.b))) ^ select(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.a, 1u, arg_0.b.x), ~vec4<u32>(7716u, u_input.a, 0u, 76992u)), ~vec4<u32>(1u, u_input.a, u_input.a, var_0.x), true), _wgslsmith_div_u32(u_input.a, u_input.a), vec2<i32>(arg_0.d.x, u_input.b.x), -710f);
    return i32(-1i) * -2147483647i;
}

fn func_2(arg_0: bool) -> vec2<i32> {
    return ~vec2<i32>(countOneBits(27723i), func_4(global1[_wgslsmith_index_u32(u_input.a | func_3(vec4<bool>(false, false, arg_0, arg_0), Struct_1(1u, vec4<u32>(u_input.a, u_input.a, 37793u, u_input.a), 0u, vec2<i32>(10080i, u_input.b.x), 176f)), 16u)], _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, -17062i, u_input.b.x)), arg_0));
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    return Struct_1(abs(~_wgslsmith_add_u32(u_input.a, _wgslsmith_add_u32(36881u, 28555u))), ~_wgslsmith_sub_vec4_u32(~(vec4<u32>(arg_0.b.x, arg_0.b.x, 18908u, u_input.a) | arg_0.b), arg_0.b), ~(~(arg_0.b.x << (~u_input.a % 32u))), vec2<i32>(-1i) * -max(arg_0.d, max(vec2<i32>(arg_0.d.x, arg_0.d.x), vec2<i32>(arg_0.d.x, arg_0.d.x))), arg_0.e);
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> vec2<u32> {
    var var_0 = -30184i;
    let var_1 = func_5(Struct_1(arg_1.x, _wgslsmith_div_vec4_u32(arg_1, firstTrailingBit(vec4<u32>(3336u, 28927u, 23774u, arg_1.x))), arg_1.x, vec2<i32>(-1i) * -func_2(true), -633f));
    var_0 = -2147483647i;
    var var_2 = select(select(!vec4<bool>(false, arg_2, arg_2, true), select(select(select(vec4<bool>(arg_0, arg_0, false, arg_2), vec4<bool>(true, true, global2[_wgslsmith_index_u32(39499u, 21u)], false), true), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, arg_2, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 21u)], true, arg_2, true)), any(vec3<bool>(false, arg_2, true))), !vec4<bool>(arg_0, global2[_wgslsmith_index_u32(var_1.b.x, 21u)], true, true), !vec4<bool>(arg_0, true, true, true)), vec4<bool>(true, true, any(vec3<bool>(true, false, false)) | any(vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 21u)], arg_2, false)), true)), vec4<bool>(any(select(!vec4<bool>(true, arg_2, global2[_wgslsmith_index_u32(var_1.a, 21u)], true), vec4<bool>(false, arg_0, true, arg_0), all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 21u)], false, true)))), true == !all(vec4<bool>(arg_0, arg_2, global2[_wgslsmith_index_u32(u_input.a, 21u)], false)), arg_2, !global2[_wgslsmith_index_u32(~var_1.a, 21u)]), !(!select(vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(38670u, 21u)]), !vec4<bool>(global2[_wgslsmith_index_u32(var_1.c, 21u)], false, arg_2, global2[_wgslsmith_index_u32(var_1.c, 21u)]), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.a, 21u)], arg_0, false, true))));
    let var_3 = -(14534i ^ var_1.d.x);
    return vec2<u32>(~1u | _wgslsmith_mod_u32(min(u_input.a ^ arg_1.x, select(arg_1.x, 1u, false)), max(_wgslsmith_mult_u32(0u, u_input.a), var_1.b.x)), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 8>();
    global1 = array<Struct_1, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(func_1(global2[_wgslsmith_index_u32(u_input.a, 21u)], vec4<u32>(firstTrailingBit(0u), ~u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a), 7087u) | (select(vec4<u32>(37769u, 4294967295u, 33655u, u_input.a), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), global2[_wgslsmith_index_u32(u_input.a, 21u)]) << (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)) % vec4<u32>(32u))), all(vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_sub_i32(u_input.b.x, -36128i)), vec3<u32>(_wgslsmith_mod_u32(~(u_input.a | 42934u), ~68657u), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.a, func_1(false, vec4<u32>(6041u, u_input.a, u_input.a, u_input.a), global2[_wgslsmith_index_u32(0u, 21u)], -1i).x), 4294967295u), _wgslsmith_mult_u32(u_input.a, 4294967295u)), global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 1u), vec4<u32>(u_input.a, 31857u, u_input.a, 16912u)), _wgslsmith_div_u32(u_input.a, 13054u))), 8u)], reverseBits(func_5(func_5(func_5(global1[_wgslsmith_index_u32(u_input.a, 16u)]))).b.yz), vec2<f32>(-680f, -1339f));
}

