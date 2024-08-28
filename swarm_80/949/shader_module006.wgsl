struct Struct_1 {
    a: f32,
    b: u32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(Struct_2(732f), -15427i, Struct_1(-1000f, 42249u, -1209f, vec3<u32>(4294967295u, 4294967295u, 0u)), vec2<f32>(-1303f, 244f)), Struct_3(Struct_2(1000f), 6690i, Struct_1(-1109f, 4294967295u, -1738f, vec3<u32>(11517u, 0u, 46719u)), vec2<f32>(-764f, -1000f)), Struct_3(Struct_2(-525f), i32(-2147483648), Struct_1(652f, 0u, 1000f, vec3<u32>(27193u, 44090u, 24558u)), vec2<f32>(1909f, -413f)), Struct_3(Struct_2(125f), 15141i, Struct_1(-958f, 0u, 907f, vec3<u32>(57215u, 1u, 91134u)), vec2<f32>(-1665f, -565f)), Struct_3(Struct_2(265f), -1i, Struct_1(658f, 4294967295u, 1754f, vec3<u32>(17066u, 1u, 0u)), vec2<f32>(387f, 237f)), Struct_3(Struct_2(499f), 0i, Struct_1(-1335f, 13489u, 238f, vec3<u32>(4294967295u, 57800u, 9690u)), vec2<f32>(412f, 908f)), Struct_3(Struct_2(259f), 0i, Struct_1(-841f, 1u, -595f, vec3<u32>(19745u, 1u, 4294967295u)), vec2<f32>(-385f, 1203f)), Struct_3(Struct_2(-851f), -1i, Struct_1(543f, 10387u, -1735f, vec3<u32>(4294967295u, 4294967295u, 62594u)), vec2<f32>(1122f, 1680f)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_2(-1000f);
    var var_1 = abs(-(_wgslsmith_add_vec3_i32(vec3<i32>(-25354i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)) << (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 0u, u_input.c), vec3<u32>(0u, 0u, 0u)) % vec3<u32>(32u))) & vec3<i32>(0i, 1i, 15641i));
    let var_2 = Struct_1(-1000f, u_input.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a))), abs(vec3<u32>(_wgslsmith_clamp_u32(select(1u, 68898u, false), u_input.a, 33133u), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 39270u, u_input.c, u_input.a), vec4<u32>(u_input.a, 72945u, 1u, u_input.c)))));
    let var_3 = _wgslsmith_f_op_f32(round(var_2.a));
    let var_4 = abs(u_input.c) != abs(var_2.d.x);
    return _wgslsmith_mult_vec3_u32(var_2.d, countOneBits(vec3<u32>(var_2.b ^ 35999u, countOneBits(4294967295u) >> (select(var_2.b, var_2.b, var_4) % 32u), u_input.c)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<i32>) -> Struct_1 {
    let var_0 = ~arg_2.zx;
    let var_1 = -abs(arg_2.x);
    let var_2 = _wgslsmith_div_vec3_i32(~arg_2, abs(arg_2 << (vec3<u32>(u_input.a, 4294967295u, u_input.a) % vec3<u32>(32u))) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, var_0.x, 1i), arg_2));
    let var_3 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(118i, _wgslsmith_mult_i32(13973i, arg_2.x)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, arg_2.x), u_input.b))), firstTrailingBit(~var_0.x) ^ arg_2.x);
    var var_4 = ~u_input.a;
    return Struct_1(arg_0.a, abs(u_input.a), _wgslsmith_f_op_f32(round(2370f)), func_3());
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_0.x;
    let var_1 = 0u;
    let var_2 = _wgslsmith_clamp_vec3_u32(reverseBits(~arg_0.wyw) >> (arg_0.yxx % vec3<u32>(32u)), abs(~(vec3<u32>(21548u, arg_0.x, u_input.c) | arg_0.wyz) >> (vec3<u32>(~54086u, _wgslsmith_dot_vec4_u32(arg_0, arg_0), arg_0.x) % vec3<u32>(32u))), arg_0.xxy);
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_div_i32(u_input.b.x, select(u_input.b.x, 2147483647i, u_input.b.x < -u_input.b.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(vec4<i32>(54084i, 48287i, -50372i, u_input.b.x), vec4<i32>(u_input.b.x, -23177i, u_input.b.x, 0i)), -(~vec4<i32>(u_input.b.x, 1i, 2147483647i, u_input.b.x)) ^ _wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.b.x, u_input.b.x, 10311i, -44613i)), firstTrailingBit(vec4<i32>(u_input.b.x, -2147483647i, u_input.b.x, -2147483647i)))));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-336f)) * arg_1.a)), 1551f) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-559f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(arg_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1393f, arg_1.a) + arg_1.a)))));
    return func_2(arg_1, vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1713f + _wgslsmith_f_op_f32(step(393f, var_4.x))), 1000f)), -1237f, _wgslsmith_f_op_f32(floor(1f)), 471f), -_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -2147483647i, var_3), vec3<i32>(var_3, 0i, -26546i)), (vec3<i32>(var_3, 0i, 0i) | vec3<i32>(-1i, var_3, -11530i)) << ((vec3<u32>(1u, 4294967295u, var_1) >> (vec3<u32>(u_input.c, 13254u, 33336u) % vec3<u32>(32u))) % vec3<u32>(32u))));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> vec2<bool> {
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.c, -917f, arg_1.c) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, arg_1.c, arg_1.a))))))));
    global0 = array<Struct_3, 8>();
    var var_1 = var_0;
    return select(vec2<bool>(!any(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), true)), true), !select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true)), select(vec2<bool>(true, false), vec2<bool>(false, true), true), true), vec2<bool>(true, true), false), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), false)), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_4(countOneBits(vec2<u32>(42027u, 4294967295u)), func_1(vec4<u32>(u_input.a, 1u, 1u, u_input.c), Struct_2(1969f)))), func_4(~vec2<u32>(u_input.c, 1u), func_1(vec4<u32>(u_input.a, 0u, 0u, u_input.c) & vec4<u32>(u_input.c, 27043u, 12328u, 4294967295u), Struct_2(823f)))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-735f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -700f), -127f)))), _wgslsmith_div_u32(1u, ~0u), -370f, select(~vec3<u32>(~u_input.a, u_input.c << (u_input.a % 32u), u_input.a), countOneBits(~(vec3<u32>(3717u, 1u, 0u) ^ vec3<u32>(u_input.c, u_input.c, 1u))), true));
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    global0 = array<Struct_3, 8>();
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(f32(-1f) * -255f)), var_1.a);
    global0 = array<Struct_3, 8>();
    let var_3 = var_1.d.zx;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(~var_1.d.x, _wgslsmith_clamp_u32(abs(var_3.x), u_input.a, select(0u, 30545u, var_0))), -1i, _wgslsmith_f_op_f32(-var_1.a), ~var_1.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1.c, var_1.c), vec2<f32>(449f, -1000f))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-239f, var_1.c) + vec2<f32>(var_1.a, 1206f)))))));
}

