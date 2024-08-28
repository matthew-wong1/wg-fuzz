struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec3<f32>,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>) -> vec3<u32> {
    return vec3<u32>(~(~((u_input.a & 4294967295u) >> (18125u % 32u))), ~_wgslsmith_add_u32(u_input.a, select(firstTrailingBit(arg_0), arg_0, arg_1.x >= 784f)), arg_0);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -665f))), all(vec3<bool>(arg_1.a.a.x & (true && arg_2.a.a.a.x), arg_2.a.a.a.x, true)), Struct_3(arg_1, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -518f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1.e.x, arg_1.c.x))), -332f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(988f)))), 1i);
    let var_1 = arg_0.x;
    var var_2 = Struct_2(arg_2.a.a, vec3<u32>(firstLeadingBit(firstTrailingBit(~44556u)), _wgslsmith_dot_vec3_u32(~(arg_1.a.b.ywz << (vec3<u32>(95871u, 4294967295u, u_input.b.x) % vec3<u32>(32u))), vec3<u32>(8419u, _wgslsmith_mod_u32(1u, 28511u), ~0u)), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a.b.x, arg_1.a.c, arg_1.b.x, arg_1.d.x), arg_1.a.b), _wgslsmith_dot_vec4_u32(arg_1.a.b, arg_2.a.a.b))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d, var_1))), var_1, var_1), vec3<u32>(var_0.c.a.b.x, firstLeadingBit(arg_2.a.a.c), max(_wgslsmith_div_u32(var_0.c.a.d.x, ~var_0.c.a.d.x), _wgslsmith_add_u32(arg_2.a.d.x & u_input.a, _wgslsmith_add_u32(47562u, var_0.c.a.a.c)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -262f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.c.x) - 1823f), var_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(148f - -514f), arg_1.a.a.x))) * arg_1.e));
    var var_3 = false;
    let var_4 = !arg_2.a.a.a.x;
    return select(var_2.a.a, select(select(var_2.a.a, var_0.c.a.a.a, vec4<bool>(!arg_1.a.a.x, !arg_1.a.a.x, false, true || var_0.c.a.a.a.x)), select(!arg_2.a.a.a, !vec4<bool>(var_2.a.a.x, true, var_4, var_2.a.a.x), vec4<bool>(var_1 <= -1888f, true, true, true != var_2.a.a.x)), true), !select(arg_1.a.a, !(!var_0.c.a.a.a), all(!var_0.c.a.a.a.zz)));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = ~(-vec3<i32>(-10548i | arg_1.e, 1i, -58411i));
    let var_1 = Struct_1(select(arg_1.c.a.a.a, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.b.x, arg_1.c.a.c.x, arg_1.d)), Struct_2(Struct_1(vec4<bool>(false, false, arg_1.b, arg_1.b), arg_1.c.a.a.b, 0u), ~vec3<u32>(0u, u_input.a, u_input.b.x), _wgslsmith_f_op_vec3_f32(arg_1.c.b * arg_1.c.b), func_3(41644u, arg_1.c.a.e), _wgslsmith_f_op_vec4_f32(arg_1.c.a.e + vec4<f32>(arg_1.a, arg_1.a, 459f, -981f))), Struct_3(arg_1.c.a, _wgslsmith_f_op_vec3_f32(max(arg_1.c.b, vec3<f32>(-749f, arg_1.d, -2354f))))), arg_1.b), (_wgslsmith_add_vec4_u32(vec4<u32>(arg_1.c.a.a.b.x, arg_1.c.a.d.x, 0u, arg_1.c.a.a.b.x), ~vec4<u32>(u_input.b.x, arg_1.c.a.a.c, u_input.b.x, 26101u)) << (~select(vec4<u32>(arg_1.c.a.d.x, u_input.a, arg_1.c.a.b.x, u_input.a), vec4<u32>(25955u, 20357u, u_input.a, u_input.b.x), arg_1.c.a.a.a) % vec4<u32>(32u))) << (vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(55517u, u_input.b.x, 0u, u_input.a), arg_1.c.a.a.b), _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(arg_1.c.a.a.b, arg_1.c.a.a.b), arg_1.c.a.b.x), u_input.b.x, u_input.a) % vec4<u32>(32u)), ~u_input.b.x >> (4294967295u % 32u));
    var var_2 = 2147483647i;
    var var_3 = select(arg_0.x, !(!any(var_1.a.xy)), arg_1.b);
    var_3 = any(arg_0.xy);
    return arg_1.c;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: u32) -> vec4<f32> {
    let var_0 = -reverseBits(countOneBits(vec3<i32>(1i, 1i, 1i)));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.e.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1019f - 560f), 1753f)))), false, func_2(select(vec3<bool>(arg_0.c.x >= arg_0.e.x, any(vec4<bool>(true, arg_0.a.a.x, true, arg_1.a.a.x)), true), arg_1.a.a.wxz, arg_0.a.a.x), Struct_4(arg_0.e.x, any(vec4<bool>(arg_0.a.a.x, arg_1.a.a.x, false, arg_0.a.a.x)) & (20231i != var_0.x), Struct_3(arg_0, vec3<f32>(arg_0.e.x, 323f, 675f)), _wgslsmith_f_op_f32(-247f * _wgslsmith_f_op_f32(step(-556f, arg_0.c.x))), -13174i)), arg_0.e.x, _wgslsmith_mult_i32(var_0.x, reverseBits(reverseBits(-4428i & var_0.x))));
    var var_2 = Struct_2(func_2(vec3<bool>(false, !arg_1.a.a.x, all(vec4<bool>(arg_0.a.a.x, false, false, arg_1.a.a.x))), Struct_4(_wgslsmith_f_op_f32(abs(416f)), any(func_2(vec3<bool>(var_1.b, false, true), Struct_4(arg_0.e.x, false, var_1.c, arg_1.c.x, var_1.e)).a.a.a.ywy), func_2(var_1.c.a.a.a.zyz, Struct_4(-467f, false, Struct_3(arg_0, arg_0.c), 764f, var_1.e)), 1295f, 1i)).a.a, countOneBits(vec3<u32>(var_1.c.a.b.x | arg_0.b.x, 66841u ^ arg_0.d.x, var_1.c.a.d.x ^ 4294967295u) | ~vec3<u32>(1u, 12107u, arg_0.b.x)), func_2(vec3<bool>(!select(arg_1.a.a.x, true, var_1.c.a.a.a.x), func_2(!vec3<bool>(var_1.c.a.a.a.x, false, arg_1.a.a.x), Struct_4(var_1.d, var_1.b, var_1.c, var_1.d, 50913i)).a.a.a.x, true), Struct_4(462f, var_1.c.a.a.a.x, Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_1.c.x, 773f) * vec3<f32>(-1829f, arg_1.c.x, 123f))), _wgslsmith_f_op_f32(-arg_1.e.x), var_0.x)).b, _wgslsmith_mult_vec3_u32(func_3(~u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(arg_0.e)) + vec4<f32>(arg_0.e.x, var_1.a, arg_0.c.x, 1060f))), var_1.c.a.d), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.e), vec4<f32>(_wgslsmith_f_op_f32(-arg_1.e.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(694f, 1223f) - var_1.d), 440f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))))));
    var var_3 = var_2.a;
    let var_4 = -818f;
    return arg_1.e;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = -min(49923i, 1i);
    var var_1 = arg_0.e.x != arg_0.c.x;
    var var_2 = arg_0.a;
    var var_3 = func_2(!select(vec3<bool>(true, !arg_0.a.a.x, false), !vec3<bool>(var_2.a.x, false, true), !vec3<bool>(false, var_2.a.x, var_2.a.x)), Struct_4(arg_0.c.x, true, func_2(vec3<bool>(true, true, false), Struct_4(-280f, !var_2.a.x, func_2(var_2.a.zzw, Struct_4(arg_0.e.x, false, Struct_3(Struct_2(Struct_1(arg_0.a.a, var_2.b, 63580u), arg_1, arg_0.e.wzw, vec3<u32>(arg_0.d.x, 1u, arg_1.x), vec4<f32>(-426f, -425f, 326f, arg_0.c.x)), arg_0.e.xxw), -638f, 1i)), -1000f, -1i)), _wgslsmith_f_op_f32(select(func_2(func_4(vec3<f32>(-542f, -946f, arg_0.e.x), Struct_2(Struct_1(arg_0.a.a, var_2.b, 4294967295u), var_2.b.xyw, vec3<f32>(arg_0.c.x, arg_0.e.x, arg_0.e.x), vec3<u32>(arg_1.x, arg_2.x, arg_2.x), vec4<f32>(-981f, arg_0.e.x, arg_0.c.x, arg_0.c.x)), Struct_3(Struct_2(arg_0.a, vec3<u32>(1u, 4294967295u, 4294967295u), vec3<f32>(308f, -189f, 1687f), arg_0.b, vec4<f32>(arg_0.c.x, -1248f, arg_0.c.x, -249f)), arg_0.e.ywz)).xwy, Struct_4(516f, false, Struct_3(arg_0, vec3<f32>(814f, arg_0.e.x, arg_0.c.x)), arg_0.c.x, -1841i)).a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-400f * arg_0.c.x)), true)), -_wgslsmith_dot_vec2_i32(select(vec2<i32>(72178i, -2147483647i), vec2<i32>(1i, 1i), arg_0.a.a.x), -vec2<i32>(2733i, 12834i)))).a;
    var var_4 = false;
    return func_2(arg_0.a.a.xxx, Struct_4(var_3.e.x, var_3.a.a.x || all(arg_0.a.a), Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1564f, 1000f, var_3.e.x)) - vec3<f32>(var_3.c.x, arg_0.e.x, -1863f))), -1837f, ~min(-1i, ~(-7141i)))).a.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(vec4<bool>(false, true, false, false), vec4<u32>(18597u, u_input.a, u_input.b.x, 0u), 59358u), vec3<u32>(1u, u_input.b.x, 25028u) ^ vec3<u32>(30691u, u_input.a, 0u), vec3<f32>(-281f, -700f, 670f), vec3<u32>(u_input.b.x, u_input.a, 1u), _wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(u_input.a, u_input.a, 76044u, 5450u), 4294967295u), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), vec3<f32>(-2052f, -1119f, -772f), vec3<u32>(u_input.a, 0u, 15299u), vec4<f32>(646f, -597f, 354f, -437f)), Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec4<u32>(52457u, u_input.b.x, 1u, 0u), u_input.a), vec3<u32>(34922u, u_input.b.x, 4294967295u), vec3<f32>(486f, 1454f, 926f), vec3<u32>(u_input.b.x, u_input.a, 4294967295u), vec4<f32>(-322f, 1391f, -615f, -386f)), 0u))), ~vec3<u32>(4294967295u, 10984u, u_input.b.x) & vec3<u32>(98814u, 102906u, u_input.b.x), reverseBits(u_input.b))), -517f)), false, func_2(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false)), Struct_4(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-700f, 432f))), !any(vec3<bool>(false, false, true)), Struct_3(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 17035u), 1u), vec3<u32>(u_input.b.x, 1u, 1u), vec3<f32>(-461f, 995f, 190f), vec3<u32>(u_input.a, u_input.b.x, 57430u), vec4<f32>(598f, -1000f, -1147f, 591f)), vec3<f32>(1447f, 467f, -341f)), 107f, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, 65206i), vec3<i32>(-2147483647i, -22213i, 17406i)) & -52019i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_5(Struct_2(Struct_1(vec4<bool>(true, true, false, true), vec4<u32>(u_input.b.x, u_input.a, u_input.a, 31326u), u_input.b.x), vec3<u32>(u_input.a, 119696u, 4294967295u), vec3<f32>(-1977f, -963f, 548f), vec3<u32>(u_input.b.x, u_input.b.x, 6016u), vec4<f32>(-1563f, 293f, -124f, 402f)), vec3<u32>(0u, 33926u, 0u), u_input.b)), _wgslsmith_f_op_f32(max(-576f, 1451f)))))), _wgslsmith_add_i32(-_wgslsmith_clamp_i32(-69904i, 1i, -2147483647i) << (~(~7158u) % 32u), ~13466i));
    var var_1 = _wgslsmith_f_op_f32(-var_0.d);
    var_1 = var_0.c.b.x;
    let var_2 = _wgslsmith_div_vec3_f32(var_0.c.a.e.yxw, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.d, _wgslsmith_f_op_f32(-var_0.d), _wgslsmith_div_f32(var_0.a, 654f)), _wgslsmith_div_vec3_f32(var_0.c.b, var_0.c.b))));
    var var_3 = _wgslsmith_div_u32(~1u, ~_wgslsmith_div_u32(~1u, u_input.a << (u_input.a % 32u))) | ~u_input.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(1i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.c.a.c.x)), var_0.d));
}

