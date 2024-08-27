struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
    c: u32,
    d: Struct_1,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, Struct_1(true, vec4<f32>(-161f, 752f, -1000f, -689f), 0u, vec2<bool>(false, true)), 0i, vec3<i32>(-34167i, 2147483647i, -1i), vec4<bool>(false, false, false, false));

var<private> global1: vec2<f32>;

var<private> global2: array<bool, 10>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    return 1i;
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_2 {
    let var_0 = global0.d;
    global0 = Struct_2(all(global0.e.yzy), Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1979f, global0.b.b.x, 471f)) - arg_1), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.b.c, 0u, 25074u), vec3<u32>(u_input.c, global0.b.c, 24539u)), reverseBits(vec3<u32>(1045u, arg_2.b.c, arg_2.b.c))), arg_2.b.c), vec2<bool>(true, any(!global0.b.d))), var_0.x, -(~vec3<i32>(firstLeadingBit(u_input.d.x), -2147483647i & arg_2.d.x, global0.c)), !vec4<bool>(!(!arg_0), arg_2.e.x, true, arg_2.a));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b.b)), true);
    let var_2 = Struct_2(true, global0.b, ~u_input.d.x, vec3<i32>(_wgslsmith_mod_i32(1i, 7056i) & firstTrailingBit(~1i), -(func_3() >> (firstLeadingBit(arg_2.b.c) % 32u)), arg_2.c), arg_2.e);
    var var_3 = any(!arg_2.e);
    return arg_2;
}

