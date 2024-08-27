struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 29> = array<vec4<u32>, 29>(vec4<u32>(57106u, 22089u, 0u, 0u), vec4<u32>(0u, 0u, 0u, 0u), vec4<u32>(6861u, 7754u, 0u, 18866u), vec4<u32>(87798u, 6877u, 32787u, 5357u), vec4<u32>(1u, 1u, 4273u, 0u), vec4<u32>(1u, 0u, 27236u, 9898u), vec4<u32>(71939u, 4294967295u, 1u, 4294967295u), vec4<u32>(28519u, 72399u, 564u, 9772u), vec4<u32>(19353u, 80718u, 4294967295u, 1u), vec4<u32>(21186u, 59671u, 108399u, 48514u), vec4<u32>(99655u, 1u, 48253u, 86493u), vec4<u32>(4294967295u, 1u, 56145u, 1u), vec4<u32>(19111u, 0u, 1u, 0u), vec4<u32>(1u, 24093u, 44333u, 24670u), vec4<u32>(31207u, 63529u, 1u, 36719u), vec4<u32>(4294967295u, 65936u, 11193u, 0u), vec4<u32>(21842u, 4294967295u, 58595u, 53035u), vec4<u32>(1u, 0u, 4900u, 44868u), vec4<u32>(53932u, 6726u, 44892u, 42377u), vec4<u32>(19436u, 1u, 1u, 49106u), vec4<u32>(1u, 23282u, 1u, 60452u), vec4<u32>(1u, 41145u, 8319u, 1u), vec4<u32>(74559u, 30432u, 25042u, 1u), vec4<u32>(4294967295u, 25207u, 1u, 13072u), vec4<u32>(0u, 1u, 16089u, 5857u), vec4<u32>(9127u, 4294967295u, 9336u, 22302u), vec4<u32>(4294967295u, 73892u, 4294967295u, 75381u), vec4<u32>(0u, 100503u, 1u, 1u), vec4<u32>(1u, 48891u, 58383u, 0u));

var<private> global1: array<bool, 8> = array<bool, 8>(true, true, false, true, false, true, true, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    let var_0 = u_input.d;
    var var_1 = (-3410i << (~(~_wgslsmith_div_u32(47782u, u_input.c.x)) % 32u)) | -_wgslsmith_clamp_i32(~(var_0 >> (u_input.c.x % 32u)), firstTrailingBit(24951i), -var_0);
    global1 = array<bool, 8>();
    var var_2 = 100005u;
    return Struct_1(_wgslsmith_div_u32(u_input.c.x, ~44113u), u_input.d);
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: bool, arg_3: vec2<bool>) -> Struct_1 {
    var var_0 = abs(vec3<u32>(u_input.c.x, ~(~countOneBits(0u)), 47476u));
    var var_1 = !select(!(!vec4<bool>(arg_3.x, false, arg_2, false)), vec4<bool>(select(select(arg_0.x, true, true), any(vec3<bool>(arg_0.x, arg_2, true)), true), select(false, arg_2, arg_3.x) == true, all(!vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 8u)], true, false, global1[_wgslsmith_index_u32(4294967295u, 8u)])), arg_2), !select(vec4<bool>(arg_3.x, arg_2, arg_2, arg_2), !vec4<bool>(arg_3.x, false, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_3.x, global1[_wgslsmith_index_u32(var_0.x, 8u)])));
    var var_2 = Struct_4(~0u, !select(arg_0, arg_0, arg_2), Struct_1(u_input.a, func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(259f, 610f, -654f))))).b));
    let var_3 = u_input.a;
    return var_2.c;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    var var_0 = func_3(arg_0, u_input.d, true, select(!(!select(vec2<bool>(false, arg_1), vec2<bool>(false, true), arg_1)), !arg_0.zz, arg_0.zz));
    var_0 = Struct_1(abs(_wgslsmith_mult_u32(firstTrailingBit(1u), var_0.a)), select(-_wgslsmith_add_i32(-u_input.d, -u_input.d), ~u_input.d, false));
    global0 = array<vec4<u32>, 29>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(101f)), _wgslsmith_f_op_f32(floor(-314f)))))));
    let var_2 = !arg_0.x && global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, countOneBits(u_input.a)), 8u)];
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 29>();
    let var_0 = vec4<i32>(u_input.d, u_input.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, ~abs(u_input.e), -2147483647i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, u_input.d), vec2<i32>(2147483647i, u_input.d)), u_input.e)), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(44833i, -2350i, u_input.e, u_input.d), vec4<i32>(2147483647i, -57172i, 2147483647i, u_input.d))), ~vec4<i32>(u_input.e, 29683i, u_input.e, -8879i))), u_input.e);
    let var_1 = -909f;
    global1 = array<bool, 8>();
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1800f, 433f, 1993f) + vec3<f32>(var_1, -1380f, var_1))))))));
    var var_3 = vec3<bool>(global1[_wgslsmith_index_u32(~func_2(select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 8u)], global1[_wgslsmith_index_u32(var_2.a, 8u)]), vec3<bool>(global1[_wgslsmith_index_u32(29455u, 8u)], global1[_wgslsmith_index_u32(var_2.a, 8u)], true), global1[_wgslsmith_index_u32(1u, 8u)]), global1[_wgslsmith_index_u32(4294967295u, 8u)]), 8u)] && true, false, !global1[_wgslsmith_index_u32(countOneBits(var_2.a), 8u)]);
    var var_4 = !(!select(select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 8u)], true, false, global1[_wgslsmith_index_u32(40111u, 8u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 8u)], global1[_wgslsmith_index_u32(78654u, 8u)], var_3.x), select(vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_2.a, 8u)], var_3.x), vec4<bool>(false, true, global1[_wgslsmith_index_u32(var_2.a, 8u)], global1[_wgslsmith_index_u32(74473u, 8u)]))), vec4<bool>(true, true, true, u_input.d == u_input.e), vec4<bool>(global1[_wgslsmith_index_u32(~64994u, 8u)], any(vec3<bool>(global1[_wgslsmith_index_u32(var_2.a, 8u)], false, false)), var_1 >= var_1, var_3.x || false)));
    global0 = array<vec4<u32>, 29>();
    let var_5 = Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(abs(var_2.a), firstLeadingBit(u_input.b), _wgslsmith_mult_u32(59639u, 20842u)), ~(~vec3<u32>(0u, 8297u, 8468u))), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(~(~var_0.x), _wgslsmith_div_i32(var_0.x >> (7181u % 32u), var_0.x >> (113249u % 32u))), _wgslsmith_mod_i32(1806i, -2147483647i), ~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-389f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 309f)), -(_wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(7360i, -27629i, -49466i)), firstTrailingBit(var_0.xzx)) << (u_input.a % 32u)));
}

