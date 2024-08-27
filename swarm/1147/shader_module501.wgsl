struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec4<u32>, 6> = array<vec4<u32>, 6>(vec4<u32>(1u, 0u, 0u, 50344u), vec4<u32>(1u, 71288u, 0u, 0u), vec4<u32>(58410u, 21014u, 0u, 51404u), vec4<u32>(14973u, 5282u, 38833u, 4294967295u), vec4<u32>(43784u, 68343u, 53631u, 18203u), vec4<u32>(24927u, 1u, 4294967295u, 0u));

var<private> global2: array<Struct_3, 17> = array<Struct_3, 17>(Struct_3(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec3<u32>(4294967295u, 23399u, 4294967295u), 1u), Struct_1(vec3<u32>(58647u, 22447u, 1108u), 28694u)), i32(-2147483648), 1i), Struct_3(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec3<u32>(1u, 9247u, 1u), 30931u), Struct_1(vec3<u32>(31970u, 0u, 0u), 0u)), i32(-2147483648), 7287i), Struct_3(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), Struct_2(Struct_1(vec3<u32>(0u, 6554u, 39363u), 4294967295u), Struct_1(vec3<u32>(4294967295u, 1u, 66144u), 0u)), 0i, -14831i), Struct_3(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec3<u32>(1u, 84945u, 46815u), 23458u), Struct_1(vec3<u32>(4294967295u, 19775u, 0u), 1u)), 19486i, i32(-2147483648)), Struct_3(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), Struct_2(Struct_1(vec3<u32>(3658u, 92864u, 86431u), 25629u), Struct_1(vec3<u32>(4294967295u, 1u, 32363u), 0u)), 0i, -1i), Struct_3(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec3<u32>(0u, 1u, 45549u), 89158u), Struct_1(vec3<u32>(15306u, 3219u, 0u), 50959u)), -20770i, 904i), Struct_3(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), Struct_2(Struct_1(vec3<u32>(1751u, 52042u, 1u), 89464u), Struct_1(vec3<u32>(0u, 0u, 19063u), 20913u)), -43577i, 1i), Struct_3(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), Struct_2(Struct_1(vec3<u32>(0u, 0u, 4294967295u), 52964u), Struct_1(vec3<u32>(25960u, 27512u, 0u), 1u)), 70429i, 39509i), Struct_3(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, true), Struct_2(Struct_1(vec3<u32>(48414u, 1u, 1u), 4294967295u), Struct_1(vec3<u32>(4294967295u, 0u, 10621u), 0u)), 6144i, 2380i), Struct_3(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), Struct_2(Struct_1(vec3<u32>(0u, 71248u, 0u), 0u), Struct_1(vec3<u32>(4294967295u, 22075u, 0u), 30184u)), 2147483647i, 2147483647i), Struct_3(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), Struct_2(Struct_1(vec3<u32>(0u, 21483u, 13002u), 13050u), Struct_1(vec3<u32>(0u, 2092u, 4294967295u), 81853u)), -1i, 6285i), Struct_3(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), Struct_2(Struct_1(vec3<u32>(73332u, 4294967295u, 4294967295u), 1u), Struct_1(vec3<u32>(2943u, 0u, 1u), 30995u)), -1i, 1i), Struct_3(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), Struct_2(Struct_1(vec3<u32>(0u, 1u, 4294967295u), 0u), Struct_1(vec3<u32>(16433u, 75694u, 1u), 0u)), 13410i, -15958i), Struct_3(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), Struct_2(Struct_1(vec3<u32>(44747u, 1u, 57001u), 18369u), Struct_1(vec3<u32>(0u, 13090u, 1u), 15081u)), 1i, 1i), Struct_3(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec3<u32>(0u, 38593u, 39515u), 49371u), Struct_1(vec3<u32>(20404u, 44174u, 4294967295u), 4294967295u)), i32(-2147483648), 1i), Struct_3(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec3<u32>(16863u, 42966u, 1u), 4294967295u), Struct_1(vec3<u32>(38512u, 0u, 32362u), 3072u)), 36851i, 27505i), Struct_3(vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), 6541u), Struct_1(vec3<u32>(13438u, 6470u, 79332u), 4294967295u)), 18737i, 0i));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_3) -> u32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(31858u), ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2.c.a.b, arg_2.c.a.a.x, arg_2.c.a.b), u_input.b), arg_2.c.a.b), u_input.b.wzz), ~(_wgslsmith_dot_vec2_u32(~vec2<u32>(21802u, 1u), select(vec2<u32>(arg_2.c.b.a.x, 0u), vec2<u32>(arg_2.c.b.b, 5354u), vec2<bool>(false, arg_2.a.x))) | ~arg_2.c.a.a.x));
    global1 = array<vec4<u32>, 6>();
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1))) - arg_1);
    var var_2 = Struct_1(arg_2.c.b.a, (0u ^ (arg_2.c.b.a.x ^ abs(59660u))) >> (u_input.b.x % 32u));
    var var_3 = ~min(arg_2.c.b.a.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b, var_0.b, 46269u), var_0.a)) != (arg_2.c.a.b << (15920u % 32u));
    return 8166u & u_input.b.x;
}

