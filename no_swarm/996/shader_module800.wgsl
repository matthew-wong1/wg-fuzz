struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<f32>, arg_2: u32, arg_3: i32) -> u32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.x, arg_1.x, -1000f, arg_1.x), vec4<f32>(768f, arg_1.x, 201f, -685f))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_1.x, -479f, 2204f)))))))))));
    var_1 = vec4<f32>(-790f, _wgslsmith_f_op_f32(max(arg_1.x, -138f)), var_1.x, -678f);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, var_1.x, var_1.x, 348f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-582f, var_1.x, arg_1.x, arg_1.x) - vec4<f32>(var_1.x, var_1.x, -814f, arg_1.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-687f, arg_1.x, -2301f, 1313f) - vec4<f32>(-278f, arg_1.x, arg_1.x, var_1.x)), true)), vec4<f32>(-289f, var_1.x, _wgslsmith_f_op_f32(1477f + arg_1.x), -298f)))));
    var var_2 = u_input.c;
    return ~max(var_0, arg_0);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(u_input.a.yzx, ~(~0u), all(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), vec2<u32>(1u, ~59717u | func_3(~4294967295u, _wgslsmith_f_op_vec3_f32(vec3<f32>(1238f, -1964f, 598f) + vec3<f32>(-1753f, -166f, -1537f)), min(4946u, 51007u), i32(-1i) * -5909i)), u_input.c);
    var var_1 = ~vec4<u32>(24315u, ~(~var_0.b) | ~var_0.b, ~(var_0.b & (var_0.d.x | var_0.d.x)), _wgslsmith_dot_vec3_u32(~vec3<u32>(30261u, 30605u, 20243u), firstTrailingBit(~vec3<u32>(var_0.d.x, var_0.b, 1u))));
    var_1 = max(~vec4<u32>(var_1.x, 87810u, reverseBits(_wgslsmith_add_u32(var_1.x, 10864u)), ~var_0.b), select(vec4<u32>(abs(select(59159u, var_0.d.x, var_0.c)), var_1.x << (5006u % 32u), var_0.d.x, 28856u), firstTrailingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(12173u, 1u, 13051u, 4294967295u), vec4<u32>(1u, 70492u, var_0.d.x, var_1.x)), ~vec4<u32>(0u, 1u, 20907u, 0u))), !select(vec4<bool>(false, true, var_0.c, var_0.c), vec4<bool>(var_0.c, false, true, var_0.c), select(var_0.c, false, false))));
    let var_2 = 2147483647i;
    let var_3 = all(vec3<bool>(!var_0.c || var_0.c, var_0.c, all(vec3<bool>(var_0.d.x <= 1u, var_0.b != 11332u, any(vec4<bool>(false, var_0.c, false, false))))));
    return Struct_1(countOneBits(var_0.a), abs(var_1.x), select(var_0.c, var_0.c, false), min(var_1.xw, _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(var_0.d.x, var_0.d.x)), var_0.d)), u_input.c ^ 22283i);
}

