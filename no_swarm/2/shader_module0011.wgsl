struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: bool,
    d: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-71274i, vec2<u32>(32446u, 16736u), Struct_1(vec3<i32>(1i, -56241i, 2291i), vec3<i32>(-1i, i32(-2147483648), -53870i), true, vec3<bool>(false, true, true)), Struct_1(vec3<i32>(18163i, 1i, -16354i), vec3<i32>(15493i, -12329i, 9989i), false, vec3<bool>(false, true, false)));

var<private> global1: bool = false;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>) -> i32 {
    let var_0 = ~_wgslsmith_sub_u32(_wgslsmith_div_u32(~firstTrailingBit(global0.b.x), global0.b.x >> (~global0.b.x % 32u)), global0.b.x);
    var var_1 = countOneBits(global0.b.x);
    var var_2 = global0.d.c;
    var var_3 = Struct_1(global0.c.a, vec3<i32>(-2147483647i, arg_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 22773i, arg_0.b.x, -5205i), vec4<i32>(arg_0.a.x, arg_0.a.x, -7839i, 0i)) & -18541i), !select(!(!arg_0.c), (global0.c.a.x << (1u % 32u)) < global0.d.a.x, true), !vec3<bool>(true, global0.c.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f) == _wgslsmith_div_f32(arg_1.x, 2270f)));
    let var_4 = Struct_2(_wgslsmith_div_i32(arg_0.b.x, u_input.c.x), max(max(global0.b, ~vec2<u32>(var_0, 0u)), global0.b), global0.c, arg_0);
    return -(u_input.b ^ -1i);
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: bool) -> i32 {
    let var_0 = max(firstLeadingBit(~(~1i)), 2147483647i);
    global0 = Struct_2(~countOneBits(func_3(Struct_1(vec3<i32>(global0.a, 1i, 2147483647i), vec3<i32>(-78180i, -39462i, global0.c.a.x), global0.c.c, global0.d.d), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, -1849f, arg_0.x, 599f), vec4<f32>(arg_1, -700f, 219f, arg_2))))), select(vec2<u32>(1u, _wgslsmith_sub_u32(~global0.b.x, 1u & global0.b.x)), countOneBits(global0.b | ~global0.b), select(!(!arg_3), false, select(global0.c.c | false, false, true))), global0.c, Struct_1(vec3<i32>(_wgslsmith_div_i32(var_0, 52863i), 1i, 66905i | u_input.b) & global0.d.b, -(~vec3<i32>(3240i, global0.c.b.x, var_0)), u_input.a.x < -1i, vec3<bool>(arg_3, global0.d.d.x, all(vec3<bool>(global0.c.c, arg_3, false)))));
    var var_1 = !vec3<bool>(arg_3, true, global0.d.c);
    let var_2 = vec4<u32>(4294967295u << (0u % 32u), global0.b.x, global0.b.x, firstLeadingBit(52350u));
    var var_3 = !(arg_3 || (select(global0.c.d.x & var_1.x, false, true) | false));
    return -66025i;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = false;
    global1 = global0.d.d.x;
    var var_1 = Struct_1(select(global0.c.b, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i) * -global0.d.b, max(vec3<i32>(-23289i, 46324i, global0.a), vec3<i32>(-57592i, 1i, global0.d.a.x)) >> (~vec3<u32>(4294967295u, 25108u, 27491u) % vec3<u32>(32u))), false), vec3<i32>(23261i ^ _wgslsmith_add_i32(0i, -global0.a), min(func_2(vec2<f32>(-1056f, -520f), 530f, 156f, global0.c.d.x), global0.a) ^ _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(u_input.a.x, 5633i)), firstTrailingBit(vec2<i32>(-37455i, -52616i))), global0.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(659f - -1000f) - _wgslsmith_f_op_f32(arg_0 - arg_0)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_0, 903f)))), !(!select(select(vec3<bool>(global0.c.d.x, global0.d.c, global0.c.c), vec3<bool>(false, global0.c.c, false), global0.c.d), select(vec3<bool>(false, true, global0.c.d.x), global0.c.d, vec3<bool>(true, global0.c.c, false)), true)));
    global0 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, -var_1.a.x, -25269i, -17527i), vec4<i32>(u_input.a.x, i32(-1i) * -30691i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, var_1.a.x, u_input.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(global0.d.a.x, var_1.b.x, -1i, -60025i), vec4<i32>(u_input.c.x, 50999i, -2147483647i, var_1.b.x))), 23428i)), _wgslsmith_mult_vec2_u32(global0.b, vec2<u32>(4294967295u, global0.b.x)), Struct_1(vec3<i32>(u_input.a.x, global0.c.a.x << (global0.b.x % 32u), ~u_input.c.x), var_1.b, true, global0.c.d), Struct_1(vec3<i32>(-1i, -2147483647i ^ func_3(Struct_1(vec3<i32>(2147483647i, -2147483647i, 17164i), global0.c.a, var_1.c, vec3<bool>(false, var_1.d.x, true)), vec4<f32>(418f, arg_0, 379f, -621f)), u_input.a.x), -(vec3<i32>(-1i) * -var_1.a), var_1.d.x, vec3<bool>(global0.d.d.x | (-602f == arg_0), any(vec3<bool>(var_1.c, global0.c.d.x, global0.c.d.x)) | !global0.c.c, !(false && global0.d.d.x))));
    let var_2 = Struct_2(_wgslsmith_mod_i32(firstLeadingBit(firstTrailingBit(1i)), -abs(1i)), vec2<u32>(_wgslsmith_add_u32(abs(_wgslsmith_mult_u32(50033u, 15881u)), _wgslsmith_mod_u32(_wgslsmith_add_u32(0u, global0.b.x), 4294967295u)), global0.b.x >> ((~4294967295u | min(global0.b.x, 4294967295u)) % 32u)), global0.c, global0.c);
    return Struct_1(var_1.b, -vec3<i32>(~(-var_2.c.b.x), abs(var_2.a ^ var_1.b.x), i32(-1i) * -var_1.b.x), var_2.d.d.x, vec3<bool>(global0.c.c, var_1.c, any(vec4<bool>(var_2.c.d.x, true, var_1.c, false)) && true));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.c;
    global1 = global0.c.d.x;
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(601f - 555f), -1025f)))), _wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(423f)))))));
    var_0 = any(!global0.c.d);
    var_0 = true;
    return Struct_1(arg_2.b, -vec3<i32>(-17977i, countOneBits(arg_1.b.x) & arg_1.a.x, _wgslsmith_mult_i32(u_input.a.x, ~arg_1.a.x)), arg_1.d.x, !(!(!select(global0.c.d, vec3<bool>(true, arg_2.c, arg_2.d.x), arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(select(global0.d.d, !select(select(vec3<bool>(global0.d.c, global0.d.c, true), vec3<bool>(false, false, global0.c.d.x), false), vec3<bool>(global0.d.c, true, false), vec3<bool>(global0.d.c, true, global0.d.d.x)), global0.c.c && true), Struct_1(~vec3<i32>(i32(-1i) * -19969i, u_input.b, global0.a ^ global0.a), _wgslsmith_mod_vec3_i32(global0.c.b, vec3<i32>(_wgslsmith_div_i32(-1i, -23015i), _wgslsmith_div_i32(1i, 1i), _wgslsmith_mult_i32(-41304i, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(526f, -253f)) * _wgslsmith_f_op_f32(select(1000f, 190f, global0.c.d.x))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(664f, 331f, global0.c.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -791f)), global0.c.d), func_1(_wgslsmith_f_op_f32(-1261f + _wgslsmith_f_op_f32(step(179f, _wgslsmith_f_op_f32(313f - 756f))))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(-111f, _wgslsmith_f_op_f32(f32(-1f) * -835f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, 139f)) * 777f) + _wgslsmith_f_op_f32(f32(-1f) * -444f)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(136f + 514f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -364f), -1448f)));
    var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-157f, 185f, 632f))))), vec3<f32>(1000f, var_1.x, var_1.x))) - vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1411f * var_1.x), _wgslsmith_f_op_f32(-var_1.x)), 659f), 391f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1293f) - _wgslsmith_f_op_f32(301f * 809f)) + _wgslsmith_f_op_f32(round(var_1.x)))));
    let var_2 = Struct_1(firstTrailingBit(global0.c.a), var_0.a << (_wgslsmith_clamp_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, global0.b.x, global0.b.x), vec3<u32>(global0.b.x, global0.b.x, global0.b.x)), ~vec3<u32>(0u, 4294967295u, global0.b.x), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 4294967295u, global0.b.x), vec3<u32>(global0.b.x, 0u, global0.b.x)), abs(vec3<u32>(20141u, global0.b.x, 1u)))) % vec3<u32>(32u)), var_1.x < _wgslsmith_f_op_f32(-1685f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x)))), select(select(var_0.d, select(vec3<bool>(false, global0.c.c, true), var_0.d, !global0.d.d), true), global0.c.d, true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(887f * -1404f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-296f)), -1719f), all(vec2<bool>(true, var_2.c))))));
    var var_4 = func_4(func_4(select(!func_1(var_1.x).d, !select(vec3<bool>(false, false, true), vec3<bool>(var_0.c, global0.d.d.x, global0.d.d.x), var_2.d.x), false), var_2, var_2).d, Struct_1(vec3<i32>(-82077i, -(2320i & var_2.a.x), var_2.a.x), select(~var_0.b, firstLeadingBit(vec3<i32>(var_0.b.x, -24606i, -1i)), false), true, func_4(vec3<bool>(!global0.d.d.x, var_2.d.x | true, var_2.d.x), Struct_1(-global0.c.a, vec3<i32>(var_2.a.x, -13832i, 2147483647i), true, !var_2.d), Struct_1(var_0.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(66675i, -13630i, u_input.b), global0.c.b, global0.d.a), global0.b.x < 45632u, global0.d.d)).d), global0.c);
    var var_5 = func_1(-662f);
    var_0 = func_1(_wgslsmith_div_f32(var_1.x, 2501f));
    var var_6 = ~var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(30431u, var_0.a.x, -1105i, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-326f, _wgslsmith_f_op_f32(f32(-1f) * -759f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xx * vec2<f32>(-1224f, var_1.x))))), ~(max(~vec3<u32>(29905u, global0.b.x, global0.b.x), ~vec3<u32>(global0.b.x, global0.b.x, global0.b.x)) | ~_wgslsmith_div_vec3_u32(vec3<u32>(111331u, global0.b.x, global0.b.x), vec3<u32>(62108u, 4294967295u, global0.b.x))));
}

