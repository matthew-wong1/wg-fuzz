struct Struct_1 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
    c: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23>;

var<private> global1: bool;

var<private> global2: vec2<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: i32) -> vec3<bool> {
    let var_0 = Struct_5(Struct_1(vec2<i32>(_wgslsmith_add_i32(arg_2, i32(-1i) * -30774i), i32(-1i) * -34866i), 1u), vec2<f32>(-905f, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -450f), _wgslsmith_f_op_f32(f32(-1f) * -698f)), _wgslsmith_f_op_f32(f32(-1f) * -1232f)))), !(905f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(398f)))), _wgslsmith_f_op_f32(max(1074f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(664f + 1300f) + _wgslsmith_f_op_f32(2469f + 302f))))));
    let var_1 = Struct_3(var_0.a.b);
    global0 = array<i32, 23>();
    var var_2 = 0u;
    global1 = any(vec2<bool>(select(var_0.c, all(vec3<bool>(false, var_0.c, var_0.c)), true), true)) && true;
    return vec3<bool>(!(_wgslsmith_dot_vec3_u32(min(vec3<u32>(var_0.a.b, var_0.a.b, 20949u), vec3<u32>(var_1.a, u_input.b.x, 0u)), max(vec3<u32>(16575u, var_0.a.b, arg_1), vec3<u32>(51536u, 4294967295u, 11818u))) == _wgslsmith_div_u32(u_input.b.x, 49110u)), !(!(!any(vec4<bool>(true, false, var_0.c, var_0.c)))), !(false & all(!vec4<bool>(true, var_0.c, false, true))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32) -> vec3<i32> {
    global2 = _wgslsmith_add_vec2_i32(u_input.d.zx, reverseBits(vec2<i32>(min(~global0[_wgslsmith_index_u32(arg_0.x, 23u)], i32(-1i) * -16921i), -1i)));
    global1 = all(vec2<bool>(u_input.b.x >= arg_0.x, all(vec2<bool>(true, true))));
    let var_0 = ~u_input.d.yz;
    global1 = all(func_3(global2.x, reverseBits(u_input.c) ^ 15844u, 2147483647i));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(abs(1969f)), -1020f, 705f, 245f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-648f, -1399f, 737f, 551f)))))))));
    return vec3<i32>(~firstLeadingBit(~_wgslsmith_mult_i32(-1i, global2.x)), ~(-(~1i)), 0i);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32) -> vec3<bool> {
    global2 = _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(~87639i, 26279i), arg_0.yz), countOneBits(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_1.c.a.x, 34535i), vec2<i32>(global2.x, arg_1.c.a.x)) >> (vec2<u32>(arg_1.c.b & 0u, u_input.c) % vec2<u32>(32u))));
    global1 = false;
    global1 = !(_wgslsmith_f_op_f32(1409f * arg_1.a) >= _wgslsmith_f_op_f32(ceil(arg_1.a)));
    return vec3<bool>(false, all(vec4<bool>(any(vec4<bool>(true, false, true, true)) || true, true, all(vec2<bool>(true, true)) | true, true)), true);
}

fn func_1(arg_0: vec2<bool>) -> Struct_4 {
    let var_0 = func_4(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(0i, _wgslsmith_sub_i32(global2.x, -2147483647i), firstTrailingBit(-1i)), ~u_input.d.zzy, vec3<bool>(arg_0.x, !arg_0.x, arg_0.x)), ~vec3<i32>(i32(-1i) * -19583i, reverseBits(-19125i), _wgslsmith_sub_i32(0i, global0[_wgslsmith_index_u32(1u, 23u)])), -func_2(~vec2<u32>(u_input.b.x, u_input.b.x), firstTrailingBit(global2.x))), Struct_2(982f, -(~43973i), Struct_1(vec2<i32>(abs(0i), _wgslsmith_div_i32(u_input.a, global2.x)), 1u)), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x));
    var var_1 = 23098u;
    let var_2 = Struct_3(u_input.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -973f), -164f, _wgslsmith_f_op_f32(-460f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(718f)) * _wgslsmith_f_op_f32(f32(-1f) * -200f))), -160f));
    let var_4 = Struct_5(Struct_1(_wgslsmith_clamp_vec2_i32(u_input.d.xw, u_input.d.yw, ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.d.x), u_input.d.wz)), ~36635u), _wgslsmith_f_op_vec2_f32(var_3.zz * vec2<f32>(_wgslsmith_f_op_f32(abs(var_3.x)), _wgslsmith_f_op_f32(-var_3.x))), true, 1828f);
    return Struct_4(var_2, ~firstTrailingBit(~select(u_input.b, vec2<u32>(u_input.c, 67726u), true)), reverseBits(~firstLeadingBit(min(u_input.c, var_4.a.b))));
}

fn func_5(arg_0: Struct_4, arg_1: f32, arg_2: Struct_2) -> vec4<i32> {
    return u_input.d;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: bool) -> StorageBuffer {
    let var_0 = func_1(func_4(vec3<i32>(~_wgslsmith_dot_vec2_i32(vec2<i32>(0i, -36964i), vec2<i32>(-1i, u_input.a)), global0[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_div_i32(_wgslsmith_mult_i32(-1i, arg_1.x), min(0i, 0i))), Struct_2(-784f, global2.x, Struct_1(vec2<i32>(-18971i, u_input.a), arg_0.a)), 0u).yz);
    let var_1 = ~4294967295u;
    let var_2 = Struct_3(~var_1);
    var var_3 = 4294967295u;
    let var_4 = true;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-739f, -276f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 352f)), !vec2<bool>(arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-459f, 1000f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, 1144f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 714f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1475f, -2519f, -1441f, -211f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-675f, 117f, 2508f, 419f))))), _wgslsmith_f_op_f32(round(-672f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-819f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x << (~min(4294967295u, u_input.c) % 32u), 23u)], global0[_wgslsmith_index_u32(1u, 23u)]);
    let var_0 = -max(u_input.a << (abs(~u_input.b.x) % 32u), select(-(~2147483647i), _wgslsmith_div_i32(43879i & global2.x, 1i), u_input.b.x < u_input.c));
    global0 = array<i32, 23>();
    global1 = all(!(!select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), vec3<bool>(true, true, true))));
    global1 = true;
    let var_1 = ~(~vec3<u32>(min(abs(0u), u_input.b.x), u_input.b.x, _wgslsmith_add_u32(~u_input.b.x, 11084u)));
    global2 = _wgslsmith_clamp_vec2_i32(countOneBits(u_input.d.zx), ~(vec2<i32>(firstLeadingBit(-32955i), abs(-19205i)) | vec2<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, 56958i))), _wgslsmith_div_vec2_i32(countOneBits(u_input.d.xy & -vec2<i32>(var_0, -2147483647i)), u_input.d.zx));
    let x = u_input.a;
    s_output = func_6(Struct_3(~1u), -max(func_5(func_1(vec2<bool>(false, false)), _wgslsmith_div_f32(303f, 1197f), Struct_2(-1245f, -8967i, Struct_1(vec2<i32>(global2.x, global2.x), 0u))), (u_input.d & u_input.d) >> (vec4<u32>(0u, 4294967295u, var_1.x, 4294967295u) % vec4<u32>(32u))), false);
}

