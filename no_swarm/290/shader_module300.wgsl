struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(1u, 0u, 33579u, 4294967295u), vec4<u32>(27507u, 2939u, 7384u, 28015u), vec4<u32>(11964u, 1u, 39352u, 1u), vec4<u32>(1941u, 199u, 84475u, 4294967295u), vec4<u32>(1u, 0u, 1u, 1u), vec4<u32>(1u, 4294967295u, 0u, 1u), vec4<u32>(5748u, 40051u, 0u, 0u));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = 1000f;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-473f, 1000f)))))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1006f - -547f)) - 711f))));
    var var_1 = ~_wgslsmith_mult_u32(abs(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 1u), ~u_input.a.x)), 9318u);
    var_1 = ~_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), ~arg_0.e, min(1u, 61710u)), (arg_0.a & vec3<u32>(17620u, arg_0.e, 1u)) | select(arg_0.a, vec3<u32>(u_input.a.x, 82478u, 4294967295u), vec3<bool>(arg_0.c, arg_0.d, arg_0.d))));
    global0 = array<vec4<u32>, 7>();
    return Struct_1(vec3<u32>(~0u, _wgslsmith_div_u32(~(~50339u), u_input.a.x), arg_0.a.x), arg_0.b, arg_0.c, arg_0.c, ~_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.a.x, ~4294967295u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_2) -> Struct_4 {
    global0 = array<vec4<u32>, 7>();
    var var_0 = true;
    var var_1 = Struct_2(0i, true, arg_1.c);
    var var_2 = false;
    global0 = array<vec4<u32>, 7>();
    return Struct_4(!(!select(vec4<bool>(var_1.c.c, arg_1.b, arg_1.b, false), select(vec4<bool>(var_1.b, false, var_1.c.c, false), vec4<bool>(true, var_1.c.c, false, false), var_1.c.c), true && var_1.c.c)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-952f, -469f), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-1426f, -1439f)), _wgslsmith_f_op_f32(1000f - -351f)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1527f, 919f)))))), true)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_4) -> Struct_1 {
    var var_0 = _wgslsmith_sub_vec2_u32(arg_0.yz, arg_0.zy);
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.c.a, vec3<u32>(57218u, u_input.a.x, u_input.a.x)), vec3<u32>(51620u, arg_1.b, 85538u) >> (arg_0.wxw % vec3<u32>(32u))), ~arg_1.c.a.x), vec2<u32>(_wgslsmith_add_u32(~2687u, 4294967295u << (~arg_1.b % 32u)), 27104u));
    let var_1 = firstLeadingBit(countOneBits(vec4<u32>(arg_0.x << (41635u % 32u), firstTrailingBit(u_input.a.x), 4294967295u, arg_1.b))) << ((vec4<u32>(countOneBits(arg_0.x), u_input.a.x, ~firstLeadingBit(var_0.x), ~1u) | vec4<u32>(arg_1.c.a.x, ~arg_0.x, ~(u_input.a.x ^ arg_0.x), _wgslsmith_div_u32(arg_1.b, select(var_0.x, 72608u, true)))) % vec4<u32>(32u));
    var var_2 = arg_3;
    var var_3 = !arg_3.a.yzz;
    return arg_1.c;
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<u32>, 7>();
    let var_0 = Struct_2(2147483647i, !any(select(vec3<bool>(true, arg_0.d, true), func_3(vec2<i32>(13877i, 0i), Struct_2(-2147483647i, arg_0.c, Struct_1(vec3<u32>(115108u, u_input.a.x, 1u), arg_0.b, arg_0.c, arg_0.d, arg_0.e))).a.wwz, vec3<bool>(arg_0.c, false, arg_0.c))), arg_0);
    let var_1 = !(!vec3<bool>(all(vec4<bool>(false, var_0.b, var_0.c.d, false)) || false, !(!var_0.c.c), -67166i < firstTrailingBit(arg_0.b.x)));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-686f)), -966f) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-189f - 2797f)), _wgslsmith_f_op_f32(max(-723f, 1682f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(842f)))))));
    var_2 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(round(1610f)));
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> bool {
    var var_0 = Struct_1(~vec3<u32>(u_input.a.x, 39820u, _wgslsmith_div_u32(u_input.a.x, 36760u)), countOneBits(~vec4<i32>(1i, 1i, 1i, firstLeadingBit(2147483647i))), !(!all(select(vec4<bool>(false, arg_0.x, false, true), vec4<bool>(arg_0.x, true, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true)))), _wgslsmith_f_op_f32(f32(-1f) * -851f) < _wgslsmith_f_op_f32(184f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1935f - -142f)))), arg_1);
    var_0 = func_5(func_4(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(reverseBits(firstTrailingBit(var_0.e)), 7u)], vec4<u32>(arg_1, var_0.e >> (0u % 32u), ~arg_1, var_0.e)), Struct_3(var_0.b.xy, 0u, Struct_1(~vec3<u32>(1u, 4294967295u, var_0.e), abs(vec4<i32>(var_0.b.x, -33559i, -4152i, -64023i)), true, true, countOneBits(u_input.a.x))), arg_0.x, func_3(var_0.b.zw, Struct_2(reverseBits(51017i), select(true, var_0.c, false), func_2(Struct_1(vec3<u32>(arg_1, var_0.e, 62000u), vec4<i32>(var_0.b.x, var_0.b.x, 23526i, var_0.b.x), var_0.c, true, 2494u))))));
    var_0 = Struct_1(_wgslsmith_mult_vec3_u32(var_0.a, ~var_0.a), vec4<i32>(_wgslsmith_add_i32(var_0.b.x, _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.b.x, var_0.b.x, 21650i, -17842i), abs(var_0.b))), ~firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-20903i, 0i, var_0.b.x), vec3<i32>(0i, 20089i, -1i))), _wgslsmith_mult_i32(var_0.b.x, 1i) & select(var_0.b.x, var_0.b.x, var_0.c), _wgslsmith_sub_i32(_wgslsmith_add_i32(var_0.b.x, firstLeadingBit(2147483647i)), var_0.b.x ^ ~1i)), false, any(arg_0), 0u | func_5(Struct_1(min(var_0.a, u_input.a), var_0.b, true, !arg_0.x, min(0u, 45374u))).e);
    global0 = array<vec4<u32>, 7>();
    var var_1 = vec4<bool>(true, arg_0.x, !(4294967295u == ~_wgslsmith_add_u32(4294967295u, u_input.a.x)), any(select(!func_3(var_0.b.zx, Struct_2(-13717i, var_0.d, Struct_1(vec3<u32>(1u, 21700u, 0u), var_0.b, var_0.c, arg_0.x, u_input.a.x))).a, vec4<bool>(true, arg_0.x | arg_0.x, arg_0.x | false, any(vec4<bool>(var_0.c, var_0.c, false, true))), select(func_3(vec2<i32>(0i, var_0.b.x), Struct_2(0i, arg_0.x, Struct_1(vec3<u32>(arg_1, 0u, 1u), vec4<i32>(0i, var_0.b.x, 1i, 49182i), var_0.d, var_0.c, 46383u))).a, !vec4<bool>(arg_0.x, false, true, arg_0.x), func_3(var_0.b.wy, Struct_2(var_0.b.x, arg_0.x, Struct_1(vec3<u32>(var_0.e, arg_1, 15606u), vec4<i32>(var_0.b.x, -4400i, 1i, var_0.b.x), false, false, arg_1))).a))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1830f - -479f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1489f * 1494f) * _wgslsmith_f_op_f32(trunc(1834f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1782f)))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(984f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<u32>, 7>();
    let var_0 = select(countOneBits(vec3<i32>(1i, -438i, _wgslsmith_mult_i32(-1870i, 13420i))), vec3<i32>(~(~1i), 45799i, 1i), all(!vec3<bool>(any(vec3<bool>(true, false, true)), func_1(vec3<bool>(true, true, true), 4294967295u), false)));
    global0 = array<vec4<u32>, 7>();
    global0 = array<vec4<u32>, 7>();
    let var_1 = Struct_2(~_wgslsmith_add_i32(~2147483647i, ~var_0.x), !(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(1429f)), _wgslsmith_f_op_f32(min(-489f, -623f)))) > _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(2345f, 665f)))), func_5(Struct_1(_wgslsmith_mod_vec3_u32(~u_input.a, _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, 9067u), vec3<u32>(u_input.a.x, 35053u, u_input.a.x))), -firstTrailingBit(vec4<i32>(var_0.x, var_0.x, 0i, -1i)), _wgslsmith_sub_u32(u_input.a.x, 0u) > (u_input.a.x ^ 4294967295u), any(vec4<bool>(false, true, true, true)), firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x)))));
    let var_2 = vec4<i32>(var_1.a, -33314i, 2147483647i & func_2(var_1.c).b.x, _wgslsmith_sub_i32(~0i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-65059i, 1i, var_0.x), var_0 >> (u_input.a % vec3<u32>(32u))), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(~abs(vec3<i32>(var_2.x, 0i, -2147483647i)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, -47796i, 1i), var_2.xzz)), vec3<i32>(func_2(var_1.c).b.x >> (~30925u % 32u), var_2.x, -_wgslsmith_dot_vec2_i32(var_2.ww, vec2<i32>(var_0.x, var_1.a)))), u_input.a.xz);
}