fn func_1(arg_0: Struct_3) -> f32 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(-263f - _wgslsmith_div_f32(global0.b.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b * global0.b.b.x)))), arg_0.e.x);
    global0 = func_2(true, vec4<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(exp2(arg_0.e.x))))), _wgslsmith_f_op_f32(-arg_0.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -983f)), Struct_2(true, arg_0.d, u_input.d.x, global0.d, vec4<bool>(false, arg_0.a.x, arg_0.a.x, false)));
    global2 = array<bool, 10>();
    let var_0 = ~(~u_input.b);
    var var_1 = Struct_2(select(all(!select(vec2<bool>(arg_0.d.a, global2[_wgslsmith_index_u32(var_0.x, 10u)]), vec2<bool>(global2[_wgslsmith_index_u32(14887u, 10u)], global2[_wgslsmith_index_u32(1u, 10u)]), true)), arg_0.d.d.x, false), Struct_1(false, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1000f))), arg_0.d.b.x, _wgslsmith_f_op_f32(-786f + global1.x), arg_0.b), ~abs(~u_input.c), vec2<bool>(u_input.a.x < _wgslsmith_div_u32(global0.b.c, 64921u), !global0.e.x)), _wgslsmith_clamp_i32(24966i, _wgslsmith_mod_i32(min(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.c, -8617i), u_input.d), min(global0.c, global0.c)), -1i), global0.d.x), select(global0.d, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.c, global0.c), -35055i, 17500i), global0.d), false), func_2(global0.e.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-301f, 1879f, 607f, -1605f) * _wgslsmith_f_op_vec4_f32(arg_0.d.b * global0.b.b)))), Struct_2(!global0.e.x, Struct_1(global2[_wgslsmith_index_u32(abs(1u), 10u)], vec4<f32>(global0.b.b.x, 316f, 1355f, global0.b.b.x), global0.b.c, !global0.e.yz), _wgslsmith_mod_i32(-29123i, func_3()), min(global0.d, reverseBits(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))), !(!vec4<bool>(global0.a, true, false, arg_0.d.d.x)))).e);
    return _wgslsmith_div_f32(func_2(false, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1000f, 658f, -1000f, global1.x))) - _wgslsmith_f_op_vec4_f32(-var_1.b.b))), func_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2875f, global0.b.b.x, 506f, -221f) * vec4<f32>(-802f, var_1.b.b.x, global1.x, 1788f))), func_2(false & arg_0.d.a, _wgslsmith_f_op_vec4_f32(global0.b.b + vec4<f32>(511f, var_1.b.b.x, global1.x, arg_0.b)), func_2(false, vec4<f32>(448f, global0.b.b.x, -524f, -908f), Struct_2(var_1.b.d.x, global0.b, -52448i, vec3<i32>(-38868i, var_1.c, 0i), vec4<bool>(var_1.e.x, false, arg_0.d.d.x, true)))))).b.b.x, -364f);
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    var var_0 = global0.c;
    return Struct_1(any(global0.e.wzz), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(global0.b.b + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-198f, -1529f, 135f, 1221f))), arg_0.a))))), 100726u, func_2(!(select(arg_0.b, global2[_wgslsmith_index_u32(1u, 10u)], arg_0.b) && all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 10u)], arg_0.b, true))), vec4<f32>(_wgslsmith_f_op_f32(global0.b.b.x * _wgslsmith_f_op_f32(-932f * -219f)), 1161f, global0.b.b.x, _wgslsmith_f_op_f32(-global0.b.b.x)), func_2(any(global0.e) && (global0.e.x | true), vec4<f32>(_wgslsmith_f_op_f32(ceil(global0.b.b.x)), global1.x, global1.x, _wgslsmith_f_op_f32(floor(353f))), func_2(global2[_wgslsmith_index_u32(14647u, 10u)] && true, vec4<f32>(-1042f, global0.b.b.x, -1000f, 1102f), Struct_2(global0.e.x, Struct_1(true, global0.b.b, global0.b.c, global0.b.d), global0.c, global0.d, vec4<bool>(global2[_wgslsmith_index_u32(global0.b.c, 10u)], global0.b.d.x, global0.a, arg_0.b))))).e.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<bool>(global2[_wgslsmith_index_u32(abs(u_input.a.x), 10u)], global0.b.a, any(global0.e.yzy), !all(vec3<bool>(false, global0.a, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global0.b.b.x + _wgslsmith_f_op_f32(ceil(global1.x))))), global0.b.c, func_4(Struct_5(vec4<f32>(global1.x, _wgslsmith_f_op_f32(func_1(Struct_3(global0.e, global0.b.b.x, u_input.b.x, Struct_1(false, global0.b.b, 12397u, vec2<bool>(true, true)), global0.b.b.yz))), 258f, 564f), global0.a), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(0u, 25902u, global0.b.c, u_input.c) >> (u_input.a % vec4<u32>(32u)), ~u_input.a), u_input.a, vec4<u32>(u_input.c, global0.b.c, _wgslsmith_add_u32(u_input.a.x, u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 23439u), u_input.a.zy))), _wgslsmith_mult_u32(~(~global0.b.c), 80570u)), _wgslsmith_div_vec2_f32(func_2(global2[_wgslsmith_index_u32(global0.b.c, 10u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.b.b - global0.b.b)), func_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a.x, 29527u), 10u)], _wgslsmith_div_vec4_f32(vec4<f32>(294f, -884f, global1.x, 1011f), vec4<f32>(140f, global0.b.b.x, global0.b.b.x, global1.x)), Struct_2(true, global0.b, global0.c, global0.d, vec4<bool>(global0.a, global0.b.a, true, true)))).b.b.zy, _wgslsmith_f_op_vec2_f32(global0.b.b.xw - vec2<f32>(_wgslsmith_f_op_f32(global0.b.b.x * global1.x), global0.b.b.x))));
    global0 = Struct_2(all(var_0.a.wz), Struct_1(var_0.d.a, _wgslsmith_f_op_vec4_f32(sign(global0.b.b)), var_0.c, var_0.a.ww), ~(-1i), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.d, _wgslsmith_mult_vec2_i32(vec2<i32>(24279i, global0.c), vec2<i32>(global0.d.x, -2147483647i))), ~u_input.d.x << (~(global0.b.c >> (0u % 32u)) % 32u), -8525i), !var_0.a);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.b.x * -490f) + var_0.d.b.x), _wgslsmith_f_op_f32(-global1.x)) * 593f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.d.b.x * _wgslsmith_f_op_f32(-190f * -717f)))))));
    var var_1 = false;
    let var_2 = Struct_2(all(global0.e.yxx) != global2[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(1u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.a.zy >> (u_input.a.yz % vec2<u32>(32u)), ~u_input.b.zx)), 10u)], var_0.d, -u_input.d.x, firstTrailingBit(vec3<i32>(-6272i, _wgslsmith_div_i32(-global0.d.x, 1i), -10188i)), vec4<bool>(true, _wgslsmith_sub_u32(~4294967295u, 0u) != u_input.b.x, !(!all(vec3<bool>(true, false, global0.b.d.x))), false));
    let var_3 = Struct_2(!any(!func_2(global2[_wgslsmith_index_u32(var_0.c, 10u)], vec4<f32>(1191f, global1.x, -467f, 1785f), Struct_2(global2[_wgslsmith_index_u32(var_0.d.c, 10u)], Struct_1(false, var_0.d.b, global0.b.c, vec2<bool>(var_0.a.x, var_2.a)), 2230i, global0.d, global0.e)).b.d), Struct_1(var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1873f, var_0.b, global1.x, global0.b.b.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1614f, var_0.b, var_0.e.x, var_0.d.b.x) - vec4<f32>(1371f, -516f, global1.x, global0.b.b.x)))), global0.b.c, !var_0.d.d), _wgslsmith_dot_vec4_i32(~(~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.d.x, global0.d.x, var_2.c, -2147483647i), vec4<i32>(-2147483647i, u_input.d.x, u_input.d.x, 19785i), vec4<i32>(-35240i, var_2.d.x, 29896i, 1i))), vec4<i32>(u_input.d.x, var_2.c, 1i, -(var_2.c ^ var_2.d.x))), max(vec3<i32>(global0.d.x, var_2.d.x, var_2.c) << (~vec3<u32>(u_input.b.x, 1u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_add_i32(u_input.d.x, 2147483647i), global0.d.x >> (var_0.c % 32u), i32(-1i) * -1i)) ^ vec3<i32>(1i, global0.d.x, var_2.c), func_2(!(var_0.d.b.x < var_2.b.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b.b) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-2091f, global1.x, var_0.b, var_0.e.x), global0.b.b)), vec4<f32>(var_2.b.b.x, global0.b.b.x, var_2.b.b.x, var_2.b.b.x)))), Struct_2(false, Struct_1(false, global0.b.b, func_4(Struct_5(global0.b.b, false), u_input.a, var_2.b.c).c, var_0.a.yw), func_3(), vec3<i32>(u_input.d.x, u_input.d.x ^ 0i, 1i), func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.x, 930f, 1069f, var_0.b)), var_2).e)).e);
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.b.c, 2147483647i, _wgslsmith_f_op_vec4_f32(max(global0.b.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_2.b.b + vec4<f32>(var_3.b.b.x, -1139f, -1000f, 207f)))))), 1u);
}

