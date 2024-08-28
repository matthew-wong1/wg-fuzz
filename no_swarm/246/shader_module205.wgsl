struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
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

var<private> global0: vec2<i32>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_3 {
    return Struct_3(!(!(!(!vec4<bool>(false, arg_2.e, arg_2.e, true)))), u_input.a);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_4) -> Struct_3 {
    let var_0 = arg_3.b.x;
    global0 = _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(-_wgslsmith_clamp_vec2_i32(~vec2<i32>(-3979i, u_input.a), vec2<i32>(arg_1.b, arg_3.a.b), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0.b, arg_0.b), vec2<i32>(arg_3.a.b, global0.x))), ~(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-19979i, -49391i), vec2<i32>(14903i, -2147483647i), vec2<i32>(19734i, 1i)))), vec2<i32>(-_wgslsmith_mult_i32(firstTrailingBit(-1i), arg_0.b), _wgslsmith_dot_vec4_i32(max(-vec4<i32>(u_input.a, global0.x, global0.x, 1i), abs(vec4<i32>(0i, global0.x, -82466i, 11121i))), abs(-vec4<i32>(0i, global0.x, u_input.a, 2147483647i)))));
    return arg_0;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4) -> vec2<f32> {
    var var_0 = 66700i;
    let var_1 = arg_1.b.x;
    global0 = _wgslsmith_clamp_vec2_i32(~_wgslsmith_add_vec2_i32(vec2<i32>(31367i, -27936i) << (~arg_1.b % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, 1i, -14239i), vec4<i32>(u_input.a, global0.x, arg_0.b, -1i)), arg_0.b)), min(vec2<i32>(abs(countOneBits(u_input.a)), 35226i), _wgslsmith_mod_vec2_i32(~firstTrailingBit(vec2<i32>(arg_1.a.b, arg_1.a.b)), abs(max(vec2<i32>(-30127i, -2147483647i), vec2<i32>(-2324i, global0.x))))), vec2<i32>(0i, -(~arg_0.b) << (4294967295u % 32u)));
    var_0 = arg_1.a.b;
    var var_2 = select(~firstLeadingBit(~(~arg_1.b)), firstTrailingBit(~select(vec2<u32>(2041u, arg_1.b.x), vec2<u32>(arg_1.b.x, u_input.b.x), arg_0.a.ww) << (vec2<u32>(0u, ~1u) % vec2<u32>(32u))), vec2<bool>(!arg_1.a.a.x, any(arg_1.a.a.yx) || func_2(abs(vec3<i32>(global0.x, -22716i, arg_1.a.b)), arg_1.b, Struct_2(Struct_1(vec2<u32>(3667u, u_input.b.x)), Struct_1(u_input.b.yx), u_input.b.x, Struct_1(vec2<u32>(u_input.b.x, arg_1.b.x)), arg_1.a.a.x), select(vec4<i32>(arg_0.b, -18469i, 11551i, arg_0.b), vec4<i32>(global0.x, arg_0.b, 0i, 17043i), arg_0.a.x)).a.x));
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(361f)) - _wgslsmith_f_op_f32(319f + 2381f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f - -172f) * _wgslsmith_f_op_f32(ceil(1000f)))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec3<f32>) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_f32(-arg_2.x);
    let var_1 = Struct_2(Struct_1(vec2<u32>(~_wgslsmith_mult_u32(4294967295u, u_input.b.x), (7402u ^ u_input.b.x) | u_input.b.x)), Struct_1(~vec2<u32>(u_input.b.x | 13937u, 90857u)), max(abs(4294967295u), ~firstLeadingBit(~u_input.b.x)), Struct_1(reverseBits(u_input.b.zy >> (~u_input.b.zx % vec2<u32>(32u)))), false);
    global0 = firstLeadingBit(firstTrailingBit(-vec2<i32>(-31237i, arg_1.b) >> (u_input.b.zx % vec2<u32>(32u)))) ^ (_wgslsmith_mod_vec2_i32(firstLeadingBit(select(vec2<i32>(u_input.a, 15171i), vec2<i32>(2147483647i, 0i), arg_1.a.x)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i, 19885i), vec2<i32>(u_input.a, 20004i)) ^ firstLeadingBit(vec2<i32>(u_input.a, 16770i))) | -vec2<i32>(arg_1.b, 15633i));
    var var_2 = !(!arg_1.a.x);
    return ~vec2<i32>(-u_input.a, 2147483647i);
}

