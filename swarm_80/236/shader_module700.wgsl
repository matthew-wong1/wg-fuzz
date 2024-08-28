struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<u32>,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<bool, 19>;

var<private> global2: array<Struct_3, 16>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = array<bool, 19>();
    var var_0 = 1i;
    let var_1 = 53648i << (~_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.c & 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 17346u), vec3<u32>(u_input.a.x, 1u, 4294967295u))), 17510u) % 32u);
    let var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, var_1), -48423i ^ (var_1 << (~_wgslsmith_div_u32(u_input.c, u_input.c) % 32u)));
    var var_3 = ~(u_input.a << (max(u_input.a, vec2<u32>(u_input.a.x, ~7390u)) % vec2<u32>(32u)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, -214f, !(true | global1[_wgslsmith_index_u32(~var_3.x, 19u)]))));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_5) -> i32 {
    global2 = array<Struct_3, 16>();
    global0 = !select(select(!(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 19u)], true, false, global0.x)), vec4<bool>(true, false, true, arg_2.b >= arg_2.c.b), vec4<bool>(true, true, true, true)), select(select(select(vec4<bool>(true, false, true, global1[_wgslsmith_index_u32(79214u, 19u)]), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], true, false, false), false), select(vec4<bool>(false, true, false, true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 19u)], true, global1[_wgslsmith_index_u32(48983u, 19u)], true), vec4<bool>(global0.x, global1[_wgslsmith_index_u32(u_input.b, 19u)], false, true)), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(arg_1.x, 19u)])), !select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(false, true, true, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(27332u, 19u)], global0.x, global0.x, true)), true), !(!global0.x));
    global2 = array<Struct_3, 16>();
    var var_0 = firstTrailingBit(-firstTrailingBit(abs(abs(arg_2.a.d.x))));
    let var_1 = Struct_2(arg_2.c, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-640f)), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(trunc(arg_2.a.e))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1f)), _wgslsmith_f_op_f32(-931f - _wgslsmith_f_op_f32(abs(557f)))), ~(-select(vec3<i32>(arg_0, arg_0, 19086i), vec3<i32>(arg_0, 0i, arg_0), global0.ywy)), _wgslsmith_sub_vec4_i32(firstTrailingBit(arg_2.c.d), -vec4<i32>(arg_2.a.d.x, 5834i, arg_0, arg_0) >> (vec4<u32>(arg_1.x, 9701u, 0u, 33417u) % vec4<u32>(32u))), arg_2.c.a.x), arg_2.a, arg_2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.c.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-930f, -714f, 418f), arg_2.a.a))) * arg_2.c.a));
    return _wgslsmith_add_i32(~arg_2.c.c.x, abs(firstLeadingBit(abs(arg_0 ^ var_1.c.d.x))));
}

fn func_2() -> i32 {
    global0 = !vec4<bool>(!global1[_wgslsmith_index_u32(~4294967295u, 19u)] && false, false, global0.x, global0.x & global0.x);
    var var_0 = func_4(1i, ~vec2<u32>(_wgslsmith_sub_u32(80399u, 64222u) << (_wgslsmith_sub_u32(1u, u_input.b) % 32u), 1u << (0u % 32u)), Struct_5(Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-113f, -1673f, -141f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1518f, 732f, 1432f) * vec3<f32>(-1697f, -1000f, 774f))), _wgslsmith_f_op_f32(func_3()), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 32745i, -8377i), vec3<i32>(145i, 2147483647i, -58669i), vec3<i32>(70804i, -66199i, 1i)), ~firstLeadingBit(vec4<i32>(-16770i, 1i, -2147483647i, 0i)), 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -472f))))), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1502f, 606f, -126f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f)), vec3<i32>(~0i, i32(-1i) * -27184i, 0i), countOneBits(vec4<i32>(-2147483647i, -1i, 2147483647i, -2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1327f))));
    let var_1 = vec2<u32>(~reverseBits(41257u), firstLeadingBit(103709u));
    global1 = array<bool, 19>();
    let var_2 = Struct_4(_wgslsmith_f_op_f32(f32(-1f) * -527f), ~(~(~vec4<u32>(var_1.x, 1u, u_input.a.x, u_input.c) | vec4<u32>(77125u, 0u, var_1.x, u_input.b))));
    return abs(1i);
}

fn func_1() -> bool {
    global0 = !vec4<bool>(!(14118i < func_2()), false, any(!select(global0.yz, vec2<bool>(true, global0.x), global0.yx)), global0.x);
    let var_0 = min(countOneBits(51903u), _wgslsmith_add_u32(~(~(~u_input.c)), ~reverseBits(u_input.c | u_input.c)));
    let var_1 = true;
    var var_2 = 1i;
    var var_3 = global0.x;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!vec4<bool>(any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(u_input.c, 19u)])), true, true, !global0.x)), vec4<bool>(global0.x, false, true, true), true | !(u_input.c <= firstLeadingBit(1u)));
    global2 = array<Struct_3, 16>();
    let var_1 = vec3<u32>(1u, _wgslsmith_add_u32(48187u, 19541u), u_input.c) << (~vec3<u32>(1u, ~firstLeadingBit(1u), 4294967295u) % vec3<u32>(32u));
    global0 = select(!vec4<bool>(var_0.x, true, global0.x, true), vec4<bool>(true, func_1(), any(!var_0.xz), all(!global0.xz)), select(!vec4<bool>(global0.x, global1[_wgslsmith_index_u32(select(var_1.x, u_input.a.x, false), 19u)], global1[_wgslsmith_index_u32(~25939u, 19u)], all(vec2<bool>(var_0.x, false))), !select(vec4<bool>(true, global0.x, true, global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global0.x, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true)), true), !global0.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-254f, 900f))), vec2<f32>(-104f, -792f), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 19u)], global0.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -335f)))));
    var var_3 = vec4<u32>(u_input.a.x, ~countOneBits(firstLeadingBit(_wgslsmith_clamp_u32(4294967295u, var_1.x, var_1.x))), _wgslsmith_div_u32(u_input.a.x, 9888u) & (~29582u | (~var_1.x << (var_1.x % 32u))), 5654u);
    var var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, 1050f, var_2.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-1335f, 1300f, var_2.x), vec3<f32>(var_2.x, 1339f, var_2.x)), false)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, -229f, 281f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1288f, var_2.x, 357f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(983f, 1131f, 565f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_2.x + var_2.x), var_2.x))))), -vec3<i32>(abs(select(-48838i, 0i, true)), _wgslsmith_add_i32(52087i, -15690i), 1i), abs(-vec4<i32>(~13480i, -11291i, _wgslsmith_clamp_i32(7092i, 2147483647i, -1i), select(23996i, 2147483647i, global1[_wgslsmith_index_u32(35942u, 19u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-795f, _wgslsmith_f_op_f32(-var_2.x), select(true, global1[_wgslsmith_index_u32(45459u, 19u)], global1[_wgslsmith_index_u32(u_input.c, 19u)])))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-var_4.c.yx), firstLeadingBit(select(var_1.xz, ~vec2<u32>(4294967295u, 13095u), global0.yw) & reverseBits(vec2<u32>(var_3.x, var_1.x))));
}

