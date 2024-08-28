struct Struct_1 {
    a: f32,
    b: f32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1090f, 529f, 1249f);

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(1018f, 214f, vec2<i32>(42881i, -1i), false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.a.a)), 632f, _wgslsmith_f_op_f32(abs(-463f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, arg_0.a.c.b, -832f) * vec3<f32>(-2113f, global2.a, arg_0.a.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, -1000f, global0.x)))))) * vec3<f32>(_wgslsmith_f_op_f32(global0.x * global2.b), 1426f, _wgslsmith_f_op_f32(-2963f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), global0.x))));
    let var_1 = _wgslsmith_f_op_f32(-global2.a);
    let var_2 = vec4<u32>(countOneBits(~0u), abs(select(18934u, ~48478u, false)), min(1u, 1u), ~4294967295u) << (firstLeadingBit(vec4<u32>(21934u, 3499u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(51790u, 53722u), vec2<u32>(1u, 1u)), vec2<u32>(4294967295u, 0u)), ~1u)) % vec4<u32>(32u));
    var_0 = vec3<f32>(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x + arg_0.a.c.a), _wgslsmith_f_op_f32(sign(arg_0.a.a)), var_0.x <= -524f)) - _wgslsmith_f_op_f32(558f * 1f)) + global2.b));
    var var_3 = -1000f;
    return global2.c;
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    var var_0 = !(!(!select(u_input.a.x < arg_2.a.c.x, !arg_2.c.d, any(vec2<bool>(true, arg_2.c.d)))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_f32(1549f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2492f)), _wgslsmith_mod_vec2_i32(~global2.c, vec2<i32>(-34709i, 1i)), _wgslsmith_f_op_f32(exp2(arg_2.c.a)) >= 285f), arg_2.b, Struct_1(arg_2.c.a, _wgslsmith_div_f32(647f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0.x)))), firstLeadingBit(func_3(Struct_4(Struct_3(1000f, vec2<i32>(global2.c.x, -2147483647i), Struct_1(-1000f, global2.b, vec2<i32>(1242i, -2147483647i), true), arg_2.c)))), arg_2.c.d));
    let var_2 = any(!(!select(vec3<bool>(false, var_1.a.d, false), select(vec3<bool>(false, arg_2.c.d, true), vec3<bool>(global2.d, true, var_1.a.d), false), arg_2.a.d)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1049f * var_1.b.x), arg_2.b.x)));
    global0 = var_1.b;
    return Struct_3(900f, firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global2.c.x, 39078i) | _wgslsmith_sub_vec2_i32(vec2<i32>(-16492i, arg_2.c.c.x), vec2<i32>(-16524i, 0i)), arg_2.a.c)), arg_2.c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.x)) + global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.b.x * -845f)), select(~vec2<i32>(arg_0, var_1.c.c.x), arg_2.a.c, false), true));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-420f, -1461f, -661f))) + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1000f, 1000f))))))));
    let var_0 = 368f < arg_3;
    let var_1 = Struct_4(func_2(~_wgslsmith_add_i32(i32(-1i) * -1i, _wgslsmith_mod_i32(2147483647i, arg_0.a.c.c.x)), _wgslsmith_mult_i32(reverseBits(arg_1.c.x), reverseBits(u_input.a.x)), Struct_2(arg_0.a.c, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.a, 1396f, 1380f))), func_2(~34188i, firstTrailingBit(global2.c.x), Struct_2(arg_0.a.d, vec3<f32>(global2.b, 1522f, arg_0.a.d.b), Struct_1(global2.a, global2.a, arg_1.c, false))).d)));
    let var_2 = !vec3<bool>(var_0, !arg_0.a.c.d, false);
    var var_3 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(413f - -410f) * _wgslsmith_f_op_f32(-552f - 1000f)), 879f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1260f * _wgslsmith_f_op_f32(-arg_0.a.c.b))), global2.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.d.b, _wgslsmith_f_op_f32(f32(-1f) * -1763f), -746f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, 1087f, var_1.a.a))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-337f, arg_0.a.c.a, global2.a), vec3<f32>(arg_1.b, var_1.a.a, arg_1.a)))))))));
    return Struct_1(_wgslsmith_f_op_f32(var_1.a.c.a + _wgslsmith_f_op_f32(step(479f, _wgslsmith_f_op_f32(trunc(146f))))), 1f, reverseBits(vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.b.x, global2.c.x), vec2<i32>(u_input.a.x, 22401i)))), any(!(!var_2)));
}

