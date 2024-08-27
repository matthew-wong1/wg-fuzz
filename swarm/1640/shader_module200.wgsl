struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: vec3<u32> = vec3<u32>(0u, 0u, 1u);

var<private> global3: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_3(_wgslsmith_div_vec3_i32(-(-vec3<i32>(u_input.b, -45437i, u_input.b) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(global2.x, global2.x, u_input.a)) % vec3<u32>(32u))), firstLeadingBit(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -1i, u_input.b), vec3<i32>(1i, 2147483647i, u_input.b))))), Struct_2(Struct_1(~4294967295u, vec4<u32>(0u, ~86033u, ~u_input.a, _wgslsmith_mult_u32(global2.x, 15736u)), global1.zyw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(359f + -870f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(561f * 1796f), _wgslsmith_f_op_f32(round(-618f)), _wgslsmith_f_op_f32(ceil(763f)), -389f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1248f, -1561f, 544f, -499f), vec4<f32>(1213f, 1686f, -251f, 1577f)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(533f, 586f, -217f, 1074f), vec4<f32>(-260f, 2374f, -271f, -183f), global3.x)))), ~(countOneBits(global2.yz) & global2.yx), !(global1.x && (global1.x != true)), !select(vec3<bool>(global3.x, global1.x, true), vec3<bool>(global3.x, true, global3.x), global1.zww)), 20158u);
    var var_1 = var_0.b.a;
    global0 = -1i;
    var var_2 = select(!vec4<bool>(all(vec2<bool>(false, var_0.b.d)), any(select(vec4<bool>(global1.x, false, false, true), vec4<bool>(var_1.c.x, global1.x, var_1.c.x, global1.x), var_1.c.x)), var_0.b.d, true & var_1.c.x), select(vec4<bool>(!global1.x, all(!var_0.b.e), true, global3.x), !(!vec4<bool>(true, var_1.c.x, true, false)), all(!global1.ywx) || var_0.b.d), vec4<bool>(any(vec3<bool>(true, true, global1.x)), global1.x, true, _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, u_input.b, var_0.a.x, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, var_0.a.x, 0i, var_0.a.x), vec4<i32>(u_input.b, -88029i, var_0.a.x, 38623i))) != -9160i));
    var var_3 = u_input.b;
    return !select(!var_0.b.e.zx, !vec2<bool>(var_0.b.e.x, var_0.b.a.c.x), !vec2<bool>(true, var_0.a.x < var_0.a.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: bool) -> vec2<i32> {
    global0 = arg_0.x;
    global3 = func_3();
    var var_0 = !global1.zww;
    var var_1 = 0i;
    global0 = -(-arg_0.x << (select(global2.x, abs(u_input.a), !var_0.x) % 32u));
    return -abs(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.b, arg_1.x), arg_0.zx, false), vec2<i32>(u_input.b, -1i)), arg_1));
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = _wgslsmith_mod_i32(arg_0, ~(~arg_0));
    global3 = global1.xz;
    var var_1 = min(-vec2<i32>(2147483647i, 14630i), vec2<i32>(-1i) * -func_2(select(vec3<i32>(u_input.b, var_0, -36551i), vec3<i32>(arg_0, 2147483647i, -1i), false), vec2<i32>(arg_0, 2147483647i), Struct_4(global2.x), !global1.x));
    let var_2 = firstTrailingBit(vec4<u32>(u_input.a & ~(u_input.a << (global2.x % 32u)), 76896u, global2.x, ~1u));
    global2 = var_2.xyw;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(select(global1.ywz, select(vec3<bool>(false, global3.x, global3.x), vec3<bool>(true, global3.x, global3.x), vec3<bool>(false, false, global3.x)), 1f != _wgslsmith_f_op_f32(round(178f))), !vec3<bool>(global3.x | global3.x, true, false), global1.yyx);
    let var_1 = ~(firstLeadingBit(vec3<i32>(select(2147483647i, -2147483647i, global1.x), 0i, u_input.b)) >> (vec3<u32>(_wgslsmith_add_u32(66409u >> (u_input.a % 32u), countOneBits(1u)), 1u, _wgslsmith_sub_u32(countOneBits(66918u), 13563u ^ u_input.a)) % vec3<u32>(32u)));
    let var_2 = func_1(-((var_1.x & ~2147483647i) | 5371i));
    let var_3 = vec3<i32>(abs(11925i) << (_wgslsmith_sub_u32(~(global2.x << (2759u % 32u)), 0u) % 32u), var_1.x, _wgslsmith_div_i32(-(-23666i ^ select(var_1.x, 2147483647i, global3.x)), u_input.b));
    let var_4 = vec3<i32>(var_3.x, (min(min(-2147483647i, var_1.x), i32(-1i) * -2147483647i) ^ -_wgslsmith_sub_i32(1i, -10129i)) << (global2.x % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.x >> (22034u % 32u), func_2(var_3, var_3.xz, Struct_4(1u), true).x, ~var_1.x, 19985i), vec4<i32>(-51376i, -max(0i, u_input.b), min(-46334i >> (u_input.a % 32u), -var_1.x), -(i32(-1i) * -50706i))));
    let var_5 = Struct_1(_wgslsmith_sub_u32(~(~(~var_2)), var_2), min(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a & 4500u, u_input.a & 95663u, select(30022u, var_2, true), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2, 4176u, var_2, global2.x), vec4<u32>(102408u, u_input.a, var_2, global2.x)) << (vec4<u32>(global2.x, global2.x, u_input.a, 14371u) % vec4<u32>(32u))), vec4<u32>(firstTrailingBit(_wgslsmith_sub_u32(24862u, u_input.a)), 4294967295u, _wgslsmith_mod_u32(_wgslsmith_sub_u32(73387u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, 0u, var_2, 34064u), vec4<u32>(global2.x, u_input.a, global2.x, u_input.a))), global2.x)), !(!global1.xyx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-443f - _wgslsmith_f_op_f32(round(-394f))))));
    global2 = ~var_5.b.zzz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~1u), _wgslsmith_div_u32(0u, global2.x), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(var_2), u_input.a << (global2.x % 32u)), (vec2<u32>(0u, var_5.a) & vec2<u32>(33924u, var_2)) | global2.zy), 10723u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_5.d, 299f, var_5.d))) * vec3<f32>(796f, _wgslsmith_f_op_f32(-var_5.d), _wgslsmith_f_op_f32(-var_5.d)))), ~vec3<u32>(var_2, 0u, 4294967295u), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -773f), -836f, 894f, var_5.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, -260f, 119f, var_5.d)))), -308f);
}

