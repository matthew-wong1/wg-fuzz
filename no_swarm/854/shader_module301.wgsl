struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
    c: vec4<i32>,
    d: vec3<bool>,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

var<private> global1: array<bool, 2> = array<bool, 2>(true, true);

var<private> global2: array<bool, 14>;

var<private> global3: vec2<f32> = vec2<f32>(1769f, 768f);

var<private> global4: vec3<i32> = vec3<i32>(2147483647i, 1i, -38977i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> vec2<u32> {
    let var_0 = Struct_4(select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 2u)] == global1[_wgslsmith_index_u32(u_input.c, 2u)], true, true), vec4<bool>(u_input.c < u_input.c, global2[_wgslsmith_index_u32(u_input.c, 14u)], global1[_wgslsmith_index_u32(4294967295u, 2u)], true), !(!vec4<bool>(true, false, global1[_wgslsmith_index_u32(4294967295u, 2u)], false))), vec4<bool>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(18268u, u_input.c, 29370u, 32374u), vec4<u32>(u_input.b, 4294967295u, 21381u, 0u)), 14u)], global2[_wgslsmith_index_u32(u_input.c, 14u)], any(vec3<bool>(global2[_wgslsmith_index_u32(4451u, 14u)], false, global2[_wgslsmith_index_u32(u_input.b, 14u)])), false), vec4<bool>(!any(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 2u)], false, false, global2[_wgslsmith_index_u32(u_input.b, 14u)])), select(global1[_wgslsmith_index_u32(countOneBits(u_input.b), 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)], true), true, all(select(vec4<bool>(false, global2[_wgslsmith_index_u32(0u, 14u)], false, global1[_wgslsmith_index_u32(24947u, 2u)]), vec4<bool>(true, false, global1[_wgslsmith_index_u32(23675u, 2u)], global1[_wgslsmith_index_u32(39547u, 2u)]), false)))), -2396i, ~(-_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1.a.x, -7744i, 5551i, arg_0.a.x), vec4<i32>(-57603i, global4.x, 1i, arg_0.a.x))), !select(vec3<bool>(u_input.b <= u_input.b, !global1[_wgslsmith_index_u32(4294967295u, 2u)], true), !(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 14u)], global1[_wgslsmith_index_u32(u_input.b, 2u)], global1[_wgslsmith_index_u32(u_input.c, 2u)])), true), u_input.b);
    global0 = array<Struct_4, 13>();
    global2 = array<bool, 14>();
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(277f, arg_0.b) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.x, -192f), vec2<f32>(arg_0.b, 802f), any(var_0.d))))));
    var var_1 = Struct_2(Struct_1(!global1[_wgslsmith_index_u32(~44469u, 2u)], vec2<u32>(1u, u_input.b) >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 14927u))) % vec2<u32>(32u))), Struct_1(4294967295u < (1u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.e, u_input.b, 4294967295u, 0u), vec4<u32>(45234u, var_0.e, var_0.e, 55859u)) % 32u)), firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, var_0.e), vec2<u32>(var_0.e, 40762u), vec2<u32>(var_0.e, u_input.b)) ^ _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, var_0.e), vec2<u32>(4294967295u, u_input.b)))), vec2<i32>(~_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(var_0.c, var_0.c), reverseBits(vec4<i32>(u_input.a, 5967i, -2147483647i, global4.x))), ~_wgslsmith_sub_i32(u_input.a, 0i)), Struct_1(var_0.a.x, vec2<u32>(_wgslsmith_mod_u32(5306u, 3204u), ~8048u)));
    return ~(~(var_1.d.b << (vec2<u32>(~u_input.b, 0u) % vec2<u32>(32u))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_2, abs(min(func_3(Struct_3(vec3<i32>(u_input.a, -14345i, 2147483647i), -1448f), Struct_3(vec3<i32>(u_input.a, -44539i, global4.x), global3.x)), ~vec2<u32>(arg_0, u_input.c)))), Struct_1(!global1[_wgslsmith_index_u32(~1u, 2u)], vec2<u32>(0u, abs(1u))), countOneBits(vec2<i32>(-6570i, u_input.a)), Struct_1(any(!vec2<bool>(global2[_wgslsmith_index_u32(1u, 14u)], true)), abs(~vec2<u32>(4294967295u, 4294967295u) | abs(vec2<u32>(590u, arg_0)))));
    var var_1 = Struct_3(max(abs(-vec3<i32>(1i, arg_1.x, arg_1.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-var_0.c.x, countOneBits(8682i), var_0.c.x << (arg_0 % 32u)), vec3<i32>(-u_input.d.x, _wgslsmith_clamp_i32(var_0.c.x, 0i, arg_1.x), _wgslsmith_sub_i32(var_0.c.x, 23522i)))), _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)))));
    var var_2 = _wgslsmith_clamp_i32(-_wgslsmith_dot_vec3_i32(firstLeadingBit(~vec3<i32>(u_input.a, var_1.a.x, 3180i)), -(~var_1.a)), -10586i, i32(-1i) * -arg_1.x);
    return Struct_1(!(var_1.a.x <= 1i), abs(vec2<u32>(max(~var_0.b.b.x, 13921u), _wgslsmith_mult_u32(u_input.b, 12594u))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec2<f32>) -> vec4<i32> {
    global2 = array<bool, 14>();
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 872f), global3.x, true)))));
    global1 = array<bool, 2>();
    var var_1 = Struct_4(!vec4<bool>(true, false, arg_0.b.a, all(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.d.b.x, 14u)], false, global1[_wgslsmith_index_u32(0u, 2u)]), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 14u)], false), true))), -2845i, ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(arg_0.c.x, u_input.a, u_input.a, -38454i) ^ vec4<i32>(arg_0.c.x, u_input.a, arg_0.c.x, arg_0.c.x)), firstLeadingBit(-vec4<i32>(u_input.d.x, 54139i, -9527i, global4.x))), !vec3<bool>(!any(vec2<bool>(false, false)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, arg_0.c.x, -1i), vec3<i32>(u_input.a, -13980i, -7362i)) <= _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -26562i, 1i), vec3<i32>(u_input.d.x, 51674i, u_input.a)), true), _wgslsmith_sub_u32(~(~(~arg_0.d.b.x)), u_input.b));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, global3.x, global3.x, 474f), vec4<f32>(1f, 1004f, arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -2794f))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -844f)), 1439f, 410f, var_0));
    return firstTrailingBit(firstTrailingBit(vec4<i32>(arg_0.c.x, arg_0.c.x, u_input.a ^ (arg_0.c.x ^ -2147483647i), -2147483647i | firstTrailingBit(-3861i))));
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_2(func_2(u_input.b, (vec2<i32>(u_input.d.x, u_input.d.x) << (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))) & _wgslsmith_div_vec2_i32(vec2<i32>(global4.x, 43701i), u_input.d), !(global3.x > 411f)), Struct_1(!(global2[_wgslsmith_index_u32(u_input.b, 14u)] || false), vec2<u32>(10958u, u_input.c)), ~abs(vec2<i32>(37724i, u_input.a)), func_2(u_input.b, global4.zz, !any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 14u)], global2[_wgslsmith_index_u32(u_input.c, 14u)], false, global1[_wgslsmith_index_u32(1u, 2u)])))), _wgslsmith_f_op_f32(-100f + -891f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(621f, global3.x), vec2<f32>(1000f, global3.x)))))));
    let var_1 = Struct_2(func_2(abs(2761u), vec2<i32>(global4.x, -1i), any(vec4<bool>(true != global2[_wgslsmith_index_u32(u_input.c, 14u)], u_input.c < 1u, global2[_wgslsmith_index_u32(~u_input.b, 14u)], u_input.d.x >= global4.x))), Struct_1(-1i <= ~var_0.x, _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(778u, u_input.c)), vec2<u32>(u_input.c, u_input.b)) | abs(vec2<u32>(u_input.b, 16547u))), firstLeadingBit(vec2<i32>(_wgslsmith_add_i32(-13898i, var_0.x) ^ (var_0.x >> (u_input.b % 32u)), ~(-2147483647i))), func_2(countOneBits(_wgslsmith_clamp_u32(max(u_input.b, 26634u), _wgslsmith_mod_u32(u_input.b, 21567u), abs(12974u))), u_input.d, any(select(vec2<bool>(global1[_wgslsmith_index_u32(34477u, 2u)], global1[_wgslsmith_index_u32(27442u, 2u)]), vec2<bool>(global2[_wgslsmith_index_u32(u_input.c, 14u)], global2[_wgslsmith_index_u32(u_input.c, 14u)]), true))));
    var var_2 = abs(abs(vec3<u32>(u_input.c, var_1.d.b.x, u_input.c) ^ max(~vec3<u32>(u_input.c, 127310u, var_1.d.b.x), select(vec3<u32>(u_input.b, 0u, 1u), vec3<u32>(u_input.b, u_input.b, 3278u), true))));
    global1 = array<bool, 2>();
    global2 = array<bool, 14>();
    return 4294967295u;
}

