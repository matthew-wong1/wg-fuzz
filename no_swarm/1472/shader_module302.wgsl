struct Struct_1 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
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

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false), -513f), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(false, true), -559f), Struct_1(vec2<u32>(0u, 4294967295u), vec2<bool>(false, false), 1431f), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(true, true), 264f), Struct_1(vec2<u32>(44904u, 23984u), vec2<bool>(true, true), 1161f), Struct_1(vec2<u32>(141111u, 54198u), vec2<bool>(true, false), 139f), Struct_1(vec2<u32>(38709u, 69260u), vec2<bool>(true, true), -651f), Struct_1(vec2<u32>(52413u, 35324u), vec2<bool>(false, true), -516f), Struct_1(vec2<u32>(42595u, 1u), vec2<bool>(true, true), 385f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, true), -1000f), Struct_1(vec2<u32>(0u, 27045u), vec2<bool>(false, false), -1348f), Struct_1(vec2<u32>(1u, 85456u), vec2<bool>(false, true), -984f), Struct_1(vec2<u32>(28213u, 40965u), vec2<bool>(false, false), 549f), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(false, true), 200f), Struct_1(vec2<u32>(0u, 0u), vec2<bool>(true, true), -1141f), Struct_1(vec2<u32>(37890u, 77836u), vec2<bool>(true, true), -1000f), Struct_1(vec2<u32>(1u, 5652u), vec2<bool>(true, true), 562f), Struct_1(vec2<u32>(1u, 0u), vec2<bool>(true, false), 876f), Struct_1(vec2<u32>(27023u, 44350u), vec2<bool>(false, false), 236f), Struct_1(vec2<u32>(29888u, 0u), vec2<bool>(false, true), -1258f), Struct_1(vec2<u32>(4294967295u, 0u), vec2<bool>(true, false), 796f), Struct_1(vec2<u32>(4294967295u, 40203u), vec2<bool>(true, false), -1000f), Struct_1(vec2<u32>(77190u, 61617u), vec2<bool>(true, false), -561f), Struct_1(vec2<u32>(28410u, 51139u), vec2<bool>(true, false), 223f), Struct_1(vec2<u32>(1u, 15501u), vec2<bool>(false, true), 597f));

var<private> global1: array<bool, 20>;

