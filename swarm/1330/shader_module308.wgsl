struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(vec3<u32>((u_input.a & _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a, 4294967295u, u_input.a), vec4<u32>(44845u, 2050u, 1u, 48474u))) >> (74420u % 32u), 0u >> (_wgslsmith_div_u32(u_input.a, select(66683u, 51433u, false)) % 32u), abs(_wgslsmith_mult_u32(u_input.a, 10368u) << (1u % 32u))), true, ~vec2<u32>(~27009u, abs(abs(1u))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))));
    var_0 = Struct_3(~_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(82994u, 38482u, 53072u), vec3<u32>(4294967295u, var_0.c.x, var_0.a.x)), ~var_0.a), var_0.a), var_0.d, var_0.c, select(any(!(!vec4<bool>(true, var_0.d, var_0.b, var_0.d))), true, true));
    var_0 = Struct_3(_wgslsmith_add_vec3_u32(~((var_0.a ^ var_0.a) << (vec3<u32>(u_input.a, var_0.c.x, 42912u) % vec3<u32>(32u))), var_0.a), true, _wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(5453u, 9274u)), true);
    var_0 = Struct_3(select(var_0.a, _wgslsmith_mult_vec3_u32(select(firstTrailingBit(vec3<u32>(29736u, 1u, 0u)), ~var_0.a, var_0.b), reverseBits(firstLeadingBit(var_0.a))), !vec3<bool>(!var_0.d, true, all(vec3<bool>(false, false, false)))), var_0.d, var_0.c, var_0.b);
    let var_1 = Struct_2(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0.a.x, 33583u), vec4<u32>(25857u, 37440u, 39705u, 4294967295u)), vec4<u32>(~var_0.c.x, ~var_0.a.x, _wgslsmith_mult_u32(u_input.a, 1u), var_0.c.x)) & 4294967295u);
    return -abs(~_wgslsmith_mod_i32(1i, -21508i));
}

fn func_2(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = func_3();
    var var_1 = Struct_2(~(30887u ^ (_wgslsmith_div_u32(1u, arg_0.a) >> ((u_input.a << (25911u % 32u)) % 32u))));
    let var_2 = Struct_3(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, var_1.a, u_input.a), vec3<u32>(var_1.a, 2711u, 20779u)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(~16690u, 8201u, 4294967295u), _wgslsmith_add_vec3_u32(min(vec3<u32>(36534u, var_1.a, 84368u), vec3<u32>(u_input.a, 16346u, u_input.a)), firstTrailingBit(vec3<u32>(0u, u_input.a, u_input.a))), vec3<u32>(7275u, _wgslsmith_div_u32(var_1.a, 0u), abs(6913u))), (false | any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)))) & true, ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(var_1.a, u_input.a), vec2<u32>(1u, var_1.a)), ~vec2<u32>(u_input.a, 32295u)) << ((vec2<u32>(~u_input.a, firstLeadingBit(u_input.a)) & reverseBits(~vec2<u32>(arg_0.a, arg_0.a))) % vec2<u32>(32u)), !(true | any(vec2<bool>(false, true))) || (true & ((44587i | var_0) != _wgslsmith_div_i32(-28059i, -1i))));
    var var_3 = select(~vec3<i32>(var_0, max(1i, var_0), var_0), _wgslsmith_sub_vec3_i32(vec3<i32>(~0i, var_0 << (4294967295u % 32u), 0i), select(vec3<i32>(-1i, -1i, 11103i), vec3<i32>(var_0, 1i, 1i), var_2.d)), !vec3<bool>(true, var_2.d, 51277u >= var_2.c.x)) ^ max(abs(-(~vec3<i32>(-2147483647i, var_0, 34919i))), ~vec3<i32>(-30258i, ~(-31941i), _wgslsmith_clamp_i32(2147483647i, 2147483647i, var_0)));
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(122f * -786f) + -571f), _wgslsmith_f_op_f32(1f + -972f)), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-535f * 1282f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(373f - 278f))))));
    return vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a & var_2.c.x, var_2.a.x, ~2856u, countOneBits(7971u)) ^ ~firstLeadingBit(vec4<u32>(45975u, var_2.c.x, u_input.a, var_1.a)), select(~(vec4<u32>(arg_0.a, var_1.a, var_1.a, 0u) << (vec4<u32>(u_input.a, var_2.a.x, 1u, arg_0.a) % vec4<u32>(32u))), vec4<u32>(47491u << (u_input.a % 32u), ~4294967295u, arg_0.a, select(var_1.a, var_2.c.x, false)), true)), _wgslsmith_mod_u32(var_1.a, var_1.a));
}