fn func_5(arg_0: vec2<f32>, arg_1: bool, arg_2: u32, arg_3: vec4<u32>) -> vec3<i32> {
    global3 = arg_0;
    global0 = array<Struct_4, 13>();
    let var_0 = vec2<bool>(!global2[_wgslsmith_index_u32(~1u, 14u)], all(select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(arg_2, 14u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], false), true), vec2<bool>(arg_1, true), !global1[_wgslsmith_index_u32(34197u, 2u)]), !select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 14u)]), vec2<bool>(true, true), vec2<bool>(false, true)), !any(vec4<bool>(false, false, false, true)))));
    var var_1 = arg_0.x;
    let var_2 = global0[_wgslsmith_index_u32(arg_3.x, 13u)];
    return _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(-59539i, global4.x)), _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(var_2.b, var_2.b)) ^ ~1i, ~(-global4.x)), -max(vec3<i32>(var_2.b, 2138i, -2147483647i), _wgslsmith_mod_vec3_i32(var_2.c.xyz, vec3<i32>(var_2.c.x, var_2.c.x, 69128i)))) | max(func_4(Struct_2(Struct_1(arg_1, vec2<u32>(64839u, arg_3.x)), Struct_1(false, vec2<u32>(0u, 7253u)), global4.yz, Struct_1(true, arg_3.wy)), _wgslsmith_f_op_f32(floor(arg_0.x)), arg_0).zzx ^ vec3<i32>(-64192i, var_2.c.x, firstLeadingBit(u_input.a)), _wgslsmith_div_vec3_i32(var_2.c.wxz >> ((arg_3.xyy ^ vec3<u32>(0u, 12414u, 4294967295u)) % vec3<u32>(32u)), ~var_2.c.zwy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_div_vec2_f32(vec2<f32>(-661f, global3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1252f, global3.x))))), global2[_wgslsmith_index_u32(~0u, 14u)], _wgslsmith_clamp_u32(~4294967295u, ~u_input.c ^ u_input.c, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c, u_input.b, 0u), abs(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)))), vec4<u32>(func_1(), 4294967295u, 18588u, 63411u));
    let var_1 = var_0;
    let var_2 = vec2<i32>(var_0.x, var_0.x);
    let var_3 = vec2<i32>(u_input.d.x, max(_wgslsmith_mod_i32(~_wgslsmith_div_i32(u_input.a, global4.x), i32(-1i) * -1i), _wgslsmith_dot_vec3_i32((vec3<i32>(global4.x, var_1.x, u_input.a) << (vec3<u32>(1u, 2549u, u_input.c) % vec3<u32>(32u))) | -var_0, var_1)));
    let var_4 = 4294967295u;
    let var_5 = Struct_3(~vec3<i32>(min(-3019i, var_0.x) ^ (i32(-1i) * -575i), _wgslsmith_sub_i32(_wgslsmith_add_i32(1i, -11005i), var_2.x), global4.x), _wgslsmith_f_op_f32(step(global3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.x))))));
    var var_6 = select(true, _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(1u, u_input.c, 25782u, 19933u))), vec4<u32>(func_3(var_5, var_5).x, u_input.c, 4294967295u ^ var_4, _wgslsmith_mult_u32(1u, 80478u))) != reverseBits(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4900u, 5433u, 60070u), vec4<u32>(u_input.c, var_4, u_input.c, u_input.b)))), var_4 != ~1u);
    var var_7 = vec3<bool>(!any(vec3<bool>(true, !global2[_wgslsmith_index_u32(1u, 14u)], func_2(var_4, vec2<i32>(14551i, var_0.x), true).a)), global1[_wgslsmith_index_u32(abs(u_input.c), 2u)], !all(!vec4<bool>(global1[_wgslsmith_index_u32(26476u, 2u)], true, false, global2[_wgslsmith_index_u32(var_4, 14u)])));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(-1031f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, _wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(global3.x * 945f)) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.x, global3.x, var_5.b, -159f))))), vec2<f32>(var_5.b, var_5.b), ~firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, 1i, var_5.a.x), var_5.a)));
}

