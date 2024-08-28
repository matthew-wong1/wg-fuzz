struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(true, false, false, false, false, false, true, true, false, false);

var<private> global1: u32;

var<private> global2: Struct_1;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    global1 = global2.c;
    global0 = array<bool, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global2.e.zwz, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.e.yxw * vec3<f32>(global2.e.x, 2197f, global2.e.x)), _wgslsmith_f_op_vec3_f32(round(global2.e.zzx))), vec3<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(0u), 10u)], true, !global0[_wgslsmith_index_u32(global2.d.x, 10u)]))), vec3<f32>(global2.e.x, -1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(1000f * global2.e.x))))));
    var var_1 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(~reverseBits(~global2.d.yz)), vec2<u32>(1u, _wgslsmith_div_u32(min(32731u, u_input.b), 1u)), firstLeadingBit(~min(global2.d.xz, ~global2.d.xx)));
    global0 = array<bool, 10>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x)) * _wgslsmith_f_op_f32(step(global2.e.x, _wgslsmith_f_op_f32(global2.e.x + var_0.x))))), -448f);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    let var_2 = var_0;
    let var_3 = firstLeadingBit(u_input.c.x);
    let var_4 = var_0;
    return var_4;
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    var var_0 = u_input.a;
    var var_1 = vec2<i32>(1i, _wgslsmith_add_i32(arg_0.b.x & _wgslsmith_mult_i32(u_input.c.x, u_input.c.x << (u_input.b % 32u)), _wgslsmith_mod_i32(~reverseBits(arg_0.a.x), ~2147483647i)));
    global2 = Struct_1(vec4<i32>(abs(0i), var_1.x, _wgslsmith_dot_vec4_i32(global2.a, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, var_1.x, global2.a.x, 16925i), -vec4<i32>(global2.b.x, -10523i, 1i, -1i))), _wgslsmith_clamp_i32(-41636i, ~(arg_0.b.x | 3641i), -46675i)), func_2(arg_0, !(!select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c, 10u)], global0[_wgslsmith_index_u32(26714u, 10u)], false, false), vec4<bool>(true, global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], true), global0[_wgslsmith_index_u32(global2.c, 10u)]))).b, arg_0.c, global2.d & reverseBits(~(~global2.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(arg_0.e, arg_0.e, select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(702u, 10u)], true), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], false), global0[_wgslsmith_index_u32(8402u, 10u)]))))));
    var var_2 = arg_0;
    var var_3 = arg_0;
    return _wgslsmith_f_op_vec3_f32(max(arg_0.e.xxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.e.wzy) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1351f, var_2.e.x, global2.e.x), vec3<f32>(724f, -296f, 494f)))) - arg_0.e.wwy))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = arg_3.b.x;
    global2 = arg_1;
    let var_1 = Struct_1(vec4<i32>(3266i, arg_2.a.x, -2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(select(arg_3.a.xz, vec2<i32>(arg_1.b.x, arg_1.a.x), global0[_wgslsmith_index_u32(22437u, 10u)])), _wgslsmith_clamp_vec2_i32(select(vec2<i32>(2147483647i, u_input.c.x), u_input.d.xw, global0[_wgslsmith_index_u32(global2.d.x, 10u)]), -u_input.d.zw, vec2<i32>(-14463i, -48643i)))), vec2<i32>(-_wgslsmith_div_i32(select(u_input.d.x, -2147483647i, global0[_wgslsmith_index_u32(arg_3.c, 10u)]), global2.a.x), ~(-1i) << (arg_2.c % 32u)), (~4294967295u ^ ((4294967295u | u_input.a) | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.c, arg_3.d.x, global2.d.x, 0u), vec4<u32>(global2.d.x, arg_2.d.x, 0u, arg_2.d.x)))) << (50674u % 32u), arg_2.d, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(arg_2.e)), _wgslsmith_f_op_vec4_f32(-arg_1.e)));
    let var_2 = arg_2;
    return min(_wgslsmith_mult_vec2_i32(vec2<i32>(1185i, i32(-1i) * -33564i), arg_2.b), vec2<i32>(var_1.a.x, -2147483647i));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: i32) -> Struct_1 {
    let var_0 = vec2<u32>(~countOneBits(4294967295u), ~global2.d.x);
    var var_1 = _wgslsmith_div_i32(countOneBits(-1i), arg_1.x);
    return Struct_1(u_input.d, select(func_5(_wgslsmith_f_op_vec3_f32(func_4(func_2(Struct_1(global2.a, arg_1.xy, 0u, global2.d, global2.e), vec4<bool>(false, false, true, true)))), func_2(Struct_1(vec4<i32>(u_input.d.x, arg_1.x, 53854i, global2.b.x), vec2<i32>(u_input.c.x, 0i), 8571u, global2.d, global2.e), !vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 10u)], true, global0[_wgslsmith_index_u32(1124u, 10u)], false)), Struct_1(min(global2.a, u_input.d), global2.b, ~var_0.x, vec3<u32>(global2.c, var_0.x, global2.d.x) ^ vec3<u32>(var_0.x, 40264u, global2.c), _wgslsmith_f_op_vec4_f32(-global2.e)), func_2(func_2(Struct_1(global2.a, global2.a.xx, var_0.x, global2.d, vec4<f32>(973f, 2150f, 197f, global2.e.x)), vec4<bool>(global0[_wgslsmith_index_u32(2108u, 10u)], true, true, global0[_wgslsmith_index_u32(global2.c, 10u)])), vec4<bool>(false, true, global0[_wgslsmith_index_u32(22416u, 10u)], true))), ~(~(-vec2<i32>(-35i, -36443i))), !(!select(vec2<bool>(global0[_wgslsmith_index_u32(20010u, 10u)], true), vec2<bool>(true, true), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], true)))), 1u, vec3<u32>(~abs(1u), 43197u, ~u_input.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0 * -1454f), _wgslsmith_f_op_f32(-func_2(Struct_1(global2.a, vec2<i32>(-4322i, arg_2.x), var_0.x, global2.d, global2.e), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 10u)], global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(102063u, 10u)], global0[_wgslsmith_index_u32(28141u, 10u)])).e.x), -253f, -798f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-870f, global2.e.x, arg_0, -578f))) * _wgslsmith_div_vec4_f32(vec4<f32>(126f, global2.e.x, arg_0, global2.e.x), global2.e)) + global2.e)));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = array<bool, 10>();
    let var_0 = Struct_1(_wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -arg_0.a), max(-vec4<i32>(u_input.d.x, u_input.c.x, -2573i, 18169i), u_input.d)), _wgslsmith_mod_vec2_i32(func_2(arg_0, vec4<bool>(true, global0[_wgslsmith_index_u32(81687u, 10u)], false, true)).a.zz, firstLeadingBit(u_input.c.zy | global2.a.xx)) ^ (~vec2<i32>(arg_0.b.x, 0i) >> (abs(vec2<u32>(19808u, 4294967295u)) % vec2<u32>(32u))), u_input.b, vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, arg_0.c) ^ _wgslsmith_add_vec3_u32(arg_0.d, vec3<u32>(u_input.a, arg_0.c, arg_0.c)), ~(arg_0.d >> (arg_0.d % vec3<u32>(32u)))), arg_0.d.x, 1u >> (~arg_0.c % 32u)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(arg_0.e + vec4<f32>(_wgslsmith_f_op_vec3_f32(func_4(arg_0)).x, _wgslsmith_div_f32(global2.e.x, arg_0.e.x), 1f, _wgslsmith_f_op_f32(f32(-1f) * -532f))), arg_0.e)));
    var var_1 = var_0;
    global2 = func_2(func_2(var_0, select(!select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.d.x, 10u)], false, false, global0[_wgslsmith_index_u32(var_1.d.x, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.d.x, 10u)], false, global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(48519u, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(0u, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(var_0.c, 10u)], true)), vec4<bool>(1u < u_input.a, false, global0[_wgslsmith_index_u32(arg_0.d.x | var_0.c, 10u)], false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c, 10u)] || global0[_wgslsmith_index_u32(4294967295u, 10u)], true, var_0.e.x >= var_1.e.x, any(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 10u)], true, global0[_wgslsmith_index_u32(47493u, 10u)]))))), select(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.c, 10u)], true)), true, any(!vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.a, 10u)])), !all(vec3<bool>(true, true, true))), select(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 10u)], global0[_wgslsmith_index_u32(var_0.c, 10u)], global0[_wgslsmith_index_u32(u_input.a, 10u)], global0[_wgslsmith_index_u32(var_0.d.x, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(global2.d.x, 10u)], false, false, global0[_wgslsmith_index_u32(1u, 10u)]), vec4<bool>(global0[_wgslsmith_index_u32(38168u, 10u)], global0[_wgslsmith_index_u32(global2.d.x, 10u)], false, global0[_wgslsmith_index_u32(global2.c, 10u)])), select(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.c, 10u)], true, global0[_wgslsmith_index_u32(44937u, 10u)], global0[_wgslsmith_index_u32(40838u, 10u)]), !vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(231u, 10u)]), u_input.b == var_1.d.x), all(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 10u)]))), !global0[_wgslsmith_index_u32(18816u, 10u)]));
    let var_2 = func_2(Struct_1(vec4<i32>(var_0.b.x, _wgslsmith_add_i32(1i, arg_0.a.x), ~_wgslsmith_dot_vec4_i32(global2.a, vec4<i32>(arg_0.a.x, 10307i, u_input.d.x, var_1.a.x)), ~arg_0.a.x), _wgslsmith_add_vec2_i32(abs(_wgslsmith_mult_vec2_i32(u_input.c.xx, vec2<i32>(17067i, u_input.d.x))), firstLeadingBit(vec2<i32>(u_input.d.x, global2.b.x))), _wgslsmith_dot_vec3_u32(var_1.d << (~global2.d % vec3<u32>(32u)), vec3<u32>(0u, ~19069u, firstTrailingBit(u_input.b))), var_1.d, vec4<f32>(220f, _wgslsmith_f_op_f32(-global2.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.e.x, 2060f) + _wgslsmith_f_op_f32(f32(-1f) * -281f)), _wgslsmith_div_f32(-808f, func_2(var_0, vec4<bool>(global0[_wgslsmith_index_u32(48952u, 10u)], global0[_wgslsmith_index_u32(var_1.c, 10u)], global0[_wgslsmith_index_u32(var_1.d.x, 10u)], global0[_wgslsmith_index_u32(0u, 10u)])).e.x))), !vec4<bool>(select(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_1.d.x), 10u)], true, !global0[_wgslsmith_index_u32(68229u, 10u)]), (false && global0[_wgslsmith_index_u32(arg_0.c, 10u)]) & any(vec2<bool>(global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(35877u, 10u)])), true, global0[_wgslsmith_index_u32(var_0.c, 10u)]));
    return func_2(arg_0, vec4<bool>(true, false, all(select(vec3<bool>(global0[_wgslsmith_index_u32(1u, 10u)], true, false), select(vec3<bool>(false, true, false), vec3<bool>(false, global0[_wgslsmith_index_u32(var_0.d.x, 10u)], false), vec3<bool>(true, true, false)), true)), false));
}

