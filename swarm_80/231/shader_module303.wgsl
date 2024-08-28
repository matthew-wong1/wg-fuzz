struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: u32,
    c: vec2<i32>,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(35079i, i32(-2147483648), -1i, -2150i), vec4<f32>(-796f, -502f, -1652f, -114f), -1857f, vec2<u32>(12139u, 11783u), -20921i);

var<private> global1: vec4<f32>;

var<private> global2: Struct_4;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_1((max(max(vec4<i32>(0i, global0.e, 2147483647i, -17447i), vec4<i32>(1i, 33588i, global2.a.x, 2147483647i)), -u_input.c) << (abs(vec4<u32>(2217u, u_input.d.x, 16917u, u_input.d.x) << (vec4<u32>(u_input.d.x, global0.d.x, global0.d.x, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) >> (~vec4<u32>(select(26463u, global0.d.x, true), ~11502u, 93293u, ~1u) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_2.x, global1.x)), -943f), 1179f, arg_2.x, global1.x))), -615f, select(select(vec2<u32>(~global0.d.x, ~global0.d.x), ~(u_input.d.xx & vec2<u32>(global0.d.x, global0.d.x)), !(!arg_0)), vec2<u32>(~1u, ~max(global0.d.x, 17580u)), any(vec3<bool>(!arg_0.x, select(true, true, arg_0.x), arg_0.x))), -global2.a.x);
    var var_1 = Struct_2(Struct_1(vec4<i32>(firstLeadingBit(global0.a.x), 0i, reverseBits(~global2.a.x), -1i >> (1u % 32u)), _wgslsmith_div_vec4_f32(global0.b, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, arg_2.x, global1.x, global1.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c, arg_2.x, var_0.b.x, arg_2.x))), !vec4<bool>(false, arg_0.x, true, arg_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(step(-396f, 684f))), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(exp2(arg_2.x)))), ~min(~vec2<u32>(var_0.d.x, u_input.d.x), ~vec2<u32>(1u, u_input.d.x)), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-75523i, 23131i), vec2<i32>(var_0.e, 2147483647i)) & (vec2<i32>(global0.e, var_0.e) << (var_0.d % vec2<u32>(32u))), (u_input.c.zw << (var_0.d % vec2<u32>(32u))) & min(global0.a.zz, vec2<i32>(28341i, -2147483647i)))), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(~global0.d.x, _wgslsmith_mult_u32(111453u, u_input.d.x), 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, var_0.d.x, global0.d.x), firstLeadingBit(u_input.d), u_input.d)), ~_wgslsmith_add_vec3_u32(u_input.d, ~vec3<u32>(25900u, 1u, global0.d.x))), _wgslsmith_dot_vec3_i32(global0.a.yzz, ~u_input.c.wzw), 0i, 1i >> (u_input.d.x % 32u));
    var var_2 = var_0.d.x;
    let var_3 = vec4<u32>(~u_input.d.x, reverseBits(reverseBits(~min(19432u, 26392u))), _wgslsmith_sub_u32(var_0.d.x, ~(~(~0u))), _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) << (~1u % 32u)), firstLeadingBit(~var_0.d.x) | 26064u));
    let var_4 = Struct_2(Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.b)) - _wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(arg_1.x, 210f, arg_1.x, -187f))) - var_1.a.b), -1738f, _wgslsmith_mult_vec2_u32(firstTrailingBit(var_1.a.d) ^ max(var_1.b.zz, vec2<u32>(12970u, 75908u)), var_1.b.xy), u_input.a.x), _wgslsmith_mod_vec3_u32(firstTrailingBit(~var_1.b), u_input.d) & _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~var_3.wyy, ~u_input.d), _wgslsmith_mod_vec3_u32(~vec3<u32>(42049u, var_1.b.x, var_0.d.x), reverseBits(vec3<u32>(var_1.a.d.x, var_1.a.d.x, var_3.x)))), _wgslsmith_sub_i32(-1i, 2147483647i), 6683i, abs(2147483647i));
    return vec2<u32>(~var_0.d.x, firstLeadingBit(_wgslsmith_add_u32(max(1u, 39708u), ~global0.d.x)));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> Struct_1 {
    let var_0 = Struct_5(abs(vec2<u32>(~countOneBits(1u), _wgslsmith_sub_u32(global0.d.x, 1u))), ~(~(~1u)), -((vec2<i32>(u_input.c.x, 1i) ^ global0.a.zw) & _wgslsmith_mult_vec2_i32(reverseBits(vec2<i32>(global2.a.x, -1050i)), vec2<i32>(global2.a.x, -11376i))), Struct_3(~u_input.d.x, Struct_1(u_input.c, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(global0.b, global0.b))), _wgslsmith_f_op_f32(f32(-1f) * -1556f), func_3(select(vec2<bool>(false, false), vec2<bool>(false, false), true), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-617f, -1563f, 498f))), vec3<f32>(global1.x, 1152f, global1.x)), max(global0.e, ~global0.e)), _wgslsmith_mod_u32(~u_input.d.x, 96169u << (1u % 32u)) & firstLeadingBit(~1u), Struct_1(vec4<i32>(global0.e, i32(-1i) * -2147483647i, 0i, _wgslsmith_add_i32(global2.a.x, 6042i)), vec4<f32>(global0.b.x, -784f, 264f, _wgslsmith_f_op_f32(1176f + global1.x)), global0.b.x, ~reverseBits(vec2<u32>(1244u, u_input.d.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, global0.e), ~arg_1.a))), Struct_1(_wgslsmith_sub_vec4_i32(u_input.c, _wgslsmith_clamp_vec4_i32(global0.a, global0.a, vec4<i32>(global2.a.x, 2147483647i, arg_0.x, 2147483647i))) << (vec4<u32>(_wgslsmith_mod_u32(52073u, u_input.d.x), ~0u, global0.d.x << (u_input.d.x % 32u), u_input.d.x) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1109f)), _wgslsmith_f_op_f32(trunc(2132f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1641f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -477f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b.x, global1.x) * global1.x)), vec2<u32>(~(~global0.d.x), 5u), (-arg_0.x << ((global0.d.x >> (1u % 32u)) % 32u)) | 1i));
    global0 = var_0.d.d;
    return Struct_1(vec4<i32>(global0.e, 19931i, _wgslsmith_dot_vec4_i32(var_0.d.b.a, -reverseBits(var_0.d.b.a)), firstTrailingBit(-79696i) >> (~_wgslsmith_dot_vec3_u32(u_input.d, u_input.d) % 32u)), _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(sign(global0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) - -351f), _wgslsmith_add_vec2_u32(u_input.d.xy, reverseBits(_wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(0u, global0.d.x)), ~u_input.d.xz))), abs(0i) | (firstLeadingBit(select(26296i, 0i, false)) >> (0u % 32u)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    return func_2(vec2<i32>(firstLeadingBit(select(-1i, global0.a.x, false)) | _wgslsmith_mult_i32(~global0.a.x, global0.e << (u_input.d.x % 32u)), firstTrailingBit(-2147483647i)), Struct_4(abs(vec2<i32>(global0.a.x, global2.a.x) << (vec2<u32>(28788u, 4294967295u) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(u_input.d.x, func_1(global0.d), u_input.d.x, Struct_1(vec4<i32>(~global0.e, u_input.b << (28386u % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, global0.e), global2.a), 2147483647i) | reverseBits(~vec4<i32>(16864i, 1i, -44564i, global0.e)), _wgslsmith_f_op_vec4_f32(floor(global0.b)), global1.x, vec2<u32>(global0.d.x, ~(u_input.d.x | u_input.d.x)), countOneBits(firstLeadingBit(-39646i | global2.a.x))));
    global1 = vec4<f32>(1070f, global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1047f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0.c * -2410f)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.wx - global0.b.xz), _wgslsmith_f_op_vec2_f32(func_1(~vec2<u32>(global0.d.x, 47933u)).b.yz - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.c, global1.x) * global0.b.zx)))));
    global0 = func_2(global0.a.ww, Struct_4(u_input.c.zz >> ((global0.d >> (u_input.d.yx % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = Struct_1(firstTrailingBit(vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(var_0.b.a.x, global0.a.x)), _wgslsmith_clamp_i32(firstLeadingBit(u_input.c.x), u_input.b, global0.e >> (u_input.d.x % 32u)), func_1(var_0.b.d).a.x, 1i)), vec4<f32>(func_1(u_input.d.xx).c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -130f), global1.x), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, -754f), 809f), vec2<u32>(var_0.d.d.x, select(6651u, reverseBits(firstLeadingBit(0u)), !any(vec4<bool>(true, false, true, true)))), _wgslsmith_mod_i32(firstTrailingBit(u_input.a.x), min(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.e, global2.a.x), u_input.a), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 14815i), vec2<i32>(31540i, var_0.b.a.x)), _wgslsmith_mod_i32(26906i, -43533i)))));
    let x = u_input.a;
    s_output = StorageBuffer(~((~0u & global0.d.x) >> (~u_input.d.x % 32u)), _wgslsmith_f_op_f32(-global1.x));
}

