struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    let var_0 = -vec2<i32>(arg_2.b, ~1i) << (~(~(~arg_2.a.xz)) % vec2<u32>(32u));
    let var_1 = Struct_2(-177f, select(firstTrailingBit(vec3<i32>(abs(arg_3.b), firstLeadingBit(var_0.x), select(arg_0, arg_3.b, false))), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-7590i, 43997i, var_0.x), countOneBits(vec3<i32>(arg_0, arg_3.b, arg_0)))), !arg_1.zxz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(690f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1079f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(552f, 713f))))))), Struct_1(_wgslsmith_sub_vec3_u32(~(~arg_3.a), arg_3.a), ~(0i & arg_0)));
    var var_2 = select(arg_1, arg_1, arg_1.x);
    var_2 = select(arg_1, vec4<bool>(any(!var_2.zxz), any(var_2.wyz), all(vec3<bool>(false, false, false)) | !any(vec2<bool>(true, var_2.x)), var_2.x), arg_1);
    var_2 = !arg_1;
    return _wgslsmith_f_op_f32(939f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-384f, 673f))), var_1.c)), -797f)));
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-669f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(-532f + -419f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -194f), _wgslsmith_f_op_f32(931f - -1536f), false))), 1f, true))));
    var_0 = _wgslsmith_f_op_f32(round(-882f));
    var_0 = -1298f;
    var_0 = 1789f;
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(-1264f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1487f, 1246f)) + _wgslsmith_div_f32(813f, 498f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(u_input.b, vec4<bool>(false, true, false, false), Struct_1(vec3<u32>(arg_0, 0u, arg_0), 5264i), Struct_1(vec3<u32>(49055u, 34121u, 1u), -16679i))))))), _wgslsmith_f_op_f32(-548f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2087f - 1143f) + _wgslsmith_f_op_f32(-446f * -367f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) * -229f))));
    return Struct_1((~(~vec3<u32>(arg_0, 4294967295u, 1464u)) | _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 1u, 4294967295u), ~vec3<u32>(0u, 1u, 44213u))) >> (firstLeadingBit(~(~vec3<u32>(51351u, 1u, 66497u))) % vec3<u32>(32u)), u_input.b);
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = arg_3;
    let var_1 = func_2(0u);
    var var_2 = Struct_2(var_0.c, vec3<i32>(-var_1.b, var_1.b, ~2147483647i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a - arg_3.a) + _wgslsmith_f_op_f32(min(1352f, -582f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(var_0.b.x, vec4<bool>(true, true, true, false), Struct_1(arg_2.a, 0i), Struct_1(arg_3.d.a, -1811i))) * var_0.a)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a)) + _wgslsmith_f_op_f32(-488f * -444f))), Struct_1(arg_3.d.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0, var_0.b.x) ^ (u_input.a & -15383i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(3984i, arg_2.b)))));
    var var_3 = func_2(~var_1.a.x);
    var_2 = Struct_2(var_0.a, -(~abs(arg_3.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.c, arg_3.c, true))), _wgslsmith_f_op_f32(-var_2.a))), func_2(max(arg_3.d.a.x, ~0u)));
    return Struct_2(_wgslsmith_f_op_f32(sign(var_0.a)), vec3<i32>(abs(0i), ~(-u_input.a) ^ -35822i, _wgslsmith_dot_vec2_i32(var_2.b.xz, ~(vec2<i32>(-20526i, arg_2.b) & var_2.b.xx))), -853f, Struct_1(~vec3<u32>(0u, select(var_3.a.x, 50494u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.d.a.x, var_3.a.x, var_1.a.x), var_3.a)), _wgslsmith_div_i32(_wgslsmith_div_i32(-2147483647i, i32(-1i) * -9550i), _wgslsmith_dot_vec2_i32(var_2.b.xx, var_0.b.yz))));
}

