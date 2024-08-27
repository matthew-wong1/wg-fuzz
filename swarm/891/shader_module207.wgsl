struct Struct_1 {
    a: u32,
    b: f32,
    c: bool,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: vec4<i32> = vec4<i32>(-4731i, -1i, 5006i, -1i);

var<private> global3: array<Struct_2, 22> = array<Struct_2, 22>(Struct_2(-1119f, vec3<i32>(-1i, -6527i, 2147483647i), 13386u), Struct_2(3060f, vec3<i32>(23769i, -67428i, 0i), 4294967295u), Struct_2(-1011f, vec3<i32>(-30998i, 11013i, 41493i), 1u), Struct_2(498f, vec3<i32>(-1i, -1209i, 2147483647i), 1u), Struct_2(440f, vec3<i32>(-19977i, 0i, 2147483647i), 1u), Struct_2(109f, vec3<i32>(4311i, -46836i, 27882i), 1u), Struct_2(-1524f, vec3<i32>(19431i, 25236i, 2147483647i), 28398u), Struct_2(-1293f, vec3<i32>(12663i, 13764i, -1870i), 4294967295u), Struct_2(-795f, vec3<i32>(i32(-2147483648), -45024i, -52407i), 0u), Struct_2(1394f, vec3<i32>(-18775i, -1i, -1i), 1u), Struct_2(994f, vec3<i32>(2147483647i, 19313i, -1i), 21324u), Struct_2(-1202f, vec3<i32>(i32(-2147483648), -26841i, 2147483647i), 38204u), Struct_2(447f, vec3<i32>(60636i, i32(-2147483648), -75293i), 0u), Struct_2(-2396f, vec3<i32>(2147483647i, 36729i, 64347i), 4294967295u), Struct_2(-317f, vec3<i32>(i32(-2147483648), -1i, -28510i), 64691u), Struct_2(-160f, vec3<i32>(2147483647i, -1i, 4152i), 1u), Struct_2(-402f, vec3<i32>(1i, 52381i, 34185i), 29627u), Struct_2(-502f, vec3<i32>(i32(-2147483648), -42265i, 5849i), 92045u), Struct_2(-590f, vec3<i32>(i32(-2147483648), -1i, 4229i), 50308u), Struct_2(1680f, vec3<i32>(2147483647i, i32(-2147483648), 1i), 26332u), Struct_2(-374f, vec3<i32>(-1i, 1i, i32(-2147483648)), 0u), Struct_2(-718f, vec3<i32>(-1i, 16746i, 29664i), 1u));

var<private> global4: vec2<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> f32 {
    return arg_0.a;
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - _wgslsmith_f_op_f32(f32(-1f) * -132f)) == arg_1;
    global3 = array<Struct_2, 22>();
    let var_1 = select(select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false), vec4<bool>(true, true, true, true), true), vec4<bool>(any(vec2<bool>(false, false)), true, (arg_0 ^ -10573i) < arg_0, all(vec3<bool>(true, true, true))), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(false, true, true, false), false), vec4<bool>(true, true, true, true))), !(~u_input.b.x < u_input.b.x));
    var var_2 = Struct_1(1u, arg_1, true, ~(~(~(~0u))), -2147483647i);
    let var_3 = !all(!select(!vec2<bool>(var_1.x, true), select(var_1.zy, var_1.xy, var_1.wx), vec2<bool>(var_1.x, var_2.c)));
    return Struct_2(arg_1, vec3<i32>(-1i) * -u_input.c.wxx, reverseBits(_wgslsmith_add_u32(_wgslsmith_div_u32(7757u, 51940u), ~4294967295u)) | firstTrailingBit(0u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> f32 {
    return _wgslsmith_f_op_f32(select(-333f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1.a))), false));
}

fn func_5(arg_0: f32) -> u32 {
    var var_0 = vec3<u32>(~4294967295u, u_input.b.x, u_input.b.x);
    let var_1 = Struct_2(1507f, global2.wxw, ~global0[_wgslsmith_index_u32(countOneBits(25408u), 32u)]);
    global4 = _wgslsmith_mult_vec2_i32(select(~u_input.c.yx, u_input.c.wz, select(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)), true), select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true))), select(true, true, all(vec2<bool>(true, true))))), vec2<i32>(-(~(-46839i)), global2.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, var_1.a, -1000f, var_1.a) - vec4<f32>(var_1.a, 506f, 890f, arg_0)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(623f, arg_0, 1000f, 581f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(326f, var_1.a, 2092f, 280f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1792f, var_1.a, 168f, -1256f) - vec4<f32>(arg_0, -1000f, -862f, -1579f)))))));
    var var_3 = global3[_wgslsmith_index_u32(var_0.x, 22u)];
    return u_input.b.x << (var_3.c % 32u);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<bool>) -> bool {
    let var_0 = vec4<bool>(true, !((global2.x >= global4.x) || (arg_3.x != arg_3.x)) != false, any(!vec2<bool>(arg_0.b == arg_0.b, !arg_0.c)), false);
    let var_1 = arg_3;
    global0 = array<u32, 32>();
    let var_2 = (_wgslsmith_div_u32(~(~arg_0.d), ~21007u) ^ ~u_input.b.x) >> ((firstTrailingBit(~arg_0.d) & _wgslsmith_mult_u32(352u, global0[_wgslsmith_index_u32(countOneBits(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a, 32u)], 32u)]), 32u)])) % 32u);
    var var_3 = global0[_wgslsmith_index_u32(func_5(_wgslsmith_f_op_f32(func_4(u_input.b.zzx, func_3(-global4.x ^ abs(-2147483647i), _wgslsmith_f_op_f32(func_2(global3[_wgslsmith_index_u32(~arg_0.a, 22u)], -global2.xwy)), _wgslsmith_dot_vec4_i32(u_input.c, ~u_input.c))))), 32u)];
    return u_input.d <= -_wgslsmith_dot_vec3_i32(~vec3<i32>(global4.x, 2147483647i, arg_0.e), ~u_input.a.zzx);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_i32(u_input.a, max(_wgslsmith_sub_vec4_i32(u_input.a | vec4<i32>(u_input.c.x, u_input.d, 1i, global2.x), countOneBits(u_input.c)), vec4<i32>(_wgslsmith_mult_i32(-21748i, -1i), 1i, i32(-1i) * -u_input.d, 0i)));
    var var_1 = ~(~_wgslsmith_dot_vec2_i32(vec2<i32>(-15475i, ~29880i), ~vec2<i32>(-1i, var_0.x)));
    var var_2 = global1[_wgslsmith_index_u32(select(63849u, 51229u, true), 25u)];
    global2 = u_input.c;
    let var_3 = any(select(vec4<bool>(var_2.c, func_1(Struct_1(1944u, var_2.b, var_2.c, 4294967295u, -2147483647i), select(vec2<bool>(false, true), vec2<bool>(var_2.c, var_2.c), false), var_2.c, !vec2<bool>(false, var_2.c)), !select(false, var_2.c, false), !(!var_2.c)), select(!vec4<bool>(false, var_2.c, true, var_2.c), vec4<bool>(select(false, true, false), 4294967295u >= global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], false, -1i <= global4.x), _wgslsmith_add_i32(var_2.e, u_input.d) < -var_2.e), var_2.c));
    var_1 = u_input.c.x;
    var var_4 = var_3;
    var var_5 = u_input.c;
    var var_6 = func_3(-firstTrailingBit(select(abs(u_input.c.x), ~1i, var_2.c)), var_2.b, -1i);
    let x = u_input.a;
    s_output = StorageBuffer(select(var_5.x, -4646i, true));
}

