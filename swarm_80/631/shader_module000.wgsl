struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(false, true)), Struct_1(vec2<bool>(true, true)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = global1[_wgslsmith_index_u32(4294967295u, 24u)];
    var var_1 = global1[_wgslsmith_index_u32(75044u, 24u)];
    var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 24u)];
    var var_2 = Struct_1(var_0.a);
    global0 = abs(~vec3<i32>(abs(u_input.c), _wgslsmith_dot_vec2_i32(global0.zx, _wgslsmith_mod_vec2_i32(global0.xx, vec2<i32>(0i, -19744i))), (global0.x ^ global0.x) >> (select(74317u, u_input.b, true) % 32u)));
    return ~u_input.d;
}

fn func_3(arg_0: i32, arg_1: u32) -> vec3<i32> {
    var var_0 = _wgslsmith_add_u32(~1u, select(20615u, ~arg_1, false));
    global1 = array<Struct_1, 24>();
    var var_1 = Struct_1(!select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(true, true, true)))));
    var_0 = ~func_2(select(!vec3<bool>(true, false, var_1.a.x), select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(false, true, false), vec3<bool>(var_1.a.x, true, true)), false)).x >> (arg_1 % 32u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(386f, -515f, var_1.a.x))), _wgslsmith_f_op_f32(-710f - -811f))));
    return _wgslsmith_div_vec3_i32(~min(vec3<i32>(arg_0, global0.x, 16045i), vec3<i32>(-25i, global0.x, arg_0)) >> (vec3<u32>(arg_1, 6243u, u_input.b << (4294967295u % 32u)) % vec3<u32>(32u)), -_wgslsmith_div_vec3_i32(vec3<i32>(arg_0, arg_0, u_input.a) & vec3<i32>(u_input.c, 79114i, global0.x), -vec3<i32>(1i, u_input.a, 0i))) << (u_input.d % vec3<u32>(32u));
}

fn func_1() -> vec3<i32> {
    global0 = (vec3<i32>(-1i) * -(~(~vec3<i32>(global0.x, u_input.a, global0.x)))) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(~u_input.d.x << (u_input.d.x % 32u), 4294967295u & u_input.b, _wgslsmith_div_u32(~u_input.b, 20515u)), func_2(vec3<bool>(true, true, true))) % vec3<u32>(32u));
    global1 = array<Struct_1, 24>();
    global0 = func_3(_wgslsmith_sub_i32(_wgslsmith_mult_i32(i32(-1i) * -23458i, -1i) >> (~u_input.d.x % 32u), -(~(~2147483647i))), u_input.d.x >> ((4294967295u >> ((~u_input.b ^ 37737u) % 32u)) % 32u));
    return countOneBits(-vec3<i32>(12472i, u_input.c, u_input.a ^ -u_input.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(vec3<i32>(0i, _wgslsmith_mult_i32(countOneBits(16534i), global0.x), firstTrailingBit(u_input.a)) << (_wgslsmith_sub_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, u_input.b), u_input.d)), _wgslsmith_mod_vec3_u32(~u_input.d, _wgslsmith_clamp_vec3_u32(u_input.d, vec3<u32>(0u, u_input.d.x, 0u), vec3<u32>(33258u, u_input.b, u_input.b)))) % vec3<u32>(32u)));
    let var_1 = ~(~firstTrailingBit(~u_input.d.x)) << (u_input.b % 32u);
    var var_2 = global1[_wgslsmith_index_u32(var_1, 24u)];
    var var_3 = u_input.a;
    var var_4 = abs(vec4<i32>(global0.x, u_input.a, 81582i, countOneBits(_wgslsmith_dot_vec2_i32(global0.yz, vec2<i32>(var_0.x, var_0.x)))));
    global0 = ~((countOneBits(func_1()) >> (_wgslsmith_add_vec3_u32(u_input.d, abs(u_input.d)) % vec3<u32>(32u))) >> (vec3<u32>(~(u_input.b ^ 4294967295u), ~56344u << ((var_1 << (var_1 % 32u)) % 32u), ~(var_1 & var_1)) % vec3<u32>(32u)));
    var_4 = _wgslsmith_div_vec4_i32(-abs(select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, global0.x, var_4.x, -2147483647i), vec4<i32>(global0.x, global0.x, global0.x, 2147483647i)), select(vec4<i32>(-16469i, -30988i, -2147483647i, 37207i), vec4<i32>(-1i, -33789i, u_input.a, -15416i), true), vec4<bool>(true, var_2.a.x, true, false))), firstTrailingBit(abs((vec4<i32>(-2147483647i, -1i, 97220i, -30631i) | vec4<i32>(var_0.x, var_4.x, 2147483647i, -1i)) << (~vec4<u32>(var_1, var_1, var_1, 11713u) % vec4<u32>(32u)))));
    var_4 = _wgslsmith_sub_vec4_i32(vec4<i32>(max(_wgslsmith_mod_i32(~u_input.a, _wgslsmith_clamp_i32(var_0.x, -12554i, -1i)), -11600i), _wgslsmith_dot_vec3_i32(var_0, abs(reverseBits(vec3<i32>(u_input.a, 6588i, global0.x)))), 1i, var_0.x), vec4<i32>(u_input.a, -func_1().x, 0i, firstTrailingBit(abs(global0.x))));
    var_2 = global1[_wgslsmith_index_u32(59331u, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-322f)), _wgslsmith_f_op_f32(-1000f + -734f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1713f, -534f), vec2<f32>(109f, -635f), vec2<bool>(false, false)))))), vec2<f32>(412f, 2022f), reverseBits(_wgslsmith_mult_vec3_i32(var_4.zxz, countOneBits(var_0))));
}

