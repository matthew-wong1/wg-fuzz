struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: i32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(-33600i, true, -1000f, -1i, vec2<u32>(4294967295u, 10462u)), Struct_1(-32041i, true, -123f, 44325i, vec2<u32>(42523u, 0u)), Struct_1(7491i, false, -197f, 0i, vec2<u32>(26040u, 50197u)), Struct_1(8301i, false, -905f, i32(-2147483648), vec2<u32>(1u, 4294967295u)), Struct_1(32081i, true, 739f, i32(-2147483648), vec2<u32>(1u, 16799u)), Struct_1(23588i, false, 997f, 16858i, vec2<u32>(0u, 1u)), Struct_1(-22921i, true, 1064f, 4043i, vec2<u32>(43771u, 0u)), Struct_1(-1i, true, 417f, 0i, vec2<u32>(30967u, 0u)), Struct_1(i32(-2147483648), true, -1170f, -13290i, vec2<u32>(57078u, 34638u)), Struct_1(-51624i, true, 793f, 39566i, vec2<u32>(73851u, 8348u)), Struct_1(25277i, false, -628f, 2147483647i, vec2<u32>(1u, 66626u)), Struct_1(-2951i, true, 1671f, -16506i, vec2<u32>(4294967295u, 1u)), Struct_1(-29651i, false, -1127f, 2147483647i, vec2<u32>(34746u, 28214u)), Struct_1(-76340i, true, 938f, 17064i, vec2<u32>(4294967295u, 44455u)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    global0 = select(!select(!vec3<bool>(arg_1.b, true, false), vec3<bool>(23408u > arg_1.e.x, u_input.b.x == u_input.b.x, true), vec3<bool>(false, global0.x, arg_1.d < -25123i)), vec3<bool>(any(select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_1.b, global0.x), vec3<bool>(global0.x, global0.x, global0.x))), all(select(vec3<bool>(global0.x, arg_1.b, arg_1.b), vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, global0.x, arg_1.b))) || arg_1.b, true), vec3<bool>(arg_1.b, true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2926f * arg_1.c), _wgslsmith_f_op_f32(sign(-967f))) < arg_1.c));
    global0 = !(!(!select(vec3<bool>(false, arg_1.b, false), vec3<bool>(true, arg_1.b, arg_1.b), true)));
    return all(select(vec2<bool>(arg_1.b, any(vec3<bool>(false, global0.x, false))), global0.zx, vec2<bool>(false, !arg_1.b)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(17401i, false, _wgslsmith_f_op_f32(ceil(-103f)), -u_input.b.x, u_input.a.zw);
    let var_1 = 26i;
    let var_2 = func_3(countOneBits(countOneBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, var_0.e.x, var_0.e.x)), var_0.e.x))), global1[_wgslsmith_index_u32(~4294967295u, 14u)]);
    var var_3 = Struct_1(~(-13575i), !(firstTrailingBit(countOneBits(1u)) < 1u), 1350f, 2147483647i, u_input.a.wy);
    let var_4 = global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(~select(0u, var_3.e.x, global0.x), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(var_0.e.x), ~0u), vec2<u32>(1u, u_input.a.x)), _wgslsmith_clamp_u32(~(~u_input.a.x), 4897u, 6675u)), ~(_wgslsmith_mod_u32(u_input.a.x, 19350u >> (var_0.e.x % 32u)) ^ (9299u >> (_wgslsmith_mod_u32(u_input.a.x, var_3.e.x) % 32u))), u_input.a.x), 14u)];
    return Struct_1(var_1, false, var_4.c, ~(var_0.d ^ _wgslsmith_add_i32(2147483647i, var_3.d)), abs(vec2<u32>(~1u, reverseBits(21406u))));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: vec4<f32>) -> u32 {
    let var_0 = any(vec3<bool>(true, arg_0.b, global0.x));
    return _wgslsmith_sub_u32(u_input.a.x, 1u);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> vec2<u32> {
    global1 = array<Struct_1, 14>();
    let var_0 = (firstLeadingBit(1u | (arg_1.e.x | 4294967295u)) << ((4294967295u << (u_input.a.x % 32u)) % 32u)) | ~firstTrailingBit(abs(~17893u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1345f, _wgslsmith_f_op_f32(max(-719f, _wgslsmith_f_op_f32(arg_1.c - arg_1.c)))));
    var var_2 = _wgslsmith_div_f32(arg_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    var var_3 = true;
    return ~vec2<u32>(31339u, reverseBits(func_4(func_2(), -1i, abs(arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-930f, 466f, arg_1.c, arg_1.c)))));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_3.c, arg_2.c))), vec2<f32>(arg_2.c, -1829f))) + _wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, arg_3.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-544f, 979f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, arg_3.c) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(616f, 131f), vec2<f32>(arg_2.c, 635f), global0.zy))))))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, arg_2.c), vec2<f32>(541f, -299f))) - vec2<f32>(_wgslsmith_f_op_f32(1684f + arg_3.c), _wgslsmith_f_op_f32(-arg_3.c))))));
    let var_1 = vec4<i32>(arg_2.a, countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(~5417i, 1i, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 2147483647i, arg_3.d, -15848i), vec4<i32>(33178i, arg_2.a, u_input.b.x, arg_2.d)), reverseBits(vec4<i32>(u_input.b.x, arg_2.d, 0i, 1947i))))), 36700i, _wgslsmith_add_i32(-_wgslsmith_add_i32(min(-11219i, -29575i), -arg_2.d), reverseBits(arg_2.a)));
    global0 = vec3<bool>(all(!select(!vec3<bool>(arg_2.b, arg_2.b, true), select(vec3<bool>(global0.x, false, true), vec3<bool>(true, arg_2.b, true), false), any(vec4<bool>(true, global0.x, true, arg_3.b)))), all(global0.yx), !select(arg_3.b, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.e.x, 13667u), arg_1.zy) < u_input.a.x, !select(arg_3.b, false, arg_3.b)));
    var var_2 = !(((_wgslsmith_f_op_f32(-1000f + var_0.x) >= _wgslsmith_f_op_f32(ceil(arg_3.c))) | (true | (2187f >= arg_3.c))) & all(vec2<bool>(false, any(vec3<bool>(false, false, false)))));
    var var_3 = abs(u_input.b.x);
    return arg_1.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-4659i, !all(vec2<bool>(true, false)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1081f)))))), u_input.b.x, ~func_5(firstLeadingBit(u_input.a), u_input.a.xyy, Struct_1(u_input.b.x, all(vec3<bool>(global0.x, false, false)), _wgslsmith_f_op_f32(-438f * 332f), -1i, func_1(vec2<bool>(false, global0.x), Struct_1(u_input.b.x, global0.x, 371f, u_input.b.x, u_input.a.xy))), Struct_1(firstTrailingBit(-1i), true, _wgslsmith_f_op_f32(1000f + 1234f), u_input.b.x, vec2<u32>(4294967295u, 25629u))));
    global0 = select(vec3<bool>(!any(!vec3<bool>(var_0.b, false, var_0.b)), var_0.b, var_0.b), select(!select(vec3<bool>(var_0.b, global0.x, false), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), false), !vec3<bool>(true, global0.x, global0.x)), select(!(!vec3<bool>(var_0.b, global0.x, true)), vec3<bool>(true, select(var_0.b, true, false), true), select(!vec3<bool>(var_0.b, false, global0.x), !vec3<bool>(var_0.b, true, global0.x), !var_0.b)), false & !(var_0.b | true)), select(select(select(vec3<bool>(global0.x, var_0.b, global0.x), select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, false), var_0.b), vec3<bool>(var_0.b, false, var_0.b)), select(!vec3<bool>(true, var_0.b, global0.x), vec3<bool>(global0.x, false, false), var_0.b), !(!vec3<bool>(global0.x, var_0.b, true))), select(!(!vec3<bool>(true, global0.x, false)), select(vec3<bool>(global0.x, var_0.b, var_0.b), select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, true, true), false), !vec3<bool>(true, var_0.b, global0.x)), !select(vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, false, var_0.b), vec3<bool>(global0.x, true, global0.x))), vec3<bool>(!(u_input.b.x >= 2147483647i), 1u <= var_0.e.x, any(!global0.xz))));
    let var_1 = select(vec4<bool>(any(select(vec3<bool>(true, var_0.b, var_0.b), vec3<bool>(var_0.b, false, false), select(vec3<bool>(false, false, false), vec3<bool>(global0.x, false, false), true))), func_2().b, func_2().b, any(global0.xz)), !select(vec4<bool>(select(true, global0.x, var_0.b), var_0.b, !global0.x, true), vec4<bool>(var_0.b != false, var_0.e.x == 66974u, true || global0.x, var_0.b || global0.x), vec4<bool>(true, var_0.c < 1000f, global0.x, func_3(var_0.e.x, global1[_wgslsmith_index_u32(4294967295u, 14u)]))), true);
    global1 = array<Struct_1, 14>();
    let var_2 = !(var_0.c > var_0.c);
    var var_3 = all(var_1.yxw);
    var var_4 = _wgslsmith_sub_vec2_u32(vec2<u32>(func_5(u_input.a, vec3<u32>(~0u, 1u, func_2().e.x), func_2(), Struct_1(abs(u_input.b.x), true, _wgslsmith_f_op_f32(max(-450f, var_0.c)), 17258i, countOneBits(var_0.e))).x, ~(~4294967295u)), vec2<u32>(~(~abs(var_0.e.x)), _wgslsmith_div_u32(~4294967295u, var_0.e.x)));
    var var_5 = global1[_wgslsmith_index_u32(var_0.e.x, 14u)];
    let var_6 = select(vec3<u32>(var_5.e.x, ~u_input.a.x >> (u_input.a.x % 32u), select(~(2190u & var_0.e.x), ~abs(4294967295u), true)), u_input.a.wyw, !select(select(vec3<bool>(var_0.b, var_2, true), !var_1.xyz, var_1.xxx), select(vec3<bool>(true, true, true), select(var_1.ywx, vec3<bool>(var_0.b, global0.x, false), var_1.zxx), !var_1.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(exp2(var_5.c)), vec4<f32>(_wgslsmith_f_op_f32(-var_5.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-465f - 297f) + 1594f), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1130f))), _wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-(vec4<i32>(0i, var_0.d, 14261i, u_input.b.x) & vec4<i32>(-1i, 26157i, 2147483647i, var_0.a)), -firstLeadingBit(vec4<i32>(var_0.d, var_5.d, -1i, u_input.b.x))), vec4<i32>(var_5.d, -var_0.d, _wgslsmith_add_i32(39371i, u_input.b.x), 1i) | (firstTrailingBit(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 0i)) ^ vec4<i32>(u_input.b.x, u_input.b.x, var_5.d, 10183i))), var_4.x);
}

