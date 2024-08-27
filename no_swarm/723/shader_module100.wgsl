struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 31>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = Struct_2(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true)), true)), all(!select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), true), false)), arg_3);
    global0 = array<vec2<i32>, 31>();
    global0 = array<vec2<i32>, 31>();
    var_0 = Struct_2(vec3<bool>(any(!select(var_0.a.xy, var_0.a.yy, true)), ~1i != ~firstTrailingBit(u_input.c.x), var_0.a.x), false, Struct_1(1i));
    var_0 = Struct_2(var_0.a, var_0.a.x, arg_3);
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -789f) + _wgslsmith_f_op_f32(f32(-1f) * -1305f)), var_0.b))), _wgslsmith_f_op_f32(-1311f - -1197f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(725f, 289f)), -237f)))));
}

fn func_2(arg_0: vec2<bool>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(2147483647i, Struct_1(24471i), u_input.c.x, Struct_1(u_input.c.x))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-157f, 953f)), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(abs(-987f))), arg_0.x)) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-527f)), -1182f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-190f, 2294f))), _wgslsmith_f_op_f32(f32(-1f) * -320f)))));
    var var_1 = select(true, _wgslsmith_f_op_f32(max(383f, var_0.x)) <= var_0.x, arg_0.x);
    var_1 = true;
    let var_2 = 1u;
    var_1 = false;
    return firstTrailingBit(u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: i32) -> Struct_2 {
    global0 = array<vec2<i32>, 31>();
    var var_0 = Struct_1(firstTrailingBit(~arg_1.x));
    let var_1 = vec4<u32>(_wgslsmith_add_u32(countOneBits(u_input.b.x), u_input.a), u_input.b.x & max(u_input.d, 1u), min(28821u, u_input.b.x & 32701u), u_input.d) | min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.d, 167779u) >> ((vec4<u32>(0u, 0u, 0u, 4294967295u) >> (vec4<u32>(u_input.a, 1u, u_input.a, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~vec4<u32>(0u, u_input.d, u_input.b.x, 67258u)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(10514u, 49581u, 156u, u_input.d), max(vec4<u32>(u_input.d, u_input.d, 29571u, u_input.d), vec4<u32>(0u, u_input.a, u_input.b.x, 0u))));
    global0 = array<vec2<i32>, 31>();
    let var_2 = _wgslsmith_add_vec2_u32(max(vec2<u32>(firstTrailingBit(var_1.x), u_input.d), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u) >> (vec2<u32>(var_1.x, 5391u) % vec2<u32>(32u)), ~_wgslsmith_add_vec2_u32(var_1.zy, u_input.b))), vec2<u32>(32380u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(var_1, _wgslsmith_mod_vec4_u32(var_1, var_1)), var_1)));
    return Struct_2(vec3<bool>(true | all(vec2<bool>(true, false)), (any(vec4<bool>(false, true, false, true)) && select(false, false, false)) || (true && all(vec3<bool>(true, true, true))), all(vec2<bool>(true, true))), all(vec2<bool>(true, true)), arg_0);
}

