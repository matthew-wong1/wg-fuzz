struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: vec3<i32> = vec3<i32>(55269i, -45151i, 13668i);

var<private> global2: vec4<i32> = vec4<i32>(-1i, 1i, -1i, -20248i);

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    var var_0 = vec2<i32>(-48383i, global1.x) & global2.xx;
    var var_1 = arg_0.a.zzz;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(340f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-800f * -1363f))))));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -985f), -374f, true)))));
    var var_3 = Struct_1(arg_0.a.zx);
    return select(~(~firstTrailingBit(45371i)), global0[_wgslsmith_index_u32(1u, 31u)], false);
}

fn func_2(arg_0: f32) -> vec2<i32> {
    global2 = vec4<i32>(_wgslsmith_sub_i32(1i, -func_3(Struct_3(vec4<u32>(90167u, 34846u, 1u, 0u), vec4<bool>(true, true, true, true)), true, 1u, vec2<bool>(true, true))), -1i | firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.a.x, -1i), u_input.a.x ^ u_input.a.x)), _wgslsmith_add_i32(-(~(~global1.x)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~17035i, _wgslsmith_add_i32(global2.x, -14518i)), global1.x)), select(_wgslsmith_mod_i32(-1i, 45084i), 7591i, any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), true))));
    var var_0 = _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(57965u, 1u, 0u), vec3<u32>(113213u, 9498u, 1u)), firstTrailingBit(34858u), ~0u, ~4294967295u), ~vec4<u32>(1u, 1u, 1u, 1u)), ~(~min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(11470u, 48724u, 83811u, 1u))), ~(~reverseBits(select(vec4<u32>(94268u, 59861u, 15499u, 1u), vec4<u32>(4294967295u, 13856u, 1u, 4294967295u), true))));
    global1 = vec3<i32>(-2147483647i, global2.x, u_input.a.x);
    return ~global1.zz;
}

fn func_1(arg_0: u32, arg_1: bool) -> vec2<u32> {
    let var_0 = ~_wgslsmith_mult_vec3_u32(abs(~abs(vec3<u32>(arg_0, arg_0, 4294967295u))), vec3<u32>(34007u, 4294967295u >> (arg_0 % 32u), ~select(arg_0, 31467u, arg_1)));
    global2 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(-func_2(-931f), func_2(_wgslsmith_f_op_f32(993f - -115f))), 1i, min(abs(global0[_wgslsmith_index_u32(var_0.x, 31u)]), ~global0[_wgslsmith_index_u32(var_0.x, 31u)]), -_wgslsmith_div_i32(global2.x, global0[_wgslsmith_index_u32(arg_0, 31u)]) | 21987i), ~vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(3696i, 21315i), _wgslsmith_mod_i32(0i, global1.x)), 28538i, 1i, u_input.a.x));
    global2 = -select(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(29987i, -1i, -2147483647i, global2.x), vec4<i32>(3022i, 42121i, 28622i, global1.x)) & ~vec4<i32>(global0[_wgslsmith_index_u32(arg_0, 31u)], global2.x, global1.x, global1.x), -vec4<i32>(global0[_wgslsmith_index_u32(0u, 31u)], global1.x, global2.x, u_input.a.x) ^ select(vec4<i32>(42204i, u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(arg_0, 31u)]), vec4<i32>(-7015i, -1i, global1.x, 1i), arg_1)), ~(~_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, -1i, 0i, 0i), vec4<i32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(arg_0, 31u)], 32296i))), select(select(!vec4<bool>(arg_1, false, false, arg_1), select(vec4<bool>(arg_1, true, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, false), true), arg_1), vec4<bool>(all(vec3<bool>(true, false, arg_1)), true, true, arg_1), select(vec4<bool>(arg_1, arg_1, arg_1, true), select(vec4<bool>(arg_1, true, false, false), vec4<bool>(false, arg_1, arg_1, true), false), true)));
    var var_1 = firstLeadingBit(35382u);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) + 1205f) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2046f, -1092f)))), _wgslsmith_f_op_f32(abs(-512f)));
    return _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(firstLeadingBit(vec2<u32>(arg_0, arg_0))), vec2<u32>(var_0.x, max(40922u, var_0.x))), var_0.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 9233u;
    global0 = array<i32, 31>();
    global1 = vec3<i32>(u_input.a.x, u_input.a.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(19297u, 1u)) ^ func_1(4294967295u, false)) % 32u), min(~reverseBits(global0[_wgslsmith_index_u32(func_1(73054u, true).x, 31u)]), min(25920i, -24355i)));
    global1 = vec3<i32>(_wgslsmith_div_i32(select(-1i, _wgslsmith_clamp_i32(-2041i, u_input.a.x, u_input.a.x), any(vec4<bool>(false, false, true, false))), global0[_wgslsmith_index_u32(~1u, 31u)] ^ 2147483647i) << (select(4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 49870u, 83950u)), true) % 32u), func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-726f, -1014f, true))))).x, -27415i);
    let var_1 = Struct_1(reverseBits(vec2<u32>(1u, 1u)));
    global1 = ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, countOneBits(global2.ywz)) << (vec3<u32>(~0u, ~55152u, ~var_1.a.x) % vec3<u32>(32u)), global2.wyy);
    var var_2 = Struct_2(Struct_1(var_1.a));
    global0 = array<i32, 31>();
    var_2 = Struct_2(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1399f, -850f))) - _wgslsmith_f_op_f32(f32(-1f) * -788f))), global2.x, ~(~(vec4<u32>(47023u, 35118u, 0u, var_2.a.a.x) & vec4<u32>(18359u, 4294967295u, 4294967295u, var_1.a.x))), var_1.a.x);
}

