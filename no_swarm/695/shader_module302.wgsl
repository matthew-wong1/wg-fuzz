struct Struct_1 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: bool,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(5957i, -11819i), vec3<f32>(-1146f, -653f, -735f), vec4<i32>(i32(-2147483648), 0i, -1i, -17926i), false, vec3<i32>(4515i, -1i, -26239i));

var<private> global1: vec3<i32> = vec3<i32>(-1i, i32(-2147483648), 0i);

var<private> global2: u32 = 1u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> vec2<u32> {
    global2 = ~u_input.d.x;
    global2 = abs(~(firstTrailingBit(4294967295u >> (u_input.e.x % 32u)) >> (1u % 32u)));
    global2 = u_input.d.x;
    global0 = Struct_1(reverseBits(vec2<i32>(u_input.a << (41392u % 32u), u_input.b.x) >> (u_input.d.xy % vec2<u32>(32u))), global0.b, global0.c, ~4294967295u > reverseBits(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(1u, u_input.e.x, 4294967295u))), _wgslsmith_div_vec3_i32(vec3<i32>(-19274i, global1.x, -global0.e.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-21043i, 1i, -9596i, 1i), global0.c)), (reverseBits(global0.c.wyx) ^ vec3<i32>(-2147483647i, global1.x, u_input.a)) ^ abs(_wgslsmith_mod_vec3_i32(global0.c.www, global0.c.yyz))));
    global0 = Struct_1(~firstTrailingBit(vec2<i32>(-1i) * -global1.yz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, global0.b.x))), vec3<f32>(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(sign(global0.b.x)), _wgslsmith_f_op_f32(662f - global0.b.x)), global0.d))), max(global0.c, _wgslsmith_mult_vec4_i32(global0.c, global0.c) << (vec4<u32>(countOneBits(u_input.c), u_input.e.x, u_input.d.x, ~u_input.d.x) % vec4<u32>(32u))), global0.d, ~_wgslsmith_mod_vec3_i32(global0.c.ywx, abs(~vec3<i32>(-23653i, 1057i, 0i))));
    return _wgslsmith_sub_vec2_u32(u_input.d.zy << (u_input.e.yx % vec2<u32>(32u)), ~u_input.d.xy);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = Struct_1(min(-u_input.b, max(vec2<i32>(global0.a.x, -9193i), ~global0.c.xx) | ~arg_3.c.yz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3.b.x, -191f, arg_3.b.x) + global0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, -368f, arg_3.b.x)), vec3<bool>(arg_3.d | global0.d, global0.d, select(false, false, false))))), reverseBits(global0.c), global0.d, global0.c.xxz);
    global0 = Struct_1(vec2<i32>(-1i, countOneBits(var_0.c.x)), vec3<f32>(827f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.b.x)) + _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(sign(-563f))), abs(_wgslsmith_sub_vec4_i32(var_0.c, var_0.c)), any(vec2<bool>(any(vec2<bool>(true, true)) & global0.d, false)), arg_3.e);
    return firstTrailingBit(select(~arg_3.e, _wgslsmith_div_vec3_i32(vec3<i32>(arg_2, u_input.b.x, global0.c.x), var_0.c.wwz) ^ var_0.c.wxz, vec3<bool>(all(vec4<bool>(arg_3.d, global0.d, true, var_0.d)), !global0.d, true)) & (abs(~vec3<i32>(-53495i, 2147483647i, arg_3.a.x)) ^ firstLeadingBit(vec3<i32>(1i, 0i, 0i))));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(8921i, _wgslsmith_sub_i32(~global1.x, 2147483647i)), vec2<i32>(global1.x, global1.x)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + global0.b.x), _wgslsmith_f_op_f32(select(global0.b.x, 1477f, global0.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * -161f), _wgslsmith_div_f32(-2357f, global0.b.x))), global0.b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.x, 1346f, global0.b.x))))), ~vec4<i32>(global0.c.x, 0i, global0.a.x, reverseBits(countOneBits(-2147483647i))), true & any(vec3<bool>(global0.d, global0.d & false, !global0.d)), _wgslsmith_mult_vec3_i32(func_4(arg_0.yy, func_3(), _wgslsmith_div_i32(firstLeadingBit(0i), -13531i), Struct_1(arg_0.xy ^ vec2<i32>(u_input.b.x, 20398i), global0.b, global0.c, global0.d && false, vec3<i32>(22681i, u_input.b.x, u_input.b.x))), arg_0));
    var var_0 = Struct_1(arg_0.yy, _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(1016f, _wgslsmith_f_op_f32(trunc(1293f)), _wgslsmith_f_op_f32(sign(global0.b.x))) - global0.b)), global0.c, false, abs(vec3<i32>(~(~global0.e.x), -max(global0.c.x, u_input.a), 16768i)));
    var var_1 = Struct_1(firstTrailingBit(vec2<i32>(0i, 30939i)) | ((u_input.b ^ global1.yx) | vec2<i32>(1i, abs(u_input.b.x))), var_0.b, var_0.c, all(select(select(select(vec4<bool>(var_0.d, true, global0.d, global0.d), vec4<bool>(var_0.d, true, global0.d, false), vec4<bool>(global0.d, false, global0.d, false)), vec4<bool>(true, global0.d, global0.d, false), true), !select(vec4<bool>(false, global0.d, true, global0.d), vec4<bool>(true, true, global0.d, true), vec4<bool>(false, true, global0.d, true)), select(!vec4<bool>(var_0.d, false, var_0.d, false), !vec4<bool>(false, var_0.d, var_0.d, true), global0.d))), vec3<i32>(u_input.a, min(arg_0.x, -18203i), -u_input.b.x << (1u % 32u)));
    global1 = arg_0;
    var var_2 = ~min(vec3<u32>(~_wgslsmith_sub_u32(1u, u_input.d.x), u_input.e.x, u_input.e.x >> (40542u % 32u)), ~select(u_input.e.yzz, u_input.d, vec3<bool>(global0.d, var_1.d, false)) ^ u_input.d);
    return Struct_1(-global0.a ^ u_input.b, vec3<f32>(-1257f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_1.b.x)), _wgslsmith_f_op_f32(global0.b.x * var_0.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1612f * var_0.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(77143i, var_1.a.x), firstTrailingBit(vec2<i32>(global1.x, arg_0.x))), i32(-1i) * -global1.x), abs(~(var_0.e.x ^ -1173i)), func_4(vec2<i32>(~(-32558i), global0.c.x), vec2<u32>(firstTrailingBit(var_2.x), 42248u), global0.e.x, Struct_1(vec2<i32>(1i, -1i), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.b.x, -222f, var_0.b.x), var_1.b)), vec4<i32>(-23079i, global1.x, var_0.e.x, u_input.b.x), var_0.d, arg_0)).x, global1.x), any(select(!select(vec3<bool>(var_1.d, global0.d, false), vec3<bool>(true, var_1.d, global0.d), var_1.d), vec3<bool>(false, true, all(vec4<bool>(var_1.d, var_0.d, var_0.d, false))), any(!vec4<bool>(global0.d, global0.d, false, var_0.d)))), vec3<i32>(_wgslsmith_add_i32(2147483647i, var_0.e.x), ~(~select(arg_0.x, var_1.a.x, true)), -13930i));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    let var_0 = vec3<u32>(~(abs(~u_input.e.x) | 1u), ~u_input.c, u_input.e.x);
    return vec2<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(countOneBits(16742i), ~(-1i)), -(arg_2.a | _wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -22044i), vec2<i32>(-2147483647i, 70544i)))), 57990i);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2.c.wz;
    var var_1 = max(select(func_5(Struct_1(-vec2<i32>(1i, -47455i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, 1000f, arg_0)), arg_2.c << (vec4<u32>(arg_1.x, 23090u, 63384u, 1u) % vec4<u32>(32u)), true, vec3<i32>(u_input.a, arg_2.e.x, -54835i)), func_2(~vec3<i32>(2147483647i, global1.x, -17483i)), arg_2), global1.zz, !(!global0.d)), vec2<i32>(-1i) * -((vec2<i32>(1i, arg_2.c.x) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))) & max(global1.yz, vec2<i32>(-29260i, -26271i))));
    let var_2 = global0.d;
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-623f, arg_2.b.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(min(arg_0, 522f)))), vec4<f32>(arg_2.b.x, arg_0, _wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(-1f)))));
    let var_4 = -16172i;
    return _wgslsmith_add_i32(-3142i, var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(vec2<i32>(u_input.a, _wgslsmith_div_i32(max(func_1(705f, vec4<u32>(u_input.c, 1u, u_input.e.x, 49645u), Struct_1(global1.yy, global0.b, vec4<i32>(39302i, -1i, -1i, global0.c.x), false, global0.e)), _wgslsmith_mod_i32(global1.x, -75605i)), u_input.a)), _wgslsmith_f_op_vec3_f32(ceil(global0.b)), select(vec4<i32>(~global0.a.x << (u_input.c % 32u), ~2147483647i, select(-1i ^ global1.x, -1i, global0.d && global0.d), 25360i), global0.c, !select(vec4<bool>(false, global0.d, global0.d, global0.d), !vec4<bool>(global0.d, global0.d, true, global0.d), select(vec4<bool>(global0.d, false, global0.d, global0.d), vec4<bool>(global0.d, global0.d, false, true), global0.d))), ((true && all(vec3<bool>(true, true, true))) && (global0.d & select(false, global0.d, global0.d))) & func_2(firstLeadingBit(vec3<i32>(11401i, global1.x, 1i))).d, _wgslsmith_clamp_vec3_i32(global0.c.zyw, _wgslsmith_add_vec3_i32(global0.e, vec3<i32>(-35103i, -global0.e.x, -global1.x)), vec3<i32>(1i, global0.e.x, ~(-8485i)) | ~vec3<i32>(global1.x, global0.a.x, u_input.a)));
    var var_0 = global0.a.x;
    var var_1 = func_2(vec3<i32>(_wgslsmith_sub_i32(-32111i, func_1(_wgslsmith_f_op_f32(trunc(global0.b.x)), ~u_input.e, Struct_1(vec2<i32>(1i, 2147483647i), global0.b, vec4<i32>(40108i, u_input.b.x, u_input.b.x, -2147483647i), false, vec3<i32>(u_input.b.x, u_input.a, 25623i)))), -1i, func_1(1818f, ~(~u_input.e), func_2(_wgslsmith_div_vec3_i32(global0.c.www, vec3<i32>(global0.a.x, global1.x, global1.x))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.x, -1413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.b.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -794f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1520f, var_1.b.x, var_1.b.x, -1853f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1244f, global0.b.x, 986f, _wgslsmith_f_op_f32(1055f * global0.b.x)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.b.x, var_1.b.x, global0.b.x, var_1.b.x)))))))));
    global2 = u_input.d.x;
    global2 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~3505u) ^ abs(_wgslsmith_add_u32(u_input.d.x, 4294967295u) << (~40983u % 32u)), vec2<i32>(-1i << (_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(u_input.d.xy, vec2<u32>(42289u, 19739u)), 0u) % 32u), _wgslsmith_dot_vec4_i32(global0.c, var_1.c)));
}

