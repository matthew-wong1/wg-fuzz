struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
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

var<private> global0: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<i32>) -> vec3<f32> {
    let var_0 = true;
    var var_1 = Struct_1(abs(firstTrailingBit(-2147483647i)), ~reverseBits(38508u), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(871f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-367f * -622f) * _wgslsmith_f_op_f32(round(-1034f)))))), firstLeadingBit(abs(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, u_input.a.x), ~4294967295u))));
    var_1 = Struct_1(i32(-1i) * -24668i, min(1u << (~(~u_input.a.x) % 32u), 133201u), var_1.c, ~u_input.a.x);
    let var_2 = Struct_2(Struct_1(select(_wgslsmith_mult_i32(-14921i >> (u_input.a.x % 32u), reverseBits(var_1.a)), _wgslsmith_add_i32(42376i, -24220i), var_0), firstLeadingBit(select(~0u, u_input.a.x ^ var_1.b, var_0)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(var_1.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) + vec2<f32>(463f, -161f))))), 0u >> (1u % 32u)), Struct_1(32182i >> (var_1.d % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(~u_input.a.x, ~u_input.a.x), u_input.a.wy), _wgslsmith_f_op_vec2_f32(abs(var_1.c)), 0u), Struct_1(5630i, 37716u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c.x, var_1.c.x) - var_1.c)))), ~_wgslsmith_mod_u32(reverseBits(var_1.b), 1u)), _wgslsmith_f_op_f32(ceil(var_1.c.x)));
    var var_3 = ~u_input.a.yz;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(781f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-835f, _wgslsmith_f_op_f32(-var_1.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c.c.x) + _wgslsmith_f_op_f32(1243f * var_2.c.c.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1429f, 1358f, arg_0.c.x), vec3<f32>(_wgslsmith_f_op_f32(round(1920f)), 820f, _wgslsmith_div_f32(arg_0.c.x, -1166f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, arg_0.a, arg_2, -2147483647i), _wgslsmith_mod_vec4_i32(u_input.b, u_input.b))))));
    return Struct_2(arg_0, arg_0, arg_0, -643f);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: f32, arg_3: vec4<u32>) -> vec4<bool> {
    global0 = arg_2;
    let var_0 = arg_0.c;
    let var_1 = all(select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), true));
    var var_2 = !(!vec2<bool>(!all(vec4<bool>(false, true, true, var_1)), var_1 & var_1));
    var_2 = select(vec2<bool>(true, true), select(!select(select(vec2<bool>(true, var_2.x), vec2<bool>(false, var_1), vec2<bool>(var_1, var_2.x)), vec2<bool>(false, true), !vec2<bool>(var_1, false)), vec2<bool>(!(!var_1), any(select(vec4<bool>(false, var_2.x, true, var_2.x), vec4<bool>(var_1, var_1, var_1, var_1), false))), vec2<bool>(all(!vec4<bool>(true, false, false, var_1)), !any(vec2<bool>(var_2.x, var_1)))), !(!(!vec2<bool>(true, var_1))));
    return !select(!vec4<bool>(true, true, true, var_1), !(!vec4<bool>(var_1, var_1, var_2.x, var_2.x)), var_2.x);
}

