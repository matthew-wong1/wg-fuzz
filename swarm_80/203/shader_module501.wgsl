struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> bool {
    var var_0 = Struct_5(arg_0, firstTrailingBit(min(firstLeadingBit(u_input.c.xwy) & arg_1.zww, ~vec3<u32>(4294967295u, u_input.d, 0u))), select(vec3<bool>((1u >= u_input.e.x) & true, arg_0, all(vec4<bool>(true, false, arg_0, arg_0)) | false), vec3<bool>(true, true, true), !(!select(vec3<bool>(false, arg_0, false), vec3<bool>(arg_0, arg_0, false), false))));
    var var_1 = ~((~vec2<u32>(arg_1.x, arg_1.x) >> (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(33750u, 0u, var_0.b.x, 31014u), vec4<u32>(var_0.b.x, 0u, arg_1.x, u_input.c.x)), u_input.d) % vec2<u32>(32u))) << (vec2<u32>(var_0.b.x, ~max(arg_1.x, 1u)) % vec2<u32>(32u)));
    let var_2 = _wgslsmith_add_i32(u_input.b, _wgslsmith_add_i32(806i, u_input.b));
    var_0 = Struct_5(_wgslsmith_dot_vec4_u32(min(vec4<u32>(27892u, 16593u, 1846u, var_0.b.x), vec4<u32>(4294967295u, 4181u, u_input.e.x, 4294967295u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(65925u, 57111u, 1u, 1u), arg_1, vec4<u32>(4294967295u, 4294967295u, 34486u, arg_1.x)), vec4<u32>(u_input.e.x, var_0.b.x, 42339u, 42929u) >> (u_input.c % vec4<u32>(32u)), ~vec4<u32>(10261u, 700u, 58260u, var_1.x))) < ~(1u | select(4294967295u, u_input.c.x, var_0.c.x)), vec3<u32>(firstLeadingBit(4294967295u), u_input.c.x, var_1.x), var_0.c);
    let var_3 = Struct_1(var_2);
    return select(arg_0, all(select(vec3<bool>(var_0.c.x, false, arg_0), !select(vec3<bool>(false, arg_0, var_0.a), var_0.c, arg_0), ~0u >= _wgslsmith_mod_u32(u_input.d, 0u))), !select(true, any(var_0.c.yz) && all(vec4<bool>(false, arg_0, false, arg_0)), arg_0));
}

fn func_2(arg_0: bool) -> vec3<f32> {
    var var_0 = u_input.a.yw;
    let var_1 = Struct_2(_wgslsmith_mod_vec2_i32(-u_input.a.wx, vec2<i32>(-_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), 0i)));
    let var_2 = var_1;
    let var_3 = select(select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, arg_0)), vec2<bool>(true, arg_0), vec2<bool>(arg_0, arg_0)), select(select(!vec2<bool>(true, arg_0), select(vec2<bool>(true, true), vec2<bool>(true, false), arg_0), vec2<bool>(false, arg_0)), !select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), arg_0), !arg_0), arg_0 == !any(vec2<bool>(arg_0, true))), !(!vec2<bool>(true, !arg_0)), vec2<bool>(any(vec3<bool>(any(vec2<bool>(false, arg_0)), !arg_0, true)), arg_0));
    var var_4 = select(1i, -380i, all(vec4<bool>(var_3.x, func_3(var_3.x, vec4<u32>(4294967295u, 52951u, u_input.e.x, u_input.c.x)), true, false | arg_0))) > ((u_input.a.x << (1u % 32u)) ^ -2147483647i);
    return vec3<f32>(_wgslsmith_f_op_f32(-276f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1058f - _wgslsmith_f_op_f32(587f - -143f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-784f))))), _wgslsmith_f_op_f32(-236f - -1868f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(370f)))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(true)));
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(select(abs(u_input.a.xzz), -u_input.a.zzz, true), u_input.a.xzw), u_input.a.zxz) < -reverseBits(~(-2147483647i));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(var_1.x + 1152f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_1.x, _wgslsmith_f_op_f32(select(var_1.x, var_1.x, true)))))), ~u_input.a, Struct_1(-15312i));
    var var_4 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1492f))), -1595f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-508f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.b.x)) * _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a, 415f, 471f, var_1.x)) - vec4<f32>(var_3.b.x, _wgslsmith_f_op_f32(max(var_1.x, var_3.a)), _wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_vec3_f32(func_2(false)).x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1559f, 348f, var_3.a, var_3.b.x) * vec4<f32>(var_1.x, var_3.a, var_1.x, 291f)) - vec4<f32>(var_1.x, -1726f, 2063f, 317f)))))));
    return var_3.d;
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_5(true, vec3<u32>(~countOneBits(~u_input.d), 97650u, _wgslsmith_mult_u32(firstLeadingBit(arg_1.x), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, 4546u, 4294967295u, 0u)), ~arg_1))), vec3<bool>(false | any(vec3<bool>(true, false, false)), all(vec2<bool>(all(vec2<bool>(true, false)), false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_3)) >= -971f));
    let var_1 = u_input.a;
    var var_2 = func_1(true, u_input.b << (~_wgslsmith_dot_vec2_u32(select(arg_1.zx, arg_1.yy, vec2<bool>(var_0.a, var_0.a)), ~var_0.b.xz) % 32u), 1u, ~_wgslsmith_sub_i32(0i, ~arg_2.a));
    var_2 = func_1(!(!var_0.c.x), var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(12640u, var_0.b.x, 4294967295u), max(u_input.c.www, u_input.e)), u_input.d), firstLeadingBit(~u_input.c.wzz)), 0i);
    var_2 = func_1(arg_0.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1999f) * _wgslsmith_f_op_f32(127f * arg_0.x))), func_1(all(vec3<bool>(!var_0.c.x, any(var_0.c), any(vec4<bool>(true, var_0.c.x, true, var_0.a)))), _wgslsmith_add_i32(_wgslsmith_mod_i32(284i, -1i), -min(u_input.a.x, 26810i)), _wgslsmith_dot_vec3_u32(var_0.b, vec3<u32>(4294967295u, arg_1.x, arg_1.x)) ^ max(_wgslsmith_dot_vec4_u32(vec4<u32>(41640u, var_0.b.x, 0u, 1u), vec4<u32>(arg_1.x, 4294967295u, var_0.b.x, 0u)), abs(65001u)), _wgslsmith_sub_i32(-func_1(true, arg_2.a, 0u, -41093i).a, u_input.b)).a, select(arg_1.x, 1u, true), -firstLeadingBit(115827i));
    return func_1(false, -15405i, _wgslsmith_dot_vec3_u32(arg_1.xyx, vec3<u32>(0u, 1u, _wgslsmith_mult_u32(var_0.b.x, 0u & arg_1.x))), var_1.x << (1u % 32u));
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    return vec3<i32>(_wgslsmith_mod_i32(~_wgslsmith_div_i32(0i, 38375i << (u_input.e.x % 32u)), ~(~arg_0.a)), arg_0.a, 2147483647i);
}

