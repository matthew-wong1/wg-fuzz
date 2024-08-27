struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<bool, 32>;

var<private> global2: u32;

var<private> global3: array<bool, 31> = array<bool, 31>(true, false, false, false, true, true, false, true, false, false, false, false, false, false, false, true, true, true, true, false, true, true, true, true, true, true, true, false, true, false, false);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global3 = array<bool, 31>();
    global0 = array<Struct_1, 9>();
    var var_0 = (arg_2.b.x | (reverseBits(_wgslsmith_div_i32(-10038i, u_input.b.x)) & firstLeadingBit(arg_0.b.x))) & arg_2.b.x;
    var_0 = 1i & (select(-1i, ~min(-1i, arg_0.b.x), global1[_wgslsmith_index_u32(firstLeadingBit(~134086u), 32u)]) | abs(_wgslsmith_add_i32(~16594i, 1i)));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(firstTrailingBit(firstLeadingBit(u_input.a)), 0u) >> (u_input.a % 32u), 9u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x));
}

fn func_2() -> Struct_1 {
    let var_0 = !select(select(vec3<bool>(!global1[_wgslsmith_index_u32(39170u, 32u)], !global1[_wgslsmith_index_u32(u_input.a, 32u)], global1[_wgslsmith_index_u32(~u_input.a, 32u)]), !(!vec3<bool>(global3[_wgslsmith_index_u32(30040u, 31u)], true, true)), true), !(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.a, 31u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global3[_wgslsmith_index_u32(1u, 31u)])), vec3<bool>(true, !global1[_wgslsmith_index_u32(u_input.c.x, 32u)], true));
    global1 = array<bool, 32>();
    global1 = array<bool, 32>();
    var var_1 = ~vec3<u32>(_wgslsmith_div_u32(117170u, u_input.c.x), min(~(~u_input.c.x), _wgslsmith_mod_u32(78995u, _wgslsmith_sub_u32(4294967295u, u_input.c.x))), _wgslsmith_add_u32(_wgslsmith_add_u32(u_input.c.x, u_input.c.x), 25066u));
    let var_2 = Struct_1(true, vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-19869i), _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), ~2147483647i), -vec3<i32>(1i, u_input.b.x, u_input.b.x)), ~(~min(11916i, -1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1295f, -369f, 393f), vec3<f32>(-900f, -923f, 1002f))), vec3<f32>(1068f, 1396f, 783f))), vec3<f32>(-724f, 231f, _wgslsmith_f_op_f32(func_3(Struct_1(global1[_wgslsmith_index_u32(0u, 32u)], vec2<i32>(-8929i, -1i), vec3<f32>(1040f, 2497f, 1000f), vec3<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], false, false)), var_0.yy, Struct_1(global1[_wgslsmith_index_u32(1u, 32u)], vec2<i32>(2147483647i, u_input.b.x), vec3<f32>(1790f, -188f, -1190f), var_0), Struct_1(false, vec2<i32>(u_input.b.x, -1i), vec3<f32>(240f, 693f, -1439f), var_0)))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-402f, 205f, _wgslsmith_f_op_f32(f32(-1f) * -831f)))), select(!select(select(var_0, vec3<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global3[_wgslsmith_index_u32(0u, 31u)], global3[_wgslsmith_index_u32(var_1.x, 31u)]), global1[_wgslsmith_index_u32(var_1.x, 32u)]), var_0, global1[_wgslsmith_index_u32(~u_input.a, 32u)]), select(!select(var_0, var_0, var_0), !var_0, select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.x, true), vec3<bool>(false, false, true), false), false)), select(vec3<bool>(true, true, true), vec3<bool>(var_0.x & false, !var_0.x, true), !(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)], global3[_wgslsmith_index_u32(u_input.c.x, 31u)])))));
    return Struct_1(var_0.x, min(firstLeadingBit(vec2<i32>(var_2.b.x, u_input.b.x)) & var_2.b, -var_2.b), _wgslsmith_f_op_vec3_f32(-var_2.c), !select(var_0, vec3<bool>(all(var_0), true, var_2.a), !(-1000f < var_2.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    global1 = array<bool, 32>();
    var var_0 = (arg_2.b << (~_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.c.ww), u_input.c.wz) % vec2<u32>(32u))) >> (vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, u_input.a) ^ vec2<u32>(58974u, u_input.a), _wgslsmith_add_vec2_u32(vec2<u32>(14256u, 4294967295u), vec2<u32>(u_input.c.x, u_input.a))) << (1u % 32u), u_input.a) % vec2<u32>(32u));
    var var_1 = true || select(false, global1[_wgslsmith_index_u32(~max(firstTrailingBit(4294967295u), countOneBits(40384u)), 32u)], any(select(select(vec4<bool>(false, arg_1.a, arg_0.d.x, false), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 31u)], arg_0.a, false), vec4<bool>(false, false, true, arg_2.d.x)), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], arg_0.a, true, arg_2.a), any(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], true)))));
    var var_2 = arg_2.c.x;
    var_2 = 893f;
    return 0u;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(func_4(func_2(), Struct_1(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], vec2<i32>(u_input.b.x, 1i), vec3<f32>(-2226f, 969f, -1482f), vec3<bool>(true, true, false)), func_2()) << (_wgslsmith_clamp_u32(1u, u_input.a, 1u) % 32u), ~select(_wgslsmith_clamp_u32(53962u, u_input.c.x, 0u), ~48737u, global1[_wgslsmith_index_u32(u_input.a, 32u)]), _wgslsmith_div_u32(u_input.c.x, 4294967295u), u_input.a << (u_input.c.x % 32u)), vec4<u32>(~4294967295u, min(_wgslsmith_sub_u32(~u_input.a, _wgslsmith_mod_u32(4294967295u, 1u)), 17349u), ~4294967295u, ~abs(~u_input.a)), u_input.c);
    let var_1 = firstTrailingBit(reverseBits(vec3<i32>(abs(_wgslsmith_add_i32(-13683i, u_input.b.x)), 0i & _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, -1i, -29681i), vec3<i32>(-5280i, -120i, 11804i)), ~0i)));
    let var_2 = Struct_1(false, vec2<i32>(8269i, _wgslsmith_add_i32(5840i, -_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, u_input.b.x, var_1.x, -36689i), vec4<i32>(var_1.x, 0i, u_input.b.x, 6726i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-513f, -522f, 417f), vec3<f32>(-823f, -1000f, 157f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-874f, -1416f, 584f) + vec3<f32>(563f, -729f, -800f)))))), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 31u)], func_2().a && any(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 32u)]), vec2<bool>(false, false), global1[_wgslsmith_index_u32(u_input.a, 32u)])) & func_2().d.x));
    let var_3 = Struct_1(global3[_wgslsmith_index_u32(1u & (countOneBits(~u_input.a) ^ _wgslsmith_dot_vec3_u32(abs(var_0.ywz), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 1u, 17078u), vec3<u32>(var_0.x, var_0.x, var_0.x)))), 31u)], vec2<i32>(u_input.b.x, -10170i) | -_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(var_1.zx, vec2<i32>(-1i, -2147483647i), vec2<i32>(var_2.b.x, var_1.x)), -u_input.b.yx), _wgslsmith_f_op_vec3_f32(-var_2.c), !vec3<bool>(all(vec3<bool>(var_2.a, global1[_wgslsmith_index_u32(u_input.a, 32u)], var_2.a)), all(select(vec4<bool>(true, global3[_wgslsmith_index_u32(var_0.x, 31u)], false, arg_0), vec4<bool>(true, false, false, false), vec4<bool>(true, false, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], var_2.d.x))), 900f >= var_2.c.x));
    var var_4 = Struct_1(arg_0, _wgslsmith_sub_vec2_i32(vec2<i32>(23630i, -(i32(-1i) * -1i)), ~var_2.b), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.c.x))), -586f), 1362f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_2.c.x))))))), select(!select(!vec3<bool>(var_2.a, var_2.a, global3[_wgslsmith_index_u32(u_input.a, 31u)]), !vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], false, true), !vec3<bool>(false, var_2.d.x, var_3.d.x)), var_3.d, false));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> bool {
    return any(vec2<bool>(true, -1i != firstTrailingBit(33406i))) || arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_clamp_i32(-u_input.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(23644i, u_input.b.x) << (u_input.c.yw % vec2<u32>(32u)), u_input.b.xy << (u_input.c.xw % vec2<u32>(32u))), vec2<i32>(u_input.b.x << (41691u % 32u), u_input.b.x)), _wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i << (1u % 32u), u_input.b.x), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x, -10332i), _wgslsmith_mult_i32(u_input.b.x, -2147483647i)))), ~(~((-1i >> (u_input.c.x % 32u)) ^ (-1i ^ u_input.b.x))), all(vec2<bool>(all(vec2<bool>(true, true)) | true, false)));
    var var_1 = !vec2<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 32u)], false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.c.x, 31u)], false), false)), !global3[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x), 31u)]);
    global3 = array<bool, 31>();
    var var_2 = !global3[_wgslsmith_index_u32(u_input.c.x, 31u)];
    var_2 = !any(vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, var_1.x, global1[_wgslsmith_index_u32(1u, 32u)]), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.c.x, 31u)], var_1.x))), any(!vec4<bool>(false, true, var_1.x, global1[_wgslsmith_index_u32(u_input.a, 32u)])), true));
    let var_3 = Struct_1(func_5(Struct_1(var_1.x, u_input.b.yy, vec3<f32>(_wgslsmith_div_f32(219f, -362f), -886f, _wgslsmith_f_op_f32(-1067f - 570f)), select(vec3<bool>(false, var_1.x, false), !vec3<bool>(var_1.x, global3[_wgslsmith_index_u32(u_input.a, 31u)], true), !vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.a, 32u)], var_1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1266f))), func_1(!var_1.x)), u_input.b.yz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(164f, _wgslsmith_f_op_f32(abs(883f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-241f, -603f))))), vec3<bool>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.a, 0u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.c.x, 1u), u_input.c.zyz, u_input.c.xzx)) <= 0u, all(vec2<bool>(true, true)), !(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.a), 32u)] | true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(func_3(func_1(true), var_3.d.zz, func_2(), global0[_wgslsmith_index_u32(31447u, 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_3.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.c.x))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(212f + 1818f))))), 1000f, var_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(701f - var_3.c.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1165f), _wgslsmith_f_op_f32(round(1000f)))), var_3.c.x))));
}

