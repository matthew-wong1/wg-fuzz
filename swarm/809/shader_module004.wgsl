struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 13644u);

var<private> global1: f32 = 1138f;

var<private> global2: array<vec3<bool>, 19>;

var<private> global3: array<vec2<i32>, 8> = array<vec2<i32>, 8>(vec2<i32>(1i, 0i), vec2<i32>(62191i, i32(-2147483648)), vec2<i32>(2147483647i, 1i), vec2<i32>(28159i, -10964i), vec2<i32>(13724i, 1i), vec2<i32>(-20172i, 16067i), vec2<i32>(-1i, 2147483647i), vec2<i32>(27288i, -34330i));

var<private> global4: Struct_1 = Struct_1(false, vec4<bool>(false, true, false, false));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -570f), -245f);
    let var_1 = Struct_1(global4.a == !(true && any(global4.b.zw)), vec4<bool>(!(select(-20160i, arg_0, global4.b.x) > -2147483647i), true && !(!global4.a), true, global4.b.x));
    var var_2 = var_1;
    let var_3 = Struct_1(false, select(!var_1.b, !global4.b, var_2.b));
    var var_4 = var_1;
    return Struct_1(true, var_2.b);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_1(global4.b.x, !global4.b);
    let var_1 = -28809i;
    global0 = u_input.a.xw;
    let var_2 = (_wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, global0.x), ~(~vec2<u32>(u_input.a.x, u_input.a.x))) | u_input.a.ww) >> (select(abs(_wgslsmith_clamp_vec2_u32(u_input.a.wx, vec2<u32>(u_input.a.x, 10629u), ~u_input.a.wy)), ~u_input.a.zx | ~abs(vec2<u32>(u_input.a.x, global0.x)), var_0.b.x) % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + 981f)))))));
    return func_2(-2147483647i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global1 = _wgslsmith_div_f32(-409f, 1f);
    let var_0 = func_3(countOneBits(-1i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-886f)))), func_2(min(-68303i, ~_wgslsmith_add_i32(-1i, -1i))), vec4<i32>(select(abs(~27962i), ~(-1i), arg_0.a), firstTrailingBit(~_wgslsmith_clamp_i32(-26677i, 0i, 0i)), max(-37546i, i32(-1i) * -2147483647i), ~(~1i)));
    var var_1 = min(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 0i, 0i, 0i), vec4<i32>(-1i, -1i, -36575i, 0i))), _wgslsmith_mod_i32(410i, firstLeadingBit(-1i) | _wgslsmith_clamp_i32(19322i, 0i, -1i)), _wgslsmith_dot_vec3_i32(countOneBits(select(vec3<i32>(-1669i, -29152i, 0i), vec3<i32>(1i, -2147483647i, -2147483647i), global4.b.x)), _wgslsmith_mult_vec3_i32(~vec3<i32>(-1i, 0i, -2849i), -vec3<i32>(5034i, 2147483647i, 0i)))), -_wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, -9258i), vec3<i32>(~2147483647i, 1i, _wgslsmith_mod_i32(-35018i, 41913i))));
    let var_2 = func_2(-37884i << ((global0.x & u_input.a.x) % 32u));
    let var_3 = var_2.b.wyy;
    return any(func_2(-_wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(u_input.a.x, 8u)], var_1.yx) ^ var_1.x).b);
}

