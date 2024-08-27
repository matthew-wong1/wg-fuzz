struct Struct_1 {
    a: f32,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21>;

var<private> global1: array<bool, 21> = array<bool, 21>(true, true, false, true, true, false, false, false, false, true, false, false, false, false, true, false, true, true, false, true, true);

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 13>;

var<private> global4: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global3 = array<Struct_1, 13>();
    let var_0 = global2.a;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -446f) * -2389f), global2.b, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1597f + global2.d)), -542f), _wgslsmith_f_op_vec3_f32(-global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2.c.x)))) - global2.d));
    global2 = Struct_1(var_1.c.x, global4.x, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_1.c))), _wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.c.x, 944f))), _wgslsmith_f_op_f32(414f - _wgslsmith_f_op_f32(abs(global2.c.x)))))));
    global2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2315f)), global2.c.x)), -522f, -(~u_input.a) >= u_input.a)), select(true, global1[_wgslsmith_index_u32(~(~0u), 21u)], !(!(var_1.b && global1[_wgslsmith_index_u32(1u, 21u)]))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2.a, global2.d, 1263f), var_1.c))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.d, var_1.d, -1000f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(350f, 1680f, _wgslsmith_f_op_f32(147f - -893f)))), _wgslsmith_f_op_f32(round(-519f)));
    return 59190u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = ~(~(~global0[_wgslsmith_index_u32(85216u, 21u)])) >> (_wgslsmith_clamp_u32(12634u ^ global0[_wgslsmith_index_u32(17851u, 21u)], 1u, 6549u) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-333f, 2052f, -2087f, arg_0.c.x))))))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1255f + _wgslsmith_f_op_f32(f32(-1f) * -997f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(384f * _wgslsmith_f_op_f32(global2.c.x - arg_0.d)), 604f)), -230f, _wgslsmith_f_op_f32(arg_2.d * 189f)));
    var var_2 = firstTrailingBit(arg_1.x);
    let var_3 = firstLeadingBit(vec4<i32>(2147483647i, 10443i, 0i, 28675i)) | (countOneBits(-(vec4<i32>(28002i, 0i, u_input.a, arg_1.x) ^ vec4<i32>(0i, 2147483647i, u_input.a, u_input.a))) >> (~vec4<u32>(_wgslsmith_mod_u32(12475u, global0[_wgslsmith_index_u32(var_0, 21u)]), 3288u, var_0, ~var_0) % vec4<u32>(32u)));
    let var_4 = Struct_1(arg_0.c.x, any(!vec4<bool>(select(false, true, global1[_wgslsmith_index_u32(var_0, 21u)]), any(vec4<bool>(true, arg_0.b, true, arg_2.b)), false, true)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(min(126f, _wgslsmith_f_op_f32(-arg_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1241f)))), arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(arg_2.c.x)), global2.c.x, select(false, arg_0.b && false, global1[_wgslsmith_index_u32(13628u, 21u)]))), _wgslsmith_f_op_f32(f32(-1f) * -257f)));
    return vec4<bool>(global2.b, !all(vec2<bool>(all(global4.zz), global1[_wgslsmith_index_u32(~var_0, 21u)])), true, all(global4.yxy) || !var_4.b);
}

fn func_2() -> Struct_1 {
    global1 = array<bool, 21>();
    global4 = func_4(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(func_3(), 21u)], 13u)], -(~(_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, 55704i), vec2<i32>(0i, -1i)) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(2828u, 21u)], 21u)], 62804u) % vec2<u32>(32u)))), Struct_1(_wgslsmith_f_op_f32(-423f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.d, global2.a)) * global2.a)), !any(vec3<bool>(global2.b, false, true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(global2.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a)) - _wgslsmith_f_op_f32(floor(global2.a))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(945f * 1146f) + _wgslsmith_div_f32(global2.a, -524f)))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1149f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a + global2.d)) - global2.d)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.c.x, _wgslsmith_f_op_f32(global2.d - global2.d))) * _wgslsmith_f_op_f32(abs(global2.a)))));
    let var_1 = global4.x;
    var var_2 = vec2<u32>(~max(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15571u, 21u)], 21u)], 21u)], 21u)], _wgslsmith_add_u32(1u, 0u)) >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30417u, 21u)], 21u)] % 32u), firstLeadingBit(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(8653u, 21u)], 21u)])), vec2<u32>(15035u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38365u, 21u)], 21u)], 34438u)))));
    return Struct_1(_wgslsmith_f_op_f32(global2.d + 911f), global4.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, 931f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(361f)))), -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a + _wgslsmith_f_op_f32(ceil(var_0))) + -1000f));
}

