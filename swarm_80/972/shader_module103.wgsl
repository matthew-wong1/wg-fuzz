struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 13> = array<bool, 13>(true, true, false, true, false, false, true, true, true, false, false, true, true);

var<private> global1: vec2<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: i32) -> u32 {
    global0 = array<bool, 13>();
    global1 = select(~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, arg_2, 69307u), u_input.d.zzy), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_2, 1u, arg_2), vec3<u32>(arg_2, 1u, 32759u)))), vec2<u32>(global1.x, 1u), all(select(!(!vec2<bool>(arg_1, false)), vec2<bool>(true, u_input.c > -1i), !vec2<bool>(true, global0[_wgslsmith_index_u32(global1.x, 13u)]))));
    let var_0 = Struct_2(Struct_1(u_input.d.wzx, 1u), select(_wgslsmith_add_i32(~_wgslsmith_add_i32(u_input.c, -1i), -_wgslsmith_mod_i32(arg_3, u_input.a)), _wgslsmith_div_i32(~firstLeadingBit(arg_3), ~(u_input.c & arg_3)), arg_1), true, Struct_1(vec3<u32>(1u, arg_2, ~_wgslsmith_dot_vec3_u32(u_input.b.zxx, u_input.d.wwx)), firstTrailingBit(1192u | (u_input.d.x >> (0u % 32u)))));
    global0 = array<bool, 13>();
    let var_1 = select(select(!vec4<bool>(var_0.c, true, arg_1, !global0[_wgslsmith_index_u32(global1.x, 13u)]), !select(select(vec4<bool>(true, arg_1, arg_1, global0[_wgslsmith_index_u32(17031u, 13u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 13u)], arg_1, false, false), false), vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 13u)], false, global0[_wgslsmith_index_u32(23613u, 13u)]), vec4<bool>(var_0.c, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(17904u, 13u)], false)), all(select(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)], false, false), vec4<bool>(false, false, true, var_0.c), select(false, global0[_wgslsmith_index_u32(global1.x, 13u)], true)))), vec4<bool>((_wgslsmith_f_op_f32(floor(arg_0)) >= _wgslsmith_f_op_f32(-arg_0)) & false, true, arg_1, global0[_wgslsmith_index_u32(~(~(~4294967295u)), 13u)]), select(select(!vec4<bool>(var_0.c, true, false, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), !vec4<bool>(false, global0[_wgslsmith_index_u32(var_0.a.a.x, 13u)], global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(86652u, 13u)]), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.b), vec2<i32>(arg_3, arg_3)) < var_0.b), select(!vec4<bool>(true, false, var_0.c, global0[_wgslsmith_index_u32(27464u, 13u)]), !(!vec4<bool>(false, arg_1, false, arg_1)), select(select(vec4<bool>(var_0.c, false, true, false), vec4<bool>(true, false, var_0.c, arg_1), vec4<bool>(false, false, global0[_wgslsmith_index_u32(27354u, 13u)], true)), select(vec4<bool>(var_0.c, var_0.c, true, false), vec4<bool>(global0[_wgslsmith_index_u32(134853u, 13u)], arg_1, var_0.c, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), global0[_wgslsmith_index_u32(arg_2, 13u)]), true)), true));
    return global1.x;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(max(u_input.b.yxx, u_input.d.zwx), _wgslsmith_mult_u32(0u, 4294967295u << ((global1.x | 0u) % 32u)) >> (global1.x % 32u));
    global1 = vec2<u32>(_wgslsmith_mod_u32(firstTrailingBit(0u), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1429f), false, _wgslsmith_dot_vec2_u32(var_0.a.xy, var_0.a.xx), -u_input.a) >> (~(~17373u) % 32u)), _wgslsmith_div_u32(abs(_wgslsmith_dot_vec3_u32(u_input.d.yxz, vec3<u32>(21964u, 49332u, u_input.b.x)) >> (global1.x % 32u)), ~(~(u_input.b.x ^ 57882u))));
    var var_1 = any(select(!(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(56356u, 13u)])), !select(select(vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.b, 13u)], false), vec3<bool>(global0[_wgslsmith_index_u32(69791u, 13u)], false, true), global0[_wgslsmith_index_u32(51277u, 13u)]), select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(var_0.a.x, 13u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(global1.x, 13u)]), vec3<bool>(true, global0[_wgslsmith_index_u32(global1.x, 13u)], false)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b.x, 75092u), 13u)]), !vec3<bool>(!global0[_wgslsmith_index_u32(global1.x, 13u)], !global0[_wgslsmith_index_u32(var_0.b, 13u)], true)));
    let var_2 = ~_wgslsmith_sub_vec4_u32(u_input.d, _wgslsmith_add_vec4_u32(~(~vec4<u32>(global1.x, 60140u, 1559u, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(global1.x, u_input.d.x, 0u, u_input.d.x), u_input.d)));
    var_1 = (!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~15029u, u_input.b.x), 13u)] && !(!global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(33287u, var_2.x), 13u)])) || !((~0u >> (select(var_2.x, 42376u, true) % 32u)) <= min(~var_0.a.x, _wgslsmith_sub_u32(4294967295u, var_2.x)));
    return Struct_1(vec3<u32>(1u, firstLeadingBit(max(var_0.b << (46351u % 32u), 24042u)), abs(_wgslsmith_sub_u32(998u & var_2.x, global1.x | global1.x))), ~(~u_input.d.x));
}

