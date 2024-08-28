struct Struct_1 {
    a: bool,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(4294967295u, -1000f, vec4<bool>(false, false, false, true), 170f), Struct_3(24761u, 688f, vec4<bool>(false, false, true, false), -765f), Struct_3(4294967295u, 1000f, vec4<bool>(false, true, false, false), -1000f), Struct_3(0u, -352f, vec4<bool>(false, true, true, true), -1624f), Struct_3(0u, -1000f, vec4<bool>(false, true, true, true), -467f), Struct_3(1u, -1000f, vec4<bool>(true, true, false, false), -706f), Struct_3(18798u, 2143f, vec4<bool>(true, false, true, true), 1204f), Struct_3(36045u, -179f, vec4<bool>(true, true, false, true), 606f), Struct_3(0u, 604f, vec4<bool>(true, true, true, true), -1202f), Struct_3(40168u, 614f, vec4<bool>(true, true, false, true), 1100f), Struct_3(16129u, 1267f, vec4<bool>(false, false, false, false), 1000f), Struct_3(0u, -1073f, vec4<bool>(false, true, false, true), -1887f), Struct_3(72537u, 619f, vec4<bool>(false, false, false, false), 1000f), Struct_3(52744u, 237f, vec4<bool>(false, false, false, true), -1129f), Struct_3(33969u, 1000f, vec4<bool>(false, true, false, true), -1000f), Struct_3(24355u, 845f, vec4<bool>(false, false, true, false), 1000f), Struct_3(79106u, -1735f, vec4<bool>(false, false, false, false), 1600f), Struct_3(0u, -395f, vec4<bool>(false, true, true, false), 1216f), Struct_3(29726u, -375f, vec4<bool>(true, false, false, true), -109f), Struct_3(33161u, -421f, vec4<bool>(false, false, false, false), 1000f), Struct_3(1u, 453f, vec4<bool>(false, false, true, true), -1221f), Struct_3(25432u, -536f, vec4<bool>(false, true, true, false), -153f), Struct_3(4294967295u, 1525f, vec4<bool>(true, false, false, false), -452f), Struct_3(66089u, 579f, vec4<bool>(false, true, true, true), -494f), Struct_3(0u, 361f, vec4<bool>(true, true, true, true), -779f), Struct_3(33676u, 639f, vec4<bool>(true, true, true, true), 477f));

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(false, vec4<i32>(-1i, -28126i, -1i, -12459i)), Struct_1(true, vec4<i32>(26819i, 2147483647i, 63430i, 0i)), Struct_1(false, vec4<i32>(-1i, 0i, i32(-2147483648), i32(-2147483648))), Struct_1(true, vec4<i32>(i32(-2147483648), 0i, -19265i, 42130i)), Struct_1(false, vec4<i32>(i32(-2147483648), 1i, 11805i, -26336i)), Struct_1(true, vec4<i32>(47928i, 8131i, i32(-2147483648), -53945i)));

var<private> global2: array<bool, 13>;

var<private> global3: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec3<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1590f, -1399f, -1340f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(1374f, 1000f, 402f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1330f, -2606f, 2146f) - vec3<f32>(1031f, 2419f, -235f))) - vec3<f32>(_wgslsmith_f_op_f32(-2099f - -1388f), _wgslsmith_f_op_f32(ceil(926f)), -1198f)))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f))), 233f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1974f + -1063f))));
    var var_1 = _wgslsmith_add_u32(78888u, (u_input.a.x << (1u % 32u)) << (~(abs(59332u) << (~u_input.b % 32u)) % 32u));
    global3 = abs(-firstTrailingBit(_wgslsmith_div_i32(~2147483647i, -arg_0)));
    return all(!vec4<bool>(global2[_wgslsmith_index_u32(abs(8937u), 13u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(5997u, 5237u), 13u)] != true, false, !(!arg_1.x)));
}

