struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 4> = array<u32, 4>(0u, 4294967295u, 33935u, 46994u);

var<private> global2: array<vec2<f32>, 7>;

var<private> global3: vec2<i32>;

var<private> global4: array<vec4<i32>, 22>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = array<u32, 4>();
    let var_0 = global0.b.x;
    let var_1 = Struct_1(global0.a, vec4<f32>(global0.b.x, -138f, 289f, -1000f), arg_0, global0.d, 1u << (global0.e % 32u));
    var var_2 = var_1.d;
    var var_3 = ~(~min(vec4<u32>(4294967295u, 0u, arg_0, 4294967295u), vec4<u32>(arg_0, arg_0, var_1.e, 5885u)) ^ ~(~vec4<u32>(u_input.d, global1[_wgslsmith_index_u32(15423u, 4u)], 1527u, 0u))) & firstLeadingBit(vec4<u32>(4294967295u, 55791u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.c, 1u, u_input.c.x, var_1.e), abs(vec4<u32>(1u, 24940u, 25789u, arg_0))), firstTrailingBit(var_1.c)));
    return ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(var_3.x), var_3.x), 0u);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> u32 {
    let var_0 = ~vec2<u32>(28940u, ~(~arg_2.e));
    let var_1 = max(~vec3<u32>(max(arg_1.e, 29824u), _wgslsmith_mod_u32(func_3(var_0.x), 65800u), u_input.b), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_add_u32(1u, 0u), reverseBits(0u)), _wgslsmith_sub_u32(arg_2.c, ~15165u << (u_input.b % 32u)), firstLeadingBit(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global0.c, 4u)] << (0u % 32u), ~arg_1.e))));
    global3 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(-firstTrailingBit(vec2<i32>(-2147483647i, 165i)), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -79326i), vec2<i32>(global3.x, -16959i)))), vec2<i32>(_wgslsmith_add_i32(~global3.x, abs(1i)), min(arg_3, _wgslsmith_clamp_i32(u_input.a, 41223i, global3.x)))), _wgslsmith_add_vec2_i32(firstLeadingBit(abs(-vec2<i32>(-1i, arg_3))), vec2<i32>(~13350i, global3.x)), vec2<i32>(~(~u_input.a), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(global3.x, -504i, u_input.a)) << (~vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), -vec3<i32>(1i, u_input.a, u_input.a) & ~vec3<i32>(-4328i, global3.x, arg_3))));
    var var_2 = u_input.e;
    global3 = min(select(~vec2<i32>(i32(-1i) * -25028i, _wgslsmith_clamp_i32(u_input.a, 17115i, u_input.a)), ~countOneBits(-vec2<i32>(20828i, u_input.a)), arg_0.x), vec2<i32>(~(-u_input.a) >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c, 43103u, 77605u), vec3<u32>(1u, 49058u, 61851u)) % 32u), min(~(~48360i), 0i)));
    return ~global0.e;
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global2[_wgslsmith_index_u32(~(min(arg_1.c, global1[_wgslsmith_index_u32(u_input.d, 4u)]) ^ func_2(vec3<bool>(arg_1.d, false, arg_0.x), arg_1, arg_1, global3.x)), 7u)]), global0.b.zw));
    global2 = array<vec2<f32>, 7>();
    global3 = ~(~max(select(vec2<i32>(0i, u_input.a), abs(vec2<i32>(83012i, u_input.a)), true), ~(vec2<i32>(2147483647i, 2147483647i) >> (u_input.e.xy % vec2<u32>(32u)))));
    var var_1 = _wgslsmith_f_op_f32(max(arg_2, _wgslsmith_f_op_f32(trunc(global0.b.x))));
    var var_2 = Struct_1(!vec4<bool>(all(arg_1.a), !arg_0.x, any(arg_0), !global0.a.x), _wgslsmith_f_op_vec4_f32(arg_1.b + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.b.x, global0.b.x, global0.b.x, -1000f))) * vec4<f32>(-1000f, var_0.x, 1202f, -560f))), _wgslsmith_add_u32(firstLeadingBit(1u), ~arg_1.c ^ reverseBits(23602u)), true, countOneBits(global1[_wgslsmith_index_u32(global0.e, 4u)]));
    return Struct_1(vec4<bool>(true, global0.a.x, true, !arg_0.x), global0.b, 22877u, arg_0.x, ~_wgslsmith_add_u32(global0.e, _wgslsmith_mult_u32(12779u, 1u)) ^ 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -256f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1036f - global0.b.x))));
    var var_1 = func_1(vec2<bool>(true, false), Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(global0.b + global0.b), _wgslsmith_f_op_vec4_f32(vec4<f32>(-782f, -943f, global0.b.x, 915f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 244f, -250f, global0.b.x) - global0.b)), vec4<bool>(global0.a.x, select(global0.d, true, false), !global0.a.x, global0.a.x))), global1[_wgslsmith_index_u32(global0.e, 4u)], true, 0u), _wgslsmith_f_op_f32(step(global0.b.x, 397f)));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2302f, 106f, -269f)) + _wgslsmith_div_vec3_f32(var_1.b.wwx, global0.b.yxx)) * global0.b.zzy))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b.x, -892f, global0.b.x), _wgslsmith_f_op_vec3_f32(-global0.b.yzx))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_1.b.xwz, var_1.b.wxx)) + var_1.b.yww)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.b.x, global0.b.x, -495f))))));
    global3 = _wgslsmith_mult_vec2_i32(_wgslsmith_clamp_vec2_i32(-abs(vec2<i32>(-1i, global3.x)) << (_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(76628u, 4u)], 71886u), vec2<u32>(7131u, var_1.c)), vec2<u32>(global0.e, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(122782u, 4u)], 4u)], 4u)])) % vec2<u32>(32u)), vec2<i32>(firstTrailingBit(~u_input.a), u_input.a), select(vec2<i32>(0i, u_input.a) << (vec2<u32>(global0.e, 8187u) % vec2<u32>(32u)), min(vec2<i32>(global3.x, u_input.a), -vec2<i32>(u_input.a, -1i)), false)), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, select(88850i, _wgslsmith_mod_i32(0i, u_input.a), true)), vec2<i32>(-1i, u_input.a >> (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(0u, 4u)], var_1.c) % 32u))));
    var var_3 = u_input.e;
    var var_4 = 2147483647i;
    var var_5 = Struct_1(vec4<bool>(true, true, !(-1i > u_input.a), var_1.a.x), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.b + _wgslsmith_f_op_vec4_f32(-global0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-var_2.x), -1095f, _wgslsmith_f_op_f32(f32(-1f) * -2070f)))), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 6256u, ~global1[_wgslsmith_index_u32(1u, 4u)]), vec4<u32>(0u, var_3.x, 1u, u_input.b))), all(vec4<bool>(false, all(select(vec2<bool>(true, true), vec2<bool>(global0.d, false), vec2<bool>(false, true))), any(func_1(global0.a.yx, Struct_1(vec4<bool>(false, global0.a.x, true, false), vec4<f32>(542f, var_1.b.x, global0.b.x, var_2.x), var_1.c, true, 55847u), -923f).a.yz), var_1.d)), _wgslsmith_clamp_u32(~(var_3.x >> (_wgslsmith_add_u32(31392u, global0.c) % 32u)), 1u, ~var_3.x));
    global4 = array<vec4<i32>, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, func_1(vec2<bool>(var_1.a.x, false), Struct_1(vec4<bool>(var_1.d, false, global0.d, false), vec4<f32>(var_2.x, var_2.x, global0.b.x, var_2.x), global1[_wgslsmith_index_u32(var_5.c, 4u)], false, 46340u), -479f).c, _wgslsmith_add_u32(4294967295u, var_1.c)), u_input.e), global1[_wgslsmith_index_u32(1u, 4u)], _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-140f + 457f)))))), min(abs(vec3<i32>(u_input.a | u_input.a, -u_input.a, 6272i)), vec3<i32>(select(-1i >> (var_3.x % 32u), 28549i, var_1.a.x | var_1.a.x), global3.x, -2147483647i)), max(var_1.c, abs(func_3(26023u >> (global0.c % 32u)))));
}

