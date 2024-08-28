struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(41553i, 1i);

var<private> global1: array<vec4<u32>, 28>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_3) -> f32 {
    global0 = abs(select(select(u_input.d.zx, countOneBits(_wgslsmith_mod_vec2_i32(vec2<i32>(global0.x, -1i), u_input.c)), true), u_input.d.xy, select(select(arg_2.e.zz, arg_1.yw, any(arg_2.b)), arg_1.zz, false)));
    var var_0 = false && any(vec4<bool>(any(arg_1.yxz), all(arg_2.e.yx), false, !(u_input.a <= 15755i)));
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.c, 884f, 2878f) - vec3<f32>(1498f, -862f, arg_2.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(463f, -1958f, arg_2.d)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.a.c, 1121f, arg_2.a.c))) + vec3<f32>(-2704f, arg_2.a.c, -2116f))), vec3<i32>(_wgslsmith_sub_i32(u_input.a, global0.x), -abs(0i), abs(max(-1i, u_input.a))), global0.x, ~(~(~_wgslsmith_div_u32(4294967295u, arg_0))));
    var var_2 = Struct_4(Struct_2(arg_2.a, Struct_1(vec4<u32>(~var_1.d, _wgslsmith_add_u32(62021u, u_input.e), ~arg_0, 10420u), _wgslsmith_mult_u32(max(u_input.e, var_1.d), countOneBits(arg_0)), var_1.a.x), arg_1.x, !vec2<bool>(true, any(vec3<bool>(arg_1.x, false, arg_2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1053f))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1347f * -587f), _wgslsmith_f_op_f32(floor(arg_2.a.c))))))), arg_2.a);
    global1 = array<vec4<u32>, 28>();
    return -636f;
}

fn func_2() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -104f))) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-908f + -137f) * -521f), -2863f, true))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(371f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(9958u, vec4<bool>(false, false, false, false), Struct_3(Struct_1(vec4<u32>(1090u, 56320u, u_input.e, 4294967295u), 1u, 932f), vec2<bool>(true, false), false, -246f, vec3<bool>(false, false, true)))))))));
    var var_1 = Struct_1(select(abs(vec4<u32>(~u_input.e, 12141u, u_input.e, ~u_input.b)), ~vec4<u32>(_wgslsmith_add_u32(u_input.b, u_input.b), u_input.b << (u_input.e % 32u), firstTrailingBit(u_input.b), 46345u), select(vec4<bool>(all(vec4<bool>(false, false, true, true)), any(vec2<bool>(false, false)), false, any(vec4<bool>(true, false, false, true))), vec4<bool>(any(vec3<bool>(true, false, true)), true, true, true), true)), ~(reverseBits(~1786u) << (min(_wgslsmith_div_u32(u_input.e, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, u_input.b, 0u), vec3<u32>(u_input.e, 736u, u_input.e))) % 32u)), _wgslsmith_f_op_f32(trunc(270f)));
    var var_2 = Struct_1(max(abs(~vec4<u32>(u_input.e, u_input.b, 78318u, u_input.b)), global1[_wgslsmith_index_u32(min(7052u, ~_wgslsmith_mod_u32(var_1.b, 0u)), 28u)]), var_1.a.x, _wgslsmith_f_op_f32(step(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-545f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -473f), 973f))))));
    var var_3 = vec4<bool>(any(!vec2<bool>(false, all(vec3<bool>(false, false, false)))), any(!vec2<bool>(any(vec4<bool>(false, true, false, false)), false)), all(vec4<bool>(all(vec4<bool>(false, false, true, false)), all(vec3<bool>(true, true, false)), true, var_1.b < u_input.b)) || false, true);
    var var_4 = any(!var_3.zxw);
    return Struct_4(Struct_2(Struct_1(vec4<u32>(select(4294967295u, 4294967295u, false), _wgslsmith_mod_u32(var_2.a.x, var_2.a.x), 28540u, select(var_1.b, var_1.b, var_3.x)), 85126u, _wgslsmith_f_op_f32(min(652f, 1000f))), Struct_1(_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(var_1.a, vec4<u32>(21040u, var_2.b, 62343u, 38942u), global1[_wgslsmith_index_u32(var_2.b, 28u)]), vec4<u32>(0u, 4294967295u, 0u, 12984u) | var_2.a), var_2.b, _wgslsmith_f_op_f32(-var_1.c)), all(!(!vec4<bool>(true, var_3.x, var_3.x, false))), vec2<bool>(var_3.x, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1309f * var_2.c)))), Struct_1(~firstTrailingBit(vec4<u32>(4294967295u, var_2.a.x, 24318u, var_1.a.x)), ~firstTrailingBit(28879u), _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) + -644f)))));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: Struct_4, arg_3: i32) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_1(~_wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.a.b.a.x, 4294967295u, arg_2.c.b, 4294967295u), ~vec4<u32>(var_0.d, 0u, 4294967295u, 11803u)) >> (~firstTrailingBit(arg_2.c.a ^ vec4<u32>(2224u, 43838u, 1u, var_0.d)) % vec4<u32>(32u)), ~countOneBits(max(min(38263u, var_0.d), ~4294967295u)), _wgslsmith_f_op_f32(ceil(-1469f)));
    let var_2 = arg_2;
    let var_3 = arg_2.a.d.x;
    global0 = vec2<i32>(-2147483647i, arg_3);
    return arg_2.a.d.x;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(696f - _wgslsmith_f_op_f32(select(375f, -276f, true))))) * -1377f);
    var var_1 = _wgslsmith_f_op_f32(select(var_0, -1000f, func_4(Struct_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1037f, var_0, -241f)), u_input.d, -u_input.d.x, ~(~u_input.b)), u_input.d.x, func_2(), _wgslsmith_add_i32(_wgslsmith_mult_i32(~u_input.d.x, u_input.c.x >> (u_input.e % 32u)), ~u_input.a))));
    global0 = ~(~_wgslsmith_mult_vec2_i32(vec2<i32>(abs(u_input.c.x), -1i), -u_input.c));
    var var_2 = -(~global0.x);
    let var_3 = ~(select(u_input.d, u_input.d, vec3<bool>(true, true, true)) & _wgslsmith_clamp_vec3_i32(-vec3<i32>(28989i, -34972i, u_input.c.x) ^ vec3<i32>(-17019i, u_input.a, u_input.a), select(vec3<i32>(-9300i, global0.x, -2147483647i), _wgslsmith_div_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, 0i, global0.x)), vec3<bool>(false, false, true)), u_input.d));
    return ~select(~max(u_input.a, var_3.x) | (1i & u_input.a), u_input.d.x, true);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(1u, -_wgslsmith_add_i32(countOneBits(global0.x ^ 1i), abs(func_1())));
}

