struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(-55840i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(0i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(51155i), Struct_1(-32697i), Struct_1(17945i), Struct_1(-50891i), Struct_1(66750i), Struct_1(1i), Struct_1(-24308i), Struct_1(1i), Struct_1(48767i), Struct_1(1i), Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(1427i), Struct_1(-1i), Struct_1(1i), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(i32(-2147483648)), Struct_1(1i), Struct_1(2147483647i), Struct_1(2147483647i), Struct_1(-15636i));

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<bool>, arg_2: vec2<i32>) -> vec2<u32> {
    var var_0 = firstLeadingBit(_wgslsmith_dot_vec3_i32(global1.b.xyx, vec3<i32>(-1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(u_input.a, global1.b.zz), u_input.a.x), firstTrailingBit(u_input.a.x ^ u_input.a.x))));
    let var_1 = 152f;
    let var_2 = Struct_3(~global1.a, ~global1.b, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(global1.a, global1.a, arg_1.yz), global1.a), 29u)]);
    global0 = array<Struct_1, 29>();
    var_0 = u_input.a.x;
    return _wgslsmith_add_vec2_u32(~vec2<u32>(var_2.a.x, countOneBits(var_2.a.x)) & (vec2<u32>(firstTrailingBit(global1.a.x), firstTrailingBit(69201u)) >> (vec2<u32>(_wgslsmith_clamp_u32(1617u, global1.a.x, var_2.a.x), 0u) % vec2<u32>(32u))), _wgslsmith_clamp_vec2_u32(~vec2<u32>(~2187u, _wgslsmith_mult_u32(var_2.a.x, var_2.a.x)), ~(~(~var_2.a)), ~vec2<u32>(var_2.a.x | var_2.a.x, var_2.a.x)));
}

fn func_2(arg_0: vec2<f32>) -> vec3<bool> {
    global0 = array<Struct_1, 29>();
    global1 = Struct_3(~func_3(firstLeadingBit(global1.a.x) <= global1.a.x, vec3<bool>(true, true, true), abs(~u_input.a)), ~vec4<i32>(-_wgslsmith_mod_i32(0i, -13098i), -reverseBits(global1.b.x), ~u_input.a.x, firstLeadingBit(-44333i) ^ _wgslsmith_div_i32(global1.b.x, u_input.a.x)), global0[_wgslsmith_index_u32(min(~(~(~global1.a.x)), _wgslsmith_add_u32(~global1.a.x, 5565u)), 29u)]);
    var var_0 = vec3<u32>(~firstTrailingBit(global1.a.x << (global1.a.x % 32u)) << (_wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 14199u, 30447u), vec3<u32>(global1.a.x, 0u, global1.a.x)), 1u) % 32u), firstTrailingBit(4294967295u), ~(~_wgslsmith_sub_u32(abs(global1.a.x), abs(1u))));
    global0 = array<Struct_1, 29>();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1893f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))), -1932f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(f32(-1f) * -1119f))) * -605f));
    return vec3<bool>(select(all(vec2<bool>(all(vec3<bool>(false, false, true)), any(vec3<bool>(false, false, false)))), true, true), true, true);
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = select(func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-3766f, 1704f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(647f, -503f), vec2<f32>(-488f, -1096f)))))), vec3<bool>(~global1.a.x == ~_wgslsmith_add_u32(26767u, global1.a.x), false, false), vec3<bool>(true, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), true));
    let var_1 = select(_wgslsmith_sub_u32(abs(_wgslsmith_sub_u32(9253u, global1.a.x)) >> (_wgslsmith_mod_u32(global1.a.x >> (global1.a.x % 32u), global1.a.x) % 32u), _wgslsmith_sub_u32(global1.a.x << (_wgslsmith_add_u32(global1.a.x, global1.a.x) % 32u), global1.a.x)), ~0u >> (~(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, global1.a.x), global1.a) ^ _wgslsmith_sub_u32(0u, 0u)) % 32u), var_0.x);
    var var_2 = Struct_3(func_3(any(var_0.xx), vec3<bool>(false, !var_0.x, true || var_0.x), vec2<i32>(-27710i << (abs(var_1) % 32u), firstTrailingBit(-global1.b.x))), -min(vec4<i32>(u_input.a.x, 2147483647i, ~16814i, i32(-1i) * -2087i), vec4<i32>(_wgslsmith_mod_i32(global1.b.x, arg_0), 18209i, ~arg_0, 0i)), Struct_1(_wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(global1.b, vec4<i32>(arg_0, -2147483647i, global1.c.a, u_input.a.x)), global1.b)));
    let var_3 = var_2.a.x;
    var_2 = Struct_3(var_2.a, -var_2.b, var_2.c);
    return Struct_2(945f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1397f;
    let var_1 = _wgslsmith_f_op_f32(ceil(-1831f));
    var var_2 = func_1(_wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(~global1.b.zw, firstLeadingBit(u_input.a))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, -374f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)), _wgslsmith_f_op_f32(var_1 + var_2.a))));
}

