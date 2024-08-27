struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2;

var<private> global2: vec3<i32>;

var<private> global3: array<f32, 4>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> u32 {
    global2 = global1.d;
    global2 = vec3<i32>(_wgslsmith_mod_i32(0i, firstTrailingBit(2147483647i)), _wgslsmith_add_i32(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(global2.x ^ global1.d.x, global1.d.x, 1i), global1.d.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(global1.d.x, 0i), 0i) ^ -6001i), ~(~u_input.b & -(~(-2147483647i))));
    var var_0 = global3[_wgslsmith_index_u32(~1u, 4u)];
    let var_1 = Struct_2(((u_input.b ^ ~(-77471i)) << (_wgslsmith_div_u32(select(global0.b, 13542u, global1.c.x), _wgslsmith_sub_u32(global0.b, u_input.a)) % 32u)) < global2.x, global0.b, select(vec4<bool>(select(true, true, all(vec2<bool>(global0.c.x, global0.c.x))), !(u_input.a > u_input.a), !global1.c.x, false), !vec4<bool>(global0.c.x, any(vec2<bool>(global1.c.x, true)), any(global1.c), global1.a), !(min(-28443i, global0.d.x) <= u_input.b)), select(global0.d, abs(countOneBits(select(global0.d, global1.d, vec3<bool>(global0.c.x, true, global0.a)))), select(vec3<bool>(true, global1.c.x, all(vec2<bool>(global0.a, global1.c.x))), vec3<bool>(global0.a, !global1.a, global0.a), global0.a)));
    var_0 = 1351f;
    return firstLeadingBit(reverseBits(~1u));
}

