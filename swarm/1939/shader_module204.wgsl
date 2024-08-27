struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec2<f32>) -> u32 {
    global0 = array<bool, 21>();
    let var_0 = Struct_1(reverseBits(u_input.a.x));
    let var_1 = Struct_1(u_input.a.x);
    return var_1.a;
}

fn func_3(arg_0: vec2<f32>, arg_1: i32) -> vec3<i32> {
    global0 = array<bool, 21>();
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(-arg_0.x)), arg_0.x))) - arg_0);
    let var_1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.x, arg_0.x, var_0.x, arg_0.x), vec4<f32>(arg_0.x, 1127f, -1811f, -375f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1245f, arg_0.x, arg_0.x, arg_0.x))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, _wgslsmith_div_f32(181f, -1792f), _wgslsmith_f_op_f32(min(-504f, var_0.x)), _wgslsmith_f_op_f32(867f + arg_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -731f), -1000f, -571f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))))));
    var var_2 = u_input.a.x;
    var var_3 = Struct_2(_wgslsmith_f_op_vec4_f32(var_1 * vec4<f32>(-1050f, var_0.x, -610f, -162f)), _wgslsmith_dot_vec3_i32(~(~firstLeadingBit(vec3<i32>(arg_1, -1i, -29348i))), vec3<i32>(1i, abs(38551i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, -1i, 4970i), vec4<i32>(arg_1, 38256i, arg_1, -50131i)))), true);
    return ~abs(vec3<i32>(-1i) * -vec3<i32>(arg_1, -45132i, -36895i)) | _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(arg_1, arg_1, arg_1)) | select(firstTrailingBit(vec3<i32>(-2147483647i, 40603i, -2147483647i)), _wgslsmith_add_vec3_i32(vec3<i32>(-9992i, var_3.b, 1i), vec3<i32>(47550i, arg_1, 36312i)), var_3.c), -(~(vec3<i32>(arg_1, -1i, var_3.b) & vec3<i32>(var_3.b, 2147483647i, var_3.b))), (vec3<i32>(arg_1, -16110i, 2147483647i) ^ countOneBits(vec3<i32>(-26799i, 62682i, arg_1))) >> (vec3<u32>(_wgslsmith_clamp_u32(1u, 31603u, u_input.a.x), 4294967295u, u_input.a.x) % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(u_input.a.x);
    let var_1 = abs(func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(499f - 1489f), 619f))));
    var var_2 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-818f, -553f, -793f, -1131f) + vec4<f32>(-1453f, 168f, -1504f, 1411f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1592f, -716f, 2599f, -1535f))))))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 1i, 1i), vec3<i32>(~53386i, 18481i, 1i)), _wgslsmith_mod_vec3_i32(-func_3(vec2<f32>(119f, -1661f), 0i), vec3<i32>(~1i, -1i, 4555i))), all(vec2<bool>(true & select(global0[_wgslsmith_index_u32(12966u, 21u)], true, false), true)));
    var var_3 = !(!vec2<bool>(true || !global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false));
    var_3 = select(vec2<bool>(var_2.c, _wgslsmith_f_op_f32(484f - _wgslsmith_f_op_f32(abs(168f))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), select(select(vec2<bool>(true, true), select(select(vec2<bool>(var_3.x, var_2.c), vec2<bool>(false, global0[_wgslsmith_index_u32(var_1, 21u)]), global0[_wgslsmith_index_u32(15075u, 21u)]), !vec2<bool>(var_3.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), !vec2<bool>(var_2.c, false)), _wgslsmith_add_i32(var_2.b, var_2.b) > _wgslsmith_add_i32(-13466i, var_2.b)), vec2<bool>(all(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(var_0.a, 21u)], var_3.x, var_3.x)), global0[_wgslsmith_index_u32(~58574u, 21u)]), all(select(select(vec3<bool>(var_2.c, false, global0[_wgslsmith_index_u32(33898u, 21u)]), vec3<bool>(global0[_wgslsmith_index_u32(var_0.a, 21u)], var_2.c, false), var_3.x), !vec3<bool>(var_2.c, var_3.x, global0[_wgslsmith_index_u32(u_input.a.x, 21u)]), vec3<bool>(false, var_2.c, false)))), false);
    return Struct_1(600u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(208f, -1000f, global0[_wgslsmith_index_u32(var_0.a, 21u)]))))), -537f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(149f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -901f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(924f, -216f))))), -(~countOneBits(-2147483647i)) & ~_wgslsmith_dot_vec3_i32(vec3<i32>(28781i, 2147483647i, 1i), ~vec3<i32>(14689i, 6856i, 0i)), any(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 21u)], global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, false), !vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(55320u, 21u)], true, global0[_wgslsmith_index_u32(4294967295u, 21u)]), select(true, false, global0[_wgslsmith_index_u32(55621u, 21u)]))));
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(var_1.a.zy, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(958f, 316f) - vec2<f32>(var_1.a.x, -175f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-549f, var_1.a.x) + vec2<f32>(-857f, var_1.a.x)), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.x, var_1.a.x)))), var_1.b, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_div_vec4_f32(vec4<f32>(var_1.a.x, var_1.a.x, var_1.a.x, -1725f), vec4<f32>(var_1.a.x, -722f, -779f, 586f)), !vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], false, true, true)))))), ~firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(18506i, var_1.b, var_1.b)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(2452f, var_1.a.x) - -1124f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.a.x - var_1.a.x), -830f)), var_1.a.x, var_1.c)), _wgslsmith_div_f32(_wgslsmith_div_f32(-824f, var_1.a.x), var_1.a.x), var_1.a.x));
}

