struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec3<u32>,
    d: bool,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 13>;

var<private> global1: array<Struct_3, 31>;

var<private> global2: Struct_3 = Struct_3(vec4<i32>(-52497i, 2147483647i, 885i, -20670i), -5767i, Struct_1(vec3<u32>(92211u, 32948u, 1u)));

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec2<u32>) -> u32 {
    global0 = array<Struct_3, 13>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(598f + -220f) - _wgslsmith_f_op_f32(f32(-1f) * -775f)) - 1214f))), true, Struct_1(_wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(u_input.c.yyx, u_input.c.xxy, select(global3.a, arg_0.e.a, arg_0.d)), max(abs(arg_0.b.c.a), ~vec3<u32>(global2.c.a.x, 84487u, u_input.b.x)))), Struct_1(arg_0.c), arg_0.b.a.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-613f)) - _wgslsmith_div_f32(var_0.a, 1841f)) - _wgslsmith_f_op_f32(var_0.a * var_0.a)), -488f));
    global0 = array<Struct_3, 13>();
    global3 = Struct_1(vec3<u32>(0u, 1u, ~0u));
    return min(4294967295u, ~u_input.b.x);
}

fn func_2(arg_0: vec2<f32>) -> Struct_4 {
    var var_0 = func_3(Struct_4(~(~26367u), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global3.a.x, 1u), 31u)], (global3.a | vec3<u32>(u_input.b.x, global3.a.x, global2.c.a.x)) >> (abs(global3.a) % vec3<u32>(32u)), true, Struct_1(global3.a)), ~vec2<u32>(4294967295u, _wgslsmith_mod_u32(global3.a.x, 4294967295u))) & ~u_input.b.x;
    return Struct_4(firstLeadingBit(firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, global2.c.a.x), min(u_input.c.x, 66122u)))), Struct_3(max(vec4<i32>(0i, abs(0i), ~2147483647i, u_input.a), global2.a), 1i, global2.c), u_input.c.zzz, global3.a.x > u_input.c.x, Struct_1(~(~global3.a)));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_2 {
    global3 = func_2(vec2<f32>(-1656f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1845f)) + -806f), _wgslsmith_f_op_f32(1397f - -438f))))).b.c;
    let var_0 = global2.a.x;
    let var_1 = func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(-743f * 465f)), _wgslsmith_f_op_f32(-1334f * _wgslsmith_f_op_f32(-178f - 823f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2668f, -2348f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2534f, 853f)), select(vec2<bool>(arg_0.d, true), vec2<bool>(false, false), vec2<bool>(arg_0.d, false)))) + vec2<f32>(_wgslsmith_f_op_f32(1720f - -1436f), _wgslsmith_f_op_f32(min(1066f, -500f))))));
    var var_2 = Struct_2(_wgslsmith_div_f32(1017f, 967f), ~(global3.a.x >> (arg_0.a % 32u)) < 4294967295u, func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1049f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2516f), _wgslsmith_f_op_f32(1000f * 742f))))).e, func_2(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -472f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 1324f)))).b.c, -4130i);
    let var_3 = !select(vec4<bool>(all(select(vec2<bool>(false, false), vec2<bool>(true, var_2.b), false)), !var_1.d, any(select(vec4<bool>(var_2.b, true, true, var_1.d), vec4<bool>(false, false, true, arg_0.d), vec4<bool>(var_2.b, false, false, var_1.d))), var_1.d), select(!(!vec4<bool>(true, arg_0.d, var_2.b, var_1.d)), vec4<bool>(!var_2.b, false, -2147483647i <= var_1.b.a.x, func_2(vec2<f32>(-554f, var_2.a)).d), var_2.b), select(select(select(vec4<bool>(var_2.b, true, true, false), vec4<bool>(arg_0.d, arg_0.d, true, var_1.d), vec4<bool>(var_2.b, var_1.d, false, true)), !vec4<bool>(var_1.d, arg_0.d, var_1.d, false), func_2(vec2<f32>(783f, var_2.a)).d), vec4<bool>(all(vec2<bool>(false, arg_0.d)), arg_0.d, arg_0.c.x >= u_input.c.x, !var_1.d), false && any(vec4<bool>(false, true, false, false))));
    return Struct_2(var_2.a, true, var_1.e, Struct_1(u_input.c.xyw), var_2.e);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: bool) -> vec2<u32> {
    let var_0 = func_4(func_2(vec2<f32>(1f, 1f)), ~abs(max(vec2<i32>(-57177i, arg_0), vec2<i32>(arg_0, u_input.a))));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-924f - var_0.a))))))));
    let var_2 = func_4(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-551f, -1234f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 805f))) - vec2<f32>(-1765f, _wgslsmith_f_op_f32(sign(var_0.a))))), ~(-vec2<i32>(1i, arg_0) >> (~_wgslsmith_clamp_vec2_u32(u_input.c.xy, arg_1, global2.c.a.yx) % vec2<u32>(32u))));
    let var_3 = vec3<i32>(i32(-1i) * -29407i, _wgslsmith_sub_i32(-2147483647i, _wgslsmith_add_i32(var_0.e, arg_0)), arg_0);
    var var_4 = Struct_4(1379u, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(22545u, var_2.c.a.x)) ^ _wgslsmith_sub_vec2_u32(var_0.d.a.zx, global2.c.a.yz), ~(vec2<u32>(0u, 0u) >> (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u)))) | 0u, 13u)], var_2.d.a, !(_wgslsmith_add_i32(var_3.x << (4294967295u % 32u), -24081i) >= var_0.e), Struct_1(vec3<u32>(~var_2.c.a.x ^ global2.c.a.x, var_2.c.a.x, var_0.c.a.x)));
    return firstTrailingBit(~(vec2<u32>(4294967295u, ~var_4.e.a.x) | reverseBits(firstTrailingBit(vec2<u32>(var_4.a, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(select(_wgslsmith_sub_vec2_u32(func_1(-2147483647i, ~vec2<u32>(global2.c.a.x, u_input.b.x), true), ~global3.a.xy), abs(~global2.c.a.xz), true), vec2<u32>(_wgslsmith_mult_u32(reverseBits(u_input.b.x ^ global2.c.a.x), 61386u), 4294967295u));
    var_0 = ~global3.a.zz | vec2<u32>(~0u, ~var_0.x);
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -1677f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(848f, 371f))) + 1000f)));
    var var_2 = 4294967295u;
    let var_3 = func_2(var_1);
    var var_4 = var_3.c.x >= global3.a.x;
    var var_5 = Struct_4(1u, func_2(var_1).b, func_2(var_1).b.c.a, select(var_3.d, -1885f != _wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(f32(-1f) * -436f)), all(!select(vec2<bool>(true, var_3.d), vec2<bool>(true, var_3.d), var_3.d))), func_2(var_1).b.c);
    var var_6 = func_4(Struct_4(countOneBits(~_wgslsmith_div_u32(4294967295u, var_3.a)), global1[_wgslsmith_index_u32((var_3.c.x | var_0.x) | ~select(var_3.b.c.a.x, global3.a.x, false), 31u)], max(var_3.e.a, ~global3.a), var_3.d, Struct_1(vec3<u32>(0u, _wgslsmith_mult_u32(4294967295u, global3.a.x), _wgslsmith_dot_vec3_u32(u_input.c.yzx, vec3<u32>(global3.a.x, global3.a.x, 4294967295u))))), -select(var_3.b.a.xz, _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, u_input.a), _wgslsmith_mod_vec2_i32(var_5.b.a.wz, var_3.b.a.wz)), any(select(vec4<bool>(var_5.d, false, true, var_5.d), vec4<bool>(true, true, var_5.d, false), var_5.d))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(807f + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))), 0u, func_4(Struct_4(13299u, var_3.b, vec3<u32>(_wgslsmith_div_u32(1u, 72004u), 4294967295u >> (1u % 32u), ~0u), var_3.d, func_4(Struct_4(78005u, Struct_3(var_3.b.a, 2147483647i, var_6.c), var_6.c.a, var_5.d, Struct_1(vec3<u32>(u_input.c.x, u_input.b.x, var_5.b.c.a.x))), vec2<i32>(-1i, u_input.a) >> (var_5.b.c.a.zz % vec2<u32>(32u))).c), vec2<i32>(~(-1i), -57364i)).e, _wgslsmith_dot_vec3_u32(~(~_wgslsmith_add_vec3_u32(vec3<u32>(76891u, 0u, 1u), vec3<u32>(var_3.c.x, u_input.b.x, 8081u))), var_5.b.c.a), firstLeadingBit(~global3.a | vec3<u32>(0u, 0u, 1u)) | ~(_wgslsmith_mult_vec3_u32(global2.c.a, vec3<u32>(global2.c.a.x, var_5.e.a.x, var_3.b.c.a.x)) >> (vec3<u32>(16121u, var_6.d.a.x, var_3.b.c.a.x) % vec3<u32>(32u))));
}

