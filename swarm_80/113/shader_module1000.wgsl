struct Struct_1 {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: f32;

var<private> global2: vec4<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(global2.xz, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1031f, -1713f) - global2.zy)), vec2<f32>(global2.x, 1421f))))) * global2.yy);
    var var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-307f, var_0.x, var_0.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global2.x, -183f, var_0.x) * vec4<f32>(1103f, -1535f, -507f, -233f))))), vec4<f32>(102f, -410f, _wgslsmith_f_op_f32(min(-1037f, _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(-114f, _wgslsmith_f_op_f32(f32(-1f) * -1202f), true)), all(vec2<bool>(true, true)))))));
    var var_2 = reverseBits(min(~countOneBits(firstLeadingBit(vec4<i32>(-13539i, u_input.e, arg_2.a, 0i))), vec4<i32>(_wgslsmith_clamp_i32(arg_2.a & u_input.e, arg_3.b & arg_3.b, ~arg_2.a), reverseBits(~u_input.e), -29334i, max(arg_1.c.a.b, 8026i))));
    global0 = array<Struct_1, 4>();
    var var_3 = arg_1.c;
    return firstLeadingBit(vec2<u32>(~arg_1.c.a.c.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.c.x, 5945u, u_input.a) | vec3<u32>(arg_0.c.x, 0u, 4700u), ~vec3<u32>(arg_3.c.x, 17187u, arg_1.c.a.c.x))));
}

fn func_2(arg_0: Struct_4, arg_1: vec2<i32>) -> i32 {
    var var_0 = Struct_2(Struct_1(firstLeadingBit(-arg_1.x) << (_wgslsmith_add_u32(~u_input.a, u_input.a) % 32u), 0i, _wgslsmith_mult_vec2_u32(func_3(Struct_1(arg_1.x, arg_0.a, vec2<u32>(u_input.a, 39327u)), Struct_3(Struct_2(Struct_1(-2147483647i, arg_1.x, vec2<u32>(u_input.b.x, u_input.b.x))), arg_1, Struct_2(global0[_wgslsmith_index_u32(u_input.a, 4u)])), arg_0, Struct_1(arg_0.a, arg_1.x, vec2<u32>(0u, 35047u))) & u_input.b.xz, abs(~vec2<u32>(u_input.b.x, 15282u)))));
    global0 = array<Struct_1, 4>();
    var var_1 = Struct_4(arg_0.a);
    global2 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-368f, -1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-134f * 956f), global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))) - global2.x), global2.x);
    let var_2 = Struct_1(var_1.a | select((2147483647i | var_1.a) << (~4294967295u % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), arg_1), vec2<i32>(arg_1.x, u_input.d)), false), var_0.a.a, u_input.b.yx);
    return 35820i;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_4) -> Struct_2 {
    global2 = _wgslsmith_div_vec4_f32(vec4<f32>(-2361f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-275f))))), global2.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1753f, global2.x, global2.x, -253f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global2.x, -599f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -2301f, -745f, -356f), vec4<f32>(399f, global2.x, -242f, 1200f), vec4<bool>(true, true, arg_0, false)))))));
    global0 = array<Struct_1, 4>();
    let var_0 = global0[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(12985u, ~1u, 1u, ~reverseBits(arg_1.x)), select(vec4<u32>(reverseBits(u_input.b.x), arg_1.x, _wgslsmith_mod_u32(4294967295u, 3850u), 1u), vec4<u32>(min(arg_1.x, 42663u), reverseBits(u_input.b.x), arg_1.x, u_input.a | 6164u), true))), 4u)];
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(~countOneBits(32951u), 4u)]);
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~26197u, u_input.b.x, countOneBits(_wgslsmith_add_u32(var_0.c.x, 1u))), 4u)]);
    return var_2;
}

