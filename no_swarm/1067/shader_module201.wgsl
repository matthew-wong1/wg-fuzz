struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30> = array<i32, 30>(i32(-2147483648), 0i, 11693i, 1939i, -45898i, 4823i, -775i, -11487i, i32(-2147483648), 19305i, 1i, 1i, 0i, -100083i, -61533i, 2147483647i, -47895i, 0i, 2147483647i, 2147483647i, -12127i, 73598i, -1i, -30875i, 2147483647i, 19338i, -34368i, 0i, 10796i, -1i);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(select(1653f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -357f))), _wgslsmith_mod_i32(55819i, u_input.d >> (1u % 32u)) > reverseBits(-global0[_wgslsmith_index_u32(17793u, 30u)]))));
    var var_1 = Struct_1(_wgslsmith_div_i32(select(-6358i, select(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(25590i, u_input.d)), _wgslsmith_mod_i32(u_input.c.x, 31608i), false), global1.x), global0[_wgslsmith_index_u32(u_input.b, 30u)]), !select(vec2<bool>(all(vec3<bool>(true, global1.x, global1.x)), false), select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, false), vec2<bool>(global1.x, global1.x)), select(vec2<bool>(global1.x, true), vec2<bool>(global1.x, global1.x), true), vec2<bool>(false, false)), !global1.x & true));
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a << (select(4294967295u, 61645u, false) % 32u), -1i, ~_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(22088u, 30u)], -28628i, 0i)), -_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.a, 1i, -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 30u)], u_input.d, 56178i)) >> (vec3<u32>(u_input.a.x >> (u_input.e % 32u), _wgslsmith_mult_u32(u_input.b, 0u), _wgslsmith_sub_u32(4294967295u, 4294967295u)) % vec3<u32>(32u))), !var_1.b);
    global1 = vec2<bool>(any(vec4<bool>(true, true, var_1.b.x, var_2.b.x || global1.x)) && false, var_2.b.x);
    var_2 = Struct_1(-_wgslsmith_mod_i32(abs(var_1.a), _wgslsmith_clamp_i32(-6931i, -2147483647i, -13965i)) & ~var_2.a, vec2<bool>(var_1.b.x, select((true & var_1.b.x) && false, global1.x, false)));
    return (u_input.d | var_2.a) >> ((~(~(~u_input.e)) << (34725u % 32u)) % 32u);
}

fn func_2() -> i32 {
    var var_0 = false;
    var var_1 = Struct_1(func_3() >> (3566u % 32u), !(!select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), false), vec2<bool>(false, global1.x))));
    var var_2 = firstTrailingBit(vec3<i32>(-1i) * -abs(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.a, global0[_wgslsmith_index_u32(54843u, 30u)], -1i), vec3<i32>(1i, 2147483647i, 9524i))));
    var var_3 = select(!select(vec2<bool>(true, true), var_1.b, vec2<bool>(global1.x, all(vec4<bool>(var_1.b.x, false, var_1.b.x, true)))), !vec2<bool>(true, ~global0[_wgslsmith_index_u32(28116u, 30u)] >= -2147483647i), vec2<bool>(!(var_1.b.x && true), var_1.b.x));
    var_3 = var_1.b;
    return var_1.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mult_i32(~func_2(), -1i);
    let var_1 = _wgslsmith_f_op_f32(ceil(1f));
    let var_2 = Struct_1(global0[_wgslsmith_index_u32(arg_0, 30u)], !vec2<bool>(select(true, all(vec2<bool>(true, global1.x)), false), firstLeadingBit(arg_0) != u_input.e));
    var var_3 = var_2;
    let var_4 = _wgslsmith_clamp_vec3_u32(u_input.a, vec3<u32>(u_input.e, ~u_input.e, _wgslsmith_clamp_u32(u_input.b, 1u, ~_wgslsmith_sub_u32(4294967295u, arg_0))), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(firstLeadingBit(u_input.a.yx)), ~u_input.a.zz), u_input.a.x, ~0u));
    return var_2;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> bool {
    var var_0 = ~(~u_input.a.yy);
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(min(-1988f, arg_2))), _wgslsmith_f_op_f32(f32(-1f) * -570f), -1667f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), -141f, _wgslsmith_f_op_f32(arg_2 * -1752f), _wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, 2938f, arg_2, -1167f), _wgslsmith_f_op_vec4_f32(vec4<f32>(2096f, arg_2, arg_2, -665f) * vec4<f32>(778f, arg_2, arg_2, -714f))))))), false));
    var_0 = vec2<u32>(abs(countOneBits(87775u)), var_0.x | 82593u);
    var var_2 = vec4<u32>(abs(~(u_input.b & abs(u_input.b))), ~u_input.e, max(u_input.b, var_0.x & _wgslsmith_dot_vec2_u32(u_input.a.yz, abs(u_input.a.zz))), var_0.x);
    let var_3 = 1030f;
    return _wgslsmith_mult_u32(var_0.x, 4294967295u) <= 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    let var_1 = global1.x;
    global1 = vec2<bool>(func_4(!select(select(vec4<bool>(false, true, global1.x, true), vec4<bool>(global1.x, global1.x, true, true), false), !vec4<bool>(global1.x, true, true, false), vec4<bool>(true, true, true, true)), func_1(76421u | u_input.b), -919f), func_4(!select(select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(global1.x, true, global1.x, true)), !vec4<bool>(global1.x, true, global1.x, true), global1.x), Struct_1(global0[_wgslsmith_index_u32(~52616u, 30u)], !vec2<bool>(true, global1.x)), -1031f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_i32(-abs(vec3<i32>(global0[_wgslsmith_index_u32(0u, 30u)], u_input.c.x, global0[_wgslsmith_index_u32(0u, 30u)])), -vec3<i32>(global0[_wgslsmith_index_u32(0u, 30u)], -1i, -1i) >> (u_input.a % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1047f))), _wgslsmith_f_op_f32(627f - -2269f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - 2143f) + -419f))));
}