fn func_2(arg_0: vec2<bool>, arg_1: u32) -> u32 {
    var var_0 = Struct_3((~18709u | (u_input.a.x << (_wgslsmith_mod_u32(arg_1, 4294967295u) % 32u))) << (u_input.b % 32u), -418f, select(!vec4<bool>(true, global2[_wgslsmith_index_u32(44753u, 13u)], u_input.b < arg_1, global2[_wgslsmith_index_u32(4294967295u, 13u)]), !vec4<bool>(arg_0.x, arg_0.x, arg_0.x, func_3(33094i, vec3<bool>(arg_0.x, true, global2[_wgslsmith_index_u32(16427u, 13u)]))), !(!(!arg_0.x))), _wgslsmith_f_op_f32(1340f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1402f - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(441f * 996f) + _wgslsmith_f_op_f32(f32(-1f) * -1435f))))));
    let var_1 = u_input.b;
    var var_2 = Struct_5(!select(select(vec2<bool>(arg_0.x, true), var_0.c.xy, global2[_wgslsmith_index_u32(max(var_1, var_0.a), 13u)]), !(!arg_0), any(vec3<bool>(arg_0.x, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], arg_0.x))));
    var_0 = global0[_wgslsmith_index_u32(~(~countOneBits(36378u)), 26u)];
    let var_3 = Struct_4(Struct_2(Struct_1(arg_0.x, _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(-2147483647i, -16398i, -2147483647i, -8659i)), ~vec4<i32>(8945i, 2147483647i, -28075i, 36568i))), _wgslsmith_div_vec3_u32(max(vec3<u32>(var_0.a, var_1, var_0.a), u_input.a), u_input.a) ^ u_input.a, abs(-(vec2<i32>(2961i, 1i) >> (u_input.a.zx % vec2<u32>(32u)))), ~_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.zy | u_input.a.yx), vec2<u32>(1u, 0u) | _wgslsmith_div_vec2_u32(u_input.a.zy, ~vec2<u32>(arg_1, 51998u))));
    return arg_1;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_3(u_input.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(1f)))), !(!vec4<bool>(select(true, global2[_wgslsmith_index_u32(u_input.b, 13u)], false), true, global2[_wgslsmith_index_u32(~3440u, 13u)], true || global2[_wgslsmith_index_u32(u_input.b, 13u)])), _wgslsmith_f_op_f32(-1f));
    global3 = _wgslsmith_div_i32(22220i, -1i);
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, abs(1u), func_2(vec2<bool>(true, !global2[_wgslsmith_index_u32(u_input.b, 13u)]), var_0.a), _wgslsmith_dot_vec4_u32(firstLeadingBit(firstTrailingBit(vec4<u32>(4294967295u, 45792u, u_input.a.x, var_0.a))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(64354u, var_0.a, var_0.a, u_input.b), vec4<u32>(var_0.a, u_input.a.x, 1u, u_input.a.x)))), ~vec4<u32>(27898u, 1u, ~_wgslsmith_mod_u32(0u, 4294967295u), ~abs(var_0.a)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(f32(-1f) * -769f)), var_0.d, var_0.d)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -118f, -522f)));
    var var_3 = true;
    return Struct_4(Struct_2(global1[_wgslsmith_index_u32(var_0.a, 6u)], ~(~(~vec3<u32>(u_input.a.x, 1u, 61102u))), vec2<i32>(1i, 1i), ~(~var_0.a), _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, var_0.a), ~var_1.zz), abs(firstLeadingBit(u_input.a.yz)))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_3(~(~(abs(arg_0.a.e.x) << (arg_0.a.d % 32u))), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-arg_2.x)), vec4<bool>(_wgslsmith_add_i32(-788i, -1458i) == arg_0.a.c.x, !(all(arg_1.wzz) || any(arg_1.xwz)), !global2[_wgslsmith_index_u32(1u, 13u)], arg_2.x < _wgslsmith_f_op_f32(-165f + arg_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-350f * 258f))))));
    global3 = _wgslsmith_mod_i32(select(select(arg_0.a.c.x, arg_0.a.c.x, select(true, var_0.c.x, false)), firstTrailingBit((arg_0.a.c.x & arg_0.a.c.x) << ((arg_0.a.e.x << (arg_0.a.d % 32u)) % 32u)), all(select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], arg_0.a.a.a, true), vec3<bool>(arg_0.a.a.a, false, global2[_wgslsmith_index_u32(var_0.a, 13u)]), var_0.c.x), !var_0.c.zww, select(arg_1.xwx, arg_1.wzx, false)))), _wgslsmith_dot_vec3_i32(select(-vec3<i32>(arg_0.a.a.b.x, -2147483647i, arg_0.a.a.b.x), arg_0.a.a.b.xzw, global2[_wgslsmith_index_u32(u_input.b, 13u)]), -arg_0.a.a.b.wyx));
    let var_1 = 1u;
    let var_2 = vec2<bool>(true || (arg_1.x & func_1().a.a.a), var_0.c.x);
    global1 = array<Struct_1, 6>();
    return func_1().a;
}