fn func_2(arg_0: vec4<u32>) -> vec3<i32> {
    let var_0 = Struct_2(true, func_3(), global0.c, -reverseBits(-vec3<i32>(u_input.b, u_input.c, global0.d.x)));
    var var_1 = Struct_2(global3[_wgslsmith_index_u32(var_0.b | select(30626u, ~arg_0.x, true), 4u)] > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(0u, 4u)] - 648f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(global1.b, 4u)])) - 1f)), countOneBits(~_wgslsmith_mult_u32(abs(7283u), u_input.a)), vec4<bool>(global0.c.x, global0.c.x, -2147483647i > u_input.b, all(vec2<bool>(false && global0.a, true))), ~vec3<i32>(global0.d.x, u_input.c ^ global2.x, ~var_0.d.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1090f) + vec2<f32>(global3[_wgslsmith_index_u32(var_1.b, 4u)], -669f))) + vec2<f32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.b, global1.b), 4u)], -948f)) - vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -339f))), -785f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(1u, 4u)], global3[_wgslsmith_index_u32(u_input.a, 4u)])), _wgslsmith_f_op_f32(sign(-624f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(110f, global3[_wgslsmith_index_u32(1u, 4u)])))), any(!global1.c.xw)));
    return var_0.d;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_1 {
    let var_0 = 1u;
    global0 = arg_1;
    var var_1 = global0.c.ww;
    global2 = vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(-select(global0.d.zx, arg_3.yz, true) ^ arg_1.d.yz, _wgslsmith_add_vec2_i32(arg_3.zy, vec2<i32>(global0.d.x, global2.x))), ~_wgslsmith_clamp_i32(arg_3.x, global0.d.x, firstTrailingBit(arg_3.x >> (global1.b % 32u))));
    global2 = ~(-func_2((vec4<u32>(3783u, u_input.a, 54054u, 18308u) ^ vec4<u32>(global0.b, 0u, arg_1.b, global0.b)) ^ _wgslsmith_div_vec4_u32(vec4<u32>(25684u, global0.b, u_input.a, var_0), vec4<u32>(20305u, global0.b, var_0, var_0))));
    return Struct_1(vec3<bool>(true, global0.c.x, !arg_1.a));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: bool) -> Struct_2 {
    var var_0 = !func_1(vec3<f32>(-118f, _wgslsmith_div_f32(1141f, -1373f), global3[_wgslsmith_index_u32(max(global1.b, 0u), 4u)]), Struct_2(global0.c.x, ~4294967295u, global1.c, global0.d), vec4<bool>(false, all(global0.c.wzy), false, true), global1.d).a.x && (_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)))) >= 346f);
    global0 = Struct_2(arg_3, min(34329u, ~4294967295u << (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 8963u) >> (vec2<u32>(4294967295u, global0.b) % vec2<u32>(32u)), vec2<u32>(u_input.a, 92093u) >> (vec2<u32>(u_input.a, global1.b) % vec2<u32>(32u))) % 32u)), global0.c, global1.d);
    let var_1 = Struct_2(arg_2.a.x, global1.b, select(global1.c, !(!vec4<bool>(arg_3, true, false, arg_3)), !select(global1.c, select(global0.c, global0.c, global1.c), !global1.c)), -vec3<i32>(~(~1i), global1.d.x, 48931i));
    let var_2 = global0.d;
    let var_3 = Struct_2(true, ~countOneBits(~(~8226u)), vec4<bool>(true, select(arg_0.x < -2147483647i, any(vec4<bool>(global1.a, false, arg_3, false)), all(vec4<bool>(global1.c.x, true, true, true)) & false), var_1.a, arg_3), vec3<i32>(~(~(-1i)), min(-50039i, _wgslsmith_add_i32(_wgslsmith_sub_i32(2147483647i, global1.d.x), -15907i)), _wgslsmith_dot_vec4_i32(~(~vec4<i32>(arg_0.x, 0i, 22948i, -2147483647i)), firstTrailingBit(vec4<i32>(1i, -18969i, 1i, u_input.c)))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_mod_vec2_i32(global0.d.yz >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 61201u), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u)), ~global2.zz), _wgslsmith_f_op_vec4_f32(vec4<f32>(-282f, _wgslsmith_div_f32(global3[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.b, 4u)])), -615f, global3[_wgslsmith_index_u32(25826u, 4u)]) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(3259u, 4u)], 1515f, global3[_wgslsmith_index_u32(global1.b, 4u)], 815f) + vec4<f32>(global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], -1252f, 151f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 4u)], -1000f, global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(u_input.a, 4u)]))))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global3[_wgslsmith_index_u32(1u, 4u)])), -565f, global3[_wgslsmith_index_u32(20977u >> (1u % 32u), 4u)]) + vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_f_op_f32(abs(-1394f)), global3[_wgslsmith_index_u32(79157u, 4u)])), Struct_2(false, 1u, select(global1.c, global1.c, global0.c), firstTrailingBit(vec3<i32>(u_input.b, 16629i, 56629i)) ^ (global0.d ^ global1.d)), global1.c, vec3<i32>(global2.x, -2147483647i, _wgslsmith_add_i32(2147483647i, ~27572i))), global1.b <= ~global1.b);
    var_0 = Struct_2(any(vec2<bool>(var_0.c.x | false, false)), ~1u, vec4<bool>(all(!global0.c.wz), false, global1.a, true), global1.d);
    let var_1 = func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(~global1.b, 4u)]), global3[_wgslsmith_index_u32(74901u, 4u)], 1091f)), Struct_2(global0.a, 2126u, vec4<bool>(true, var_0.c.x, false || global1.a, true), ~global1.d), vec4<bool>(!(global3[_wgslsmith_index_u32(~19939u, 4u)] >= _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(global0.b, 4u)])), !var_0.a, global1.a, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b, 4u)]) > global3[_wgslsmith_index_u32(global1.b, 4u)]), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(global1.d.x, 23892i, 43422i), global1.d, true), var_0.d), -(vec3<i32>(u_input.b, 2147483647i, -65012i) & global1.d)) ^ vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-15635i, 24134i), vec2<i32>(global0.d.x, global2.x)), -u_input.b, firstLeadingBit(global1.d.x)));
    global2 = global0.d;
    var_0 = func_4(global1.d.zz, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-287f, global3[_wgslsmith_index_u32(28349u, 4u)], global3[_wgslsmith_index_u32(global0.b, 4u)], global3[_wgslsmith_index_u32(global0.b, 4u)]))) - vec4<f32>(global3[_wgslsmith_index_u32(4695u, 4u)], -595f, -1938f, global3[_wgslsmith_index_u32(1u, 4u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(u_input.a, 4u)], global3[_wgslsmith_index_u32(global1.b, 4u)], 1157f, -125f))))), var_1, !(!all(vec3<bool>(true, true, true))));
    let var_2 = var_1;
    global1 = func_4(global1.d.xx, vec4<f32>(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(func_4(select(vec2<i32>(0i, 1i), vec2<i32>(0i, 2147483647i), vec2<bool>(global1.c.x, global0.a)), vec4<f32>(global3[_wgslsmith_index_u32(global0.b, 4u)], 445f, 629f, 735f), var_1, false).b, 4u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(2148f)), _wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(var_0.b, 4u)])), true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(var_0.b, 4u)]) * global3[_wgslsmith_index_u32(global0.b, 4u)]) - 1f), _wgslsmith_f_op_f32(trunc(-490f)), global3[_wgslsmith_index_u32(global1.b, 4u)]), Struct_1(func_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1629f, global3[_wgslsmith_index_u32(global1.b, 4u)], -1701f), vec3<f32>(1730f, global3[_wgslsmith_index_u32(0u, 4u)], -282f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(var_0.b, 4u)], -576f, global3[_wgslsmith_index_u32(1u, 4u)])))), Struct_2(true, max(global1.b, u_input.a), !vec4<bool>(global0.c.x, false, false, true), ~global0.d), vec4<bool>(!global1.c.x, var_0.a & var_2.a.x, !var_2.a.x, true), global1.d).a), false);
    var var_3 = ~_wgslsmith_add_u32(~52074u, _wgslsmith_clamp_u32(~global1.b, ~global1.b, ~_wgslsmith_div_u32(var_0.b, var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<u32>(u_input.a, ~func_4(vec2<i32>(-1i, 48103i), vec4<f32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], 1609f, 358f, -2085f), Struct_1(vec3<bool>(global1.a, false, var_0.c.x)), true).b)), select(firstTrailingBit(_wgslsmith_clamp_i32(func_2(vec4<u32>(0u, global0.b, var_0.b, global0.b)).x, global0.d.x, 28347i)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-global0.d.yz, -vec2<i32>(-16835i, 1i)), -36990i | ~global1.d.x), countOneBits(var_0.b) <= (func_3() ^ 13023u)), 41680u, ~(17632u ^ var_0.b), vec2<i32>(~20550i, -(~(-22248i))));
}