fn func_1() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(126f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-249f)), _wgslsmith_f_op_f32(-527f - 1632f), false)), 550f, true)), -1000f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, 122f, 374f))))));
    var var_1 = vec4<u32>(4294967295u, ~min(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 24516u, 105569u), vec3<u32>(29663u, 1u, 49954u)), 1u), 22914u, _wgslsmith_dot_vec3_u32(reverseBits(firstTrailingBit(vec3<u32>(4294967295u, 17884u, 1u))), vec3<u32>(1u, ~119948u, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(5721u, 4294967295u, 1u), vec3<u32>(0u, 66087u, 43190u)), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u))))));
    return Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_0.x)), -709f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)) * _wgslsmith_div_f32(var_0.x, -2033f)))), Struct_1(abs(vec3<i32>(firstLeadingBit(u_input.b), _wgslsmith_add_i32(u_input.b, u_input.a.x), 1i)), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~var_1.xy, reverseBits(vec2<u32>(var_1.x, var_1.x))), max(~var_1.x, firstTrailingBit(var_1.x))), true, ~(~vec2<u32>(4294967295u, var_1.x)), _wgslsmith_clamp_i32(firstLeadingBit(-u_input.a.x), _wgslsmith_add_i32(-u_input.c, 1i), u_input.a.x)), func_2());
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.c.c;
    let var_1 = arg_0.b;
    var var_2 = Struct_3(vec3<i32>(-_wgslsmith_clamp_i32(34212i, arg_0.b.a.x, 0i), arg_0.b.a.x, firstTrailingBit(~(-2147483647i))) ^ (select(select(arg_0.c.a, var_1.a, vec3<bool>(var_1.c, false, var_0)), -vec3<i32>(2147483647i, 0i, var_1.a.x), vec3<bool>(true, true, true)) ^ ~min(var_1.a, vec3<i32>(2147483647i, arg_0.c.a.x, 18073i))), firstLeadingBit(~(~vec3<u32>(arg_0.b.d.x, var_1.b, arg_0.c.d.x))), _wgslsmith_sub_vec2_i32(~(~firstTrailingBit(u_input.a.wx)), u_input.a.wx), arg_0, var_1.a.x);
    var_2 = Struct_3(~(~var_2.a), var_2.b, u_input.a.wx, var_2.d, abs(21459i));
    var var_3 = Struct_1(~(-_wgslsmith_div_vec3_i32(u_input.a.zzz, vec3<i32>(-2147483647i, u_input.b, arg_0.b.e))), var_2.b.x, arg_0.c.c, vec2<u32>(firstTrailingBit(arg_0.b.d.x & ~arg_0.c.d.x), ~(61937u & var_2.d.c.b) & ~1u), 20611i);
    return var_2.d.a;
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: f32) -> vec2<u32> {
    let var_0 = vec3<u32>(41536u, 0u, 1u >> (countOneBits(abs(~463u)) % 32u));
    return var_0.yy ^ (vec2<u32>(61757u, arg_0) & var_0.xz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~abs(reverseBits(~u_input.a.wyy)), _wgslsmith_sub_u32(~75695u, 1u), true, func_5(~reverseBits(22926u), true, _wgslsmith_f_op_f32(func_4(func_1()))) ^ vec2<u32>(~_wgslsmith_div_u32(1u, 47838u), ~(~92889u)), ~1i);
    var_0 = func_2();
    var_0 = Struct_1(-var_0.a, 27960u, false, max(firstLeadingBit(select(vec2<u32>(51811u, 4294967295u), firstLeadingBit(vec2<u32>(1u, var_0.b)), !vec2<bool>(true, var_0.c))), ~(~var_0.d >> (vec2<u32>(1u, var_0.b) % vec2<u32>(32u)))), i32(-1i) * -6496i);
    var_0 = func_1().b;
    var_0 = Struct_1(var_0.a, ~_wgslsmith_mod_u32(countOneBits(var_0.b) << (1u % 32u), var_0.b), any(!select(!vec4<bool>(false, false, var_0.c, true), !vec4<bool>(true, var_0.c, true, true), vec4<bool>(false, true, true, var_0.c))), ~func_5(~var_0.b, true, 235f), _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(u_input.a.x, var_0.e) >> (vec2<u32>(52373u, var_0.d.x) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_div_i32(-var_0.a.x, _wgslsmith_div_i32(var_0.a.x, u_input.c)), countOneBits(_wgslsmith_mult_i32(-24198i, 5828i)))));
    var_0 = Struct_1(abs(u_input.a.yyy), var_0.d.x, var_0.c, select(select(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.b), vec2<u32>(var_0.d.x, 4294967295u)), ~var_0.d, var_0.d), ~var_0.d, var_0.c), ~min(vec2<u32>(27669u, var_0.b), vec2<u32>(15369u, 22359u)) & ((var_0.d & vec2<u32>(53359u, var_0.b)) | countOneBits(vec2<u32>(var_0.b, 0u))), !vec2<bool>(var_0.c, all(vec4<bool>(var_0.c, false, true, var_0.c)))), -u_input.b);
    var_0 = Struct_1(firstLeadingBit(vec3<i32>(firstLeadingBit(-38482i), ~(~22357i), -abs(-15362i))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_0.b, 35948u), (func_1().c.d.x | firstLeadingBit(58158u)) ^ var_0.d.x), false, countOneBits(_wgslsmith_clamp_vec2_u32(~select(vec2<u32>(var_0.d.x, 42460u), var_0.d, var_0.c), ~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.d.x, var_0.d.x), vec2<u32>(27863u, 18956u)), min(var_0.d, vec2<u32>(var_0.d.x, var_0.d.x)))), var_0.a.x);
    var var_1 = func_2();
    var var_2 = Struct_1(min(_wgslsmith_mod_vec3_i32(vec3<i32>(firstLeadingBit(-7510i), 1i, firstTrailingBit(var_1.a.x)), vec3<i32>(~var_0.e, var_0.e >> (var_0.d.x % 32u), ~u_input.a.x)), var_0.a), ~var_1.d.x, false, countOneBits(~(var_0.d >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b, 0u), vec2<u32>(1u, 1u), var_0.d) % vec2<u32>(32u)))), countOneBits(_wgslsmith_dot_vec3_i32(min(func_1().c.a, var_0.a), u_input.a.zyy)));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_sub_vec4_u32(max(vec4<u32>(1u, 10903u, var_1.b, 4294967295u) >> (vec4<u32>(var_1.b, 4294967295u, var_2.d.x, 0u) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u, var_1.d.x, var_0.b)), vec4<u32>(var_2.d.x, ~var_0.b, _wgslsmith_add_u32(17948u, 96156u), 89313u)), min(vec4<u32>(var_2.d.x, ~4294967295u, var_1.d.x, 1u), ~vec4<u32>(1424u, var_2.b, var_1.d.x, 32026u))), -281f, var_1.a.x, select(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b, var_1.d.x, var_1.d.x) ^ vec3<u32>(4294967295u, 2675u, var_1.d.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_1.b, 4294967295u, 0u), vec3<u32>(var_2.d.x, 74970u, 4294967295u))) | ~(~vec3<u32>(13568u, var_0.b, var_1.b)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.d.x, 3718u, 4294967295u) << (vec3<u32>(var_2.b, 51724u, var_2.d.x) % vec3<u32>(32u)), ~vec3<u32>(var_0.b, 109439u, var_0.d.x)), select(~vec3<u32>(30050u, var_1.d.x, 1u), vec3<u32>(var_1.b, var_2.d.x, var_2.d.x), false | var_1.c), ~(vec3<u32>(4294967295u, 52990u, var_1.b) | vec3<u32>(var_2.b, var_2.d.x, var_2.b))), !select(select(vec3<bool>(var_2.c, var_2.c, var_1.c), vec3<bool>(true, var_2.c, false), false), select(vec3<bool>(var_2.c, false, var_1.c), vec3<bool>(var_2.c, var_0.c, var_0.c), vec3<bool>(true, false, true)), true)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1234f, 351f, -175f, 815f) + vec4<f32>(142f, 356f, 849f, -497f))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1660f, 582f, -270f, 1000f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1777f, 376f, -874f, 579f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-166f, -709f, 1127f, -1017f)))))))));
}