fn func_1(arg_0: vec3<i32>, arg_1: u32, arg_2: i32) -> Struct_2 {
    var var_0 = select(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true)), vec4<bool>(_wgslsmith_add_u32(arg_1 | u_input.a.x, _wgslsmith_div_u32(u_input.a.x, 26533u)) < ~4698u, false, all(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), all(vec2<bool>(true, true)))), true), !select(vec4<bool>(true, true, true, true), func_4(func_2(Struct_1(1i, u_input.a.x, vec2<f32>(208f, -1000f), 4294967295u), u_input.a.xw, 0i), vec4<i32>(-15070i, 4485i, arg_0.x, 41537i), -613f, u_input.a), all(vec4<bool>(true, true, true, true))));
    var_0 = vec4<bool>(any(var_0.zyz), !(select(true, var_0.x, true) & true), var_0.x, u_input.b.x > arg_0.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1915f, 215f, 841f, -1101f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(175f, 444f, 1049f, -1000f)))))));
    var var_2 = ~_wgslsmith_mult_vec2_u32(~u_input.a.yw, u_input.a.yw << (vec2<u32>(~3153u, 0u) % vec2<u32>(32u)));
    var var_3 = func_2(func_2(func_2(func_2(Struct_1(arg_0.x, arg_1, var_1.wz, 0u), ~u_input.a.xz, arg_2).a, u_input.a.yz, arg_2).c, ~abs(u_input.a.zw), ~20391i).c, vec2<u32>(func_2(Struct_1(u_input.b.x | -1i, ~4294967295u, _wgslsmith_f_op_vec2_f32(-var_1.yz), 7271u), ~u_input.a.xz, _wgslsmith_mult_i32(-arg_2, -9126i)).c.d, ~u_input.a.x), min(_wgslsmith_sub_i32(-abs(arg_2), ~arg_0.x), -5123i)).a;
    return func_2(func_2(func_2(func_2(func_2(Struct_1(arg_2, 33565u, vec2<f32>(-1000f, var_1.x), arg_1), u_input.a.zx, u_input.b.x).b, vec2<u32>(u_input.a.x, var_3.d), u_input.b.x).a, ~u_input.a.xz >> (vec2<u32>(1453u, 79908u) % vec2<u32>(32u)), ~(~(-12742i))).a, vec2<u32>(var_3.d, 0u), u_input.b.x).a, u_input.a.wx, u_input.b.x & _wgslsmith_mod_i32(~_wgslsmith_mult_i32(5970i, arg_0.x), -10835i));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> u32 {
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_1.c.x, 296f), 1083f)))))));
    var var_0 = u_input.a.zx;
    let var_1 = _wgslsmith_add_u32(u_input.a.x, 0u) << (arg_1.b % 32u);
    var var_2 = arg_1.a;
    var var_3 = u_input.a.wwz;
    return (countOneBits(arg_1.d) & abs(select(abs(var_3.x), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, var_1)), false))) ^ var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(vec4<u32>(func_5(u_input.b.x, Struct_1(~u_input.b.x, select(0u, u_input.a.x, true), _wgslsmith_div_vec2_f32(vec2<f32>(-1528f, -1604f), vec2<f32>(1649f, -293f)), 0u), func_1(~vec3<i32>(u_input.b.x, u_input.b.x, -47755i), u_input.a.x, 0i >> (u_input.a.x % 32u)), func_4(Struct_2(Struct_1(u_input.b.x, 31286u, vec2<f32>(-1408f, 1000f), u_input.a.x), Struct_1(16484i, u_input.a.x, vec2<f32>(161f, -544f), 4294967295u), Struct_1(u_input.b.x, u_input.a.x, vec2<f32>(-866f, 1651f), u_input.a.x), 1157f), vec4<i32>(u_input.b.x, 1i, -2034i, u_input.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1173f), ~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)).x), 10992u, u_input.a.x << (4294967295u % 32u), u_input.a.x), abs(u_input.a));
    var var_1 = u_input.b.x >= u_input.b.x;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-956f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1528f - 1784f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-359f, 1341f, false)))), 1000f, all(vec2<bool>(true, false)) == any(vec3<bool>(false, true, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(380f * -1000f), func_1(vec3<i32>(8538i, -15208i, 0i), var_0.x, -2147483647i).d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1000f, 225f)), -1578f), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1220f), _wgslsmith_f_op_f32(-1132f - 890f), true)))));
    var var_3 = max(min(u_input.a.yy, reverseBits(vec2<u32>(1u, min(u_input.a.x, u_input.a.x)))), countOneBits(vec2<u32>(abs(_wgslsmith_sub_u32(66256u, u_input.a.x)), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(500f, 343f, var_2.x, var_2.x) - vec4<f32>(-2830f, var_2.x, var_2.x, -290f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(244f, 1000f, var_2.x, var_2.x), vec4<f32>(-407f, var_2.x, -2844f, var_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(789f, var_2.x, -939f, var_2.x), vec4<f32>(211f, 1295f, var_2.x, -1060f), vec4<bool>(true, false, false, false))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(121f, 311f, var_2.x, 982f) * vec4<f32>(1241f, -1783f, -1000f, -322f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, var_2.x, 2185f) + vec4<f32>(var_2.x, var_2.x, -926f, var_2.x))))));
}

