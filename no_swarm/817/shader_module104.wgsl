struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec2<f32>(549f, 1000f)), true, Struct_1(vec2<f32>(-506f, -171f)), -2502f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(Struct_1(vec2<f32>(-1000f, 790f)), false, Struct_1(vec2<f32>(1063f, 1342f)), -1304f), Struct_2(Struct_1(vec2<f32>(906f, 1545f)), false, Struct_1(vec2<f32>(243f, 1068f)), 1270f), Struct_2(Struct_1(vec2<f32>(2126f, -522f)), true, Struct_1(vec2<f32>(354f, 262f)), -361f), Struct_2(Struct_1(vec2<f32>(-100f, -141f)), true, Struct_1(vec2<f32>(1062f, 416f)), -685f), Struct_2(Struct_1(vec2<f32>(795f, -366f)), true, Struct_1(vec2<f32>(730f, -604f)), 1697f), Struct_2(Struct_1(vec2<f32>(-862f, 1000f)), false, Struct_1(vec2<f32>(-1811f, 1000f)), 485f), Struct_2(Struct_1(vec2<f32>(550f, -433f)), true, Struct_1(vec2<f32>(1040f, 860f)), -263f), Struct_2(Struct_1(vec2<f32>(580f, 1000f)), false, Struct_1(vec2<f32>(-2030f, 1000f)), -949f), Struct_2(Struct_1(vec2<f32>(-758f, 535f)), true, Struct_1(vec2<f32>(279f, 877f)), -445f), Struct_2(Struct_1(vec2<f32>(-2123f, 538f)), false, Struct_1(vec2<f32>(475f, -766f)), -1384f), Struct_2(Struct_1(vec2<f32>(1056f, -1000f)), true, Struct_1(vec2<f32>(556f, -419f)), 1000f), Struct_2(Struct_1(vec2<f32>(614f, -505f)), true, Struct_1(vec2<f32>(404f, -915f)), -1280f), Struct_2(Struct_1(vec2<f32>(-333f, -1944f)), false, Struct_1(vec2<f32>(-2815f, -217f)), 632f), Struct_2(Struct_1(vec2<f32>(467f, 1573f)), true, Struct_1(vec2<f32>(731f, -1023f)), 140f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> bool {
    global3 = array<Struct_2, 14>();
    global1 = global3[_wgslsmith_index_u32(min(0u & ~u_input.a.x, max(u_input.a.x, u_input.a.x)), 14u)];
    let var_0 = abs(u_input.a.x);
    return false;
}

fn func_2() -> vec3<bool> {
    global3 = array<Struct_2, 14>();
    var var_0 = global1.c;
    return vec3<bool>(global1.b, !all(!(!vec2<bool>(global1.b, false))), !any(vec2<bool>(func_3(), false)));
}

fn func_1() -> Struct_1 {
    global3 = array<Struct_2, 14>();
    global3 = array<Struct_2, 14>();
    global3 = array<Struct_2, 14>();
    var var_0 = any(!func_2());
    let var_1 = 27735u;
    return Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(263f, 955f), global1.c.a, !(!vec2<bool>(global1.b, global1.b)))));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: f32, arg_3: Struct_2) -> vec3<u32> {
    var var_0 = Struct_2(arg_1.a, !(!func_3() && any(vec2<bool>(arg_1.b, false))), func_1(), _wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(round(arg_2))));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1799f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.c.a - vec2<f32>(var_0.a.a.x, 478f))))));
    return u_input.a.zwz;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_2, 14>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b, 21u)];
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 21u)];
    let var_1 = -countOneBits(u_input.c);
    var var_2 = (~vec3<i32>(u_input.c | u_input.c, i32(-1i) * -26324i, 38630i) & vec3<i32>(14391i, -u_input.c, _wgslsmith_add_i32(2147483647i << (u_input.a.x % 32u), var_1 >> (4294967295u % 32u)))) << (func_4(_wgslsmith_mod_i32(-abs(1i), -2147483647i), Struct_2(var_0.c, 13001u <= ~u_input.b, func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.a.x))), global0[_wgslsmith_index_u32(u_input.a.x, 21u)]) % vec3<u32>(32u));
    let var_3 = ~(-38350i);
    var var_4 = false;
    var_2 = vec3<i32>(_wgslsmith_mult_i32(~_wgslsmith_add_i32(var_2.x | var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 14620i, u_input.c, var_2.x), vec4<i32>(u_input.c, var_1, u_input.c, var_3))), var_1 >> (u_input.b % 32u)), reverseBits((firstTrailingBit(2147483647i) | ~var_3) << (~u_input.a.x % 32u)), var_3 ^ var_2.x);
    var var_5 = abs((max(-vec3<i32>(1i, -19180i, -1i), firstTrailingBit(vec3<i32>(-2147483647i, 24324i, var_2.x))) | vec3<i32>(abs(u_input.c), 2147483647i, i32(-1i) * -2147483647i)) | vec3<i32>(~(~u_input.c), var_3, 0i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(u_input.b ^ ~(~u_input.b), 0u), ~countOneBits(-(vec4<i32>(var_1, var_5.x, -1i, u_input.c) & vec4<i32>(var_3, 0i, -1i, -81607i))), _wgslsmith_sub_vec4_i32(vec4<i32>(var_5.x, 17001i, 1i, abs(0i)), max(vec4<i32>(max(var_3, 32288i), max(var_2.x, var_5.x), max(1i, var_3), _wgslsmith_div_i32(var_3, var_2.x)), max(-vec4<i32>(1i, 61i, u_input.c, var_3), _wgslsmith_add_vec4_i32(vec4<i32>(26163i, var_5.x, -14512i, var_1), vec4<i32>(var_5.x, var_5.x, var_3, 65059i))))));
}