fn func_6(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_5) -> Struct_4 {
    let var_0 = false;
    let var_1 = Struct_5(true | any(arg_3.c), (~select(u_input.e, vec3<u32>(arg_3.b.x, 40954u, 69066u), arg_3.c) >> (~u_input.e % vec3<u32>(32u))) | ~vec3<u32>(arg_3.b.x, arg_3.b.x, 0u), arg_3.c);
    let var_2 = arg_3.b.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_div_f32(345f, arg_2.b.x) + arg_2.a)))) >= -1631f;
    let var_4 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-1170f - _wgslsmith_f_op_f32(step(arg_2.b.x, _wgslsmith_f_op_f32(-502f + arg_2.a)))), _wgslsmith_f_op_f32(-1071f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b.x + arg_2.b.x) + _wgslsmith_f_op_f32(arg_2.b.x + 1470f))), arg_2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) + _wgslsmith_f_op_f32(arg_2.a - arg_2.a)))));
    return Struct_4(vec4<i32>(min(-(~0i), -abs(33329i)), max(arg_0.x, func_5(func_1(true, u_input.a.x, 23403u, arg_0.x), countOneBits(0i)).x), ((arg_0.x ^ arg_2.c.x) << (~27450u % 32u)) << ((~var_1.b.x >> ((u_input.c.x & arg_3.b.x) % 32u)) % 32u), -11908i));
}