fn func_1(arg_0: vec2<bool>) -> vec2<u32> {
    return func_2(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(116395u, u_input.a, 31056u) | vec3<u32>(49087u, u_input.a, u_input.a), vec3<u32>(0u, u_input.a, u_input.a)) >> (~55001u % 32u)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = Struct_2(~1u);
    var var_1 = _wgslsmith_mult_i32(29857i, _wgslsmith_dot_vec3_i32(~reverseBits(-vec3<i32>(2915i, -17981i, 1i)), select(vec3<i32>(countOneBits(0i), ~(-7138i), abs(34887i)), vec3<i32>(42008i, 32559i, 0i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, arg_0.x, arg_0.x), vec3<u32>(37147u, 0u, 4591u)) % vec3<u32>(32u)), false)));
    var_1 = abs(2147483647i);
    let var_2 = select(!vec3<bool>(arg_1.x, false, true), select(arg_1, select(!arg_1, !select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1, vec3<bool>(arg_1.x, arg_1.x, false)), !any(vec3<bool>(arg_1.x, arg_1.x, arg_1.x))), vec3<bool>(!arg_1.x, true, true || any(arg_1.xy))), true);
    var var_3 = !any(!(!arg_1.xy));
    return Struct_1(~(-firstTrailingBit(abs(vec3<i32>(409i, 0i, -19910i)))), arg_0.x, select(vec3<bool>(false, true, false), !var_2, select(vec3<bool>(true, true, var_2.x), !vec3<bool>(false, false, var_2.x), !var_2)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_1(select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec3<bool>(true, false, _wgslsmith_mod_i32(func_3(), firstTrailingBit(-2147483647i)) <= 1i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-983f, -745f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(238f, 1485f)))))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1161f, 808f) * vec2<f32>(1000f, 1444f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-237f, 975f), vec2<f32>(2186f, 1723f), true)))))));
    var var_1 = abs(min(-1i, var_0.a.x)) ^ min(1i, _wgslsmith_sub_i32(-1i, var_0.a.x));
    var var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.a.x, var_0.a.x), var_0.a.zy), min(vec2<i32>(var_0.a.x, 2147483647i), _wgslsmith_div_vec2_i32(var_0.a.zx, vec2<i32>(var_0.a.x, var_0.a.x)))), ~abs(i32(-1i) * -25999i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(-21799i, var_0.a.x, -1i, var_0.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(16789i, 2147483647i, var_0.a.x, var_0.a.x), vec4<i32>(var_0.a.x, var_0.a.x, 29633i, 15405i))), vec4<i32>(var_0.a.x, _wgslsmith_dot_vec3_i32(var_0.a, vec3<i32>(52720i, 55771i, var_0.a.x)), reverseBits(0i), var_0.a.x)), firstLeadingBit(1i)) >> (~(~vec4<u32>(4294967295u, ~var_0.b, 61323u, u_input.a)) % vec4<u32>(32u));
    var_1 = firstTrailingBit(1i);
    var_1 = reverseBits(-1i);
    var_1 = ~(select(abs(~(-4445i)), (var_0.a.x & 33592i) << (u_input.a % 32u), true) & _wgslsmith_div_i32(_wgslsmith_div_i32(var_2.x, -var_0.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(var_2.wy, vec2<i32>(-1i, -2147483647i)), vec2<i32>(var_2.x, var_2.x))));
    let var_3 = Struct_2(func_2(Struct_2(~(~1u))).x);
    var var_4 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-464f, -1256f, 362f)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(-2147483647i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(1738f, -1000f, var_4.x) - vec3<f32>(-1017f, var_4.x, var_4.x)))), vec3<f32>(_wgslsmith_div_f32(308f, -1836f), 1086f, _wgslsmith_f_op_f32(floor(-430f)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(var_4.x, 1175f)), _wgslsmith_f_op_f32(sign(-186f)), -2167f)))), func_4(reverseBits(vec2<u32>(~0u, 25666u)), select(vec3<bool>(var_0.c.x, false, true), vec3<bool>(false, true, true), select(vec3<bool>(var_0.c.x, false, var_0.c.x), select(var_0.c, var_0.c, true), var_0.c)), vec2<f32>(594f, var_4.x)).b);
}