fn func_1(arg_0: u32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-822f + 946f)))));
    let var_1 = func_4(Struct_1(~(-33337i)), reverseBits(u_input.c) ^ _wgslsmith_mult_vec3_i32(func_2(vec2<bool>(true, true)) << (firstTrailingBit(vec3<u32>(4294967295u, u_input.a, u_input.d)) % vec3<u32>(32u)), vec3<i32>(~1i, u_input.c.x & u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(24935i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(-2147483647i, u_input.c.x, 25124i, u_input.c.x)))), ~u_input.c.x);
    global0 = array<vec2<i32>, 31>();
    let var_2 = -1071f;
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(-19748i, 31273i, var_1.c.a, u_input.c.x), _wgslsmith_mult_vec4_i32(-vec4<i32>(0i, u_input.c.x, 0i, -2147483647i), min(vec4<i32>(u_input.c.x, var_1.c.a, 64009i, -2147483647i), vec4<i32>(u_input.c.x, 0i, var_1.c.a, 2147483647i)))), func_2(var_1.a.zz).x, -2147483647i, i32(-1i) * -1i), firstTrailingBit(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, -1i, 2147483647i, var_1.c.a), vec4<i32>(var_1.c.a, var_1.c.a, 0i, var_1.c.a)), vec4<i32>(var_1.c.a, 0i, u_input.c.x, u_input.c.x)) & -abs(vec4<i32>(u_input.c.x, 1i, var_1.c.a, u_input.c.x))));
    return select(select(vec4<bool>(all(!vec3<bool>(true, var_1.b, false)), false, var_1.a.x, var_1.a.x), select(!(!vec4<bool>(false, var_1.b, var_1.b, false)), !select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.b, var_1.b), vec4<bool>(var_1.a.x, false, true, var_1.a.x), var_1.b), !vec4<bool>(true, true, false, var_1.a.x)), select(!select(vec4<bool>(var_1.b, false, var_1.b, var_1.b), vec4<bool>(var_1.a.x, var_1.b, var_1.b, var_1.b), vec4<bool>(true, var_1.a.x, var_1.b, true)), !(!vec4<bool>(false, true, true, var_1.b)), 0u > max(u_input.a, 52114u))), vec4<bool>(!var_1.a.x, any(vec2<bool>(var_1.a.x, true)), false, true), select(vec4<bool>(!var_1.a.x, true, true, var_1.b), !vec4<bool>(all(vec2<bool>(false, true)), !var_1.a.x, true, !var_1.b), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false), true), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), !any(vec4<bool>(true, true, true, true))), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), func_1(7089u)), !vec4<bool>(false, func_1(47505u).x, false, select(false, true, false)), false), func_1(firstTrailingBit(u_input.d)).x);
    var_0 = select(vec4<bool>(true, !(u_input.c.x != _wgslsmith_sub_i32(u_input.c.x, u_input.c.x)), true && (true && !var_0.x), func_1(u_input.b.x).x), vec4<bool>(!any(!var_0.xyy), var_0.x, any(!var_0.yzx) | all(!var_0.xxw), !(~u_input.a < u_input.b.x)), select(vec4<bool>(all(vec2<bool>(true, var_0.x)), !(-4456i > u_input.c.x), false, false), !func_1(~1u), true));
    global0 = array<vec2<i32>, 31>();
    var var_1 = func_4(Struct_1(_wgslsmith_sub_i32(~(~32392i), ~_wgslsmith_sub_i32(u_input.c.x, u_input.c.x))), firstTrailingBit(_wgslsmith_clamp_vec3_i32(-u_input.c, u_input.c, -u_input.c)), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c.x, -1i), select(reverseBits(u_input.c.x >> (u_input.a % 32u)), _wgslsmith_add_i32(func_4(Struct_1(u_input.c.x), vec3<i32>(u_input.c.x, 1i, 9391i), u_input.c.x).c.a, ~u_input.c.x), true)));
    let var_2 = func_4(func_4(var_1.c, vec3<i32>(~(1i >> (u_input.d % 32u)), var_1.c.a, -select(2147483647i, -10240i, true)), _wgslsmith_mult_i32(firstLeadingBit(-1i), ~(~u_input.c.x))).c, select(vec3<i32>(firstLeadingBit(-1i), var_1.c.a, -1i), vec3<i32>(func_2(vec2<bool>(var_1.a.x, true)).x, ~(-1i), ~1i), var_0.x) | u_input.c, var_1.c.a >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.d, u_input.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 1u, 10888u), vec3<u32>(0u, 34691u, 21833u)))) % 32u)).a.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(383f - 989f), _wgslsmith_f_op_f32(abs(-790f)), _wgslsmith_f_op_f32(1520f - -1095f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1397f, 1000f, -806f))))));
}