var<private> global2: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, 22685i), vec2<i32>(-1i, 27077i), vec2<i32>(1i, -6218i), vec2<i32>(-28166i, 38904i), vec2<i32>(i32(-2147483648), -17340i), vec2<i32>(-69988i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(48852i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(28463i, -16955i), vec2<i32>(0i, 2147483647i), vec2<i32>(-13869i, 2147483647i), vec2<i32>(-18553i, -9566i), vec2<i32>(0i, 1i), vec2<i32>(37644i, -42081i));

var<private> global3: bool = true;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = Struct_2(Struct_1(select(abs(select(vec2<u32>(0u, 1u), u_input.c, false)), vec2<u32>(u_input.a >> (arg_0.a.a.x % 32u), _wgslsmith_mod_u32(arg_0.b.a.x, 1u)), !arg_0.c), select(select(vec2<bool>(true, false), select(arg_0.c, arg_0.b.b, vec2<bool>(false, true)), true), !select(vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.a.b, vec2<bool>(arg_0.c.x, false)), !(!arg_0.a.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.a.c - 1623f), arg_0.a.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d + arg_0.d))))), Struct_1(~vec2<u32>(u_input.b, arg_0.a.a.x) & vec2<u32>(_wgslsmith_sub_u32(38248u, u_input.a), _wgslsmith_add_u32(arg_0.a.a.x, 47352u)), select(arg_0.a.b, vec2<bool>(true, false), !(!arg_0.a.b)), _wgslsmith_f_op_f32(ceil(-1283f))), vec2<bool>(true, false), _wgslsmith_f_op_f32(_wgslsmith_div_f32(771f, 475f) - _wgslsmith_f_op_f32(arg_0.e * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(499f * arg_0.a.c))))), arg_0.e);
    var var_1 = Struct_1(firstLeadingBit(abs(vec2<u32>(firstTrailingBit(u_input.b), 0u))), select(arg_0.a.b, select(vec2<bool>(true, true), select(arg_0.b.b, !vec2<bool>(var_0.c.x, true), arg_0.a.b.x), !global1[_wgslsmith_index_u32(max(var_0.a.a.x, 4294967295u), 20u)]), vec2<bool>(true, all(!vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)])))), _wgslsmith_f_op_f32(var_0.e - 236f));
    let var_2 = vec2<u32>(~(~4294967295u) >> ((~var_0.a.a.x | ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.x, 51525u), vec2<u32>(8299u, var_0.b.a.x))) % 32u), var_0.a.a.x);
    let var_3 = arg_0;
    global1 = array<bool, 20>();
    return min(~(~firstLeadingBit(vec4<u32>(var_2.x, 13488u, var_3.a.a.x, arg_0.b.a.x))), (countOneBits(vec4<u32>(1u, 18998u, var_0.b.a.x, var_0.a.a.x) ^ vec4<u32>(var_0.b.a.x, var_3.b.a.x, 1477u, 70666u)) ^ vec4<u32>(4294967295u, 8597u, _wgslsmith_dot_vec4_u32(vec4<u32>(129731u, var_3.b.a.x, var_0.b.a.x, 4294967295u), vec4<u32>(var_3.b.a.x, arg_0.a.a.x, 3943u, 1u)), _wgslsmith_add_u32(13107u, 1u))) & vec4<u32>(var_2.x, ~firstLeadingBit(1u), firstTrailingBit(~arg_0.a.a.x), 59666u));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~(~u_input.b), ~abs(16589u), ~_wgslsmith_div_u32(u_input.c.x, u_input.b), min(~79530u, abs(u_input.c.x))), select(vec4<u32>(u_input.b, u_input.b, u_input.c.x, _wgslsmith_sub_u32(1u, 0u)), vec4<u32>(~u_input.a, u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(4294967295u, u_input.c.x)), ~4294967295u), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b, 20u)], false, any(vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], false))))), ~func_3(Struct_2(Struct_1(vec2<u32>(u_input.b, 4294967295u), vec2<bool>(false, false), arg_1), Struct_1(vec2<u32>(1u, 59722u), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), arg_1), !vec2<bool>(true, global1[_wgslsmith_index_u32(41604u, 20u)]), _wgslsmith_f_op_f32(arg_1 * -643f), 1347f)));
    global3 = !global1[_wgslsmith_index_u32(u_input.b, 20u)];
    global0 = array<Struct_1, 25>();
    let var_1 = select(select(select(!(!vec4<bool>(true, false, false, global1[_wgslsmith_index_u32(var_0, 20u)])), select(!vec4<bool>(global1[_wgslsmith_index_u32(var_0, 20u)], true, true, global1[_wgslsmith_index_u32(var_0, 20u)]), !vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 20u)], true, false), !vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 20u)], false, global1[_wgslsmith_index_u32(4294967295u, 20u)])), vec4<bool>(true, any(vec3<bool>(true, global1[_wgslsmith_index_u32(2876u, 20u)], false)), false, global1[_wgslsmith_index_u32(~u_input.c.x, 20u)])), vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, var_0, u_input.c.x, 4294967295u), vec4<u32>(1u, 4294967295u, u_input.a, u_input.b)), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 23232u, var_0, u_input.a), vec4<u32>(u_input.b, var_0, 6245u, 6075u))), 20u)], _wgslsmith_f_op_f32(max(1766f, -854f)) <= _wgslsmith_f_op_f32(sign(-544f)), global1[_wgslsmith_index_u32(~(var_0 << (u_input.a % 32u)), 20u)], false), global1[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(u_input.a, max(0u, 6390u))), 20u)]), !select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 20u)], any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)])), false, !global1[_wgslsmith_index_u32(0u, 20u)]), vec4<bool>(true, true, !global1[_wgslsmith_index_u32(4294967295u, 20u)], true), !vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 20u)], global1[_wgslsmith_index_u32(u_input.a, 20u)], true, false)), vec4<bool>(false, true, global1[_wgslsmith_index_u32(max(1u, _wgslsmith_dot_vec2_u32(~u_input.c, ~vec2<u32>(u_input.b, u_input.b))), 20u)], global1[_wgslsmith_index_u32(1u, 20u)]));
    return Struct_2(global0[_wgslsmith_index_u32(9690u, 25u)], global0[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec4_u32(max(vec4<u32>(15929u, u_input.a, u_input.c.x, u_input.c.x), vec4<u32>(39269u, 11317u, 38200u, u_input.a)), vec4<u32>(u_input.b, 20516u, var_0, 1u) << (vec4<u32>(111067u, u_input.a, u_input.b, var_0) % vec4<u32>(32u)))), 25u)], select(vec2<bool>(any(!vec4<bool>(global1[_wgslsmith_index_u32(5616u, 20u)], true, global1[_wgslsmith_index_u32(var_0, 20u)], true)), any(select(var_1, vec4<bool>(var_1.x, true, true, global1[_wgslsmith_index_u32(1u, 20u)]), var_1))), vec2<bool>(!any(var_1.zxy), !global1[_wgslsmith_index_u32(var_0, 20u)] | (arg_0.x > -23592i)), !any(var_1.wyz)), 124f, arg_1);
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.d)));
    global1 = array<bool, 20>();
    let var_1 = select(~(~arg_1), arg_0.a.a.x, !arg_0.c.x);
    global2 = array<vec2<i32>, 16>();
    global0 = array<Struct_1, 25>();
    return countOneBits(arg_1);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: bool, arg_3: vec2<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-1153f));
    let var_1 = Struct_2(func_2(-min(vec3<i32>(-5435i, -1i, 1i), vec3<i32>(1i, 1i, 1i)), -1050f).a, func_2(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), select(vec3<i32>(-1i, -42197i, -42587i), vec3<i32>(2147483647i, 1i, 1i), arg_1)), _wgslsmith_clamp_vec3_i32(~vec3<i32>(24603i, 0i, -1i), vec3<i32>(-1i, 23788i, -82242i), _wgslsmith_sub_vec3_i32(vec3<i32>(-10234i, 54460i, -24990i), vec3<i32>(1i, -4542i, -3921i)))), -215f).a, vec2<bool>(global1[_wgslsmith_index_u32(func_4(Struct_2(arg_0, Struct_1(vec2<u32>(4294967295u, 1u), vec2<bool>(false, arg_2), 532f), vec2<bool>(false, true), arg_3.x, -1000f), _wgslsmith_dot_vec2_u32(vec2<u32>(43405u, 69963u) & vec2<u32>(15995u, arg_0.a.x), ~u_input.c)), 20u)], !global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b, _wgslsmith_div_u32(u_input.c.x, arg_0.a.x)), 20u)]), _wgslsmith_f_op_f32(round(arg_0.c)), var_0);
    var var_2 = var_1;
    let var_3 = Struct_1(u_input.c, select(vec2<bool>(any(!var_2.a.b), var_2.a.b.x), !vec2<bool>(!var_2.c.x, -304f < arg_3.x), select(arg_0.b, arg_0.b, !var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * var_2.d))) + _wgslsmith_div_f32(-287f, var_2.b.c)));
    var var_4 = all(vec3<bool>(func_2(reverseBits(vec3<i32>(1i, 2147483647i, 2147483647i) >> (vec3<u32>(42977u, 18836u, var_2.b.a.x) % vec3<u32>(32u))), 217f).a.b.x, all(vec3<bool>(global1[_wgslsmith_index_u32(40490u, 20u)] || arg_0.b.x, any(var_1.c), false)), !(arg_0.c != -190f) | true));
    return ~_wgslsmith_div_i32(_wgslsmith_mod_i32(-1i, 5232i), ~2924i);
}

