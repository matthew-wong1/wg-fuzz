struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<vec2<i32>, 10>;

var<private> global2: bool = true;

var<private> global3: array<Struct_1, 5>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>) -> i32 {
    let var_0 = _wgslsmith_clamp_i32(arg_1.x, arg_0.b.x, -5243i);
    global2 = !(!((~arg_0.b.x << (_wgslsmith_add_u32(50032u, 1u) % 32u)) < var_0));
    let var_1 = 0u;
    let var_2 = 16038u;
    return arg_0.b.x;
}

fn func_2() -> vec2<bool> {
    global1 = array<vec2<i32>, 10>();
    let var_0 = vec4<u32>(min(~(~_wgslsmith_mult_u32(48019u, 41113u)), 1u), ~u_input.a, ~(~1u), ~_wgslsmith_mult_u32(1u, 0u & (u_input.a >> (95u % 32u))));
    let var_1 = Struct_1(true, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(1i, 30102i, -2147483647i), ~vec3<i32>(-7030i, -2147483647i, -59113i) >> (vec3<u32>(13296u, var_0.x, 94659u) % vec3<u32>(32u)), vec3<i32>(~0i, ~2147483647i, firstLeadingBit(10989i))), -vec3<i32>(i32(-1i) * -1i, 1i, ~70444i)), ~countOneBits(var_0.xww), vec4<i32>(-2147483647i, func_3(Struct_1(false, vec3<i32>(-2147483647i, 1i, 16905i), vec3<u32>(var_0.x, 28946u, u_input.a), vec4<i32>(-1i, 178i, 0i, 0i)), vec4<i32>(-1i, -2147483647i, 1i, -2147483647i) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 1u) % vec4<u32>(32u))) & ~(~(-27013i)), 1i, abs(abs(~0i))));
    var var_2 = global3[_wgslsmith_index_u32(38868u, 5u)];
    var var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, var_2.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(13146u, ~18068u, 1u), ~var_2.c)), _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(var_1.c.x, 4294967295u, 1u), select(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 99515u, u_input.a), vec3<u32>(var_0.x, var_0.x, 4294967295u)), ~var_1.c, var_1.a), var_2.c), _wgslsmith_mult_vec3_u32(var_2.c, var_0.wzw)), vec3<u32>(~1u, var_0.x, u_input.a) << (~(~vec3<u32>(41730u, var_2.c.x, 4294967295u) ^ ~var_1.c) % vec3<u32>(32u)));
    return vec2<bool>(var_2.a, all(select(select(!vec2<bool>(false, var_2.a), vec2<bool>(var_2.a, var_2.a), all(vec4<bool>(var_2.a, var_1.a, var_2.a, true))), vec2<bool>(true, any(vec4<bool>(var_2.a, var_1.a, var_2.a, var_1.a))), !var_1.a)));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = -1i;
    var var_1 = _wgslsmith_add_i32(arg_0.x, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(11897i, var_0), _wgslsmith_div_vec2_i32(vec2<i32>(45894i, 0i), vec2<i32>(arg_2.b.x, arg_1.b.x))), arg_1.d.x >> (arg_2.c.x % 32u)));
    let var_2 = vec4<bool>(true, any(!func_2()), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1346f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-242f)) * _wgslsmith_f_op_f32(361f - 428f))) > _wgslsmith_f_op_f32(-1123f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(229f, -335f) - _wgslsmith_f_op_f32(f32(-1f) * -1000f))), true);
    var var_3 = arg_2;
    var var_4 = global3[_wgslsmith_index_u32(abs(~_wgslsmith_dot_vec2_u32(abs(arg_3 << (var_3.c.yy % vec2<u32>(32u))), vec2<u32>(u_input.a, arg_2.c.x) << (vec2<u32>(arg_2.c.x, u_input.a) % vec2<u32>(32u)))), 5u)];
    return var_2.zy;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<i32>, 10>();
    global0 = array<Struct_1, 11>();
    var var_0 = any(func_1(countOneBits(vec2<i32>(1i, -65478i)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(u_input.a), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<u32>(u_input.a, 38800u, u_input.a, u_input.a))), 11u)], global0[_wgslsmith_index_u32(firstLeadingBit(max(u_input.a, u_input.a)), 11u)], vec2<u32>(u_input.a, 1u))) | false;
    var var_1 = abs(vec2<u32>(_wgslsmith_mod_u32(0u, u_input.a), 87982u));
    var var_2 = 1035f;
    let var_3 = max(select(~select(abs(vec4<i32>(-1i, -15710i, -2147483647i, 1i)), ~vec4<i32>(-15569i, 10227i, -7028i, 2558i), true), ~(~(~vec4<i32>(1i, -1i, -12977i, -62688i))), true), ~(-vec4<i32>(~(-2147483647i), firstLeadingBit(30655i), ~38861i, -21023i >> (u_input.a % 32u))));
    var var_4 = true == all(!select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false))));
    global3 = array<Struct_1, 5>();
    var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(1u & _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 18372u) | vec2<u32>(u_input.a, 4294967295u), vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(u_input.a, 18486u)), ~(~vec2<u32>(25704u, 12580u))), ~1u, reverseBits(var_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-490f * _wgslsmith_f_op_f32(f32(-1f) * -838f)) + -103f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f * 1525f)))));
}