fn func_1() -> Struct_1 {
    global0 = -func_5(_wgslsmith_f_op_vec2_f32(func_4(func_3(Struct_3(vec4<bool>(false, false, true, true), -1i), func_2(vec3<i32>(18875i, -37511i, -68730i), u_input.b.yy, Struct_2(Struct_1(u_input.b.zy), Struct_1(vec2<u32>(32190u, u_input.b.x)), u_input.b.x, Struct_1(u_input.b.xy), true), vec4<i32>(u_input.a, global0.x, u_input.a, global0.x)), select(u_input.b, vec3<u32>(u_input.b.x, u_input.b.x, 1u), vec3<bool>(true, false, false)), Struct_4(Struct_3(vec4<bool>(true, false, false, true), 1i), vec2<u32>(0u, 4294967295u))), Struct_4(func_2(vec3<i32>(global0.x, u_input.a, -50522i), vec2<u32>(14259u, u_input.b.x), Struct_2(Struct_1(u_input.b.yy), Struct_1(u_input.b.xz), u_input.b.x, Struct_1(u_input.b.zx), true), vec4<i32>(global0.x, u_input.a, -1i, -2147483647i)), ~u_input.b.yz))), func_3(Struct_3(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true)), func_2(vec3<i32>(u_input.a, u_input.a, 0i), vec2<u32>(42070u, 4294967295u), Struct_2(Struct_1(u_input.b.xz), Struct_1(u_input.b.yx), 0u, Struct_1(vec2<u32>(u_input.b.x, u_input.b.x)), true), vec4<i32>(7973i, -44131i, global0.x, -2333i)).b), func_2(-vec3<i32>(u_input.a, global0.x, global0.x), _wgslsmith_clamp_vec2_u32(u_input.b.yz, vec2<u32>(17338u, 5001u), u_input.b.yy), Struct_2(Struct_1(u_input.b.xz), Struct_1(vec2<u32>(58960u, u_input.b.x)), u_input.b.x, Struct_1(vec2<u32>(45428u, 4294967295u)), true), ~vec4<i32>(20330i, global0.x, 2054i, u_input.a)), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) >> ((vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<u32>(u_input.b.x, 1u, u_input.b.x)) % vec3<u32>(32u)), Struct_4(func_2(vec3<i32>(u_input.a, global0.x, -53218i), vec2<u32>(u_input.b.x, 25745u), Struct_2(Struct_1(u_input.b.yx), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x, Struct_1(vec2<u32>(u_input.b.x, 0u)), true), vec4<i32>(global0.x, u_input.a, 57315i, global0.x)), u_input.b.zz)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1811f, 367f, -130f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-939f, 308f, 739f)))));
    let var_0 = Struct_2(Struct_1(~max(~vec2<u32>(12359u, 38828u), ~vec2<u32>(u_input.b.x, 1u))), Struct_1(abs(vec2<u32>(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, 1u)))), 49291u, Struct_1(u_input.b.zy), any(func_2(vec3<i32>(u_input.a, global0.x, global0.x), _wgslsmith_add_vec2_u32(u_input.b.zx, u_input.b.zx), Struct_2(Struct_1(vec2<u32>(83659u, 46878u)), Struct_1(vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x, Struct_1(u_input.b.zx), false), vec4<i32>(global0.x, u_input.a, -1i, -19359i) ^ vec4<i32>(1i, u_input.a, -1i, -1i)).a) || select(all(vec3<bool>(true, true, false)), false, true));
    global0 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, -21237i), ~_wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, global0.x)), vec2<i32>(min(-1i, -2147483647i), 0i)));
    var var_1 = max(-1i, u_input.a);
    let var_2 = var_0.d;
    return Struct_1(vec2<u32>(1u, 1u));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    let var_0 = arg_1.a.a.x;
    global0 = ~_wgslsmith_add_vec2_i32(abs(select(vec2<i32>(17572i, arg_2), vec2<i32>(global0.x, -1555i), vec2<bool>(false, arg_1.a.a.x))) ^ -vec2<i32>(0i, 0i), vec2<i32>(~u_input.a, -58250i));
    let var_1 = Struct_3(func_2(_wgslsmith_clamp_vec3_i32(~(vec3<i32>(0i, 0i, arg_2) | vec3<i32>(28645i, 40576i, arg_2)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, global0.x, 0i), vec3<i32>(2147483647i, 5699i, arg_2)) & vec3<i32>(arg_2, global0.x, -1i), -_wgslsmith_div_vec3_i32(vec3<i32>(1i, global0.x, arg_1.a.b), vec3<i32>(-2147483647i, global0.x, 2147483647i))), vec2<u32>(~(~arg_1.b.x), arg_0.a.x), Struct_2(func_1(), Struct_1(vec2<u32>(1u, arg_1.b.x)), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(4120u, arg_0.a.x, arg_1.b.x), ~arg_0.a.x), Struct_1(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 2699u), vec2<u32>(u_input.b.x, 4294967295u), vec2<u32>(arg_1.b.x, arg_1.b.x))), _wgslsmith_dot_vec2_u32(vec2<u32>(6531u, arg_0.a.x), vec2<u32>(22065u, 13413u)) >= u_input.b.x), -vec4<i32>(arg_1.a.b, countOneBits(41026i), arg_1.a.b, -5836i)).a, -arg_1.a.b);
    let var_2 = ~u_input.b.x;
    global0 = vec2<i32>(~(-12470i), u_input.a);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(false, !any(vec2<bool>(true, true)), !all(vec4<bool>(true, true, true, true))), select(vec3<bool>(!all(vec4<bool>(true, true, true, false)), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), true), vec3<bool>(!(u_input.b.x <= u_input.b.x), true, any(vec4<bool>(false, false, false, true)) || true), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), true))));
    let var_1 = firstTrailingBit(~vec2<i32>(_wgslsmith_mult_i32(19087i, -4019i) | (6426i >> (u_input.b.x % 32u)), u_input.a));
    let var_2 = var_0;
    var var_3 = func_6(func_1(), Struct_4(Struct_3(!(!vec4<bool>(true, false, false, var_2.x)), -max(-88810i, global0.x)), ~_wgslsmith_add_vec2_u32(min(vec2<u32>(0u, u_input.b.x), vec2<u32>(u_input.b.x, 0u)), vec2<u32>(u_input.b.x, u_input.b.x))), 0i);
    global0 = var_1;
    let var_4 = var_3.a.x;
    var var_5 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, -countOneBits(vec2<i32>(_wgslsmith_sub_i32(-1315i, 4317i), var_1.x)));
}

