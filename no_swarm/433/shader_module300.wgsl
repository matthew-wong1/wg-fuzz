struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global0 = array<Struct_1, 28>();
    let var_0 = false;
    var var_1 = _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.b.x, ~(~u_input.a.x | _wgslsmith_add_u32(u_input.b.x, u_input.a.x)), u_input.a.x, ~(max(u_input.b.x, u_input.a.x) & u_input.b.x)), ~abs(vec4<u32>(14822u, 4294967295u, 0u, u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-521f, -530f, -1071f, -949f) + vec4<f32>(1165f, -803f, -1000f, -1771f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-648f, -734f, -1000f, 525f), vec4<f32>(-1000f, -1000f, 1764f, -1501f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(234f, 1033f, 591f, -387f)))) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(462f, 1f, 302f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(383f)))), -1231f)))));
    let var_3 = vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-135f, 1162f)) - _wgslsmith_f_op_f32(step(var_2.x, 341f))))))), _wgslsmith_f_op_f32(-346f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(459f + var_2.x)))));
    return 45253u;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec4<u32>) -> u32 {
    global0 = array<Struct_1, 28>();
    var var_0 = global1[_wgslsmith_index_u32(abs(max(~arg_0, ~min(firstLeadingBit(1u), func_3()))), 7u)];
    let var_1 = global0[_wgslsmith_index_u32(1u & ~firstLeadingBit(~arg_2.x), 28u)];
    global1 = array<Struct_1, 7>();
    global1 = array<Struct_1, 7>();
    return _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, ~1u, _wgslsmith_clamp_u32(~(~21617u), abs(0u), min(1u, select(arg_0, arg_2.x, false)))), min(vec3<u32>(_wgslsmith_sub_u32(countOneBits(24302u), select(0u, 0u, true)), func_3(), ~(~1u)), abs(vec3<u32>(abs(var_0.a.x), arg_1, var_1.a.x))));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    global0 = array<Struct_1, 28>();
    var var_0 = -arg_0.c.zy;
    let var_1 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(~10114u, arg_0.a.x), ~firstTrailingBit(42001u), ~(~0u), func_2(u_input.b.x, _wgslsmith_sub_u32(arg_0.a.x, u_input.b.x), ~vec4<u32>(arg_0.a.x, 4294967295u, u_input.a.x, u_input.a.x))), arg_0.a), 1i, countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, arg_0.c.x, abs(-1i), var_0.x), arg_0.c)));
    var var_2 = !vec2<bool>(true, true || !(0u > arg_0.a.x));
    let var_3 = -11868i;
    return _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, _wgslsmith_clamp_u32(21037u, _wgslsmith_add_u32(1u, var_1.a.x ^ 1u), 4408u), var_1.a.x), var_1.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = arg_0.b;
    global1 = array<Struct_1, 7>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~4294967295u), ~(~arg_1.a.x)), 28u)];
    global1 = array<Struct_1, 7>();
    var var_2 = arg_2;
    return global0[_wgslsmith_index_u32(1u, 28u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-723f)));
    global1 = array<Struct_1, 7>();
    var var_2 = arg_1.a;
    var var_3 = ~_wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(arg_3.a.x, ~4294967295u));
    return func_4(Struct_1(vec4<u32>(arg_3.a.x << (23094u % 32u), arg_1.a.x, ~arg_1.a.x | u_input.a.x, arg_0.a.x), select(func_4(Struct_1(arg_0.a, 0i, vec4<i32>(arg_3.b, -2147483647i, arg_2, 0i)), func_4(Struct_1(vec4<u32>(1371u, u_input.b.x, 1u, 4294967295u), arg_2, vec4<i32>(0i, arg_3.b, arg_1.b, arg_2)), Struct_1(vec4<u32>(19477u, u_input.a.x, arg_1.a.x, 30709u), 29398i, vec4<i32>(arg_1.b, -49405i, -2147483647i, -22929i)), Struct_1(arg_3.a, -2147483647i, vec4<i32>(arg_3.b, 0i, arg_1.c.x, arg_0.b))), Struct_1(vec4<u32>(1u, arg_3.a.x, 459u, arg_0.a.x), arg_0.b, vec4<i32>(arg_1.b, arg_3.c.x, 1i, 0i))).b, arg_3.c.x, false && (arg_1.a.x >= 73796u)), arg_1.c >> (vec4<u32>(arg_1.a.x, 14217u, arg_1.a.x, ~1u) % vec4<u32>(32u))), func_4(Struct_1(_wgslsmith_div_vec4_u32(~arg_3.a, _wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, u_input.a.x, 978u, 41791u), arg_0.a)), arg_2, reverseBits(arg_0.c)), Struct_1(~select(arg_1.a, vec4<u32>(var_2.x, 4294967295u, 4294967295u, arg_0.a.x), false), _wgslsmith_clamp_i32(448i, _wgslsmith_dot_vec3_i32(arg_3.c.zww, arg_3.c.zxz), _wgslsmith_dot_vec4_i32(arg_1.c, vec4<i32>(2147483647i, arg_3.b, 43767i, arg_1.c.x))), abs(arg_0.c >> (vec4<u32>(u_input.a.x, var_2.x, var_2.x, arg_3.a.x) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(arg_0.a.x, 7u)]), global0[_wgslsmith_index_u32(select(firstTrailingBit(var_2.x), arg_3.a.x, !(true & (1000f <= var_1))), 28u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    global1 = array<Struct_1, 7>();
    var_0 = min(~u_input.b.x, _wgslsmith_add_u32(u_input.a.x << (u_input.a.x % 32u), u_input.b.x));
    let var_1 = 4294967295u;
    var var_2 = func_5(func_4(Struct_1(reverseBits(func_1(global1[_wgslsmith_index_u32(0u, 7u)])), _wgslsmith_add_i32(~2147483647i, 1i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), countOneBits(vec4<i32>(1i, -53079i, -1i, -19338i)))), Struct_1(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(21742u, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(var_1, 64146u, 1u, 0u)), ~vec4<u32>(4294967295u, var_1, 4825u, 0u)), ~(-44113i), vec4<i32>(-31727i, 0i, min(19213i, 2147483647i), abs(-13962i))), Struct_1(~(~vec4<u32>(1u, 38491u, var_1, var_1)), -1i, vec4<i32>(1i, ~(-2147483647i), select(0i, -15100i, true), _wgslsmith_mult_i32(24580i, -51771i)))), global0[_wgslsmith_index_u32(~17797u >> (_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mod_u32(3588u, 4294967295u), var_1)) % 32u), 28u)], _wgslsmith_div_i32(-6095i, min(0i, min(1i, -5669i))) >> (_wgslsmith_dot_vec4_u32(max(select(vec4<u32>(94219u, 46150u, 0u, 42128u), vec4<u32>(var_1, var_1, 4294967295u, var_1), vec4<bool>(false, false, true, false)), func_4(global1[_wgslsmith_index_u32(var_1, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 28u)], Struct_1(vec4<u32>(u_input.b.x, 0u, 82387u, u_input.a.x), -2151i, vec4<i32>(-16356i, -75982i, -33500i, 2581i))).a), _wgslsmith_mod_vec4_u32(vec4<u32>(23113u, u_input.a.x, 11416u, u_input.b.x), ~vec4<u32>(var_1, 60699u, var_1, var_1))) % 32u), Struct_1(~(~(~vec4<u32>(1u, 4294967295u, 4294967295u, var_1))), min(-1i, 1299i), max(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i))));
    global1 = array<Struct_1, 7>();
    let var_3 = select(vec4<bool>(true, (i32(-1i) * -12733i) > ~var_2.c.x, true, !(!all(vec2<bool>(true, false)))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), select(false, false, true))), vec4<bool>(true, true, any(vec3<bool>(true, false, false)), !any(vec4<bool>(true, false, true, false))), _wgslsmith_f_op_f32(ceil(1364f)) <= -111f), select(!select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, _wgslsmith_f_op_f32(ceil(1091f)) != _wgslsmith_f_op_f32(max(-492f, 876f)), !any(vec4<bool>(true, true, false, false)), any(vec3<bool>(true, false, false)) | true), ~1i == ~_wgslsmith_div_i32(var_2.b, var_2.c.x)));
    var var_4 = var_2.a;
    let var_5 = 125f < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-419f - _wgslsmith_f_op_f32(sign(-530f))), -629f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))) + 1214f)), var_2.a, var_2.a.wx);
}

