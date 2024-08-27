struct Struct_1 {
    a: u32,
    b: i32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<u32>(0u, 1u, 4294967295u), Struct_1(1u, 1i, vec4<f32>(-462f, -1336f, -1085f, 409f), vec4<i32>(-14306i, 2147483647i, 17949i, -86174i), vec2<bool>(false, false)), vec4<bool>(true, true, false, true));

var<private> global1: array<u32, 10>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec2<f32>) -> i32 {
    global1 = array<u32, 10>();
    let var_0 = _wgslsmith_dot_vec4_u32(u_input.c, ~(~_wgslsmith_div_vec4_u32(u_input.c, max(vec4<u32>(global1[_wgslsmith_index_u32(arg_2.b.a, 10u)], global1[_wgslsmith_index_u32(21849u, 10u)], u_input.c.x, 35490u), u_input.c))));
    global0 = Struct_2(arg_2.a, Struct_1(_wgslsmith_sub_u32(0u, arg_2.b.a) >> (11672u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.b, _wgslsmith_dot_vec3_i32(vec3<i32>(global0.b.d.x, -1i, -28831i), arg_2.b.d.zzx), global0.b.b), max(vec3<i32>(1i, -1i, -8368i), ~arg_2.b.d.zyx)), global0.b.c, firstTrailingBit(abs(_wgslsmith_clamp_vec4_i32(arg_2.b.d, vec4<i32>(arg_2.b.d.x, arg_2.b.b, global0.b.d.x, -33574i), global0.b.d))), vec2<bool>(any(select(global0.c.yzy, arg_2.c.zww, arg_2.b.e.x)), _wgslsmith_f_op_f32(ceil(1775f)) != 170f)), select(vec4<bool>(true, !all(vec2<bool>(global0.b.e.x, global0.b.e.x)), !global0.c.x, true), vec4<bool>(any(global0.b.e) & global0.c.x, arg_2.b.e.x, (true && arg_2.b.e.x) | (true && global0.c.x), true), select(vec4<bool>(arg_2.b.b > global0.b.b, true, all(vec2<bool>(global0.b.e.x, arg_2.b.e.x)), global0.b.b > arg_2.b.b), select(vec4<bool>(false, false, false, arg_2.c.x), vec4<bool>(arg_2.c.x, arg_2.b.e.x, false, arg_2.c.x), arg_2.c), vec4<bool>(!arg_2.c.x, global0.b.e.x, true, false))));
    global0 = Struct_2(vec3<u32>(634u, var_0, select(~0u, 0u, any(select(global0.c, vec4<bool>(global0.c.x, arg_2.b.e.x, global0.b.e.x, arg_2.c.x), vec4<bool>(false, true, true, false))))), global0.b, vec4<bool>(all(!vec2<bool>(false, global0.b.e.x)), all(!vec3<bool>(global0.b.e.x, true, false)), false, !(_wgslsmith_f_op_f32(1000f * 980f) <= arg_1.x)));
    global1 = array<u32, 10>();
    return firstLeadingBit(~(-_wgslsmith_dot_vec2_i32(vec2<i32>(12869i, global0.b.b), vec2<i32>(global0.b.d.x, arg_2.b.d.x))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<u32>) -> f32 {
    let var_0 = -func_3(_wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1249f, global0.b.c.x) - arg_0.zz)), Struct_2(u_input.c.wxy, Struct_1(60569u, countOneBits(34844i), vec4<f32>(1073f, global0.b.c.x, arg_0.x, 936f), global0.b.d, global0.b.e), !select(global0.c, global0.c, global0.b.e.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.b.c.wx))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(251f + global0.b.c.x))), _wgslsmith_f_op_f32(round(-1019f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) + global0.b.c.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), _wgslsmith_f_op_f32(global0.b.c.x * -1349f)))))));
    global0 = Struct_2(vec3<u32>(u_input.b, ~3822u, _wgslsmith_clamp_u32(select(~23088u, 27594u, true), _wgslsmith_mult_u32(1975u, countOneBits(u_input.c.x)), arg_1.x)), global0.b, select(!select(vec4<bool>(global0.c.x, global0.b.e.x, global0.c.x, false), vec4<bool>(global0.c.x, global0.c.x, true, false), !global0.c), !vec4<bool>(all(global0.c.wyw), select(true, global0.c.x, false), !global0.b.e.x, all(global0.c)), select(global0.c, !vec4<bool>(global0.b.e.x, false, false, global0.c.x), select(global0.c, !vec4<bool>(true, true, global0.b.e.x, global0.c.x), false))));
    let var_2 = select(global0.c.zyy, global0.c.wyz, -2903i <= _wgslsmith_sub_i32(global0.b.b & min(var_0, -1i), global0.b.b));
    var var_3 = -_wgslsmith_mod_i32(19259i, _wgslsmith_mult_i32(func_3(1f, var_1.xy, Struct_2(vec3<u32>(1u, 17357u, 0u), Struct_1(0u, global0.b.d.x, vec4<f32>(var_1.x, 1170f, 2611f, arg_0.x), vec4<i32>(var_0, global0.b.d.x, -1888i, 20734i), global0.b.e), global0.c), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.x, global0.b.c.x), arg_0.xz))), global0.b.d.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2069f));
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> Struct_1 {
    global1 = array<u32, 10>();
    var var_0 = global0.b.e;
    var var_1 = 1u;
    var var_2 = !vec4<bool>(false, true, true && (_wgslsmith_f_op_f32(func_2(global0.b.c.zzx, u_input.c)) == global0.b.c.x), true);
    let var_3 = vec4<u32>(firstLeadingBit(~4871u), global0.b.a ^ global0.a.x, arg_0, reverseBits(~arg_1.x));
    return Struct_1(arg_1.x, 1i, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1215f, -477f, global0.b.c.x, global0.b.c.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-460f)) - _wgslsmith_f_op_f32(-659f * global0.b.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1125f)), _wgslsmith_f_op_f32(func_2(global0.b.c.zzy, vec4<u32>(0u, u_input.b, 4294967295u, arg_1.x))), false)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1000f)))), 226f), vec4<bool>(all(vec4<bool>(global0.c.x, true, false, true)), true, false, var_2.x))), global0.b.d, vec2<bool>(true, all(vec4<bool>(global0.b.b != 77242i, select(var_0.x, true, var_2.x), all(var_2.zz), var_2.x))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_u32(u_input.c.wwx, global0.a), Struct_1(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, 16683u, global1[_wgslsmith_index_u32(arg_2.a, 10u)]), u_input.c.wzw), global1[_wgslsmith_index_u32(u_input.b, 10u)] << (global1[_wgslsmith_index_u32(0u, 10u)] % 32u)), -14227i, global0.b.c, global0.b.d, arg_1.xx), !select(vec4<bool>(global0.b.a >= 0u, false, any(global0.b.e), arg_2.e.x), !global0.c, vec4<bool>(true, true, !arg_3, false)));
    var var_1 = var_0;
    let var_2 = var_0;
    var var_3 = ~select(~min(countOneBits(vec4<u32>(36906u, 1u, 13790u, 0u)), ~u_input.c), _wgslsmith_mod_vec4_u32(vec4<u32>(~1u, ~global0.b.a, _wgslsmith_add_u32(1u, 1u), ~var_2.a.x), u_input.c), true);
    let var_4 = func_1(~reverseBits(29647u), abs(var_3.zz));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec3<u32>(select(min(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 10u)], 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 10u)], 10u)], 1u), u_input.c)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 10u)], u_input.a), u_input.c)), !all(global0.c.zxz)), ~global1[_wgslsmith_index_u32((1u | global1[_wgslsmith_index_u32(15748u, 10u)]) << ((global0.b.a | 7721u) % 32u), 10u)], max(70690u, 73416u)), func_4(-vec2<i32>(global0.b.b | global0.b.d.x, abs(2147483647i)), select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, global0.b.e.x, true, true), global0.b.e.x), select(global0.c, vec4<bool>(false, global0.c.x, global0.b.e.x, global0.c.x), global0.c), global0.c), global0.c, false), func_1(global0.b.a, ~vec2<u32>(u_input.b, global1[_wgslsmith_index_u32(12139u, 10u)])), false), !vec4<bool>(global0.b.e.x, all(vec2<bool>(global0.b.e.x, global0.b.e.x)), true || global0.c.x, !(!global0.c.x)));
    global1 = array<u32, 10>();
    var var_0 = Struct_1(59931u, -(~_wgslsmith_mult_i32(-37465i, global0.b.d.x)), global0.b.c, min(vec4<i32>(firstLeadingBit(_wgslsmith_mult_i32(global0.b.b, -45466i)), _wgslsmith_add_i32(~(-55487i), global0.b.b), ~func_1(global0.b.a, vec2<u32>(1u, 2349u)).b, global0.b.d.x), ~(-global0.b.d)), func_4(func_1(~_wgslsmith_mod_u32(u_input.b, 4294967295u), ~vec2<u32>(4294967295u, u_input.c.x)).d.zy, select(global0.c, vec4<bool>(all(vec4<bool>(true, true, true, false)), false, all(vec3<bool>(false, true, false)), false), global0.c), func_1(func_1(~1u, _wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 4294967295u), u_input.c.yz)).a, ~global0.a.xz), min(-52686i ^ global0.b.d.x, min(-20067i, 44863i)) < -min(-2147483647i, -67178i)).e);
    global1 = array<u32, 10>();
    var var_1 = select(select(vec2<bool>(false, true), var_0.e, !any(!global0.c.xz)), global0.c.yy, select(vec2<bool>(false, global0.c.x), select(select(vec2<bool>(true, true), func_4(var_0.d.zy, vec4<bool>(var_0.e.x, var_0.e.x, false, global0.c.x), Struct_1(var_0.a, -2147483647i, vec4<f32>(665f, global0.b.c.x, var_0.c.x, -844f), vec4<i32>(-7304i, global0.b.d.x, var_0.d.x, -1i), vec2<bool>(true, true)), var_0.e.x).e, true), func_4(_wgslsmith_div_vec2_i32(global0.b.d.xy, vec2<i32>(-20473i, var_0.b)), vec4<bool>(false, false, true, false), global0.b, global0.b.d.x <= 2147483647i).e, 1i == ~global0.b.d.x), (firstLeadingBit(36263u) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 15586u, global1[_wgslsmith_index_u32(u_input.c.x, 10u)]), vec3<u32>(0u, global0.a.x, global1[_wgslsmith_index_u32(var_0.a, 10u)])) % 32u)) >= ~u_input.a));
    var var_2 = vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -func_4(global0.b.d.zx, vec4<bool>(var_1.x, true, false, false), global0.b, var_1.x).d.wx, var_0.d.xz), ~(-func_4(vec2<i32>(global0.b.d.x, var_0.b), vec4<bool>(true, false, var_0.e.x, false), global0.b, var_1.x).b | var_0.d.x), -var_0.d.x);
    var var_3 = abs(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, _wgslsmith_mod_u32(var_0.a, ~u_input.c.x), ~_wgslsmith_dot_vec3_u32(vec3<u32>(59103u, global0.a.x, u_input.c.x), vec3<u32>(1u, var_0.a, 5025u))));
}