fn func_1(arg_0: bool) -> i32 {
    global3 = array<vec2<i32>, 8>();
    let var_0 = Struct_1(global4.b.x, vec4<bool>(!select(!global4.b.x, u_input.a.x != 72493u, !global4.b.x), ~(~global0.x) >= _wgslsmith_add_u32(countOneBits(4294967295u), abs(global0.x)), func_4(func_3(9104i, _wgslsmith_f_op_f32(sign(-1256f)), func_2(-2147483647i), vec4<i32>(2147483647i, -17293i, 1i, 12651i)), Struct_1(true, vec4<bool>(arg_0, true, true, false))), true));
    var var_1 = var_0;
    var var_2 = firstLeadingBit(1i);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(ceil(2398f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1071f, _wgslsmith_f_op_f32(f32(-1f) * -1257f))) * 548f)), -1124f, 1572f);
    return -(_wgslsmith_add_i32(-1i & (2147483647i >> (u_input.a.x % 32u)), 1i) ^ (i32(-1i) * -29333i));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_3(-(arg_1 << ((global0.x | ~28857u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -715f), 686f, arg_1 <= arg_1))) * -573f), Struct_1(arg_0.b.x, global4.b), -select(max(_wgslsmith_mult_vec4_i32(vec4<i32>(35876i, arg_1, arg_1, -65586i), vec4<i32>(1i, arg_1, arg_1, 15277i)), -vec4<i32>(arg_1, 2147483647i, -13155i, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, -2147483647i, arg_1, -8284i), vec4<i32>(arg_1, arg_1, arg_1, -87914i) ^ vec4<i32>(0i, arg_1, -9115i, -15703i)), !vec4<bool>(arg_0.a, false, arg_3.a, false)));
    var var_1 = arg_0.b.x;
    var var_2 = Struct_1(arg_0.b.x, var_0.b);
    global3 = array<vec2<i32>, 8>();
    global0 = _wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(74496u, _wgslsmith_sub_u32(u_input.a.x, 3069u))), u_input.a.xy);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global4.a, global4.b);
    let var_1 = func_5(Struct_1(global4.b.x != false, vec4<bool>(false, false, global4.b.x, !(!global4.a))), func_1(true), ~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(1u, 651u, ~47760u), 25532u), Struct_1(true, !select(vec4<bool>(true, var_0.b.x, false, false), var_0.b, global4.b)));
    global0 = vec2<u32>(global0.x, _wgslsmith_clamp_u32(u_input.a.x | _wgslsmith_sub_u32(34679u, ~u_input.a.x), u_input.a.x, global0.x));
    var var_2 = func_5(var_1, 0i, u_input.a.x, Struct_1(func_3(~(-1i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(107f)), _wgslsmith_f_op_f32(ceil(-1074f)))), func_3(~81900i, _wgslsmith_f_op_f32(1000f - -991f), var_1, abs(vec4<i32>(-1i, -1i, 1i, -10364i))), -countOneBits(vec4<i32>(28858i, -44743i, 94213i, 11722i))).a, func_2(-abs(1i)).b));
    let var_3 = var_1;
    let var_4 = func_5(Struct_1(var_2.b.x, var_2.b), abs(reverseBits(~1i)), 23071u, func_3(_wgslsmith_clamp_i32(firstTrailingBit(~(-14325i)), countOneBits(-1i), -select(-34019i, -83078i, true)), -824f, func_3(abs(reverseBits(12744i)), 239f, Struct_1(!var_1.b.x, !global4.b), abs(vec4<i32>(1i, 1i, 1i, 1i))), _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-37609i, -2147483647i, 2147483647i, -7279i), vec4<i32>(-7704i, -1i, 0i, 13311i), vec4<i32>(44698i, 0i, -32927i, 2147483647i)), min(abs(vec4<i32>(-1i, 8724i, 2147483647i, 44883i)), vec4<i32>(-1i, 21717i, 0i, -23687i)))));
    let var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1364f, -548f) - vec2<f32>(-359f, 715f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1018f, -430f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(137f, 899f), vec2<f32>(-1020f, 1134f), var_4.b.wy)))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-532f * 615f), -480f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -446f)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1165f, -1106f, -2498f) + vec3<f32>(-1923f, 2364f, -1169f)) + vec3<f32>(1431f, 1000f, 1935f)), vec3<f32>(_wgslsmith_f_op_f32(-345f - -848f), _wgslsmith_f_op_f32(799f - 491f), -1363f), vec3<bool>(true, !var_4.a, func_3(1i, -2046f, Struct_1(true, var_3.b), vec4<i32>(50171i, -864i, -84813i, 46591i)).a))))), u_input.a.x);
}

