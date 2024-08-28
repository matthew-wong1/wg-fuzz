struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, ~(reverseBits(u_input.c) | 4294967295u), ~_wgslsmith_clamp_u32(~8717u, 1u, u_input.b | 4294967295u), ~(_wgslsmith_mod_u32(1u, u_input.b) ^ _wgslsmith_mod_u32(u_input.b, 0u))), vec4<u32>(countOneBits(_wgslsmith_clamp_u32(firstTrailingBit(u_input.a), ~u_input.c, 43662u)), 0u, ~4294967295u, ~(u_input.b & ~22781u)));
    let var_2 = _wgslsmith_dot_vec2_i32(abs(vec2<i32>(1i, firstTrailingBit(reverseBits(-1i)))), vec2<i32>(reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-68300i, 26018i, -73745i, 2426i), vec4<i32>(41703i, 42160i, 1i, -10786i), vec4<i32>(1335i, 32013i, -1852i, 39849i)), max(vec4<i32>(-3403i, 1i, 0i, -2147483647i), vec4<i32>(-8431i, -26965i, 1i, -2147483647i)), false), ~vec4<i32>(-2147483647i, 1i, -13201i, 55906i))));
    var var_3 = arg_0;
    global0 = vec2<bool>(((any(vec4<bool>(var_0.b.x, false, global0.x, var_0.b.x)) || true) & true) == (true != any(vec4<bool>(false, var_0.b.x, var_3.b.x, true))), true);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_3.a)) + _wgslsmith_f_op_f32(round(arg_0.a))), _wgslsmith_f_op_f32(f32(-1f) * -1750f), arg_0.a);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: f32) -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-1125f * -311f), vec4<bool>(any(vec3<bool>(global0.x, arg_0.b.x, all(vec3<bool>(global0.x, true, arg_0.b.x)))), false, arg_0.b.x, -(arg_2.x | 2147483647i) > arg_2.x));
    let var_1 = arg_0;
    var var_2 = vec4<i32>(-11602i, arg_2.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_add_i32(arg_2.x, arg_2.x), _wgslsmith_div_i32(-1i, arg_2.x), _wgslsmith_clamp_i32(arg_2.x, -1i, -1i))), _wgslsmith_sub_vec3_i32(select(max(vec3<i32>(25144i, arg_2.x, -1i), vec3<i32>(2147483647i, -1i, arg_2.x)), vec3<i32>(1i, -1i, -1i), !vec3<bool>(global0.x, arg_0.b.x, var_0.b.x)), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(arg_2.x, arg_2.x, arg_2.x), vec3<i32>(-55112i, arg_2.x, arg_2.x))))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(max(12428i, 10719i), -12707i, -1288i, 1i >> (0u % 32u)), vec4<i32>(~100055i, -1i, min(arg_2.x, -266i), -arg_2.x)), vec4<i32>(-1i, arg_2.x, arg_2.x, 3366i)));
    let var_3 = arg_0.b.x;
    var var_4 = u_input.a;
    return vec3<u32>((u_input.b << (~firstTrailingBit(u_input.b) % 32u)) | u_input.a, 1u, firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 25153u, 0u), vec3<u32>(4294967295u, 11760u, 40846u)), ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1107u), vec3<u32>(u_input.b, 96544u, 4294967295u)))));
}

fn func_2() -> bool {
    let var_0 = reverseBits(~func_4(Struct_1(-486f, vec4<bool>(true, global0.x, true, global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(1555f, vec4<bool>(true, global0.x, false, true)))) - vec3<f32>(176f, -491f, 1446f)), ~min(vec2<i32>(0i, 28174i), vec2<i32>(14331i, 18729i)), _wgslsmith_f_op_f32(ceil(491f))));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(468f, -371f) * vec2<f32>(1504f, 593f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(678f, -1223f))))) + vec2<f32>(-1365f, 873f))))));
    global0 = !vec2<bool>(any(!select(vec3<bool>(true, global0.x, false), vec3<bool>(true, global0.x, global0.x), true)), all(select(!vec2<bool>(true, global0.x), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true)), vec2<bool>(true, true))));
    var var_2 = abs(27024i);
    var var_3 = u_input.c;
    return global0.x;
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = select(select(vec2<bool>(false, func_2()), arg_0.b.yy, firstTrailingBit(1i) == -6675i), vec2<bool>(any(select(arg_0.b, vec4<bool>(false, arg_0.b.x, true, arg_0.b.x), false)) && global0.x, true), select(vec2<bool>(true, !all(vec3<bool>(true, global0.x, arg_0.b.x))), select(arg_0.b.yw, !vec2<bool>(true, arg_0.b.x), select(select(vec2<bool>(global0.x, global0.x), arg_0.b.wx, false), !vec2<bool>(arg_0.b.x, arg_0.b.x), select(vec2<bool>(arg_0.b.x, arg_0.b.x), vec2<bool>(true, global0.x), global0.x))), !(!(!global0.x))));
    let var_0 = select(true, true, any(!vec2<bool>(arg_0.b.x, false)));
    global0 = vec2<bool>(all(vec2<bool>(_wgslsmith_f_op_f32(step(arg_0.a, -436f)) > _wgslsmith_f_op_f32(abs(arg_0.a)), select(0u, u_input.c, false) > abs(u_input.c))), !any(!(!arg_0.b)));
    global0 = vec2<bool>(603f > arg_0.a, global0.x);
    global0 = arg_0.b.wz;
    return ~_wgslsmith_div_u32(u_input.b, ~4294967295u) > u_input.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(!select(select(select(vec2<bool>(false, true), vec2<bool>(false, global0.x), vec2<bool>(true, global0.x)), vec2<bool>(false, global0.x), !global0.x), vec2<bool>(any(vec2<bool>(true, true)), func_1(Struct_1(142f, vec4<bool>(true, global0.x, global0.x, global0.x)))), !all(vec2<bool>(true, global0.x))), vec2<bool>(global0.x, true), !all(select(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), vec4<bool>(global0.x, true, false, false)), !vec4<bool>(global0.x, false, true, global0.x), global0.x)));
    global0 = select(!vec2<bool>(!global0.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(true, !(!global0.x | select(true, global0.x, global0.x))));
    var var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, 1177f) * vec2<f32>(462f, -418f)))) - _wgslsmith_f_op_vec3_f32(func_3(Struct_1(461f, vec4<bool>(true, global0.x, global0.x, global0.x)))).zz), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2220f + 1385f) + 1714f), _wgslsmith_f_op_f32(f32(-1f) * -546f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(500f, -792f) * vec2<f32>(-952f, -1207f)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(190f, -310f), vec2<f32>(-1483f, 1471f), vec2<bool>(global0.x, true)))), vec2<f32>(-230f, _wgslsmith_f_op_f32(-525f - 1394f)))), any(select(!vec4<bool>(global0.x, false, global0.x, false), select(vec4<bool>(global0.x, true, false, false), select(vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false), true), func_2()), true))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(floor(1141f))), !vec4<bool>(all(vec3<bool>(global0.x, true, false)), false, !(!global0.x), false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, -952f), vec2<f32>(1379f, var_0.x), vec2<bool>(global0.x, true))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 968f)), vec2<f32>(1007f, var_0.x))), true))), reverseBits(_wgslsmith_clamp_u32(countOneBits(_wgslsmith_sub_u32(u_input.a, u_input.b)), 1u, u_input.a)));
}

