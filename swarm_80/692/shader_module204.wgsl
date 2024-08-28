struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: array<vec2<i32>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: f32) -> f32 {
    var var_0 = -898f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.d.c.x, arg_1, true))), _wgslsmith_div_f32(-116f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1116f))), arg_0.e.c.x);
    var var_2 = !select(!select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), true), true), select(vec4<bool>(false, all(vec4<bool>(false, true, true, false)), false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false)), !select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), select(false, false, false)));
    var_2 = vec4<bool>(true, true, true, any(select(vec2<bool>(false, var_2.x), select(global0[_wgslsmith_index_u32(61275u, 17u)], vec2<bool>(var_2.x, var_2.x), true), all(var_2.xw))) || !var_2.x);
    var var_3 = Struct_1(arg_0.a.x, ~firstLeadingBit(vec2<u32>(arg_0.e.b.x, _wgslsmith_mod_u32(1u, 27768u))), _wgslsmith_f_op_vec2_f32(arg_0.e.c * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1177f * var_1.x)), _wgslsmith_f_op_f32(sign(1f)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.d.c.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.c.x), _wgslsmith_f_op_f32(-arg_1))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)));
}

fn func_2() -> bool {
    global0 = array<vec2<bool>, 17>();
    let var_0 = true || !(!(!(27644u <= u_input.b.x)));
    global1 = array<vec2<i32>, 32>();
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 32u)], ~global1[_wgslsmith_index_u32(u_input.b.x, 32u)], _wgslsmith_f_op_f32(724f - -896f), Struct_1(-1i, vec2<u32>(u_input.a.x, 8031u), vec2<f32>(-1371f, 681f)), Struct_1(1i, u_input.a.zy, vec2<f32>(-710f, -1018f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(2209f, -1239f)))))) + -280f), _wgslsmith_f_op_f32(round(-552f)));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(1u, 3701u)), 32u)];
    return all(vec3<bool>(true, var_0, select(var_0, true, var_0)));
}

fn func_1(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> i32 {
    let var_0 = -696f;
    let var_1 = select(vec4<bool>(any(!arg_0.zyw), func_2(), all(!select(vec2<bool>(arg_1, true), arg_0.yw, arg_1)), arg_0.x), !select(arg_0, select(!arg_0, arg_0, true), false), !select(vec4<bool>(true, 0i == arg_2.a, true, true), vec4<bool>(true, true, func_2(), arg_1 != false), !select(arg_0, arg_0, arg_0)));
    let var_2 = Struct_1(~arg_2.a, vec2<u32>(arg_2.b.x, ~arg_2.b.x), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.c.x, _wgslsmith_f_op_f32(-885f - 1873f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))), _wgslsmith_f_op_f32(trunc(-1001f))));
    let var_3 = 2147483647i;
    global0 = array<vec2<bool>, 17>();
    return arg_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec4<i32>(max(_wgslsmith_add_i32(0i, 2341i), 1i), countOneBits(-1i), countOneBits(abs(-1i)), 2147483647i)) | (~vec4<i32>(min(47646i, 2147483647i), _wgslsmith_add_i32(-1i, -2147483647i), 2147483647i, func_1(vec4<bool>(false, false, true, false), false, Struct_1(-54483i, u_input.a.zy, vec2<f32>(-1383f, 1272f)))) | _wgslsmith_add_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(-46973i, 26008i, 1i, -7270i), vec4<i32>(-39280i, 2147483647i, 19444i, -15165i)), _wgslsmith_mod_vec4_i32(vec4<i32>(2350i, -2147483647i, -3282i, -1i), select(vec4<i32>(-2147483647i, -31047i, 0i, 28670i), vec4<i32>(39050i, 2147483647i, 2147483647i, -1i), true))));
    let var_1 = Struct_3(Struct_2(vec2<i32>(1i, -2147483647i), var_0.xz, 325f, Struct_1(_wgslsmith_sub_i32(var_0.x, -1i), vec2<u32>(u_input.a.x & u_input.c, _wgslsmith_sub_u32(4294967295u, u_input.c)), vec2<f32>(1f, 1f)), Struct_1(max(var_0.x, var_0.x), reverseBits(vec2<u32>(u_input.b.x, 4294967295u)) & ~u_input.b.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1566f, -1322f) - vec2<f32>(825f, -239f))))), vec3<i32>(~var_0.x, var_0.x, -abs(select(var_0.x, 1i, true))), firstTrailingBit(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 0i, var_0.x, var_0.x), vec4<i32>(-2147483647i, -35652i, var_0.x, -1i)) << (max(vec4<u32>(u_input.a.x, u_input.c, 1u, 20972u), vec4<u32>(28627u, u_input.c, u_input.b.x, u_input.b.x)) % vec4<u32>(32u)))));
    var var_2 = var_1.a.e.b.x;
    var_2 = ~var_1.a.d.b.x;
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(func_1(vec4<bool>(true, true, false, false), true, Struct_1(-9873i, var_1.a.e.b, vec2<f32>(var_1.a.e.c.x, -496f))), var_1.a.a.x), _wgslsmith_sub_i32(var_0.x, 31402i), -2147483647i), firstLeadingBit(abs(vec3<i32>(var_0.x, ~var_0.x, _wgslsmith_sub_i32(var_1.a.a.x, var_1.a.d.a)))));
    var var_4 = -19212i;
    let var_5 = !(!(all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))) && true));
    var var_6 = !select(select(select(select(vec4<bool>(var_5, var_5, var_5, false), vec4<bool>(var_5, var_5, true, var_5), var_5), vec4<bool>(false, var_5, var_5, true), !vec4<bool>(var_5, var_5, true, var_5)), !select(vec4<bool>(var_5, false, var_5, true), vec4<bool>(var_5, false, false, var_5), vec4<bool>(true, var_5, var_5, false)), select(!vec4<bool>(false, false, var_5, var_5), select(vec4<bool>(true, var_5, var_5, var_5), vec4<bool>(var_5, false, false, var_5), vec4<bool>(var_5, false, true, false)), vec4<bool>(false, var_5, var_5, var_5))), vec4<bool>(any(vec3<bool>(var_5, true, var_5)), _wgslsmith_f_op_f32(max(var_1.a.e.c.x, var_1.a.e.c.x)) >= _wgslsmith_f_op_f32(min(-1208f, var_1.a.d.c.x)), false, func_2()), !var_5);
    let var_7 = _wgslsmith_f_op_f32(-var_1.a.e.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(0u, firstTrailingBit(var_1.a.e.b.x)));
}

