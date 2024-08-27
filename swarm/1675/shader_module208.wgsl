struct Struct_1 {
    a: f32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1022f, vec3<bool>(true, false, true), vec2<i32>(2147483647i, 1i), vec3<f32>(877f, -606f, -2404f), false);

var<private> global1: array<bool, 30> = array<bool, 30>(true, false, true, true, true, false, true, true, false, false, true, true, true, true, false, true, false, false, true, false, true, false, false, false, true, true, true, true, true, false);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_2) -> vec3<f32> {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(94119i, arg_1, -14373i, 43139i), vec4<i32>(-1i, 0i, -23620i, 0i)), arg_2.a.c.x, _wgslsmith_div_i32(1i, u_input.b)), abs(vec3<i32>(arg_2.a.c.x, -2147483647i, 1i))), -vec3<i32>(_wgslsmith_mod_i32(arg_2.a.c.x, 20299i), -2147483647i, ~u_input.b)), -vec3<i32>(-3253i, arg_2.a.c.x, u_input.b));
    var_0 = min(-countOneBits(vec3<i32>(16173i, -62816i << (u_input.c.x % 32u), -1i)), vec3<i32>(_wgslsmith_clamp_i32(~min(global0.c.x, arg_1), _wgslsmith_mult_i32(arg_2.a.c.x, var_0.x << (96770u % 32u)), ~min(arg_1, arg_0.c.x)), 2147483647i, 2147483647i));
    let var_1 = arg_2.a.b.yy;
    var var_2 = ~u_input.a.yzy;
    let var_3 = Struct_2(arg_0);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.d.x, -1063f, 1104f), var_3.a.d, arg_2.a.b))), vec3<f32>(1477f, var_3.a.a, 1901f)) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d.x))), _wgslsmith_f_op_f32(floor(1222f)), _wgslsmith_f_op_f32(f32(-1f) * -738f))) + vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-251f + -1369f) + 1266f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(873f, _wgslsmith_f_op_f32(ceil(212f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1241f, -2111f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_3(Struct_1(arg_0.x, !global0.b, _wgslsmith_div_vec2_i32(select(vec2<i32>(1279i, -2147483647i), vec2<i32>(global0.c.x, 54772i), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 30u)]), vec2<i32>(-u_input.b, global0.c.x & u_input.b)), global0.d, global0.e), Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(1f)), global0.b, abs(vec2<i32>(-24134i, 2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(global0.a, vec3<bool>(global0.e, true, false), vec2<i32>(global0.c.x, global0.c.x), vec3<f32>(-175f, -400f, 204f), true), -2147483647i, Struct_2(Struct_1(200f, vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)]), vec2<i32>(8631i, -1i), global0.d, global1[_wgslsmith_index_u32(u_input.a.x, 30u)])))) - global0.d), select(any(vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)])), !global1[_wgslsmith_index_u32(43584u, 30u)], true))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-788f, arg_1, false))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global0.a))))), global0.b, global0.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1323f, global0.a, 936f)), _wgslsmith_f_op_vec3_f32(global0.d + global0.d))), any(vec4<bool>(arg_1 == arg_0.x, global0.b.x, all(vec3<bool>(true, false, global0.b.x)), any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global0.e, global0.e))))), select(!vec3<bool>(select(true, global0.b.x, global0.e), all(global0.b.xy), !global1[_wgslsmith_index_u32(0u, 30u)]), select(global0.b, global0.b, !select(vec3<bool>(global1[_wgslsmith_index_u32(151002u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], global0.b.x), vec3<bool>(global0.e, true, false), vec3<bool>(true, global0.b.x, false))), select(!vec3<bool>(global0.b.x, global1[_wgslsmith_index_u32(u_input.c.x, 30u)], global0.b.x), !global0.b, !global0.b)));
    var var_1 = !(u_input.c.x >= 0u);
    var_1 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    global1 = array<bool, 30>();
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.a.d.yy))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(934f, global0.d.x))) + global0.d.zz)), _wgslsmith_f_op_vec2_f32(exp2(arg_0)), global0.b.xx));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.x))))), select(var_0.c.b, vec3<bool>(global0.c.x == select(u_input.b, u_input.b, global1[_wgslsmith_index_u32(1u, 30u)]), global0.e, true), !(~u_input.a.x > 0u)), _wgslsmith_add_vec2_i32(var_0.c.c, abs(~(-vec2<i32>(-10627i, u_input.b)))), _wgslsmith_f_op_vec3_f32(-global0.d), global1[_wgslsmith_index_u32(u_input.a.x, 30u)]);
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_3.b.a.d);
    let var_1 = ~(abs(select(abs(u_input.a), ~u_input.a, vec4<bool>(false, global0.e, true, true))) << (~vec4<u32>(~13249u, 1u | u_input.a.x, 11181u, 1u) % vec4<u32>(32u)));
    global1 = array<bool, 30>();
    var var_2 = Struct_4(func_2(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + global0.d.x))), _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global0 = Struct_1(arg_1.x, !select(arg_2.b, !vec3<bool>(false, var_2.a.e, true), !(!var_2.a.e)), _wgslsmith_clamp_vec2_i32(~var_2.a.c, _wgslsmith_mult_vec2_i32(vec2<i32>(firstLeadingBit(0i), firstTrailingBit(arg_3.a.c.x)), vec2<i32>(arg_3.b.a.c.x, ~u_input.b)), vec2<i32>(-16866i, ~max(11714i, arg_2.c.x))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d.x, arg_3.c.a, -1601f)) + var_0))))), !any(!vec3<bool>(var_2.a.b.x, global1[_wgslsmith_index_u32(0u, 30u)], true)));
    return func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_1))) + _wgslsmith_f_op_vec2_f32(min(var_0.zy, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -379f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a))))));
}