fn func_1(arg_0: u32) -> i32 {
    global0 = array<Struct_1, 25>();
    global3 = !all(vec4<bool>(true, any(select(vec4<bool>(global1[_wgslsmith_index_u32(105920u, 20u)], true, global1[_wgslsmith_index_u32(arg_0, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)]), vec4<bool>(global1[_wgslsmith_index_u32(21307u, 20u)], false, global1[_wgslsmith_index_u32(14394u, 20u)], false), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 20u)], false, true))), true, global1[_wgslsmith_index_u32(u_input.b, 20u)]));
    let var_0 = _wgslsmith_clamp_vec2_u32(vec2<u32>(101121u, arg_0), ~vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(~u_input.c, ~vec2<u32>(arg_0, u_input.a))), ~_wgslsmith_mod_vec2_u32(firstTrailingBit(vec2<u32>(u_input.b, 67583u)), u_input.c));
    var var_1 = 4294967295u;
    global0 = array<Struct_1, 25>();
    return func_5(Struct_1(vec2<u32>(func_4(func_2(vec3<i32>(34998i, 19283i, 1i), -707f), 0u), _wgslsmith_mod_u32(var_0.x, ~arg_0)), vec2<bool>(true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-366f, 1351f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -2131f)))), global1[_wgslsmith_index_u32(arg_0, 20u)], true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1895f, 2136f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 20>();
    var var_0 = vec2<bool>(true, true);
    let var_1 = -1i != -select(func_1(4294967295u) | 1i, 0i, !var_0.x);
    var var_2 = Struct_2(func_2(vec3<i32>(~max(1i, -2147483647i), _wgslsmith_dot_vec4_i32(select(vec4<i32>(0i, 0i, -2147483647i, 36152i), vec4<i32>(2147483647i, 1i, 0i, -2147483647i), global1[_wgslsmith_index_u32(u_input.a, 20u)]), vec4<i32>(-10885i, 0i, -6944i, 2147483647i)), 1i), 1f).b, global0[_wgslsmith_index_u32(1u, 25u)], vec2<bool>(func_2(select(vec3<i32>(-285i, -2147483647i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(33398i, 0i, 1i), vec3<i32>(-12893i, 773i, -2147483647i)), !vec3<bool>(true, var_1, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1001f - -258f))).c.x, !select(true, false, var_1 == var_1)), -581f, 1379f);
    var var_3 = var_2.a;
    var var_4 = global2[_wgslsmith_index_u32(4294967295u, 16u)];
    var_0 = vec2<bool>(var_1, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~5504u, var_3.a.x), 20u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(var_4.x, _wgslsmith_sub_i32(reverseBits(-1i), var_4.x), ~var_4.x));
}

