struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(0i, -382i, 0i, 12007i);

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(-63654i), Struct_1(2147483647i), Struct_1(i32(-2147483648)));

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-381f, -1483f), Struct_1(5301i), Struct_1(-13359i), vec4<i32>(-30897i, 2147483647i, -1i, 0i));

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-1i), Struct_1(17793i), Struct_1(0i), Struct_1(1i), Struct_1(-6548i), Struct_1(2147483647i), Struct_1(-33343i), Struct_1(-20098i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: u32, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_1(arg_0.a);
    var var_1 = u_input.d.x;
    var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_3.yzx, ~firstLeadingBit(u_input.d)), 3u)];
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.a.x * -542f), _wgslsmith_f_op_f32(-global3.a.x));
    let var_3 = ~_wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~arg_1.x, arg_3.x), 91766u), 0u, reverseBits(~arg_1.x));
    return _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_2, 31795u) >> (~4294967295u % 32u), 1u) >> (_wgslsmith_mult_u32(reverseBits(4294967295u | arg_1.x), arg_3.x) % 32u), 4294967295u);
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.a.x))), _wgslsmith_f_op_f32(ceil(arg_0.a.x))));
    var var_1 = arg_0.a;
    let var_2 = 19429u;
    let var_3 = Struct_1(arg_3.a);
    var var_4 = select(select(vec4<bool>(!all(vec4<bool>(global2.x, global2.x, false, global2.x)), (true != global2.x) && false, !any(vec4<bool>(true, global2.x, false, false)), global3.a.x <= _wgslsmith_f_op_f32(-arg_1)), !(!(!vec4<bool>(global2.x, false, global2.x, false))), u_input.d.x > func_3(arg_0.c, vec4<u32>(u_input.d.x, 4294967295u, var_2, 1u), var_2, min(vec4<u32>(var_2, 19027u, var_2, 4294967295u), vec4<u32>(1u, u_input.d.x, u_input.d.x, 4294967295u)))), select(vec4<bool>(global2.x, all(vec4<bool>(false, true, true, global2.x)), global2.x, !(!global2.x)), select(select(select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, false, global2.x)), vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, global2.x, true, true)), select(!vec4<bool>(global2.x, false, global2.x, true), !vec4<bool>(false, global2.x, true, global2.x), !vec4<bool>(false, true, global2.x, global2.x)), all(vec4<bool>(false, global2.x, global2.x, global2.x))), 250u < var_2), true);
    return Struct_1(-34925i);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> f32 {
    global3 = arg_2;
    let var_0 = Struct_2(vec2<f32>(1214f, -456f), func_2(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(sign(global3.a.x)), _wgslsmith_f_op_f32(-arg_3)), Struct_1(-1i), Struct_1(1i), min(_wgslsmith_clamp_vec4_i32(vec4<i32>(-28899i, 2147483647i, arg_0.a, global3.d.x), vec4<i32>(0i, 1i, -2147483647i, -76799i), u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, arg_2.d.x, global3.c.a, global3.d.x), arg_2.d, vec4<i32>(arg_2.c.a, global3.b.a, 1054i, 1i)))), -2346f, arg_2.b, arg_0), Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(-1i, 2147483647i, 1i, -56200i)), vec4<i32>(u_input.c, arg_0.a, u_input.b, global0.x)), -global3.d)), ~_wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, arg_0.a, 2147483647i, -4909i)), vec4<i32>(global0.x, 69326i, ~(-97108i), ~global3.b.a)));
    var var_1 = true;
    global4 = array<Struct_1, 8>();
    var var_2 = Struct_1(-33114i);
    return _wgslsmith_f_op_f32(-1183f - _wgslsmith_f_op_f32(f32(-1f) * -204f));
}