fn func_1() -> Struct_2 {
    return Struct_2(func_4(Struct_4(func_2(18451i, u_input.a.x | global2.c.x, Struct_2(Struct_1(2157f, 306f, vec2<i32>(u_input.a.x, 58962i), false), vec3<f32>(-1395f, 747f, global2.b), Struct_1(-2051f, 2033f, vec2<i32>(u_input.a.x, 0i), true)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global2.b, -2639f)) + _wgslsmith_f_op_f32(global2.b - global2.b)), global2.b, u_input.a.yx, any(select(vec4<bool>(false, global2.d, global2.d, global2.d), vec4<bool>(false, true, global2.d, global2.d), vec4<bool>(true, false, global2.d, true)))), 1u, global2.b), vec3<f32>(-153f, 1107f, _wgslsmith_f_op_f32(-1279f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1457f + global2.a)))), Struct_1(global2.b, global0.x, u_input.a.yx, !global2.d));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = u_input.a.x;
    var_0 = ~global2.c.x;
    var var_1 = 1u;
    var var_2 = arg_2;
    let var_3 = arg_2;
    return select(select(vec4<bool>(true, arg_2.a.c.d, false, any(vec4<bool>(true, var_3.a.c.d, var_2.a.d.d, var_3.a.c.d)) & arg_1.x), !select(select(vec4<bool>(arg_1.x, var_2.a.d.d, false, true), vec4<bool>(false, false, var_2.a.d.d, var_2.a.c.d), vec4<bool>(arg_1.x, true, true, true)), !vec4<bool>(false, true, false, arg_0.a.d), arg_2.a.d.d), (_wgslsmith_div_u32(1u, arg_3.x) >> ((arg_3.x ^ 4300u) % 32u)) == ~arg_3.x), select(select(vec4<bool>(true, 1u == arg_3.x, arg_0.c.d, true), !vec4<bool>(false, var_2.a.c.d, var_3.a.d.d, global2.d), arg_3.x <= 1u), vec4<bool>(arg_1.x, 4294967295u >= (arg_3.x & arg_3.x), (global2.c.x == 7164i) | any(vec4<bool>(arg_2.a.d.d, global2.d, false, arg_0.c.d)), all(!vec4<bool>(arg_0.c.d, true, true, true))), select(vec4<bool>(false, global2.d, !global2.d, true), vec4<bool>(select(arg_0.c.d, arg_1.x, global2.d), true, true, var_3.a.c.d), all(vec4<bool>(arg_1.x, var_3.a.d.d, true, false)))), arg_2.a.d.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a - global2.b) - _wgslsmith_f_op_f32(693f - global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-480f)))), vec2<i32>(-u_input.a.x, -global2.c.x), all(func_5(func_1(), !vec3<bool>(global2.d, global2.d, global2.d), Struct_4(Struct_3(-1000f, u_input.a.xy, Struct_1(111f, global2.b, vec2<i32>(u_input.a.x, 18081i), global2.d), Struct_1(global2.a, -764f, vec2<i32>(global2.c.x, u_input.a.x), global2.d))), min(vec3<u32>(22193u, 0u, 6151u), vec3<u32>(1u, 0u, 29389u))))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), global2.b, global2.a), Struct_1(_wgslsmith_f_op_f32(global0.x * global2.a), _wgslsmith_f_op_f32(-global2.b), ~u_input.a.xy, global2.b != _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x - global0.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0.b.yy - vec2<f32>(1119f, global0.x));
    var var_2 = var_0.a;
    global1 = 1u;
    let var_3 = func_2(_wgslsmith_div_i32(~721i ^ func_2(countOneBits(var_0.c.c.x), -25488i, Struct_2(var_0.c, var_0.b, var_0.a)).c.c.x, 20841i), global2.c.x, func_1());
    var var_4 = var_0.b.zz;
    var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1) * _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(global0.xz, var_0.b.xz)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-710f, global0.x), vec2<f32>(1160f, -106f), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(global0.yx - global0.xy))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.zx - global0.yz), vec2<f32>(1000f, var_3.d.a)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.xx, global0.xx)))));
    let var_5 = -324f;
    var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_4(Struct_4(var_3), Struct_1(361f, global2.b, vec2<i32>(global2.c.x, var_2.c.x), var_2.d), 4294967295u, -1463f).a), _wgslsmith_f_op_f32(f32(-1f) * -1481f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1f), var_0.c.a, true))), _wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(~15241i, _wgslsmith_mod_i32(var_3.c.c.x, global2.c.x), ~var_3.c.c.x, var_0.c.c.x | var_2.c.x)), abs(min(vec4<i32>(var_2.c.x, var_3.d.c.x, 36120i, -1i), vec4<i32>(var_2.c.x, var_3.b.x, var_2.c.x, 24411i)))));
}

