struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: bool, arg_1: vec2<i32>, arg_2: f32) -> bool {
    var var_0 = Struct_2(arg_2, Struct_1(u_input.a, u_input.a, !select(select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, arg_0), false), !vec3<bool>(arg_0, arg_0, false), select(true, arg_0, arg_0))), vec4<i32>(~arg_1.x, ~(arg_1.x ^ -61661i), select(_wgslsmith_mod_i32(u_input.d, arg_1.x), _wgslsmith_div_i32(-1i, u_input.b), arg_0), _wgslsmith_sub_i32(arg_1.x, _wgslsmith_div_i32(1i, arg_1.x))) | (vec4<i32>(_wgslsmith_mult_i32(-6206i, u_input.d), min(-6566i, arg_1.x), ~(-1i), arg_1.x & arg_1.x) | vec4<i32>(-arg_1.x, _wgslsmith_mod_i32(arg_1.x, 1i), -u_input.d, u_input.d)), Struct_1(6699u, 47090u, select(vec3<bool>(any(vec3<bool>(false, true, true)), true, arg_2 > arg_2), select(!vec3<bool>(arg_0, true, arg_0), vec3<bool>(arg_0, true, arg_0), !vec3<bool>(false, true, arg_0)), !(!vec3<bool>(arg_0, arg_0, arg_0)))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, abs(u_input.a))));
    var_0 = Struct_2(-1784f, Struct_1(0u, 4294967295u, !(!var_0.d.c)), -var_0.c, Struct_1(~u_input.c.x, u_input.a << (u_input.c.x % 32u), var_0.b.c), ~41971u);
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_0.a, -1743f, false)))), _wgslsmith_f_op_f32(229f * var_0.a))), Struct_1(~u_input.a >> (~(~u_input.a) % 32u), firstLeadingBit(53770u), vec3<bool>(true, all(!vec3<bool>(false, arg_0, false)), any(!vec4<bool>(arg_0, false, false, var_0.d.c.x)))), abs(var_0.c), var_0.b, ~var_0.d.a);
    var_0 = Struct_2(-352f, Struct_1(min(u_input.a, 4294967295u), u_input.a, var_0.d.c), abs(~var_0.c), Struct_1(~var_0.b.a, 9446u, vec3<bool>(var_0.b.c.x, !(0u == var_0.b.b), any(var_0.b.c))), var_0.b.a);
    var var_1 = Struct_1(~(~countOneBits(~14167u)), ~82262u, select(!(!(!vec3<bool>(var_0.b.c.x, var_0.d.c.x, true))), !var_0.b.c, var_0.d.c));
    return false;
}

fn func_2(arg_0: f32, arg_1: vec4<f32>, arg_2: u32, arg_3: i32) -> vec4<bool> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(-497f - arg_0), Struct_1(~_wgslsmith_mod_u32(4294967295u, reverseBits(arg_2)), firstLeadingBit(15832u), !vec3<bool>(select(false, true, false), false, true)), ~_wgslsmith_add_vec4_i32(~(vec4<i32>(-32426i, arg_3, arg_3, u_input.b) ^ vec4<i32>(-1i, 2147483647i, 5162i, 483i)), _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, arg_3, arg_3, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_3, arg_3, -1i, u_input.b), vec4<i32>(24189i, 15332i, -51939i, u_input.d)))), Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(11681u, 8840u, u_input.a), ~vec3<u32>(29521u, 0u, 4294967295u)), ~(~u_input.c.x)), arg_2, select(vec3<bool>(any(vec2<bool>(true, false)), true, func_3(true, vec2<i32>(arg_3, -21961i), 452f)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_3(select(true, false, false), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.b, 0i), vec2<i32>(u_input.d, arg_3)), 2630f))), _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(min(u_input.c.x, 87290u)), arg_2), ~_wgslsmith_mod_vec2_u32(u_input.c, _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(arg_2, u_input.a)))));
    var_0 = Struct_2(arg_0, var_0.b, ~vec4<i32>(~(-var_0.c.x), ~(-arg_3), u_input.d & _wgslsmith_add_i32(-11341i, 0i), reverseBits(_wgslsmith_div_i32(u_input.b, 7101i))), var_0.b, ~abs(3811u));
    var_0 = Struct_2(_wgslsmith_f_op_f32(min(-1068f, arg_1.x)), Struct_1(4294967295u, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c), vec3<bool>(!(13951u <= u_input.c.x), var_0.b.c.x, all(vec2<bool>(true, var_0.b.c.x)))), ~(_wgslsmith_sub_vec4_i32(-var_0.c, var_0.c ^ var_0.c) << (select(~vec4<u32>(36617u, var_0.e, u_input.c.x, 14388u), ~vec4<u32>(u_input.c.x, 50053u, 8318u, var_0.d.b), select(vec4<bool>(false, var_0.d.c.x, var_0.d.c.x, true), vec4<bool>(var_0.b.c.x, var_0.d.c.x, true, false), var_0.b.c.x)) % vec4<u32>(32u))), var_0.d, 94629u);
    var_0 = Struct_2(-1394f, var_0.b, var_0.c, Struct_1(~firstLeadingBit(var_0.e) << (_wgslsmith_div_u32(56010u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_2, u_input.c.x), vec3<u32>(57656u, 29309u, 12492u))) % 32u), u_input.a, vec3<bool>(any(select(var_0.d.c.yz, vec2<bool>(var_0.d.c.x, var_0.d.c.x), vec2<bool>(false, var_0.d.c.x))), var_0.b.c.x, var_0.b.c.x)), ~arg_2);
    let var_1 = var_0.d;
    return select(!vec4<bool>(select(true, true, true), var_1.c.x, var_0.b.c.x, false), select(select(vec4<bool>(true, var_0.b.c.x || true, var_0.b.c.x, var_0.c.x < var_0.c.x), vec4<bool>(var_1.c.x, true, true || var_0.d.c.x, var_0.a < arg_1.x), !(!vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.c.x))), vec4<bool>(!var_0.d.c.x, false, true, false), !select(!vec4<bool>(true, var_0.b.c.x, var_0.b.c.x, true), vec4<bool>(var_1.c.x, true, true, var_1.c.x), !var_1.c.x)), !(!(!vec4<bool>(true, true, false, var_0.d.c.x))));
}