fn func_1() -> Struct_1 {
    let var_0 = abs(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~abs(max(39242u, 831u)), 21u)], 21u)] ^ min(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], select(13537u, 1u, true)), ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(42798u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)]), 21u)]));
    var var_1 = 246f;
    var var_2 = global4.x;
    let var_3 = func_2();
    var var_4 = var_3;
    return global3[_wgslsmith_index_u32(abs(~_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(3176u, var_0), countOneBits(4294967295u)), _wgslsmith_add_u32(1u, ~global0[_wgslsmith_index_u32(28568u, 21u)]), global0[_wgslsmith_index_u32(firstTrailingBit(1u << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(88171u, 21u)], 21u)] % 32u)), 21u)])), 13u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34987u, 21u)], 21u)], 21u)], global0[_wgslsmith_index_u32(0u, 21u)])), countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 21u)], 21u)], 21u)], 21u)], 21u)], 0u))) | vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(8848u, 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)], 21u)])), 21u)], _wgslsmith_sub_u32(0u, global0[_wgslsmith_index_u32(1u, 21u)])), _wgslsmith_sub_vec2_u32(select(~vec2<u32>(33728u, global0[_wgslsmith_index_u32(0u, 21u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(1u, 21u)]), any(vec2<bool>(global2.b, var_0.b))), abs(vec2<u32>(global0[_wgslsmith_index_u32(1u, 21u)], 3889u)))), ~21302u, abs(global0[_wgslsmith_index_u32(abs(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(4294967295u, 21u)], 21u)]), 21u)]), 21u)]), global0[_wgslsmith_index_u32(~abs(_wgslsmith_clamp_u32(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(65930u, 21u)], 21u)], 21u)], 21u)], 21u)], 21u)], 0u) | (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 21u)], 21u)], 21u)] >> (global0[_wgslsmith_index_u32(4294967295u, 21u)] % 32u))), 21u)]);
    var var_2 = u_input.a;
    var_1 = _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(36891u, 21u)]), 21u)], global0[_wgslsmith_index_u32(~1u, 21u)], max(~19009u, global0[_wgslsmith_index_u32(1u, 21u)]), (4294967295u | var_1.x) ^ 4294967295u), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(var_1.x, 21u)], 32735u), vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(var_1.x, 21u)], var_1.x, var_1.x), vec4<u32>(global0[_wgslsmith_index_u32(var_1.x, 21u)], 29367u, var_1.x, global0[_wgslsmith_index_u32(var_1.x, 21u)])) | vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(41469u, 21u)], var_1.x), ~1u, _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(5186u, 21u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(13574u, 21u)], 21u)]), _wgslsmith_mod_u32(var_1.x, 1u))), vec4<u32>(var_1.x ^ abs(global0[_wgslsmith_index_u32(abs(106259u), 21u)]), 0u, firstLeadingBit(reverseBits(66649u)), _wgslsmith_div_u32(reverseBits(~4294967295u), 13115u)), ~(~vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(1u, 21u)], 4294967295u, 11303u) << (vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(~3060u, 21u)], var_1.x, _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(var_1.x, 21u)], global0[_wgslsmith_index_u32(59681u, 21u)])) % vec4<u32>(32u))));
    global0 = array<u32, 21>();
    let var_3 = func_2();
    let var_4 = _wgslsmith_f_op_f32(-var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~32321u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(92875u, 21u)], 21u)] >> (countOneBits(min(var_1.x, 24751u)) % 32u), 21u)]), ~0u, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.a, -(i32(-1i) * -26654i)), -2147483647i, u_input.a), vec2<u32>(_wgslsmith_mult_u32(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, var_1.x, 4294967295u), vec4<u32>(var_1.x, var_1.x, var_1.x, 1u))) << (1u % 32u), 1u));
}