fn func_7(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec4<bool>, arg_3: vec3<i32>) -> Struct_2 {
    var var_0 = all(arg_2.wzx);
    var_0 = arg_2.x;
    var var_1 = true;
    var var_2 = u_input.d;
    let var_3 = u_input.a.x;
    return Struct_2(u_input.a.ww);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2250f, -175f) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2276f, -591f))))));
    var var_1 = func_7(func_6(func_5(func_4(vec2<f32>(1f, 1f), ~vec4<u32>(u_input.d, u_input.d, u_input.c.x, u_input.d), func_1(true, u_input.b, u_input.c.x, 0i), _wgslsmith_f_op_f32(f32(-1f) * -424f)), countOneBits(~(-1i))), reverseBits(select(vec2<i32>(u_input.a.x, -64405i), -u_input.a.zz, false)), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -428f), vec2<f32>(-576f, _wgslsmith_f_op_f32(900f - -1000f)), vec4<i32>(u_input.a.x, u_input.b, -2147483647i, -26476i) << (~vec4<u32>(u_input.c.x, u_input.e.x, 1715u, u_input.d) % vec4<u32>(32u)), func_1(false, _wgslsmith_mod_i32(-1i, -44315i), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, 40074u, 1u), u_input.c.yyw), 66162i)), Struct_5(true, u_input.e, !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))), vec4<u32>(u_input.d, u_input.e.x, firstTrailingBit(_wgslsmith_add_u32(select(62725u, 58u, true), u_input.c.x)), u_input.d), vec4<bool>(any(vec2<bool>(true, true)), any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, false, true))), false, !(true | (1u > u_input.c.x))), _wgslsmith_div_vec3_i32(-max(select(u_input.a.yxy, vec3<i32>(u_input.b, u_input.a.x, u_input.b), vec3<bool>(false, true, true)), u_input.a.wyx), _wgslsmith_div_vec3_i32(u_input.a.xzy, u_input.a.wzx)));
    let var_2 = ~u_input.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-964f - -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(991f)) - _wgslsmith_f_op_vec3_f32(func_2(false)).x))));
    let var_4 = ~var_2;
    var var_5 = min(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(max(vec2<u32>(26918u, 22693u), u_input.e.xy) ^ u_input.e.yx, ~(vec2<u32>(u_input.e.x, u_input.d) & vec2<u32>(0u, var_2)), _wgslsmith_sub_vec2_u32(u_input.c.xw, min(vec2<u32>(4294967295u, 0u), vec2<u32>(var_2, 54907u)))), ~(~firstLeadingBit(vec2<u32>(var_2, var_2))), vec2<u32>(var_2, 4294967295u)), firstLeadingBit(_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.c.ww) | ~vec2<u32>(var_4, 32912u), vec2<u32>(u_input.e.x, _wgslsmith_add_u32(u_input.d, 4294967295u)))));
    var var_6 = func_4(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(349f * -1467f), -228f), -410f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1100f, 289f) + vec2<f32>(841f, -1795f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1282f, 954f)))))), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true))))), ~select(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_4, var_4, u_input.c.x, var_5.x), ~vec4<u32>(var_5.x, 29509u, var_2, 9379u)), u_input.c, !select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true))), Struct_1(~(~var_1.a.x >> (u_input.d % 32u))), -1361f);
    var_1 = func_7(func_6(vec3<i32>(func_6(u_input.a.xzx, var_1.a, Struct_3(-666f, vec2<f32>(320f, 410f), vec4<i32>(12413i, u_input.a.x, var_1.a.x, 33088i), Struct_1(u_input.b)), Struct_5(true, vec3<u32>(var_4, 29511u, var_4), vec3<bool>(false, true, true))).a.x, 1i, _wgslsmith_sub_i32(u_input.a.x, var_6.a)) | vec3<i32>(firstLeadingBit(0i), u_input.b, func_5(Struct_1(1i), var_6.a).x), reverseBits(countOneBits(func_6(vec3<i32>(-24546i, -33187i, 40874i), vec2<i32>(0i, -1i), Struct_3(747f, vec2<f32>(-790f, -793f), u_input.a, Struct_1(20604i)), Struct_5(true, vec3<u32>(3423u, var_4, 5275u), vec3<bool>(true, false, true))).a.zy)), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1517f + 864f)), vec2<f32>(1f, 1f), -u_input.a, Struct_1(u_input.b | var_1.a.x)), Struct_5(all(vec3<bool>(true, true, true)), ~(~u_input.e), vec3<bool>(true, true, false))), u_input.c, select(vec4<bool>(true, select(func_3(false, vec4<u32>(var_2, u_input.e.x, var_2, 83587u)), true, true), func_3(true, ~vec4<u32>(u_input.e.x, 36096u, 4227u, 4294967295u)), func_3(false, u_input.c)), !(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), true), _wgslsmith_div_vec3_i32(~(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -15542i, -37978i), u_input.a.ywz) & ~u_input.a.xxz), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(0i, 26394i, var_1.a.x), vec3<i32>(-1i, var_6.a, 41088i), true), reverseBits(vec3<i32>(-1i, var_1.a.x, 41704i))), firstLeadingBit(_wgslsmith_div_vec3_i32(u_input.a.wyw, vec3<i32>(var_1.a.x, u_input.a.x, -19364i))))));
    var var_7 = func_7(func_6(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(var_1.a.x, -1i, -50220i)), max(u_input.a.yxw ^ u_input.a.www, u_input.a.zzy)), -_wgslsmith_sub_vec2_i32(~vec2<i32>(var_6.a, 21659i), firstTrailingBit(u_input.a.zw)), Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(667f + 429f), _wgslsmith_f_op_f32(f32(-1f) * -699f), true)), vec2<f32>(_wgslsmith_div_f32(-649f, -1098f), -898f), vec4<i32>(_wgslsmith_div_i32(u_input.b, -46723i), -u_input.a.x, ~(-13716i), 1i), func_1(true, 0i, 7151u, ~1i)), Struct_5(true, ~vec3<u32>(var_5.x, 0u, 16556u), vec3<bool>(true, true, all(vec3<bool>(true, false, true))))), ~u_input.c & vec4<u32>(firstTrailingBit(34200u), var_4, ~firstLeadingBit(var_2), ~(~var_2)), select(!vec4<bool>(all(vec4<bool>(false, false, true, true)), true, any(vec4<bool>(false, false, false, true)), false), vec4<bool>(true, false, true, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c) > _wgslsmith_div_u32(0u, 25161u)), !vec4<bool>(true, true, true, all(vec4<bool>(true, false, false, false)))), u_input.a.xxy);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(reverseBits(var_2), ~firstLeadingBit(9779u), _wgslsmith_add_u32(var_2, var_5.x)) >> (u_input.e % vec3<u32>(32u)), abs(u_input.a.yzz));
}

