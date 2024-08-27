struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 13>;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_dot_vec2_u32(min(max(select(vec2<u32>(1u, 0u), vec2<u32>(71834u, 51273u), vec2<bool>(false, false)), vec2<u32>(1u, 1u)) | vec2<u32>(1u, 1u), abs(~(~vec2<u32>(4294967295u, 0u)))), abs(~vec2<u32>(1u, 1u)));
    global0 = _wgslsmith_clamp_u32(13895u, 1u, 1u);
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1164f, _wgslsmith_f_op_f32(-501f * _wgslsmith_f_op_f32(f32(-1f) * -187f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(566f * 456f))))));
    global1 = array<Struct_1, 13>();
    let var_1 = ~firstTrailingBit(vec2<i32>(~u_input.b.x, -u_input.a.x));
    return _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(~firstTrailingBit(vec3<i32>(u_input.a.x, 0i, u_input.a.x)) & -_wgslsmith_sub_vec3_i32(u_input.b.www, vec3<i32>(var_1.x, -49555i, u_input.b.x)), -vec3<i32>(~27031i, u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.b.wzz))), var_1.x);
}

fn func_2(arg_0: u32, arg_1: u32) -> Struct_3 {
    let var_0 = vec3<u32>(max(0u, _wgslsmith_sub_u32(reverseBits(arg_0), _wgslsmith_mult_u32(25367u << (arg_0 % 32u), 54168u))), arg_1, ~_wgslsmith_add_u32(~1u, arg_0));
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let var_1 = -693f;
    let var_2 = Struct_3(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a.x, -1i) ^ u_input.b.x, 14809i), _wgslsmith_add_vec2_i32(reverseBits(u_input.b.zy) & abs(u_input.a.zy), firstTrailingBit(min(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.wx)))), (1i >> (~(~var_0.x) % 32u)) | max(_wgslsmith_sub_i32(48504i, 0i), u_input.b.x >> (~0u % 32u)), vec4<u32>(35999u, ~firstTrailingBit(~27287u), ~0u, var_0.x), Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -1232f, var_1, -1934f), vec4<f32>(-380f, -1663f, 1463f, 404f), vec4<bool>(true, true, false, true))))))));
    return Struct_3(vec2<i32>(reverseBits(-2530i), _wgslsmith_sub_i32(func_3(), func_3())), _wgslsmith_mod_i32(-_wgslsmith_sub_i32(-23131i, -var_2.a.x), abs(~firstTrailingBit(u_input.a.x))), (countOneBits(var_2.c) ^ vec4<u32>(arg_1, var_2.c.x, 23319u, countOneBits(2729u))) << (vec4<u32>(firstLeadingBit(var_2.c.x), min(48590u >> (0u % 32u), _wgslsmith_clamp_u32(6503u, arg_1, arg_0)), _wgslsmith_div_u32(~0u, 1u), var_0.x) % vec4<u32>(32u)), var_2.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    let var_0 = reverseBits(vec2<u32>(4294967295u, 76448u));
    let var_1 = arg_1.c.xzz;
    global1 = array<Struct_1, 13>();
    global0 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(var_1.x, ~arg_1.c.x), ~arg_0.c.x), ~countOneBits(~vec2<u32>(4294967295u, arg_1.c.x)));
    let var_2 = -54383i;
    return arg_0.d;
}

fn func_1() -> vec2<i32> {
    let var_0 = func_4(func_2(~(~1u), ~firstLeadingBit(_wgslsmith_clamp_u32(57143u, 1u, 1u))), Struct_3(abs(vec2<i32>(u_input.b.x, 41591i)) >> (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), select((i32(-1i) * -2147483647i) ^ firstTrailingBit(2147483647i), 0i, !any(vec4<bool>(true, true, true, true))), vec4<u32>(34770u, ~1u, ~(~23789u), countOneBits(~1u)), func_2(_wgslsmith_dot_vec3_u32(~vec3<u32>(62210u, 4489u, 4294967295u), ~vec3<u32>(1u, 0u, 1264u)), 1u).d));
    let var_1 = var_0;
    var var_2 = _wgslsmith_sub_vec4_u32(func_2(~reverseBits(52731u), 23469u).c, vec4<u32>(4294967295u, 1u, 36502u, 1u));
    var_2 = max(min(~(vec4<u32>(var_2.x, var_2.x, 48728u, var_2.x) ^ (vec4<u32>(8145u, var_2.x, 0u, 4294967295u) & vec4<u32>(32733u, 9797u, var_2.x, var_2.x))), min(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, 1u, var_2.x, 1u), vec4<u32>(var_2.x, 0u, var_2.x, var_2.x)) & vec4<u32>(1u, var_2.x, var_2.x, 6447u), vec4<u32>(4294967295u, 12441u, 4294967295u, abs(var_2.x)))), vec4<u32>(21900u, ~min(59608u, 4294967295u) << ((_wgslsmith_div_u32(var_2.x, var_2.x) ^ var_2.x) % 32u), 39496u, 20323u));
    var var_3 = any(vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), false, _wgslsmith_mod_i32(52520i | u_input.a.x, ~(-1i)) <= u_input.b.x, _wgslsmith_f_op_f32(min(-267f, -1644f)) > _wgslsmith_f_op_f32(-var_1.a.x)));
    return vec2<i32>(_wgslsmith_add_i32(~((-1i & u_input.b.x) << (24886u % 32u)), -(~u_input.b.x | ~(-12585i))), _wgslsmith_sub_i32(u_input.b.x, 16365i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1418f, -1278f, 190f, 202f) * vec4<f32>(-413f, 568f, 486f, 1583f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-155f, -1000f, 944f, -293f))))))));
    let var_1 = abs(vec2<u32>(33509u, ~1u));
    global0 = 53414u;
    let var_2 = ~select(func_1() << (abs(vec2<u32>(1u, var_1.x)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_sub_vec2_i32(func_1(), select(vec2<i32>(-22709i, 49513i), vec2<i32>(u_input.b.x, u_input.a.x), false)), u_input.b.wx), true | (any(vec3<bool>(true, false, true)) | any(vec4<bool>(true, true, true, true))));
    global0 = 324u;
    var var_3 = var_1;
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