fn func_5(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: i32) -> Struct_2 {
    let var_0 = 1i;
    var var_1 = 1u;
    global4 = array<Struct_1, 8>();
    let var_2 = 1488f;
    let var_3 = _wgslsmith_clamp_u32(~(~(~34526u)), ~1u, _wgslsmith_div_u32(~abs(41586u), u_input.d.x) | max(50318u, ~abs(56316u)));
    return Struct_2(arg_1.zx, func_2(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1.yy * arg_1.xx)), Struct_1(var_0), Struct_1(-1i), u_input.a), -203f, func_2(Struct_2(vec2<f32>(global3.a.x, -1556f), func_2(Struct_2(arg_1.zy, global3.c, global3.b, vec4<i32>(arg_2, var_0, 15674i, u_input.b)), arg_1.x, global1[_wgslsmith_index_u32(1u, 3u)], global4[_wgslsmith_index_u32(4294967295u, 8u)]), func_2(Struct_2(arg_1.yx, global1[_wgslsmith_index_u32(30644u, 3u)], global3.b, vec4<i32>(arg_2, global3.d.x, var_0, var_0)), global3.a.x, global1[_wgslsmith_index_u32(var_3, 3u)], Struct_1(-1i)), u_input.a), arg_1.x, global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~86314u, ~u_input.d.x), 3u)], Struct_1(_wgslsmith_add_i32(0i, -9682i))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(41226u, abs(u_input.d.x), _wgslsmith_add_u32(u_input.d.x, 0u)), u_input.d), 3u)]), Struct_1(1i), u_input.a);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = -38700i;
    let var_1 = func_5(vec4<bool>(true, !(arg_2.a.x <= arg_2.a.x), global2.x, true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-686f, arg_2.a.x, arg_1.a.x), vec3<f32>(arg_2.a.x, arg_1.a.x, arg_1.a.x)) + vec3<f32>(-212f, 1106f, arg_2.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1010f, -964f, -1816f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, arg_2.a.x, 1461f))))), vec3<f32>(_wgslsmith_f_op_f32(arg_2.a.x + _wgslsmith_f_op_f32(ceil(-403f))), -1303f, _wgslsmith_f_op_f32(func_4(func_2(Struct_2(arg_2.a, arg_1.b, global4[_wgslsmith_index_u32(9694u, 8u)], vec4<i32>(-56209i, -2147483647i, global0.x, -2147483647i)), global3.a.x, Struct_1(1i), Struct_1(arg_1.b.a)), func_2(Struct_2(vec2<f32>(arg_1.a.x, -809f), arg_3, Struct_1(arg_3.a), arg_1.d), arg_1.a.x, Struct_1(u_input.a.x), arg_2.c), arg_2, _wgslsmith_f_op_f32(global3.a.x - -1191f))))), ~max(arg_2.d.x, arg_2.b.a));
    global4 = array<Struct_1, 8>();
    let var_2 = arg_1;
    var var_3 = -((global3.c.a ^ select(_wgslsmith_mult_i32(arg_1.d.x, global0.x), global0.x, true)) & var_2.c.a);
    return _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(arg_2.a.x, _wgslsmith_f_op_f32(-var_2.a.x), all(!vec3<bool>(global2.x, true, global2.x)))), _wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), _wgslsmith_f_op_f32(abs(-493f)), var_1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.b);
    var var_1 = 2147483647i < global3.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(1u, u_input.d.x), u_input.d.x), abs(~u_input.d)) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, u_input.d.x, 1u), min(vec3<u32>(u_input.d.x, 39721u, 0u), u_input.d), u_input.d) % vec3<u32>(32u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, -151f, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_div_f32(859f, global3.a.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.x, -468f, 605f, global3.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, -1193f, -350f) + vec4<f32>(-851f, 745f, -574f, global3.a.x))) + vec4<f32>(-440f, _wgslsmith_f_op_f32(-425f + -1142f), _wgslsmith_div_f32(global3.a.x, 1680f), global3.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_1(u_input.d, Struct_2(global3.a, var_0, Struct_1(global0.x), vec4<i32>(global0.x, -27572i, global3.b.a, 38180i)), Struct_2(vec2<f32>(-3074f, 460f), global3.b, var_0, global3.d), var_0)))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.x, global3.a.x, 938f, global3.a.x) * vec4<f32>(global3.a.x, 603f, global3.a.x, global3.a.x)))))));
}