fn func_1(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<f32>) -> bool {
    var var_0 = 811f;
    global0 = Struct_1(global0.d.x, global0.b, global0.c, arg_1, all(!vec3<bool>(arg_0, true, global0.b.x)));
    var var_1 = Struct_4(func_4(-1242f, _wgslsmith_f_op_vec2_f32(vec2<f32>(-665f, _wgslsmith_f_op_f32(-arg_1.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.x, 995f))))), Struct_1(arg_1.x, vec3<bool>(!global0.b.x, false | global0.b.x, false), ~vec2<i32>(1i, global0.c.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(598f, arg_2.x, arg_1.x) + vec3<f32>(1249f, global0.d.x, arg_2.x)) - arg_2), !all(vec4<bool>(false, true, true, true))), Struct_3(func_2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1957f, 110f))), _wgslsmith_f_op_f32(global0.a + -1290f)), Struct_2(func_2(vec2<f32>(global0.d.x, -723f), arg_1.x)), func_2(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_1.x, global0.a))), _wgslsmith_f_op_f32(2049f * 1912f)), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 30u)], true, any(vec2<bool>(false, global0.e))))));
    let var_2 = var_1.a;
    var_0 = var_1.a.d.x;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -275f;
    global0 = Struct_1(1f, vec3<bool>(func_1(all(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], global1[_wgslsmith_index_u32(6225u, 30u)])), vec3<f32>(_wgslsmith_f_op_f32(2006f * global0.d.x), _wgslsmith_f_op_f32(-global0.d.x), global0.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d))), false, func_1(global0.d.x != -1000f, vec3<f32>(_wgslsmith_f_op_f32(min(245f, -1350f)), _wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(-757f + global0.d.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_1(863f, global0.b, global0.c, vec3<f32>(-554f, global0.d.x, global0.d.x), true), 18708i, Struct_2(Struct_1(global0.d.x, global0.b, vec2<i32>(global0.c.x, 65848i), global0.d, false))))))), vec2<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 38655i, -3314i, -2147483647i) >> (vec4<u32>(1u, 1u, 4294967295u, 36159u) % vec4<u32>(32u)), _wgslsmith_sub_vec4_i32(vec4<i32>(-11548i, global0.c.x, global0.c.x, -26503i), vec4<i32>(u_input.b, global0.c.x, -1i, 58330i)))), ~(-global0.c.x) ^ -max(0i, -63909i)), _wgslsmith_f_op_vec3_f32(abs(global0.d)), func_1(true, global0.d, func_2(_wgslsmith_div_vec2_f32(global0.d.xx, global0.d.zx), -1000f).d) || false);
    global1 = array<bool, 30>();
    let var_1 = 4294967295u;
    var var_2 = ~u_input.c;
    var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(25252u, 0u), u_input.a.xw);
    var var_3 = !vec4<bool>(all(!(!global0.b.yy)), false, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(16427u) ^ _wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1 >> (u_input.c.x % 32u), 13068u), firstTrailingBit(u_input.c.x)), ~u_input.a.xy);
}

