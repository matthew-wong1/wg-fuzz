struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
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

var<private> global0: array<i32, 21>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: f32) -> Struct_1 {
    global0 = array<i32, 21>();
    return arg_0;
}

fn func_3() -> vec4<u32> {
    let var_0 = vec3<u32>(u_input.b, 6980u, ~u_input.b);
    global0 = array<i32, 21>();
    return vec4<u32>(~u_input.b, 32101u, _wgslsmith_mod_u32(7579u, _wgslsmith_dot_vec2_u32(~var_0.xz, _wgslsmith_mod_vec2_u32(var_0.xx, var_0.zy))), ~(~0u)) | ~select(countOneBits(reverseBits(vec4<u32>(44734u, 78472u, u_input.b, u_input.b))), vec4<u32>(u_input.b, ~var_0.x, u_input.b, u_input.b), vec4<bool>(true, true, true, true));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_u32(select(vec2<u32>(func_2(func_2(arg_1, 32399u, arg_3), 0u, _wgslsmith_f_op_f32(ceil(-1377f))).b, u_input.b), vec2<u32>(firstLeadingBit(4294967295u), ~arg_2.x), select(!vec2<bool>(arg_1.c, true), select(vec2<bool>(true, false), !vec2<bool>(false, arg_1.c), !vec2<bool>(false, arg_1.c)), select(!vec2<bool>(arg_0.c, arg_0.c), !vec2<bool>(true, arg_1.c), select(vec2<bool>(arg_1.c, arg_0.c), vec2<bool>(false, false), vec2<bool>(arg_1.c, arg_0.c))))), ~arg_2.xy, _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(arg_2.x, arg_1.b))), ~select(firstLeadingBit(arg_2.zx), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, 101683u), arg_2.zw), select(vec2<bool>(arg_1.c, false), vec2<bool>(true, true), arg_1.c))));
    var var_1 = Struct_1(vec3<i32>(arg_0.a.x, (_wgslsmith_clamp_i32(arg_1.e.x, u_input.a.x, arg_0.d) & -u_input.a.x) | arg_1.e.x, 2147483647i), u_input.b, all(select(vec4<bool>(arg_0.c, arg_0.c, true, true), !vec4<bool>(arg_1.c, arg_1.c, true, arg_0.c), vec4<bool>(false, arg_0.c, true, arg_1.c))) & arg_1.c, ~firstLeadingBit(func_2(arg_0, _wgslsmith_sub_u32(arg_2.x, 57590u), _wgslsmith_f_op_f32(1000f - arg_3)).e.x), vec2<i32>(~(-u_input.a.x), -11191i));
    let var_2 = arg_1;
    var_0 = arg_2.wz;
    var_1 = var_2;
    return Struct_1(var_1.a, firstLeadingBit(var_0.x) ^ var_1.b, any(!vec3<bool>(var_1.c, arg_0.c, arg_1.c)), var_1.d, vec2<i32>(-(_wgslsmith_div_i32(arg_0.e.x, var_1.e.x) >> (1135u % 32u)), countOneBits(-639i)));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    let var_0 = vec2<f32>(-2280f, -1948f);
    let var_1 = 251f;
    var var_2 = func_4(func_2(arg_1, _wgslsmith_sub_u32(~abs(arg_1.b), 4294967295u), var_0.x), func_2(func_2(Struct_1(~vec3<i32>(1i, -5753i, 9849i), _wgslsmith_div_u32(arg_1.b, 0u), all(vec2<bool>(false, arg_1.c)), 34967i, vec2<i32>(u_input.a.x, 0i)), arg_1.b, -1182f), _wgslsmith_add_u32(~3395u, 1u) & arg_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-2544f, -952f)), var_1)), ~(~_wgslsmith_mult_vec4_u32(func_3(), _wgslsmith_div_vec4_u32(vec4<u32>(1u, arg_1.b, arg_1.b, 10055u), vec4<u32>(1u, arg_1.b, 0u, 59435u)))), _wgslsmith_f_op_f32(1399f - _wgslsmith_f_op_f32(f32(-1f) * -859f)));
    var var_3 = _wgslsmith_sub_i32(23666i, 10715i);
    var var_4 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-664f, _wgslsmith_f_op_f32(min(var_1, var_0.x)))))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1364f * _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    return Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(_wgslsmith_div_i32(u_input.a.x, -984i)), global0[_wgslsmith_index_u32(u_input.b, 21u)], -abs(-1i)), -vec3<i32>(15323i, -2147483647i, firstTrailingBit(global0[_wgslsmith_index_u32(3581u, 21u)]))), 0u, all(!(!vec3<bool>(arg_1.c, var_2.c, arg_1.c))), ~max(arg_1.a.x, -5213i), vec2<i32>(_wgslsmith_mult_i32(~global0[_wgslsmith_index_u32(func_2(Struct_1(var_2.a, 2901u, false, 1i, u_input.a), arg_1.b, -813f).b, 21u)], i32(-1i) * -11686i), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(select(true, ~(~u_input.b) >= u_input.b, false), Struct_1(~vec3<i32>(abs(u_input.a.x), 23661i, -31578i), u_input.b, (true & all(vec4<bool>(true, true, true, true))) && false, -max(~global0[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<i32>(1i, ~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a))));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -816f));
    var var_3 = func_1(true, var_1);
    let var_4 = ~vec3<u32>(var_1.b, var_0.b, firstTrailingBit(func_4(Struct_1(vec3<i32>(1i, var_3.e.x, var_1.e.x), var_0.b, true, 2147483647i, vec2<i32>(var_0.d, var_3.a.x)), var_1, vec4<u32>(1u, 0u, var_1.b, 132491u), _wgslsmith_f_op_f32(var_2 - var_2)).b));
    var_3 = Struct_1(vec3<i32>(5780i, abs(countOneBits(_wgslsmith_clamp_i32(u_input.a.x, var_3.a.x, u_input.a.x))), 0i), firstLeadingBit(~(~var_4.x)), false, _wgslsmith_add_i32(-countOneBits(24452i), abs(-4443i)), func_4(Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, -23621i), vec3<i32>(var_3.e.x, 1i, var_3.a.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, var_3.b, 0u, 13675u), vec4<u32>(0u, var_1.b, var_4.x, 0u)), true, var_1.a.x, vec2<i32>(2147483647i, 29148i)), func_4(Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(33337u, 21u)], -63540i, 27940i), 4294967295u, false, -2147483647i, var_1.a.yx), var_0, min(vec4<u32>(var_3.b, 29836u, u_input.b, 0u), vec4<u32>(100817u, 4294967295u, 13925u, var_3.b)), var_2), ~vec4<u32>(0u, var_3.b, var_3.b, 8859u), _wgslsmith_f_op_f32(min(var_2, 1113f))).e >> (var_4.yy % vec2<u32>(32u)));
    var_3 = Struct_1(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(max(vec3<i32>(var_3.d, global0[_wgslsmith_index_u32(15208u, 21u)], -2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(var_4.x, 21u)], u_input.a.x, -23521i) | vec3<i32>(var_1.e.x, -1i, 16989i)), var_3.a, var_1.a), abs(var_3.a) ^ ~vec3<i32>(1702i, -2147483647i, 2147483647i)), func_3().x, true, _wgslsmith_dot_vec3_i32((var_3.a ^ ~var_0.a) ^ min(~var_0.a, var_3.a), func_1(!(var_1.c | false), Struct_1(~var_1.a, func_1(false, var_0).b, true, 0i, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.e.x, global0[_wgslsmith_index_u32(var_4.x, 21u)]), var_0.a.yz))).a), reverseBits(vec2<i32>(i32(-1i) * -global0[_wgslsmith_index_u32(11985u, 21u)], 757i)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(1790f, 1402f, _wgslsmith_f_op_f32(round(var_2)), -1262f));
}

