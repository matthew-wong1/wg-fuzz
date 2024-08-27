struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>) -> vec3<u32> {
    global0 = array<i32, 1>();
    var var_0 = vec2<i32>(~(-23801i), 73658i);
    let var_1 = 94385u;
    let var_2 = vec4<bool>(arg_0.d.x, 1989f >= _wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(398f, arg_0.a) - _wgslsmith_f_op_f32(arg_0.b - arg_0.a))), global1.x, true);
    var_0 = vec2<i32>(16863i << (_wgslsmith_clamp_u32(reverseBits(0u), u_input.d.x, 4294967295u) % 32u), var_0.x) << (~max(arg_1.zz | vec2<u32>(var_1, 1u), select(u_input.d.xz, u_input.d.xz, var_2.x) | vec2<u32>(u_input.d.x, 0u)) % vec2<u32>(32u));
    return _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(arg_1.wyw, vec3<u32>(32906u, 84814u, var_1)) & vec3<u32>(var_1, u_input.d.x, var_1), ~(~(~(~u_input.d))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> vec4<bool> {
    var var_0 = max(17218u >> (~(~abs(u_input.d.x)) % 32u), _wgslsmith_dot_vec3_u32(~u_input.d, ~firstLeadingBit(_wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(1u, u_input.d.x, u_input.d.x)))));
    var var_1 = -_wgslsmith_dot_vec2_i32(~vec2<i32>(i32(-1i) * -18409i, firstLeadingBit(u_input.c.x)), vec2<i32>(28604i, 32367i));
    var var_2 = u_input.d.x;
    let var_3 = select(vec4<bool>(false, any(select(!arg_1, arg_1, !arg_1)), arg_1.x, !((u_input.c.x >= u_input.a.x) || global1.x)), arg_1, select(vec4<bool>(all(select(vec2<bool>(true, true), global1.zx, arg_1.x)), !global1.x, any(vec3<bool>(arg_1.x, false, arg_1.x)), true), vec4<bool>(!arg_1.x, true && select(arg_1.x, arg_1.x, arg_1.x), any(arg_1.xxz), arg_1.x), !any(vec3<bool>(true, arg_1.x, arg_1.x))));
    let var_4 = i32(-1i) * -max(u_input.a.x << (max(2796u, u_input.d.x) % 32u), u_input.c.x ^ ~(-4885i));
    return !select(!select(select(vec4<bool>(arg_1.x, var_3.x, false, var_3.x), arg_1, arg_1), vec4<bool>(false, false, true, false), u_input.d.x != arg_0.a.x), var_3, vec4<bool>(any(arg_1.yxz), arg_1.x, (4294967295u <= u_input.d.x) && true, false));
}

