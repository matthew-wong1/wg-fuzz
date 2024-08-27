struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 10>;

var<private> global1: array<bool, 31>;

var<private> global2: array<vec2<bool>, 17> = array<vec2<bool>, 17>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global3: array<vec2<f32>, 1>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<f32>) -> f32 {
    var var_0 = Struct_1(~arg_2.a);
    var var_1 = arg_3.yx;
    var var_2 = Struct_3(!any(!(!vec2<bool>(arg_1.a.x, global1[_wgslsmith_index_u32(7601u, 31u)]))), true, Struct_1(countOneBits(var_0.a)), vec4<bool>((arg_3.x > _wgslsmith_f_op_f32(min(1699f, arg_3.x))) && (~arg_1.d.x > _wgslsmith_div_u32(arg_2.a.x, arg_1.d.x)), !(any(arg_1.a.wwy) || any(arg_1.a)), _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(min(1000f, arg_3.x))) <= -1295f, true && arg_1.a.x), arg_1);
    global1 = array<bool, 31>();
    var var_3 = vec3<i32>(_wgslsmith_add_i32(countOneBits(u_input.a.x), u_input.a.x), u_input.a.x, -u_input.a.x);
    return _wgslsmith_f_op_f32(f32(-1f) * -752f);
}

fn func_2(arg_0: vec4<bool>) -> Struct_2 {
    global0 = array<vec4<f32>, 10>();
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-958f * _wgslsmith_f_op_f32(func_3(vec3<u32>(1u, 1u, 1u), Struct_2(arg_0, Struct_1(vec4<u32>(27212u, 1u, 6588u, 80730u)), Struct_1(vec4<u32>(39571u, 4294967295u, 4294967295u, 28817u)), vec3<u32>(69390u, 28971u, 1u)), Struct_1(vec4<u32>(0u, 13414u, 30575u, 33023u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(279f, 1998f, 623f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1378f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(364f)))), 158f, _wgslsmith_f_op_f32(round(666f))));
    let var_1 = u_input.a;
    var var_2 = Struct_3(arg_0.x, any(vec2<bool>(true, false)), Struct_1(vec4<u32>(54144u, 1u, ~(~4294967295u), 0u)), select(select(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), arg_0, vec4<bool>(!arg_0.x, global1[_wgslsmith_index_u32(1u, 31u)], true, any(vec2<bool>(true, true)))), vec4<bool>(all(arg_0.wz), true, arg_0.x, !(!arg_0.x)), !any(!vec2<bool>(arg_0.x, false))), Struct_2(!vec4<bool>(!global1[_wgslsmith_index_u32(43399u, 31u)], true, select(arg_0.x, false, true), arg_0.x), Struct_1(vec4<u32>(0u >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(50351u, 85026u), vec2<u32>(0u, 28517u)), ~57592u, _wgslsmith_dot_vec3_u32(vec3<u32>(45277u, 0u, 50852u), vec3<u32>(18552u, 65560u, 0u)))), Struct_1(~(~vec4<u32>(12823u, 3883u, 4294967295u, 11661u))), vec3<u32>(1u, 1u, 1u) & select(vec3<u32>(1u, 1u, 1u), countOneBits(vec3<u32>(0u, 1u, 39184u)), true)));
    var_2 = Struct_3(arg_0.x, !(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-8203i, u_input.a.x), u_input.a.x, ~u_input.a.x) >= -(~29571i)), Struct_1(vec4<u32>(~1u, 21358u, 21598u, _wgslsmith_clamp_u32(var_2.c.a.x, 16418u, 1u))), !select(vec4<bool>(!global1[_wgslsmith_index_u32(0u, 31u)], arg_0.x, var_2.d.x, true), select(var_2.d, !vec4<bool>(var_2.e.a.x, var_2.d.x, arg_0.x, false), select(arg_0, vec4<bool>(true, true, false, false), arg_0.x)), vec4<bool>(true, any(vec3<bool>(var_2.e.a.x, var_2.e.a.x, true)), any(arg_0), true)), Struct_2(var_2.d, Struct_1(vec4<u32>(var_2.e.d.x, var_2.c.a.x, 4294967295u, firstLeadingBit(1125u))), var_2.c, ~var_2.e.c.a.xzz));
    return Struct_2(arg_0, Struct_1(abs(vec4<u32>(var_2.e.c.a.x, ~4294967295u, var_2.c.a.x, 1u))), Struct_1(~var_2.c.a), firstTrailingBit(var_2.c.a.yzy));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = func_2(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~arg_0.wz & _wgslsmith_sub_vec2_u32(arg_0.yz, arg_0.yz), vec2<u32>(arg_0.x, arg_0.x)), 31u)], global1[_wgslsmith_index_u32(countOneBits(4294967295u), 31u)], !(~u_input.a.x >= u_input.a.x), global1[_wgslsmith_index_u32(select(~46233u, ~arg_0.x, true) << (firstTrailingBit(0u) % 32u), 31u)]));
    let var_1 = global0[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(631u, ~arg_0.x)), 42941u), 10u)];
    let var_2 = arg_1.yy;
    var_0 = func_2(!var_0.a);
    let var_3 = _wgslsmith_dot_vec3_i32(min(max(_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.a.x, u_input.a.x, -3864i), ~vec3<i32>(u_input.a.x, 0i, u_input.a.x)), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.a.x, u_input.a.x, -7258i), ~vec3<i32>(1i, 19783i, u_input.a.x))), abs(vec3<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)))), ~(~vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) & abs(vec3<i32>(0i, u_input.a.x, u_input.a.x))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(max(2147483647i, -1i), abs(-2147483647i), u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, -37563i, u_input.a.x), ~vec3<i32>(u_input.a.x, u_input.a.x, 1i))));
    return Struct_1(min(~min(var_0.b.a, ~var_0.c.a), _wgslsmith_sub_vec4_u32(arg_0, ~vec4<u32>(var_0.c.a.x, 73143u, 36525u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -firstTrailingBit(-3744i);
    var var_1 = -1199f;
    var var_2 = global1[_wgslsmith_index_u32(38388u, 31u)];
    global3 = array<vec2<f32>, 1>();
    global1 = array<bool, 31>();
    global2 = array<vec2<bool>, 17>();
    var var_3 = Struct_3(global1[_wgslsmith_index_u32(1u, 31u)], any(vec2<bool>(true, true)), func_1(~select(~vec4<u32>(1u, 15336u, 22679u, 11581u), vec4<u32>(1u, 1u, 1u, 1u), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(1u, 31u)], false)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-919f, 1073f, 1000f))))), vec4<bool>(!any(vec4<bool>(false, global1[_wgslsmith_index_u32(35383u, 31u)], false, true)), func_2(vec4<bool>(!global1[_wgslsmith_index_u32(4294967295u, 31u)], true, any(vec2<bool>(global1[_wgslsmith_index_u32(0u, 31u)], global1[_wgslsmith_index_u32(4294967295u, 31u)])), !global1[_wgslsmith_index_u32(35561u, 31u)])).a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_1(vec4<u32>(69212u, 15024u, 42796u, 41818u), vec3<f32>(-1039f, 1930f, 1000f)).a, vec4<u32>(1u, 1u, 1u, 1u)) | ~1u, 31u)], !(!global1[_wgslsmith_index_u32(1u, 31u)])), func_2(!vec4<bool>(true, !global1[_wgslsmith_index_u32(37402u, 31u)], true, true)));
    var var_4 = func_1(~(~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_3.c.a.x, var_3.e.b.a.x, var_3.c.a.x, var_3.c.a.x), vec4<u32>(4294967295u, 1u, 23999u, var_3.c.a.x) >> (vec4<u32>(0u, 1u, 1u, 16852u) % vec4<u32>(32u)))), vec3<f32>(1f, 1f, 1f));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-449f, -300f))), 1653f, false)), -1056f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-245f + _wgslsmith_f_op_f32(step(-506f, -871f))), _wgslsmith_f_op_f32(942f + _wgslsmith_f_op_f32(577f * 267f)))));
}