fn func_4(arg_0: Struct_2, arg_1: i32) -> vec2<i32> {
    var var_0 = ~vec4<u32>(~min(1u, ~arg_0.d.a.x), arg_0.d.a.x, min(arg_0.d.a.x, 1u), arg_0.d.a.x);
    let var_1 = true || any(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), true)));
    let var_2 = Struct_1(func_1(~arg_1, vec2<u32>(4294967295u, arg_0.d.a.x), Struct_1(var_0.zxz >> (_wgslsmith_sub_vec3_u32(arg_0.d.a, arg_0.d.a) % vec3<u32>(32u)), -27435i), arg_0).d.a, -abs(_wgslsmith_add_i32(-arg_0.b.x, 10362i)));
    var_0 = _wgslsmith_mult_vec4_u32(~countOneBits(vec4<u32>(76878u, var_0.x, 1u, var_0.x)) << (~(~vec4<u32>(var_0.x, 4294967295u, arg_0.d.a.x, 0u)) % vec4<u32>(32u)), select(vec4<u32>(var_2.a.x, var_2.a.x, 0u & var_0.x, ~51517u), ~firstLeadingBit(vec4<u32>(0u, arg_0.d.a.x, 30756u, arg_0.d.a.x)), any(select(vec2<bool>(true, false), vec2<bool>(var_1, true), true)))) | _wgslsmith_div_vec4_u32(~(~vec4<u32>(29714u, 0u, 78795u, arg_0.d.a.x)), vec4<u32>(arg_0.d.a.x, var_0.x | 0u, ~var_2.a.x, _wgslsmith_dot_vec2_u32(var_0.zx, var_0.yy)) ^ (vec4<u32>(var_2.a.x, var_2.a.x, var_0.x, 1u) | abs(vec4<u32>(arg_0.d.a.x, 0u, arg_0.d.a.x, 43203u))));
    var_0 = _wgslsmith_add_vec4_u32(reverseBits(~select(vec4<u32>(75226u, 33680u, 57541u, 0u) << (vec4<u32>(var_2.a.x, 1u, 4294967295u, 37167u) % vec4<u32>(32u)), ~vec4<u32>(9706u, 0u, 16832u, arg_0.d.a.x), var_1 | var_1)), firstLeadingBit(vec4<u32>(min(_wgslsmith_mod_u32(arg_0.d.a.x, arg_0.d.a.x), 36869u), var_0.x, max(1u, min(arg_0.d.a.x, 4294967295u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.a.x, arg_0.d.a.x, arg_0.d.a.x), vec3<u32>(51794u, 0u, arg_0.d.a.x)))));
    return arg_0.b.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(reverseBits(_wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.b, 1i) | (vec2<i32>(-1i, u_input.a) >> (vec2<u32>(18u, 4294967295u) % vec2<u32>(32u))), select(-vec2<i32>(u_input.b, u_input.b), ~vec2<i32>(u_input.b, u_input.a), all(vec2<bool>(false, true))))), _wgslsmith_div_vec2_i32(~func_4(func_1(u_input.a, vec2<u32>(0u, 0u), Struct_1(vec3<u32>(13045u, 4294967295u, 34107u), 1i), Struct_2(988f, vec3<i32>(u_input.a, -5357i, u_input.b), -1000f, Struct_1(vec3<u32>(4294967295u, 0u, 24510u), 0i))), 40043i), vec2<i32>(abs(u_input.a), ~firstLeadingBit(u_input.b))), vec2<bool>(true, !(func_1(u_input.a, vec2<u32>(1u, 0u), Struct_1(vec3<u32>(0u, 8302u, 4294967295u), 29732i), Struct_2(-1395f, vec3<i32>(u_input.b, u_input.b, -1i), 678f, Struct_1(vec3<u32>(39522u, 0u, 15182u), u_input.b))).d.b <= u_input.b)));
    var var_1 = ~vec3<u32>(min(select(2653u, 0u, true), func_2(1u).a.x), _wgslsmith_mult_u32(4294967295u, ~4294967295u), 1u) >> (vec3<u32>(1u, 58542u, ~1u) % vec3<u32>(32u));
    var_0 = -vec2<i32>(var_0.x, var_0.x);
    var var_2 = func_2(var_1.x);
    let var_3 = select((vec4<u32>(~var_1.x, ~var_1.x, func_1(21895i, vec2<u32>(1264u, var_1.x), Struct_1(vec3<u32>(var_1.x, 0u, var_1.x), var_0.x), Struct_2(764f, vec3<i32>(u_input.a, -16732i, 0i), -785f, Struct_1(vec3<u32>(var_1.x, 0u, 4294967295u), -2147483647i))).d.a.x, 6463u ^ var_2.a.x) & firstTrailingBit(~vec4<u32>(0u, var_2.a.x, 3245u, var_1.x))) & _wgslsmith_div_vec4_u32((vec4<u32>(1u, 49955u, 4294967295u, 43710u) >> (vec4<u32>(var_1.x, var_2.a.x, 29347u, 42467u) % vec4<u32>(32u))) ^ vec4<u32>(16726u, var_1.x, var_2.a.x, 4294967295u), (vec4<u32>(var_2.a.x, var_1.x, var_2.a.x, var_1.x) << (vec4<u32>(34735u, 4294967295u, var_2.a.x, var_1.x) % vec4<u32>(32u))) & ~vec4<u32>(var_2.a.x, 32498u, var_2.a.x, var_2.a.x)), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(select(select(vec4<u32>(26984u, var_2.a.x, var_2.a.x, var_2.a.x), vec4<u32>(var_1.x, 14094u, var_2.a.x, var_2.a.x), true), select(vec4<u32>(4294967295u, var_2.a.x, var_1.x, 29144u), vec4<u32>(var_2.a.x, 1031u, var_2.a.x, 4294967295u), false), vec4<bool>(true, true, true, true)), select(~vec4<u32>(0u, var_1.x, var_1.x, var_1.x), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, 1719u, 20956u, var_2.a.x), vec4<u32>(var_2.a.x, 9076u, var_2.a.x, var_1.x)), true)), _wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_2.a.x, 1u, var_2.a.x), ~vec4<u32>(24234u, 21813u, var_1.x, 0u)), firstLeadingBit(vec4<u32>(var_2.a.x, 1u, 38020u, 19394u)) | vec4<u32>(var_1.x, var_1.x, 1u, var_1.x), ~max(vec4<u32>(4294967295u, 41098u, var_1.x, 15584u), vec4<u32>(18854u, var_1.x, 0u, 1u))), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 1u, 0u, var_2.a.x), ~vec4<u32>(var_1.x, 77574u, var_2.a.x, 47540u))), !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true))));
    var var_4 = Struct_1(~_wgslsmith_div_vec3_u32(var_3.zxx, var_2.a), _wgslsmith_add_i32(-func_1(_wgslsmith_mod_i32(u_input.a, 32203i), max(var_1.yy, vec2<u32>(var_3.x, var_3.x)), func_1(var_0.x, var_3.xz, Struct_1(var_3.wxy, var_2.b), Struct_2(651f, vec3<i32>(14515i, var_0.x, var_2.b), 1801f, Struct_1(vec3<u32>(0u, 4294967295u, 71031u), 5777i))).d, Struct_2(-836f, vec3<i32>(u_input.b, var_2.b, var_2.b), 1828f, Struct_1(vec3<u32>(20277u, var_3.x, 1u), var_2.b))).d.b, 37182i));
    var_2 = Struct_1(vec3<u32>(1u, max(min(0u, 13177u), var_4.a.x), var_2.a.x | (1u << (var_1.x % 32u))) >> (var_3.zzy % vec3<u32>(32u)), min(var_0.x, var_0.x));
    let var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(578f, -857f, 555f))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(951f, 760f, -1000f) * vec3<f32>(-167f, -530f, -1484f)))) + _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1000f, -322f, 836f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1817f, 733f, 551f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(-993f, 1275f), _wgslsmith_f_op_f32(sign(var_5.x))))) * 1811f), ~0u, var_4.a.x, vec2<f32>(var_5.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_5.x - -548f) * _wgslsmith_f_op_f32(-var_5.x)))), _wgslsmith_div_vec4_u32(max(_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.x, 0u, 11852u, 1u), ~var_3), ~_wgslsmith_add_vec4_u32(var_3, var_3)), ~max(vec4<u32>(var_4.a.x, var_2.a.x, var_1.x, var_1.x), vec4<u32>(45405u, var_1.x, 60508u, 41237u)) >> (vec4<u32>(func_1(-5462i, var_3.yw, Struct_1(vec3<u32>(var_3.x, 42368u, var_2.a.x), var_4.b), Struct_2(var_5.x, vec3<i32>(var_4.b, var_2.b, var_4.b), 118f, Struct_1(var_2.a, 1i))).d.a.x, ~var_3.x, _wgslsmith_add_u32(0u, 0u), var_2.a.x) % vec4<u32>(32u))));
}