fn func_1(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_mult_vec3_u32(func_2(Struct_2(612f, _wgslsmith_f_op_f32(round(-584f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-167f, 658f, 1045f, 397f)), select(!vec4<bool>(global1.x, global1.x, global1.x, true), !vec4<bool>(true, true, global1.x, true), any(vec2<bool>(false, true)))), countOneBits(vec4<u32>(u_input.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, arg_0.a.x, 17577u, u_input.d.x), vec4<u32>(67475u, arg_0.a.x, u_input.d.x, 0u)), 0u, 1u))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.d.x, _wgslsmith_div_u32(1u, u_input.d.x)), ~arg_0.a));
    var var_1 = func_2(Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-195f + _wgslsmith_f_op_f32(max(435f, 545f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(495f, -564f, false))), !(u_input.b.x <= global0[_wgslsmith_index_u32(arg_0.a.x, 1u)]))), -182f, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(518f, -662f, -1000f, 430f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1537f, -2662f, 1393f, 1635f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1127f, -318f, -170f)), func_3(arg_0, vec4<bool>(false, global1.x, false, global1.x)))), select(vec4<bool>(global1.x, all(vec3<bool>(false, false, false)), !global1.x, false), select(func_3(Struct_1(vec3<u32>(var_0.x, 4294967295u, 0u)), vec4<bool>(true, true, true, global1.x)), vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(global1.x, true, global1.x, true)), true)), ~vec4<u32>(35835u, 1u << (u_input.d.x % 32u), _wgslsmith_mod_u32(arg_0.a.x, 263u) | arg_0.a.x, 19102u)).zz;
    var_1 = abs(arg_0.a.xx);
    let var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1362f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(1502f)))), vec4<f32>(_wgslsmith_f_op_f32(1f * -252f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(877f * -1176f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-283f + -1123f)))), -1070f, 904f), !select(select(!vec4<bool>(global1.x, global1.x, true, global1.x), !vec4<bool>(global1.x, global1.x, true, global1.x), any(vec4<bool>(global1.x, global1.x, true, global1.x))), select(!vec4<bool>(true, global1.x, global1.x, global1.x), func_3(arg_0, vec4<bool>(global1.x, global1.x, false, global1.x)), vec4<bool>(global1.x, global1.x, false, global1.x)), !vec4<bool>(false, false, global1.x, false)));
    global1 = var_2.d.zzy;
    return vec4<u32>(_wgslsmith_mult_u32(48794u, _wgslsmith_dot_vec4_u32((vec4<u32>(4294967295u, 4294967295u, 0u, 4294967295u) >> (vec4<u32>(4294967295u, 0u, 82079u, var_1.x) % vec4<u32>(32u))) & ~vec4<u32>(var_0.x, 4294967295u, 1u, var_1.x), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(var_1.x, 27930u, u_input.d.x, u_input.d.x), vec4<u32>(var_0.x, var_1.x, 4294967295u, var_1.x))))), u_input.d.x, var_1.x, _wgslsmith_clamp_u32(_wgslsmith_mod_u32(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0.x), vec2<u32>(var_1.x, 1u))), 0u, _wgslsmith_mod_u32(~1u, countOneBits(4294967295u))) >> (43759u % 32u));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    global1 = vec3<bool>(false, _wgslsmith_div_i32(i32(-1i) * -57460i, ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.a.zx, vec2<u32>(u_input.d.x, u_input.d.x)), 1u)]) > 1i, all(!vec3<bool>(!global1.x, true, global1.x)));
    let var_0 = Struct_2(573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1614f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1639f + 1000f) - _wgslsmith_f_op_f32(min(-964f, 1000f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<bool>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-851f + 1168f))) > -1016f, select(arg_0.x, false, !global1.x), any(vec3<bool>(true, true, false)), arg_0.x || true));
    var var_1 = arg_1;
    var var_2 = (firstLeadingBit(firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1, vec4<u32>(arg_1.x, 58766u, arg_2.a.x, 107724u)))) ^ ~(~var_1.x)) >> (_wgslsmith_sub_u32(var_1.x, ~(~(~arg_2.a.x))) % 32u);
    global0 = array<i32, 1>();
    return Struct_1(arg_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 1>();
    global1 = vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(250f)))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1425f)), any(!select(select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), false), vec2<bool>(global1.x, global1.x), all(vec4<bool>(false, false, global1.x, global1.x)))), all(select(!(!global1.zx), select(vec2<bool>(global1.x, true), !global1.zx, select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x)), true)));
    var var_0 = vec3<bool>(false && global1.x, false && (!global1.x | true), global1.x);
    let var_1 = func_4(global1.zz, _wgslsmith_mult_vec4_u32(func_1(Struct_1(vec3<u32>(1u, 0u, 23958u))), vec4<u32>(u_input.d.x, 0u, ~firstLeadingBit(0u), ~1u)), Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, 1u), ~u_input.d)));
    let var_2 = vec3<i32>(firstTrailingBit(u_input.b.x), ~_wgslsmith_dot_vec3_i32(u_input.a.wyw, vec3<i32>(u_input.b.x, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(11507u, 4294967295u), 1u)], global0[_wgslsmith_index_u32(u_input.d.x ^ var_1.a.x, 1u)])), -_wgslsmith_sub_i32(1i, select(u_input.b.x, global0[_wgslsmith_index_u32(u_input.d.x, 1u)], true)) >> (func_2(Struct_2(_wgslsmith_f_op_f32(1553f - 216f), _wgslsmith_f_op_f32(round(862f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1668f, 1197f, 962f, -445f)), vec4<bool>(false, true, true, global1.x)), vec4<u32>(~0u, var_1.a.x, ~var_1.a.x, u_input.d.x)).x % 32u));
    global1 = vec3<bool>(false, (18509u != var_1.a.x) != global1.x, !all(var_0.yz));
    var_0 = select(vec3<bool>(true, true, true), func_3(Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.d, u_input.d), 27818u, u_input.d.x)), !(!vec4<bool>(true, var_0.x, true, global1.x))).xyw, var_0.x | !var_0.x);
    global0 = array<i32, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_i32(~u_input.a, -vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 1u)], 24750i, 54886i)) ^ _wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(var_2.x, -2147483647i), var_2.zy), vec2<i32>(var_2.x, 11641i))), _wgslsmith_mod_u32(~1u << (u_input.d.x % 32u), 48044u), select(u_input.a << (vec4<u32>(4294967295u, var_1.a.x | 32654u, 1u | u_input.d.x, 0u) % vec4<u32>(32u)), u_input.a, select(select(!vec4<bool>(false, false, global1.x, var_0.x), !vec4<bool>(false, var_0.x, true, false), var_0.x && false), !vec4<bool>(global1.x, false, global1.x, global1.x), select(!vec4<bool>(var_0.x, false, true, true), select(vec4<bool>(false, true, var_0.x, global1.x), vec4<bool>(var_0.x, global1.x, true, true), vec4<bool>(false, var_0.x, true, var_0.x)), !vec4<bool>(false, global1.x, false, true)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-468f, -622f)), _wgslsmith_f_op_f32(f32(-1f) * -1527f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1601f)) + -1443f), -2034f))), u_input.d.yx);
}

