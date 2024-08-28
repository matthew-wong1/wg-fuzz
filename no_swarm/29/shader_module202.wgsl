struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(406f))))) * global0.a);
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0.x, Struct_1(401f, _wgslsmith_mult_vec3_i32(global0.b, arg_0.xwx), u_input.c.zz, global0.d), Struct_1(-172f, global0.b, ~global0.c, true)))), global0.b, global0.c, global0.d || global0.d);
    let var_0 = global0.d;
    var var_1 = _wgslsmith_mult_u32(~_wgslsmith_sub_u32(4294967295u, 46117u), global0.c.x) & abs(~global0.c.x);
    let var_2 = select(u_input.c, _wgslsmith_mod_vec4_u32(abs(u_input.c) << (_wgslsmith_mult_vec4_u32(min(vec4<u32>(21362u, 28951u, u_input.b, global0.c.x), u_input.c), u_input.c) % vec4<u32>(32u)), u_input.c), vec4<bool>(125f != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(983f, global0.a)) + -380f), firstTrailingBit(_wgslsmith_div_u32(57580u, 44985u)) < abs(~26748u), !all(select(vec4<bool>(global0.d, global0.d, global0.d, true), vec4<bool>(false, global0.d, global0.d, global0.d), vec4<bool>(false, true, global0.d, false))), all(vec2<bool>(all(vec2<bool>(global0.d, global0.d)), arg_0.x >= arg_0.x))));
    let var_3 = Struct_1(global0.a, min(-_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(global0.b, vec3<i32>(-1i, arg_0.x, arg_0.x)), firstTrailingBit(arg_0.zzz)), vec3<i32>(-(~68355i), abs(min(global0.b.x, 2147483647i)), countOneBits(global0.b.x))), vec2<u32>(select(_wgslsmith_mult_u32(~32227u, global0.c.x), ~reverseBits(1u), any(!vec2<bool>(global0.d, false))), var_2.x), global0.d == !(!select(global0.d, false, global0.d)));
    return var_3;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.d;
    let var_1 = arg_0;
    global0 = var_1;
    var_0 = _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a) * _wgslsmith_f_op_f32(-global0.a))) > -1264f;
    global0 = Struct_1(-361f, firstTrailingBit(-min(vec3<i32>(46852i, -2147483647i, -35026i), vec3<i32>(31811i, -13334i, 17264i))), global0.c, _wgslsmith_dot_vec3_i32(reverseBits(global0.b), select(~vec3<i32>(-25404i, arg_0.b.x, 2463i), ~vec3<i32>(global0.b.x, -9937i, 0i), select(var_1.d, arg_0.d, false))) >= -1i);
    return Struct_1(202f, -_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(arg_0.b, vec3<i32>(1996i, -10739i, global0.b.x)), _wgslsmith_mult_vec3_i32(abs(global0.b), arg_0.b >> (u_input.a % vec3<u32>(32u)))), var_1.c, false);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_1;
    var var_1 = i32(-1i) * -global0.b.x;
    let var_2 = var_0;
    global0 = var_2;
    var var_3 = global0.d;
    return true | arg_2.d;
}

fn func_1() -> vec2<u32> {
    var var_0 = Struct_1(global0.a, global0.b, vec2<u32>(_wgslsmith_sub_u32(global0.c.x, abs(abs(global0.c.x))), 58841u), func_5(func_4(func_2(reverseBits(vec4<i32>(-17528i, global0.b.x, global0.b.x, 2147483647i)))), Struct_1(global0.a, -min(global0.b, global0.b), u_input.c.xw, true), Struct_1(global0.a, global0.b, u_input.a.zy, !global0.d)));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(236f, _wgslsmith_f_op_f32(trunc(-1552f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1278f + -1081f) * -1000f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) + global0.a)), _wgslsmith_f_op_f32(func_3(_wgslsmith_add_i32(2147483647i, _wgslsmith_sub_i32(-11630i, var_0.b.x)), func_2(select(vec4<i32>(var_0.b.x, var_0.b.x, global0.b.x, -50982i), vec4<i32>(2147483647i, global0.b.x, global0.b.x, global0.b.x), var_0.d)), Struct_1(_wgslsmith_f_op_f32(-532f * var_0.a), -vec3<i32>(0i, var_0.b.x, -44971i), ~global0.c, any(vec2<bool>(global0.d, true)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global0.a, var_0.a, -381f, -296f), vec4<f32>(var_0.a, -676f, 1771f, var_0.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-659f, -266f, var_0.a, -1000f) + vec4<f32>(var_0.a, -1074f, -406f, 1000f)))))));
    let var_2 = Struct_1(func_2(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, global0.b.x, 2147483647i, global0.b.x) & vec4<i32>(2147483647i, -85492i, 12596i, -1i), firstTrailingBit(vec4<i32>(global0.b.x, global0.b.x, -2147483647i, -2147483647i))))).a, vec3<i32>(~global0.b.x, i32(-1i) * -3372i, var_0.b.x), func_2(abs(vec4<i32>(31081i, global0.b.x, global0.b.x, global0.b.x)) << (_wgslsmith_add_vec4_u32(u_input.c, min(vec4<u32>(global0.c.x, 61849u, u_input.b, u_input.c.x), u_input.c)) % vec4<u32>(32u))).c, global0.d);
    var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -629f), abs(global0.b) ^ var_2.b, var_2.c, false);
    let var_3 = func_2(vec4<i32>(-abs(var_2.b.x), var_2.b.x, ~_wgslsmith_sub_i32(0i, global0.b.x), (-var_2.b.x ^ var_0.b.x) >> ((0u | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 100397u), vec2<u32>(u_input.c.x, 1u))) % 32u)));
    return _wgslsmith_div_vec2_u32(global0.c, ~(~(vec2<u32>(42710u, u_input.b) ^ abs(vec2<u32>(var_2.c.x, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-422f * global0.a))), _wgslsmith_f_op_f32(select(-2492f, global0.a, true)));
    let var_1 = global0.c.x;
    let var_2 = vec3<i32>(global0.b.x, 11604i, global0.b.x);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(select(global0.a, 759f, select(global0.d, global0.d, true))), ~select(var_2, vec3<i32>(0i, -1i, -1i) & global0.b, true) | var_2, reverseBits((u_input.c.yz | vec2<u32>(64782u, 10279u)) | func_1()), global0.d);
    var var_4 = _wgslsmith_f_op_f32(273f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.a * global0.a) + _wgslsmith_f_op_f32(f32(-1f) * -762f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.a)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * _wgslsmith_f_op_f32(var_3.a * var_3.a)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a * 592f), 441f)))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(899f - global0.a), _wgslsmith_f_op_f32(-global0.a));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -867f), var_3.a, var_3.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(839f, global0.a)), var_3.a)))), -2520f, var_3.d)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_mult_vec3_u32(u_input.c.ywx, u_input.c.yzx)), ~u_input.c.ywz, u_input.a, _wgslsmith_mod_u32(1u, ~reverseBits(var_3.c.x)));
}