fn func_4(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = Struct_2(Struct_1(~arg_2.a, 4294967295u), arg_0.x, func_2().a.x < 2988u, func_2());
    var var_1 = func_2();
    var_0 = Struct_2(func_2(), ~(~(u_input.e ^ 2147483647i)), global0[_wgslsmith_index_u32(~func_2().a.x, 13u)], Struct_1(u_input.b.xyz, _wgslsmith_mod_u32(select(~global1.x, global1.x, false), 1u)));
    global1 = vec2<u32>(1u, ~func_2().b & var_0.d.b);
    global0 = array<bool, 13>();
    return ~var_1.a;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    global0 = array<bool, 13>();
    let var_0 = Struct_1(func_4(vec4<i32>(arg_0, ~u_input.a, max(-arg_0, 2147483647i), 2147483647i), false, func_2()), 7249u);
    var var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(6335i), -26736i, arg_0 ^ arg_0, firstTrailingBit(20752i)), ~max(vec4<i32>(arg_0, -29615i, u_input.a, ~u_input.e), vec4<i32>(-1i) * -vec4<i32>(arg_0, arg_0, -1i, arg_0)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<u32>(u_input.b.x, u_input.d.x ^ firstTrailingBit(global1.x));
    let var_0 = vec4<bool>(true, any(select(!select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(15919u, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(global1.x, 13u)], false, global0[_wgslsmith_index_u32(0u, 13u)]), global0[_wgslsmith_index_u32(global1.x, 13u)]), vec3<bool>(global0[_wgslsmith_index_u32(min(u_input.b.x, global1.x), 13u)], true, global0[_wgslsmith_index_u32(1u, 13u)]), !select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 13u)], global0[_wgslsmith_index_u32(74202u, 13u)], true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)], true), global0[_wgslsmith_index_u32(4294967295u, 13u)]))), !global0[_wgslsmith_index_u32(abs(_wgslsmith_add_u32(u_input.b.x, u_input.d.x)) ^ u_input.d.x, 13u)], !global0[_wgslsmith_index_u32(51813u, 13u)]);
    var var_1 = Struct_2(func_1(79291i), u_input.e << (0u % 32u), false, Struct_1(firstLeadingBit(vec3<u32>(global1.x, _wgslsmith_div_u32(54625u, 1u), 5384u)), func_4(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.e, -55654i, u_input.c, 2147483647i), vec4<i32>(-1i, u_input.c, u_input.c, 2147483647i)), 4331i >= (u_input.e >> (global1.x % 32u)), func_1(min(2147483647i, 2147483647i))).x));
    let var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b, 2147483647i, var_1.b), vec3<i32>(2147483647i, -5868i, 25943i))), 0i), firstLeadingBit(~vec2<i32>(-2147483647i, u_input.a))) << (~(~vec2<u32>(0u, u_input.b.x | var_1.a.a.x)) % vec2<u32>(32u));
    global1 = ~(~vec2<u32>(9390u, 34016u));
    var var_3 = ~vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-28812i, var_1.b, 39221i, 2147483647i) >> (u_input.b % vec4<u32>(32u)), -vec4<i32>(2147483647i, 2147483647i, 615i, var_1.b)), -u_input.e >> (37098u % 32u)), _wgslsmith_add_i32(u_input.a, -4416i), 12080i, 1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~(~_wgslsmith_div_u32(u_input.d.x, 27846u)), min(~u_input.d.x, 12526u)), vec3<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(230f + -1061f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1256f, -373f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-183f)), _wgslsmith_f_op_f32(ceil(865f))))))));
}