fn func_7(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec2<i32>(-1i) * -arg_1.a.xw;
    let var_1 = ~(~u_input.a);
    let var_2 = 21547u;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_add_u32(~20596u, _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.a, 39443u), ~global2.c)) | abs(_wgslsmith_sub_u32(~global2.c, ~36246u)), ~(~(~0u)));
    var var_1 = global2.e.x;
    var var_2 = vec2<u32>(36605u, _wgslsmith_div_u32(_wgslsmith_div_u32(select(637u, _wgslsmith_clamp_u32(74129u, u_input.b, 45411u), false), _wgslsmith_mult_u32(~global2.d.x, 0u)), var_0 << (_wgslsmith_add_u32(1u, _wgslsmith_clamp_u32(16066u, global2.c, u_input.a)) % 32u)));
    var var_3 = true;
    global2 = func_7(1u, func_6(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x - 2496f) * global2.e.x), ~abs(global2.a.xxz), vec2<i32>(min(global2.b.x, -1i), _wgslsmith_mult_i32(u_input.c.x, -8272i)), -1i)));
    let var_4 = Struct_1(-_wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a.x, 0i, -2147483647i, u_input.d.x), vec4<i32>(u_input.d.x, global2.a.x, global2.b.x, -1i))), vec4<i32>(select(u_input.d.x, global2.a.x, global0[_wgslsmith_index_u32(60134u, 10u)]), u_input.d.x, -1i, ~global2.a.x)), reverseBits(u_input.c.xz), u_input.b, global2.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-708f)), 982f, _wgslsmith_f_op_f32(global2.e.x - global2.e.x), func_2(Struct_1(vec4<i32>(2147483647i, 4691i, global2.a.x, 1i), vec2<i32>(u_input.c.x, global2.a.x), var_2.x, vec3<u32>(u_input.a, 59880u, global2.c), vec4<f32>(global2.e.x, -234f, -286f, global2.e.x)), vec4<bool>(false, global0[_wgslsmith_index_u32(95254u, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(4294967295u, 10u)])).e.x) + _wgslsmith_f_op_vec4_f32(global2.e - _wgslsmith_f_op_vec4_f32(global2.e + global2.e))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, 416f), _wgslsmith_f_op_f32(step(-1134f, global2.e.x)), _wgslsmith_f_op_f32(f32(-1f) * -1066f), 574f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(164f, global2.e.x, global2.e.x, 157f)))))));
    var var_5 = var_4.a.x;
    let var_6 = var_4.e;
    global1 = ~var_0 & global2.c;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_vec4_u32(~(vec4<u32>(var_4.d.x, 59482u, 28361u, var_0) | vec4<u32>(4294967295u, 24236u, 0u, var_4.d.x)), select(vec4<u32>(27240u, global2.c, 4294967295u, 3134u), ~vec4<u32>(u_input.a, var_4.c, u_input.b, global2.d.x), any(vec3<bool>(global0[_wgslsmith_index_u32(14491u, 10u)], global0[_wgslsmith_index_u32(75041u, 10u)], global0[_wgslsmith_index_u32(var_4.c, 10u)])))), _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(countOneBits(vec4<u32>(global2.c, var_4.c, 345u, 36043u)), vec4<u32>(global2.c, 4294967295u, u_input.a, global2.c), !vec4<bool>(false, true, global0[_wgslsmith_index_u32(30160u, 10u)], false)), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(global2.d.x, 4294967295u, 15766u, 14212u)), select(vec4<u32>(10688u, 1u, var_0, global2.d.x), vec4<u32>(u_input.b, u_input.b, 1u, 0u), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(global2.c, 10u)])), vec4<u32>(2400u, 36077u, global2.d.x, var_0))), vec4<u32>(global2.d.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global2.d, var_4.d), vec3<u32>(54592u, global2.c, global2.d.x)), _wgslsmith_add_u32(72321u, 21451u), ~var_4.c)));
}