fn func_1(arg_0: vec3<bool>) -> Struct_3 {
    global1 = global2.x;
    global2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.x)))), global2.x, -401f, -1406f);
    let var_0 = func_4(false, u_input.b, arg_0.yx, Struct_4(func_2(Struct_4(u_input.c | -1i), vec2<i32>(-1i, -15684i >> (u_input.a % 32u)))));
    let var_1 = vec4<i32>(u_input.c, u_input.c, -2147483647i, 2147483647i & ~(var_0.a.a >> (~u_input.a % 32u)));
    global1 = _wgslsmith_f_op_f32(trunc(global2.x));
    return Struct_3(func_4(true, select(u_input.b, ~u_input.b | firstTrailingBit(u_input.b), select(arg_0, vec3<bool>(arg_0.x, arg_0.x, true), select(arg_0, arg_0, arg_0.x))), select(select(select(vec2<bool>(false, arg_0.x), vec2<bool>(arg_0.x, arg_0.x), arg_0.zy), arg_0.xx, select(arg_0.zy, vec2<bool>(false, false), vec2<bool>(true, arg_0.x))), !arg_0.yx, any(select(arg_0, vec3<bool>(false, true, arg_0.x), arg_0))), Struct_4(-(var_1.x >> (0u % 32u)))), var_1.xz, var_0);
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_3) -> Struct_2 {
    return Struct_2(Struct_1(u_input.c, _wgslsmith_mod_i32(~0i, firstTrailingBit(29225i)), _wgslsmith_sub_vec2_u32(arg_1.c.a.c, u_input.b.yx)));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = any(!(!vec4<bool>(true, arg_2.a.a < -2147483647i, true, true)));
    let var_1 = !(32856i > arg_2.a.a);
    global1 = -366f;
    let var_2 = func_1(vec3<bool>(false, false, true));
    let var_3 = ~min(select(countOneBits(-arg_0.yy), ~arg_0.zy | var_2.b, select(var_1, any(vec2<bool>(false, var_1)), all(vec3<bool>(true, var_1, var_1)))), firstLeadingBit(vec2<i32>(-1i) * -arg_0.zw));
    return global0[_wgslsmith_index_u32(1u, 4u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6((firstLeadingBit(vec4<i32>(-55512i, -2147483647i, -1i, u_input.d)) >> (vec4<u32>(4294967295u, 4294967295u, u_input.b.x, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.b.x) % vec4<u32>(32u)), u_input.b, func_5(vec4<u32>(~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 39823u), u_input.b.yz), u_input.a & u_input.a, ~1u), func_1(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)))));
    var var_1 = vec3<bool>(any(vec2<bool>(true, false)), true, any(vec4<bool>(true, true, true, true)) && true);
    let var_2 = _wgslsmith_div_vec4_u32(vec4<u32>(func_1(!select(vec3<bool>(var_1.x, var_1.x, true), vec3<bool>(true, var_1.x, true), vec3<bool>(var_1.x, var_1.x, var_1.x))).c.a.c.x, _wgslsmith_mod_u32(var_0.a.c.x, 14855u), ~reverseBits(func_3(Struct_1(0i, 22631i, vec2<u32>(var_0.a.c.x, 72313u)), Struct_3(Struct_2(Struct_1(var_0.a.a, -19362i, vec2<u32>(u_input.b.x, var_0.a.c.x))), vec2<i32>(u_input.c, var_0.a.a), Struct_2(Struct_1(u_input.e, var_0.a.a, vec2<u32>(328u, 13564u)))), Struct_4(-1i), Struct_1(2147483647i, -9236i, vec2<u32>(u_input.b.x, var_0.a.c.x))).x), 4294967295u << (_wgslsmith_div_u32(u_input.b.x, max(var_0.a.c.x, 4294967295u)) % 32u)), reverseBits(vec4<u32>(var_0.a.c.x, 4294967295u, _wgslsmith_div_u32(~1164u, func_4(false, u_input.b, var_1.yz, Struct_4(u_input.e)).a.c.x), _wgslsmith_add_u32(var_0.a.c.x, 7626u) & ~u_input.a)));
    var var_3 = abs(_wgslsmith_sub_u32(var_2.x ^ (_wgslsmith_dot_vec3_u32(vec3<u32>(6141u, 1u, 41956u), vec3<u32>(1u, 60928u, var_0.a.c.x)) | (u_input.a & 47531u)), func_4(~var_0.a.c.x <= 11554u, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(var_2.wzz, var_2.wxx), var_2.yxw), vec2<bool>(var_1.x, false), Struct_4(-33726i)).a.c.x));
    var var_4 = !vec4<bool>(any(select(vec4<bool>(false, var_1.x, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false))) && (var_0.a.b != -26138i), false, all(select(vec3<bool>(true, var_1.x, false), vec3<bool>(true, var_1.x, var_1.x), true)), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) * -791f)))), i32(-1i) * -(~(-var_0.a.b)), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(func_1(var_4.wwx).c.a.b, -641i, var_0.a.b, 39400i), vec4<i32>(var_0.a.a ^ var_0.a.b, firstTrailingBit(-2147483647i), var_0.a.b | -1i, var_0.a.a)), vec4<i32>(-38439i, firstTrailingBit(func_1(vec3<bool>(var_4.x, var_1.x, true)).c.a.a), var_0.a.a, 0i), -vec4<i32>(var_0.a.b, max(var_0.a.b, 2147483647i), -u_input.e, var_0.a.a)), -10022i);
}