fn func_1() -> Struct_1 {
    var var_0 = !select(select(func_2(_wgslsmith_f_op_f32(trunc(-379f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(723f, 882f, 784f, -1000f) - vec4<f32>(113f, -2012f, 836f, 1118f)), ~4294967295u, -u_input.d), !select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), true), vec4<bool>(0u < u_input.c.x, false, true, !all(vec2<bool>(true, true))), true);
    var_0 = !(!func_2(-166f, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1522f), -263f, _wgslsmith_f_op_f32(f32(-1f) * -525f), -599f), ~88761u, ~u_input.b));
    var var_1 = !vec3<bool>(var_0.x, true, true);
    var_0 = vec4<bool>(true, false, var_0.x, !any(func_2(-1031f, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-680f, -1343f, -238f, 603f), vec4<f32>(987f, -454f, -1329f, -745f))), ~u_input.c.x, u_input.b).wyy));
    let var_2 = -1i;
    return Struct_1(~_wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.c.x, u_input.a, u_input.a, 51081u)), select(vec4<u32>(0u, u_input.a, u_input.c.x, u_input.c.x), select(vec4<u32>(u_input.c.x, 64692u, u_input.a, 85922u), vec4<u32>(u_input.a, 11400u, u_input.a, u_input.a), false), vec4<bool>(true, var_1.x, false, false))), u_input.c.x, var_0.xxy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(23414i, u_input.d), select(vec2<i32>(u_input.b, 10286i), ~vec2<i32>(1i, 0i), !var_0.c.zy) ^ select(~vec2<i32>(u_input.d, 7356i), max(vec2<i32>(-1i, 0i), vec2<i32>(10473i, 0i)), var_0.c.zx)) | (vec2<i32>(_wgslsmith_clamp_i32(0i, u_input.b, u_input.d) | u_input.b, ~(-1i) ^ u_input.b) & -_wgslsmith_mod_vec2_i32(vec2<i32>(-15393i, u_input.d), reverseBits(vec2<i32>(-24296i, u_input.b))));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-293f, 627f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-541f)) * 1000f)))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yy + vec2<f32>(_wgslsmith_f_op_f32(-489f * -1681f), var_2.x))), -vec4<i32>(firstLeadingBit(-21999i), u_input.d, u_input.b, ~(-2147483647i)), Struct_1(func_1().b, 1u, func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(var_2.x - -242f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-903f, -503f, var_2.x, var_2.x))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-955f, var_2.x, var_2.x, -1385f), vec4<f32>(334f, -181f, var_2.x, var_2.x), vec4<bool>(false, true, false, var_0.c.x)))), _wgslsmith_mod_u32(65010u, var_0.b), -_wgslsmith_sub_i32(var_1.x, 45775i)).xyy));
    let var_4 = !vec4<bool>(true || (var_3.c.b < (u_input.a & var_3.c.b)), false, !all(vec4<bool>(var_3.c.c.x, true, true, true)), all(vec4<bool>(true, false, true, false | var_3.c.c.x)));
    var var_5 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + _wgslsmith_f_op_f32(exp2(var_3.a.x))) * 1000f)), func_1(), ~_wgslsmith_mod_vec4_i32(-vec4<i32>(-9143i, -1i, var_3.b.x, var_3.b.x), vec4<i32>(5940i, reverseBits(-2276i), abs(u_input.d), _wgslsmith_mult_i32(var_3.b.x, -13223i))), func_1(), ~(25528u & var_3.c.b) << (~1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(select(var_5.a, var_5.a, var_5.d.c.x))))), -16628i, var_3.b.yzy);
}