fn func_5(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_2.a;
    let var_1 = Struct_3(0u, 1140f, select(!select(vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], var_0.a, arg_2.a.a, arg_0.a.a), select(vec4<bool>(false, arg_2.a.a, arg_2.a.a, var_0.a), vec4<bool>(var_0.a, global2[_wgslsmith_index_u32(arg_2.e.x, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], var_0.a), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 13u)], global2[_wgslsmith_index_u32(0u, 13u)], true, arg_2.a.a)), false), select(!vec4<bool>(true, arg_2.a.a, var_0.a, arg_2.a.a), vec4<bool>(true, true, select(true, global2[_wgslsmith_index_u32(arg_1.x, 13u)], false), true), true), !select(!vec4<bool>(var_0.a, false, false, true), select(vec4<bool>(true, false, false, true), vec4<bool>(arg_2.a.a, false, arg_2.a.a, false), vec4<bool>(false, true, var_0.a, true)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1553f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -317f) * _wgslsmith_f_op_f32(step(1000f, -858f)))) * -1050f));
    var var_2 = arg_0.e;
    return Struct_1(false, vec4<i32>(var_0.b.x, _wgslsmith_sub_i32(firstLeadingBit(reverseBits(-2147483647i)), arg_2.a.b.x), 1i, -(~abs(-6413i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_5(func_4(func_1(), select(select(vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(86133u, 13u)]), vec4<bool>(global2[_wgslsmith_index_u32(19266u, 13u)], global2[_wgslsmith_index_u32(4294967295u, 13u)], true, global2[_wgslsmith_index_u32(1u, 13u)]), false), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 13u)], true, global2[_wgslsmith_index_u32(16363u, 13u)], true), vec4<bool>(true, false, false, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], false)), select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 13u)], global2[_wgslsmith_index_u32(u_input.b, 13u)], true, true), vec4<bool>(global2[_wgslsmith_index_u32(32250u, 13u)], true, global2[_wgslsmith_index_u32(4294967295u, 13u)], false), vec4<bool>(true, true, global2[_wgslsmith_index_u32(0u, 13u)], global2[_wgslsmith_index_u32(u_input.a.x, 13u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1207f, 1536f)))), ~vec2<u32>(~4294967295u, 4294967295u & u_input.b), Struct_2(Struct_1(!global2[_wgslsmith_index_u32(u_input.a.x, 13u)], ~vec4<i32>(-2147483647i, -52223i, -9333i, 67278i)), ~u_input.a, _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), firstLeadingBit(vec2<i32>(47293i, 2147483647i)), -vec2<i32>(7289i, -27497i)), abs(22053u), u_input.a.zx)), _wgslsmith_div_vec3_u32(~u_input.a, ~abs(~u_input.a)), vec2<i32>((_wgslsmith_div_i32(2147483647i, -22597i) >> (u_input.a.x % 32u)) << (~(~u_input.a.x) % 32u), min(_wgslsmith_div_i32(func_5(Struct_2(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], vec3<u32>(48393u, u_input.b, u_input.a.x), vec2<i32>(35606i, -1i), 0u, vec2<u32>(1311u, u_input.a.x)), u_input.a.zy, Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.b, 13u)], vec4<i32>(-1i, -37729i, 2147483647i, 35532i)), vec3<u32>(29224u, u_input.b, u_input.b), vec2<i32>(-1i, 1i), u_input.a.x, vec2<u32>(0u, 1u))).b.x, ~2147483647i), -(i32(-1i) * -27172i))), 33523u, ~(~min(vec2<u32>(41722u, u_input.a.x), vec2<u32>(27296u, u_input.a.x)) << (vec2<u32>(countOneBits(u_input.a.x), _wgslsmith_div_u32(u_input.b, 1u)) % vec2<u32>(32u))));
    var var_1 = func_4(Struct_4(Struct_2(var_0.a, vec3<u32>(38306u, 680u, abs(var_0.b.x)), var_0.a.b.xw, reverseBits(u_input.a.x), ~(vec2<u32>(u_input.a.x, u_input.a.x) | u_input.a.xz))), select(!vec4<bool>(0u <= var_0.d, func_5(var_0, vec2<u32>(var_0.e.x, var_0.d), var_0).a, false || var_0.a.a, func_3(-45161i, vec3<bool>(global2[_wgslsmith_index_u32(1u, 13u)], false, global2[_wgslsmith_index_u32(70402u, 13u)]))), !(!vec4<bool>(false, var_0.a.a, var_0.a.a, true)), true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(136f, 358f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, -1209f) - vec2<f32>(-1184f, 496f)))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-468f))), -150f))).a;
    let var_2 = _wgslsmith_sub_vec3_i32(func_5(Struct_2(func_4(Struct_4(Struct_2(var_0.a, u_input.a, vec2<i32>(var_1.b.x, var_0.c.x), u_input.b, var_0.b.xx)), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], false, false), vec2<f32>(-289f, -553f)).a, var_0.b, var_1.b.xw << (u_input.a.zz % vec2<u32>(32u)), _wgslsmith_mod_u32(41830u, u_input.a.x), var_0.e), u_input.a.zx, var_0).b.zwy, _wgslsmith_mult_vec3_i32(vec3<i32>(min(var_1.b.x, var_1.b.x), -1i, min(var_1.b.x, 21661i)), -vec3<i32>(var_0.a.b.x, var_1.b.x, -1i))) << (_wgslsmith_clamp_vec3_u32(~firstTrailingBit(abs(vec3<u32>(0u, u_input.a.x, u_input.a.x))), var_0.b, (~vec3<u32>(4294967295u, 4294967295u, 1u) ^ abs(vec3<u32>(u_input.b, 1u, var_0.e.x))) >> (abs(u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-976f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f))), 513f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-664f - -512f))))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~var_0.b.x, _wgslsmith_dot_vec2_u32(var_0.e, vec2<u32>(0u, 0u))), 0u), 1u, 31884u, var_0.d), min(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(0u, 0u, 1u), select(u_input.a, vec3<u32>(77045u, u_input.a.x, 915u), global2[_wgslsmith_index_u32(44695u, 13u)])), ~(~vec3<u32>(51534u, 1u, 15625u))), _wgslsmith_mod_u32(~1u, firstLeadingBit(countOneBits(77431u)))));
}

