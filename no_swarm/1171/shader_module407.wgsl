struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<f32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
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

var<private> global0: vec3<u32> = vec3<u32>(46571u, 4294967295u, 47834u);

var<private> global1: f32 = -1471f;

var<private> global2: array<f32, 8>;

var<private> global3: bool = true;

var<private> global4: i32 = -18760i;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: i32) -> f32 {
    let var_0 = select(vec3<bool>(true, true, true), select(vec3<bool>(!all(vec3<bool>(false, false, false)), _wgslsmith_f_op_f32(sign(538f)) >= -1092f, true == (60527i < arg_0.x)), !(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true)), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), false);
    let var_1 = Struct_2(Struct_1(-(vec3<i32>(5498i, arg_0.x, arg_2) | select(vec3<i32>(-6164i, arg_2, arg_0.x), arg_0.wxx, vec3<bool>(false, true, var_0.x)))), select(true || var_0.x, true, true) || (any(!vec4<bool>(var_0.x, true, false, var_0.x)) | false), vec2<f32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, 64331u, 52607u) << (vec3<u32>(u_input.a.x, global0.x, global0.x) % vec3<u32>(32u)), u_input.c.ywy), firstTrailingBit(u_input.c.xxz << (vec3<u32>(44484u, 1u, 35847u) % vec3<u32>(32u)))), 8u)], _wgslsmith_f_op_f32(f32(-1f) * -1266f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-591f * 1350f)) + _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(abs(u_input.b), 8u)]))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x - -2185f), -194f)), 1441f, _wgslsmith_div_f32(arg_1.x, -1169f)));
    var var_2 = _wgslsmith_div_vec2_f32(var_1.c, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))))));
    global4 = -_wgslsmith_dot_vec2_i32(firstLeadingBit(var_1.a.a.yx), abs(_wgslsmith_div_vec2_i32(var_1.a.a.yy >> (vec2<u32>(global0.x, 53002u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(arg_0.yz, arg_0.zy))));
    let var_3 = Struct_2(Struct_1(vec3<i32>(var_1.a.a.x, ~arg_0.x, _wgslsmith_mod_i32(7983i, arg_2))), false, arg_1.xx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.d)));
    return var_2.x;
}

fn func_2(arg_0: u32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(max(1481f, -252f));
    var var_1 = vec2<f32>(-336f, _wgslsmith_f_op_f32(func_3(~firstTrailingBit(~vec4<i32>(-16320i, 0i, 0i, -2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1939f, -1653f, var_0)))), _wgslsmith_dot_vec3_i32(~vec3<i32>(-11530i, 18969i, 1i) | (vec3<i32>(23652i, -13457i, -15229i) << (vec3<u32>(global0.x, global0.x, 82537u) % vec3<u32>(32u))), vec3<i32>(18920i, 0i, _wgslsmith_mult_i32(-1i, 25554i))))));
    var var_2 = ~_wgslsmith_add_vec4_u32(u_input.c, _wgslsmith_add_vec4_u32(select(vec4<u32>(0u, 0u, 4294967295u, 0u), u_input.c, true), u_input.a));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2280f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -416f))))));
    var var_4 = select(vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 8u)] + 1635f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + var_1.x)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + 1031f)) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(var_0, 1000f, true))))), vec3<bool>(true, true, true), all(!(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true))));
    return vec2<i32>(abs(max(-33575i, ~min(-3262i, -21067i))), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(1i, -2147483647i)), vec2<i32>(min(-3057i, 2147483647i), ~3260i) >> (((vec2<u32>(1u, u_input.c.x) | vec2<u32>(arg_0, 19084u)) >> (~u_input.c.xx % vec2<u32>(32u))) % vec2<u32>(32u))));
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], 255f, 212f, 725f), vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 8u)], -2280f, 1733f, -437f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(453f, -714f, global2[_wgslsmith_index_u32(arg_0, 8u)], global2[_wgslsmith_index_u32(global0.x, 8u)]), vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(global0.x, 8u)], 1646f, 115f), vec4<bool>(true, false, true, false)))))))));
    let var_1 = select(vec3<bool>(true, !(_wgslsmith_f_op_f32(trunc(1713f)) <= _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x, 8u)] - -1000f)), false), vec3<bool>(true, true, true), !vec3<bool>(true, false, all(vec3<bool>(true, false, false))));
    var var_2 = abs(_wgslsmith_sub_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(-15738i, 11546i))) | ~countOneBits(func_2(59252u));
    var var_3 = select(vec4<bool>(any(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)), any(select(var_1.zz, vec2<bool>(true, false), select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, var_1.x), var_1.x))), false, any(vec3<bool>(var_1.x, any(vec4<bool>(var_1.x, var_1.x, var_1.x, false)), select(false, false, true)))), vec4<bool>(true, !(!var_1.x), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 8u)])) >= -1000f, true), any(vec4<bool>(!(var_1.x | true), _wgslsmith_f_op_f32(func_3(vec4<i32>(var_2.x, var_2.x, 58505i, 1i), var_0.yzw, var_2.x)) != global2[_wgslsmith_index_u32(~4294967295u, 8u)], true, var_1.x)));
    global3 = false;
    return Struct_2(Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(~var_2.x, ~var_2.x, ~(-2147483647i)), -countOneBits(vec3<i32>(-69091i, var_2.x, -57058i)))), true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0.yx)) + vec2<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(28351u, 8u)]), global2[_wgslsmith_index_u32(max(arg_0, 0u), 8u)]))), vec4<f32>(-1249f, -1123f, _wgslsmith_f_op_f32(round(586f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(115f * -2020f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~92024u & u_input.c.x, ~(select(40704u, global0.x, false) >> (u_input.c.x % 32u)) & global0.x);
    global2 = array<f32, 8>();
    global1 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0.x, 8u)]);
    var var_1 = var_0;
    let var_2 = _wgslsmith_dot_vec4_u32(u_input.a, ~u_input.c);
    global0 = min(~u_input.a.xxw, firstTrailingBit(u_input.c.zzw));
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.wxz) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d.zzy) - var_0.d.xyz), var_1.d.wxz));
    var var_4 = firstLeadingBit(vec4<u32>(var_2, ~(~1u), ~(global0.x << (global0.x % 32u)), ~var_2));
    global0 = var_4.wyz;
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

