struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14> = array<vec4<f32>, 14>(vec4<f32>(2274f, -468f, -2098f, 1334f), vec4<f32>(-1000f, -1036f, -1587f, -105f), vec4<f32>(554f, -1999f, 406f, 529f), vec4<f32>(-530f, -1214f, 945f, 1000f), vec4<f32>(-1239f, -729f, 652f, -1421f), vec4<f32>(1793f, 879f, -668f, 1616f), vec4<f32>(536f, -1276f, 1793f, 312f), vec4<f32>(653f, -135f, 731f, -1000f), vec4<f32>(631f, -406f, 1240f, -377f), vec4<f32>(-2696f, 1790f, -822f, 2112f), vec4<f32>(575f, 1964f, -265f, -1446f), vec4<f32>(516f, -583f, 178f, -138f), vec4<f32>(2008f, -889f, -858f, 680f), vec4<f32>(628f, 633f, 212f, 139f));

var<private> global1: array<Struct_3, 28>;

var<private> global2: array<Struct_1, 29>;

var<private> global3: Struct_3;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = global3.a;
    var var_1 = global1[_wgslsmith_index_u32(72323u, 28u)];
    global3 = Struct_3(Struct_1(1u), _wgslsmith_mod_vec4_u32(~(~vec4<u32>(arg_1.b.x, var_1.b.x, arg_1.b.x, 5401u)), ~countOneBits(vec4<u32>(arg_1.b.x, arg_1.b.x, 36698u, 61652u))) << ((vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, var_1.a.a, 70761u, 44104u), var_1.b), max(45065u, 49064u), _wgslsmith_dot_vec2_u32(global3.b.yz, vec2<u32>(u_input.c.x, 52833u)), _wgslsmith_sub_u32(4294967295u, 33900u)) | ~(~var_1.b)) % vec4<u32>(32u)));
    return firstTrailingBit(vec3<i32>(~firstLeadingBit(1i), u_input.a | -countOneBits(8132i), firstTrailingBit(~(-3919i))));
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2156f, 1166f) - 1f))), _wgslsmith_div_f32(-1081f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2163f)) + arg_2.x))), -1095f));
    var var_1 = true;
    var var_2 = _wgslsmith_div_vec3_i32(u_input.d.zwx, _wgslsmith_sub_vec3_i32(-func_3(all(vec4<bool>(true, false, false, false)), global1[_wgslsmith_index_u32(u_input.c.x, 28u)]), ~(-func_3(false, arg_0))));
    global1 = array<Struct_3, 28>();
    var var_3 = Struct_2(Struct_1(arg_0.b.x), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(4294967295u ^ (961u & arg_1.x)), _wgslsmith_dot_vec2_u32(~arg_0.b.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(85469u, u_input.b), ~vec2<u32>(0u, 9121u)))), 29u)]);
    return Struct_1(firstLeadingBit(_wgslsmith_sub_u32(~(~0u), arg_1.x)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_3) -> vec2<f32> {
    var var_0 = ~1330u;
    var var_1 = 1u;
    var var_2 = reverseBits(max(firstLeadingBit(global3.b.x), ~_wgslsmith_mod_u32(firstLeadingBit(arg_3.a.a), firstTrailingBit(4294967295u))));
    var var_3 = true;
    let var_4 = Struct_2(Struct_1(arg_0.a.a), Struct_1(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec2_u32(u_input.c.zy, arg_0.b.ww) | arg_1.a, ~(~global3.a.a))));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(148f, -1123f), vec2<f32>(1000f, 176f), arg_2.x)))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: u32, arg_3: Struct_3) -> vec2<f32> {
    global3 = arg_3;
    global1 = array<Struct_3, 28>();
    var var_0 = Struct_3(arg_0, _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~(~global3.b), global3.b), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(arg_3.b.x, 0u, arg_2, 22119u) ^ global3.b), _wgslsmith_div_vec4_u32(~vec4<u32>(global3.b.x, 0u, arg_3.b.x, 79439u), ~global3.b))));
    return _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(arg_0.a, 28u)], Struct_1(firstTrailingBit(u_input.b)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(global3.a.a, var_0.a.a), u_input.c.x), 28u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1, _wgslsmith_f_op_vec2_f32(sign(arg_1)))))), vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f - _wgslsmith_f_op_f32(arg_1.x * -987f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-2031f)), _wgslsmith_div_f32(1006f, arg_1.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = -1842f;
    var var_1 = global2[_wgslsmith_index_u32(1u, 29u)];
    var var_2 = arg_0.a;
    global2 = array<Struct_1, 29>();
    var var_3 = _wgslsmith_f_op_vec2_f32(func_5(arg_0, _wgslsmith_f_op_vec2_f32(func_4(global1[_wgslsmith_index_u32(1u, 28u)], func_2(global1[_wgslsmith_index_u32(~27802u, 28u)], ~vec2<u32>(0u, 65769u), vec4<f32>(_wgslsmith_f_op_f32(max(-531f, 749f)), _wgslsmith_f_op_f32(sign(2034f)), _wgslsmith_f_op_f32(ceil(159f)), -369f), _wgslsmith_dot_vec2_u32(abs(global3.b.yz), ~vec2<u32>(1u, 1u))), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), Struct_3(func_2(global1[_wgslsmith_index_u32(global3.b.x, 28u)], vec2<u32>(30320u, u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1713f, -162f, -1085f, -512f) - vec4<f32>(1000f, 1481f, -161f, -2115f)), u_input.c.x), abs(global3.b)))), global3.a.a, Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.a, firstLeadingBit(19387u)), 29u)], ~(~(~global3.b)))));
    return Struct_1(abs(global3.b.x));
}

