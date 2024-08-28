struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -518f, vec4<i32>(i32(-2147483648), 23819i, 49278i, -13482i));

var<private> global1: bool = false;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<u32>) -> vec2<bool> {
    global0 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1310f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-317f - -236f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2820f + 277f))), firstLeadingBit((global0.c >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, arg_1.x, u_input.b, 25583u), vec4<u32>(arg_1.x, arg_1.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u))) << (_wgslsmith_mult_vec4_u32(vec4<u32>(34695u, arg_1.x, 2399u, arg_1.x) & vec4<u32>(arg_1.x, 25932u, u_input.a.x, 85210u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 70358u, arg_1.x, 1u), vec4<u32>(0u, 55036u, u_input.a.x, u_input.a.x))) % vec4<u32>(32u))));
    let var_0 = -max(-arg_0, -select(_wgslsmith_div_vec3_i32(vec3<i32>(u_input.c, -29556i, -25987i), vec3<i32>(21040i, 2147483647i, u_input.c)), vec3<i32>(arg_0.x, -51017i, arg_0.x) ^ vec3<i32>(arg_0.x, 21226i, global0.c.x), !vec3<bool>(true, false, global0.a)));
    var var_1 = Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(4705u ^ u_input.b, arg_1.x) & arg_1, vec2<u32>(select(~arg_1.x, arg_1.x ^ 39973u, false), ~_wgslsmith_mult_u32(u_input.a.x, 0u))), Struct_1(global0.a, -1524f, reverseBits(vec4<i32>(13747i, u_input.c, u_input.c, global0.c.x) << (select(vec4<u32>(0u, u_input.a.x, arg_1.x, 4294967295u), vec4<u32>(u_input.b, arg_1.x, u_input.a.x, arg_1.x), vec4<bool>(true, global0.a, true, false)) % vec4<u32>(32u)))), 7664u, u_input.a.x);
    global0 = var_1.b;
    var var_2 = Struct_2(select(abs(var_1.a), arg_1, true), var_1.b, 33794u, _wgslsmith_mod_u32(arg_1.x << (u_input.a.x % 32u), 4294967295u));
    return !(!vec2<bool>(global0.a, false));
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: vec2<bool>) -> bool {
    let var_0 = func_3(vec3<i32>(14893i, u_input.c, 5478i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global0.c.zyw, global0.c.xwy), u_input.c)), vec2<u32>(64161u, arg_1) >> (u_input.a.xx % vec2<u32>(32u)));
    let var_1 = ~(u_input.a.zy ^ vec2<u32>(1u, select(_wgslsmith_clamp_u32(u_input.a.x, 22107u, arg_1), max(44720u, arg_1), var_0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.b, -1064f), _wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1255f) + 1000f), global0.b));
    global1 = countOneBits(u_input.c) >= 0i;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-1209f * _wgslsmith_f_op_f32(max(var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.b * global0.b), _wgslsmith_f_op_f32(ceil(-229f))))))), global0.c);
    return false;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_3(countOneBits(arg_2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1804f, 371f) * vec2<f32>(global0.b, -409f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(298f, global0.b) + vec2<f32>(-326f, global0.b))) - vec2<f32>(arg_2.b.b, _wgslsmith_f_op_f32(-1005f + -236f)))), arg_2, select(!vec3<bool>(any(vec2<bool>(false, true)), func_2(0u, arg_3.x, vec2<bool>(false, arg_0)), true), vec3<bool>(func_2(0u, _wgslsmith_mult_u32(4294967295u, 0u), vec2<bool>(global0.a, true)), any(vec3<bool>(arg_0, false, false)), arg_0 || any(vec2<bool>(arg_2.b.a, global0.a))), !global0.a));
    global0 = arg_2.b;
    var var_1 = ~vec3<u32>(~12249u, 4294967295u, (firstTrailingBit(1u) | reverseBits(var_0.a.x)) >> (_wgslsmith_div_u32(_wgslsmith_clamp_u32(19469u, arg_2.c, 0u), abs(u_input.a.x)) % 32u));
    var var_2 = ~(~_wgslsmith_sub_u32(~u_input.b ^ arg_3.x, arg_2.d));
    let var_3 = Struct_3(firstLeadingBit(select(reverseBits(var_0.a), ~arg_2.a, select(var_0.d.zx, var_0.d.xx, var_0.d.xz)) << (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 14092u), firstTrailingBit(vec2<u32>(u_input.a.x, arg_3.x))) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -368f) * 466f), _wgslsmith_f_op_f32(var_0.c.b.b - _wgslsmith_f_op_f32(-global0.b))), arg_2, !(!vec3<bool>(arg_0, global0.a, func_2(u_input.a.x, 22105u, var_0.d.xz))));
    return Struct_1(arg_2.b.a || true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1248f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(2572f, var_3.b.x))) + -764f), var_3.c.b.c);
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: u32, arg_3: vec2<i32>) -> Struct_1 {
    global1 = global0.a;
    var var_0 = -arg_3.x;
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1515f + _wgslsmith_f_op_f32(708f - -509f)), 1322f, _wgslsmith_f_op_f32(472f * 1411f), -1049f);
    var var_2 = Struct_1(false, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.x - -1635f), -901f)))), min(vec4<i32>(max(u_input.d.x >> (arg_0.x % 32u), 1i), _wgslsmith_div_i32(-2147483647i, -53747i), _wgslsmith_mod_i32(max(2147483647i, global0.c.x), u_input.c), global0.c.x | global0.c.x), vec4<i32>(u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), u_input.d << (vec2<u32>(arg_2, u_input.b) % vec2<u32>(32u))), i32(-1i) * -23490i, abs(global0.c.x))));
    global0 = func_4(!any(vec4<bool>(false, any(vec4<bool>(true, global0.a, global0.a, global0.a)), func_2(15876u, 16763u, vec2<bool>(true, var_2.a)), true)), ~36480u, Struct_2(~select(u_input.a.zx, u_input.a.xx << (u_input.a.xy % vec2<u32>(32u)), all(vec4<bool>(false, false, false, true))), Struct_1(false, _wgslsmith_f_op_f32(f32(-1f) * -784f), _wgslsmith_clamp_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.x, 1i, -1i, var_2.c.x), global0.c), var_2.c, _wgslsmith_mod_vec4_i32(vec4<i32>(0i, global0.c.x, var_2.c.x, -1i), global0.c))), 60595u, arg_0.x), firstLeadingBit(~(~(vec4<u32>(arg_2, arg_0.x, arg_2, u_input.a.x) & vec4<u32>(4294967295u, arg_2, arg_2, 62703u)))));
    return Struct_1(any(select(vec3<bool>(global0.a, var_2.a, global0.a), !select(vec3<bool>(true, var_2.a, global0.a), vec3<bool>(global0.a, global0.a, true), vec3<bool>(true, global0.a, global0.a)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(func_4(any(vec3<bool>(true, true, true)), select(arg_2, u_input.a.x, false), Struct_2(arg_0, Struct_1(true, var_2.b, var_2.c), 42815u, 0u), vec4<u32>(arg_2, arg_0.x, 1u, 1u)).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)))) * global0.b), -_wgslsmith_div_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, var_2.c.x, var_2.c.x, 2147483647i), global0.c)), -(vec4<i32>(1i, global0.c.x, 6464i, -47623i) << (vec4<u32>(arg_0.x, 41953u, arg_2, arg_0.x) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(u_input.a.yy, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(-global0.b), any(vec4<bool>(false, true, false, true)))), u_input.b, select(~_wgslsmith_div_vec2_i32(-global0.c.wx, global0.c.yx), abs(u_input.d), vec2<bool>(global0.a, !all(vec4<bool>(false, false, global0.a, global0.a)))));
    var var_0 = vec4<i32>(-(~(-41875i)), _wgslsmith_div_i32(u_input.c, u_input.c), ~global0.c.x, -global0.c.x);
    var var_1 = Struct_3(select(firstLeadingBit(~(~u_input.a.xy)), select(u_input.a.yx, ~u_input.a.xx, func_3(var_0.wxw, u_input.a.yz)), vec2<bool>(func_1(vec2<u32>(u_input.b, 0u), global0.b, ~u_input.a.x, vec2<i32>(-1i, u_input.d.x)).a, !(u_input.a.x <= 0u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-222f, global0.b), vec2<f32>(global0.b, 219f), false)) * vec2<f32>(-760f, global0.b)), vec2<f32>(_wgslsmith_f_op_f32(max(global0.b, 937f)), _wgslsmith_f_op_f32(-global0.b))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(641f, global0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, 667f))))), Struct_2(vec2<u32>(u_input.a.x, u_input.a.x), Struct_1(global0.a && (global0.a && true), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1263f)))), global0.c << ((vec4<u32>(u_input.b, 0u, 1u, u_input.b) ^ vec4<u32>(u_input.a.x, 0u, 4294967295u, 6599u)) % vec4<u32>(32u))), _wgslsmith_clamp_u32(~(~u_input.b), abs(_wgslsmith_div_u32(u_input.b, 4294967295u)), u_input.b), firstTrailingBit(abs(u_input.b)) >> (u_input.b % 32u)), vec3<bool>(true, true, !(!global0.a)));
    global0 = Struct_1(func_1(~var_1.c.a, 1956f, u_input.a.x & ~u_input.a.x, select(-vec2<i32>(u_input.d.x, var_1.c.b.c.x), vec2<i32>(-1i, -var_1.c.b.c.x), var_1.d.yy)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c.b.b)), select(vec4<i32>(var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(22591i, -24348i, 22296i), _wgslsmith_add_vec3_i32(vec3<i32>(-51382i, 7248i, 1i), vec3<i32>(-12947i, global0.c.x, -2147483647i))), _wgslsmith_add_i32(var_0.x >> (u_input.a.x % 32u), func_4(var_1.d.x, 1u, var_1.c, vec4<u32>(46977u, 0u, 4294967295u, 1u)).c.x), var_0.x), _wgslsmith_mod_vec4_i32(global0.c, var_1.c.b.c), true));
    global0 = func_4(true, abs(~(~1u)), var_1.c, abs(vec4<u32>(23954u, 0u, _wgslsmith_add_u32(var_1.a.x | var_1.a.x, ~var_1.a.x), _wgslsmith_div_u32(var_1.c.a.x, u_input.b))));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(select(var_1.c.b.b, global0.b, false)), _wgslsmith_f_op_f32(var_1.c.b.b - var_1.b.x)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, 196f, global0.b)))), var_1.d.x)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b, 735f, var_1.c.b.b) + vec3<f32>(var_1.b.x, global0.b, global0.b)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-492f, global0.b, -333f))))))), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(~global0.c.xx, var_0.zw);
}

