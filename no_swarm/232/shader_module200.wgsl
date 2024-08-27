struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = abs(10518i);
    var var_1 = _wgslsmith_f_op_f32(502f * _wgslsmith_div_f32(1000f, 521f));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-592f))));
    var var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 9u)];
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-922f - 695f), _wgslsmith_f_op_f32(f32(-1f) * -1179f));
    return var_3.e.x;
}

fn func_3() -> vec2<bool> {
    var var_0 = -270i;
    let var_1 = vec4<bool>(any(select(vec3<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)), true), vec3<bool>(true, any(vec2<bool>(true, true)), u_input.d > 0i), vec3<bool>(true, any(vec3<bool>(true, true, true)), false))), (~abs(0u) & u_input.c.x) == (u_input.c.x ^ ((0u & u_input.c.x) << (u_input.c.x % 32u))), true, all(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), false)), vec4<bool>(any(vec2<bool>(true, false)), true, true, true), true)));
    global0 = array<Struct_1, 9>();
    let var_2 = true;
    let var_3 = true;
    return select(select(!select(vec2<bool>(true, var_2), vec2<bool>(false, true), var_2), !vec2<bool>(!var_3, true), func_2(global0[_wgslsmith_index_u32(~max(28367u, 42004u), 9u)])), vec2<bool>(var_2, false), !select(select(select(var_1.xw, var_1.xx, vec2<bool>(false, true)), vec2<bool>(false, var_3), true), vec2<bool>(true, true), any(vec2<bool>(false, var_2))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<u32>) -> Struct_3 {
    var var_0 = true;
    let var_1 = Struct_1(_wgslsmith_mult_i32(u_input.d, _wgslsmith_dot_vec4_i32(-vec4<i32>(-43113i, u_input.a.x, u_input.e.x, -2147483647i), countOneBits(countOneBits(vec4<i32>(50625i, u_input.a.x, arg_0.x, 2147483647i))))), 10163u, 1u, select(!vec2<bool>(func_2(Struct_1(0i, 14243u, 1u, vec2<bool>(false, true), vec4<bool>(true, true, false, false))), false), select(select(func_3(), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), false), vec2<bool>(true, true)), func_3()), vec4<bool>(!select(u_input.c.x <= 5024u, true, true), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_1.x, arg_1.x))) <= _wgslsmith_f_op_f32(-arg_1.x), any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), vec3<bool>(false, true, false))), 72735u > _wgslsmith_clamp_u32(firstLeadingBit(33543u), ~0u, 1u)));
    var var_2 = vec4<i32>(select(_wgslsmith_mult_i32(_wgslsmith_mod_i32(34392i, -1i), 27535i), ~1i, !(-1i < arg_2)) >> (0u % 32u), ~(arg_2 >> (var_1.b % 32u)), 56694i, firstLeadingBit(arg_2));
    let var_3 = Struct_3(!select(!vec3<bool>(var_1.e.x, false, var_1.e.x), vec3<bool>(true, var_1.d.x, var_1.d.x & false), var_1.e.x));
    let var_4 = arg_1;
    return Struct_3(vec3<bool>(true, true, any(vec3<bool>(var_1.d.x, true, var_1.d.x))));
}

fn func_4(arg_0: Struct_3) -> Struct_1 {
    global0 = array<Struct_1, 9>();
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(48415u >> (~u_input.c.x % 32u), 9u)], _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1598f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1335f * 683f), -1000f)), 251f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-714f, -223f, false)), _wgslsmith_f_op_f32(max(-146f, -1820f)), _wgslsmith_f_op_f32(-242f + -267f))))), any(vec3<bool>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) > u_input.b.x, arg_0.a.x, _wgslsmith_f_op_f32(1383f - 932f) > _wgslsmith_f_op_f32(sign(336f)))), -1497f, !(!arg_0.a));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f))), -259f, var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(726f)), 448f)));
    let var_2 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a.a, u_input.e.x, 3153i, 1i), ~vec4<i32>(1i, u_input.e.x, -2147483647i, -1i))), u_input.b.x, 11536u, vec2<bool>(any(!var_0.a.e), arg_0.a.x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, arg_0.a.x, arg_0.a.x, arg_0.a.x), !vec4<bool>(false, var_0.c, false, true))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(var_0.d, var_1.x), var_1.x, var_0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b))), vec3<f32>(var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.x)), 397f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1183f * var_1.x) - _wgslsmith_div_f32(1068f, var_0.b.x))), vec3<bool>(!any(var_0.a.e), var_0.c, !(var_0.e.x || false)))), var_0.a.e.x, _wgslsmith_f_op_f32(sign(1f)), vec3<bool>(var_0.c, true, !all(vec4<bool>(false, var_0.c, false, arg_0.a.x))));
    let var_3 = u_input.c.wy;
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(1i, -_wgslsmith_sub_i32(~reverseBits(2147483647i), _wgslsmith_mult_i32(i32(-1i) * -2394i, u_input.d | -6990i)));
    global0 = array<Struct_1, 9>();
    let var_1 = func_4(func_1(u_input.a >> (~(vec3<u32>(u_input.b.x, 0u, u_input.c.x) >> (u_input.c.wxz % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(715f, -1355f, _wgslsmith_f_op_f32(floor(-580f)), _wgslsmith_f_op_f32(-2114f - -1907f))), 5095i, ~vec3<u32>(~u_input.c.x, reverseBits(23274u), u_input.b.x)));
    var var_2 = all(!var_1.e);
    let var_3 = _wgslsmith_add_vec4_i32(vec4<i32>(1i, countOneBits(_wgslsmith_mod_i32(var_0, _wgslsmith_clamp_i32(var_1.a, u_input.d, var_1.a))), var_0, u_input.a.x & _wgslsmith_mod_i32(var_0, _wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(1i, var_0)))), vec4<i32>(-_wgslsmith_add_i32(var_0, -2147483647i), func_4(Struct_3(vec3<bool>(true, true, true))).a, _wgslsmith_mod_i32(_wgslsmith_mult_i32(~var_1.a, 1i), u_input.e.x << (u_input.c.x % 32u)), u_input.d << (((u_input.c.x ^ u_input.c.x) >> (countOneBits(var_1.c) % 32u)) % 32u)));
    let var_4 = any(var_1.e.zz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(abs(vec2<i32>(~8430i, _wgslsmith_dot_vec4_i32(var_3, var_3))), u_input.a.xy), 736f);
}