fn func_6(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2) -> u32 {
    let var_0 = ~0u;
    global3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstLeadingBit(abs(_wgslsmith_sub_u32(var_0, u_input.c.x))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_add_u32(arg_1.b.a, 24047u)), ~firstTrailingBit(global3.b.x))) << (~(1u ^ func_1(arg_2.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.d.x, u_input.a, u_input.a), u_input.d)).a) % 32u), 28u)];
    var var_1 = vec3<i32>(u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d.x, u_input.a), vec2<i32>(2147483647i, u_input.a))), _wgslsmith_dot_vec2_i32((~vec2<i32>(2147483647i, 0i) << (select(vec2<u32>(85348u, arg_1.a.a), u_input.c.yz, vec2<bool>(true, false)) % vec2<u32>(32u))) >> (~(~global3.b.wz) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(u_input.a), ~u_input.d.x), vec2<i32>(_wgslsmith_sub_i32(0i, 36784i), -44667i), -vec2<i32>(u_input.a, -2147483647i))));
    let var_2 = _wgslsmith_f_op_vec2_f32(func_5(Struct_1(0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(471f, -1000f) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(488f, -1346f) - vec2<f32>(996f, 169f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(127f, -1345f))))) - _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 850f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(684f, -1504f) - _wgslsmith_div_vec2_f32(vec2<f32>(470f, -1132f), vec2<f32>(1056f, 360f)))))), 4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.b.a, _wgslsmith_dot_vec4_u32(vec4<u32>(32455u, 4294967295u, var_0, arg_2.b.a) << (vec4<u32>(global3.b.x, 0u, 1038u, 47843u) % vec4<u32>(32u)), ~vec4<u32>(76569u, arg_1.a.a, 1u, 6830u))) & 32673u, 28u)])).x;
    var var_3 = Struct_2(Struct_1(~(~(~global3.b.x))), func_2(global1[_wgslsmith_index_u32(min(40262u, _wgslsmith_sub_u32(112272u, global3.b.x)), 28u)], _wgslsmith_mult_vec2_u32(~u_input.c.yy, ~(~vec2<u32>(40139u, 0u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1045f, _wgslsmith_f_op_f32(trunc(1710f)), 1130f, _wgslsmith_f_op_f32(ceil(-170f)))), 988u));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(reverseBits(func_6(~(~global3.a.a), Struct_2(func_1(global2[_wgslsmith_index_u32(2769u, 29u)], u_input.a), Struct_1(11934u)), Struct_2(Struct_1(65184u), func_1(global2[_wgslsmith_index_u32(global3.a.a, 29u)], 0i)))), max(1u, 0u));
    global0 = array<vec4<f32>, 14>();
    var var_1 = func_1(func_1(func_2(global1[_wgslsmith_index_u32(min(31497u, global3.a.a) ^ u_input.c.x, 28u)], ~vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-162f, _wgslsmith_f_op_f32(abs(-203f)), -1119f, _wgslsmith_f_op_f32(min(1566f, 271f))), ~(~90856u)), func_3(!select(true, true, true), global1[_wgslsmith_index_u32(68305u, 28u)]).x), countOneBits(u_input.d.x));
    let var_2 = Struct_3(Struct_1(75562u), global3.b);
    global0 = array<vec4<f32>, 14>();
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(433f + -1362f) * _wgslsmith_f_op_f32(f32(-1f) * -421f)) + _wgslsmith_f_op_f32(-595f * _wgslsmith_f_op_f32(trunc(-717f)))) <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_5(global2[_wgslsmith_index_u32(var_2.b.x, 29u)], vec2<f32>(2290f, -1116f), 43136u, Struct_3(var_2.a, var_2.b))).x), -1536f, select(true, true, true))), select(false, !any(select(vec2<bool>(false, false), vec2<bool>(false, true), false)), all(vec4<bool>(true, true, true, true))), (u_input.c.x == 12712u) || all(select(select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(false, false), true)), true);
    let var_4 = Struct_2(func_1(func_2(var_2, vec2<u32>(reverseBits(6251u), ~4294967295u), global0[_wgslsmith_index_u32(~11709u, 14u)], 0u), -1i), var_2.a);
    global2 = array<Struct_1, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-1104f, -32609i);
}