fn func_2(arg_0: f32, arg_1: Struct_5) -> vec4<i32> {
    let var_0 = reverseBits(vec2<u32>(~26307u, func_3(_wgslsmith_clamp_i32(firstLeadingBit(-26785i), 2147483647i, ~(-7290i)), _wgslsmith_f_op_vec2_f32(arg_1.c + _wgslsmith_f_op_vec2_f32(arg_1.b.yz - vec2<f32>(arg_0, -586f))), Struct_3(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), Struct_2(arg_1.a, Struct_1(vec3<u32>(arg_1.d, 35918u, u_input.a), 4294967295u)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -22220i, -2147483647i), vec3<i32>(2147483647i, 0i, -2147483647i)), -36926i))));
    let var_1 = !(!any(select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))));
    var var_2 = vec4<bool>(var_1, var_1, false, ((var_0.x >> (arg_1.d % 32u)) >> (var_0.x % 32u)) < countOneBits(u_input.a << (~var_0.x % 32u)));
    var_2 = !(!vec4<bool>(true, var_1, var_1, true));
    var var_3 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_add_u32(min(var_0.x, arg_1.d), ~var_0.x), 0u, var_0.x), 4294967295u), arg_1.a);
    return ~vec4<i32>(i32(-1i) * -43904i, _wgslsmith_mult_i32(1i, ~_wgslsmith_sub_i32(-2147483647i, -20797i)), 1i, -8903i);
}

fn func_1() -> Struct_1 {
    var var_0 = -(_wgslsmith_dot_vec4_i32(-vec4<i32>(2561i, 93436i, -41857i, 2147483647i) & func_2(-730f, Struct_5(Struct_1(vec3<u32>(4294967295u, 4294967295u, u_input.a), u_input.b.x), vec4<f32>(-160f, -198f, -269f, 1062f), vec2<f32>(1766f, -1601f), u_input.b.x)), select(vec4<i32>(-76188i, -1i, 1i, 2295i), -vec4<i32>(-41486i, 46250i, -1i, 0i), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), false))) ^ _wgslsmith_dot_vec2_i32(reverseBits(-vec2<i32>(-20327i, -1i)), vec2<i32>(1i, 1i)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -769f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-450f)) + _wgslsmith_f_op_f32(abs(1073f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1513f - -1959f))))), _wgslsmith_f_op_f32(-1f));
    var var_2 = Struct_5(Struct_1(vec3<u32>(~(~4294967295u), _wgslsmith_div_u32(0u, 1u), firstTrailingBit(~29561u)), 4294967295u), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(floor(-526f)), -262f, var_1.x), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2284f, -624f) - _wgslsmith_f_op_vec2_f32(-var_1.yy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(315f, var_1.x)))), _wgslsmith_div_u32(firstLeadingBit(57355u) >> (1u % 32u), _wgslsmith_mod_u32((3968u | u_input.a) >> (4294967295u % 32u), u_input.a)));
    var_2 = Struct_5(Struct_1(~max(vec3<u32>(0u, u_input.a, var_2.a.b), vec3<u32>(var_2.a.a.x, u_input.b.x, 3929u)) >> (vec3<u32>(4294967295u, 4294967295u, ~88534u) % vec3<u32>(32u)), max(_wgslsmith_add_u32(~1964u, var_2.d), ~var_2.d)), _wgslsmith_f_op_vec4_f32(select(var_2.b, _wgslsmith_f_op_vec4_f32(-var_2.b), !vec4<bool>(true, true, false, any(vec3<bool>(true, false, true))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-517f, 674f)))))), 1u);
    var var_3 = _wgslsmith_div_i32(max(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), abs(vec2<i32>(0i, -2147483647i))) >> (56202u % 32u), firstTrailingBit(-9687i)), 1i);
    return var_2.a;
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -519f)), _wgslsmith_f_op_f32(f32(-1f) * -508f), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-342f - 396f))))));
    let var_1 = arg_1.b.a;
    var_0 = vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1217f)))), 829f);
    global2 = array<Struct_3, 17>();
    global1 = array<vec4<u32>, 6>();
    return StorageBuffer(~(~(u_input.a >> (0u % 32u))) << (var_1.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b.zx;
    let x = u_input.a;
    s_output = func_4(~(-50138i), Struct_2(Struct_1(vec3<u32>(u_input.b.x, u_input.b.x, 17039u) | vec3<u32>(1u, var_0.x, 37390u), select(~u_input.b.x, var_0.x, true)), func_1()));
}

