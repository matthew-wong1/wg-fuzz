struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<bool, 27> = array<bool, 27>(false, false, true, true, false, true, true, false, true, true, false, false, true, true, true, true, false, true, true, false, false, true, true, false, true, false, true);

var<private> global2: u32 = 58072u;

var<private> global3: vec3<f32>;

var<private> global4: array<i32, 9>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3() -> vec3<f32> {
    var var_0 = ~(~(~56772u));
    let var_1 = ~(~u_input.a.x);
    let var_2 = 81012u;
    var var_3 = false;
    global0 = var_1 == ~(~0u);
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-655f, _wgslsmith_f_op_f32(sign(1573f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-679f - global3.x))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(386f, 455f)), global3.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x * 414f), global3.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(-global3.x), false & global1[_wgslsmith_index_u32(4294967295u, 27u)])))));
}

fn func_2(arg_0: f32, arg_1: f32) -> vec3<f32> {
    global4 = array<i32, 9>();
    let var_0 = _wgslsmith_f_op_f32(2022f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1481f)) * -1000f)));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_f32(trunc(133f))) - vec3<f32>(arg_1, -530f, -439f)), _wgslsmith_f_op_vec3_f32(func_3()));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = !arg_2.c;
    global2 = arg_2.a;
    var var_1 = _wgslsmith_mult_vec2_i32(vec2<i32>(abs(u_input.b.x), i32(-1i) * -1i), abs(reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(8957i, -1i), vec2<i32>(u_input.b.x, arg_1.x), arg_1.wx))) << (u_input.a % vec2<u32>(32u)));
    return Struct_2(arg_2.a);
}

fn func_5(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, -547f, 1019f), vec3<f32>(global3.x, global3.x, global3.x), true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(611f, 1000f, -1541f) * vec3<f32>(global3.x, -1104f, global3.x)))))));
    var var_1 = global3.x;
    var var_2 = Struct_2(arg_1.a);
    var var_3 = select(any(select(vec3<bool>(all(vec4<bool>(true, global1[_wgslsmith_index_u32(var_2.a, 27u)], global1[_wgslsmith_index_u32(arg_1.a, 27u)], false)), !global1[_wgslsmith_index_u32(68234u, 27u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.a), 27u)]), select(!vec3<bool>(true, global1[_wgslsmith_index_u32(53484u, 27u)], true), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_1.a, 27u)], global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(4294967295u, 27u)]), vec3<bool>(true, true, true), true), global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), vec3<bool>(true, true, true))), select(!select(any(vec2<bool>(false, global1[_wgslsmith_index_u32(arg_2, 27u)])), global1[_wgslsmith_index_u32(countOneBits(23431u), 27u)], false), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 3821i, arg_0.x), ~vec3<i32>(-67807i, -17704i, arg_0.x)) != _wgslsmith_clamp_i32(-u_input.b.x, firstTrailingBit(53360i), u_input.b.x), all(vec3<bool>(!global1[_wgslsmith_index_u32(arg_2, 27u)], var_0.x >= 105f, global1[_wgslsmith_index_u32(4294967295u, 27u)]))), false);
    let var_4 = vec4<f32>(var_0.x, 274f, _wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(floor(var_0.x)));
    return global4[_wgslsmith_index_u32(u_input.a.x, 9u)] > 1i;
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    global0 = !func_5(vec2<i32>(37668i, firstLeadingBit(u_input.b.x)), func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(-173f)))), vec4<i32>(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 33285u), 9u)], ~26109i, 1i, u_input.b.x >> (u_input.a.x % 32u)), Struct_1(~8256u, 1014f, vec2<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 27u)], true), true, false)), 55983u);
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-391f, 784f, global3.x) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(218f * arg_0.x)), 2805f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - -1312f)))));
    global3 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -762f, var_0.x), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, 198f, 710f) + vec3<f32>(-555f, -396f, var_0.x)))))))), vec3<f32>(_wgslsmith_f_op_vec3_f32(func_3()).x, arg_0.x, global3.x)));
    var var_1 = Struct_1(~abs(u_input.a.x), global3.x, vec2<bool>(true, true), select(true, global1[_wgslsmith_index_u32(u_input.a.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]), true);
    var_1 = Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-235f * -669f)))), vec2<bool>(func_5(firstLeadingBit(abs(u_input.b)), Struct_2(u_input.a.x), 1u), false), (_wgslsmith_f_op_f32(f32(-1f) * -416f) < global3.x) || false, true);
    return ~(u_input.a ^ vec2<u32>(0u, _wgslsmith_mult_u32(var_1.a, var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(u_input.a.x);
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(206f, global3.x) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-917f, global3.x)))))))));
    global2 = ~(~u_input.a.x >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a.x, ~1u), 23410u) % 32u));
    global0 = true;
    let var_2 = Struct_1(_wgslsmith_clamp_u32(var_0.a, 1u, abs(var_0.a) ^ _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.a, var_1.x, 1u), func_4(vec3<f32>(671f, -1367f, -765f), vec4<i32>(-2147483647i, 29068i, u_input.b.x, u_input.b.x), Struct_1(1u, global3.x, vec2<bool>(global1[_wgslsmith_index_u32(45310u, 27u)], global1[_wgslsmith_index_u32(7355u, 27u)]), false, global1[_wgslsmith_index_u32(30106u, 27u)])).a, u_input.a.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3()).x))), !(!vec2<bool>(any(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(var_1.x, 27u)])), all(vec3<bool>(false, true, false)))), true, !all(select(vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a.x, 27u)]), !vec2<bool>(false, global1[_wgslsmith_index_u32(29375u, 27u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 27u)], false), vec2<bool>(global1[_wgslsmith_index_u32(var_1.x, 27u)], false), true))));
    let var_3 = var_0;
    let var_4 = Struct_2(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(12902u, 45616u), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.zx))).x, ~(1u << (1u % 32u))));
    global1 = array<bool, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b.x, global4[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_div_i32(-6538i, -31373i)), _wgslsmith_mod_i32(~0i, firstTrailingBit(u_input.b.x))), 1i, 1i, min(-_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(u_input.a.x, 9u)], global4[_wgslsmith_index_u32(u_input.a.x, 9u)]), u_input.b.x)), select(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.x, 1u, 48538u), vec3<u32>(21757u, var_0.a, var_0.a), vec3<u32>(var_4.a, 4294967295u, u_input.a.x))), _wgslsmith_div_vec3_u32(max(vec3<u32>(var_2.a, 4294967295u, var_0.a), vec3<u32>(var_1.x, 4294967295u, var_1.x)), ~vec3<u32>(var_4.a, var_1.x, 1u) ^ (vec3<u32>(69020u, var_4.a, 1u) ^ vec3<u32>(0u, 63393u, var_4.a))), var_2.e), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3())));
}

