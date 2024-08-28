struct Struct_1 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 14> = array<i32, 14>(2147483647i, 2147483647i, -30120i, 1527i, 0i, i32(-2147483648), -40279i, 2147483647i, 1i, i32(-2147483648), 7571i, 2147483647i, 1i, 0i);

var<private> global3: array<Struct_3, 27>;

var<private> global4: f32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> f32 {
    let var_0 = all(!vec3<bool>(true, any(vec4<bool>(true, true, true, true)), !any(vec3<bool>(true, false, true))));
    var var_1 = 1u;
    var var_2 = firstLeadingBit(global1.x);
    let var_3 = vec2<bool>(true, true);
    var_1 = global1.x;
    return _wgslsmith_f_op_f32(select(304f, 948f, true));
}

fn func_2() -> Struct_1 {
    global4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(-36594i))));
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-220f, 1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1619f - 891f)), -517f)), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-488f, 420f)))));
    var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1067f, var_0.x, 620f) - vec4<f32>(-1741f, var_0.x, -1119f, var_0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, -1000f, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(var_0.x, -815f, var_0.x, 547f)))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-957f * var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1412f)) - _wgslsmith_f_op_f32(floor(var_0.x))), -1607f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) - _wgslsmith_f_op_f32(trunc(-318f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1214f, -818f, _wgslsmith_f_op_f32(min(-149f, 445f)), -1000f)), select(vec4<bool>(any(vec2<bool>(true, false)), true, global2[_wgslsmith_index_u32(74167u, 14u)] > -1i, true), vec4<bool>(true, false, true, all(vec4<bool>(false, true, false, false))), true)))));
    var var_1 = vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(abs(firstTrailingBit(vec3<u32>(global1.x, global1.x, global1.x))), firstLeadingBit(max(vec3<u32>(0u, 68436u, global1.x), vec3<u32>(global1.x, 21061u, 1u)))), ~4294967295u), _wgslsmith_clamp_u32(global1.x, ~firstLeadingBit(global1.x), firstLeadingBit(64586u & global1.x)) ^ 29428u, global1.x >> (reverseBits(_wgslsmith_sub_u32(54310u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.x), global1.yx))) % 32u));
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-943f - _wgslsmith_f_op_f32(var_0.x * -597f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-395f * var_0.x) - _wgslsmith_f_op_f32(-var_0.x)) + var_0.x)));
    return Struct_1(_wgslsmith_dot_vec2_i32(max(firstLeadingBit(vec2<i32>(global2[_wgslsmith_index_u32(0u, 14u)], u_input.a)), vec2<i32>(-global2[_wgslsmith_index_u32(var_1.x, 14u)], global2[_wgslsmith_index_u32(global1.x, 14u)] << (var_1.x % 32u))), vec2<i32>(select(0i, -2147483647i, true), _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global2[_wgslsmith_index_u32(1u, 14u)], u_input.c.x, global2[_wgslsmith_index_u32(4294967295u, 14u)])), firstLeadingBit(u_input.c.xwx)))), _wgslsmith_f_op_vec3_f32(-var_0.xxz));
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(abs(394f));
    let var_1 = -403f;
    global1 = select(vec3<u32>(global1.x << (58763u % 32u), 0u, abs(4294967295u)), _wgslsmith_div_vec3_u32(firstTrailingBit(~(vec3<u32>(42137u, 4294967295u, 1u) | vec3<u32>(0u, 0u, global1.x))), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(global1.x, 0u, 0u) ^ vec3<u32>(38401u, global1.x, global1.x), vec3<u32>(1u, 0u, 4294967295u)), ~vec3<u32>(42327u, 13246u, 24356u))), true);
    let var_2 = !select(true, true, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, global1.x), select(vec2<u32>(global1.x, global1.x), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, true))) > 0u);
    var var_3 = func_2();
    return global3[_wgslsmith_index_u32(global1.x, 27u)];
}

fn func_4(arg_0: i32, arg_1: Struct_4, arg_2: Struct_5) -> vec3<u32> {
    let var_0 = func_2();
    global4 = -705f;
    var var_1 = Struct_4(1i);
    var var_2 = select(false, false, true);
    global3 = array<Struct_3, 27>();
    return countOneBits(~(~(~(~vec3<u32>(global1.x, 0u, 4294967295u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_3, 27>();
    global1 = func_4(~1i, Struct_4(~(-global2[_wgslsmith_index_u32(64205u, 14u)] << (global1.x % 32u))), Struct_5(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-103f, 254f) * vec2<f32>(-1000f, 839f))))), 4294967295u, func_1()));
    global4 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-func_1().b.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_2().b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1715f - 1000f))))));
    global2 = array<i32, 14>();
    global1 = vec3<u32>(firstTrailingBit(global1.x), global1.x, global1.x) & _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, countOneBits(57808u ^ global1.x), abs(reverseBits(global1.x))), _wgslsmith_mult_vec3_u32(func_4(-2147483647i, Struct_4(-24159i), Struct_5(vec2<f32>(1000f, -202f), 11725u, Struct_3(vec3<bool>(true, false, true), Struct_2(Struct_1(-39456i, vec3<f32>(1599f, 1000f, 782f)))))) << ((vec3<u32>(7060u, 13253u, 1u) << (vec3<u32>(4294967295u, global1.x, global1.x) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(~global1.x, firstTrailingBit(global1.x), ~global1.x)));
    let var_0 = -(~(u_input.d >> (min(global1.x >> (1u % 32u), 4294967295u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(vec4<u32>(global1.x, global1.x, _wgslsmith_mod_u32(global1.x, 35167u), _wgslsmith_clamp_u32(global1.x, 29633u, 47013u))) | ~vec4<u32>(1u, 1u, _wgslsmith_clamp_u32(global1.x, global1.x, global1.x), global1.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_4(u_input.a)))), -534f, _wgslsmith_f_op_f32(f32(-1f) * -2058f)), ~vec3<u32>(countOneBits(~global1.x), 30380u, 1u), ~_wgslsmith_sub_i32(481i, _wgslsmith_sub_i32(u_input.c.x, u_input.b)));
}

