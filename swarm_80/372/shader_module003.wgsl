struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(-14031i, 2147483647i), vec2<i32>(18588i, 2147483647i), vec2<i32>(-12773i, 32455i), vec2<i32>(37704i, 32147i), vec2<i32>(-19895i, 52865i), vec2<i32>(-27030i, 6121i), vec2<i32>(-26927i, -30753i), vec2<i32>(10757i, i32(-2147483648)), vec2<i32>(6019i, -1i), vec2<i32>(-5788i, 6536i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, 1769i), vec2<i32>(-8831i, 0i), vec2<i32>(5228i, 7960i));

var<private> global1: f32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> vec4<i32> {
    return firstTrailingBit(~(vec4<i32>(u_input.a.x, 0i, -2147483647i, -31517i) | vec4<i32>(-36197i, 22772i, u_input.a.x, u_input.a.x))) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u));
}

fn func_2() -> vec4<i32> {
    let var_0 = u_input.a.x;
    let var_1 = (u_input.a << (~vec4<u32>(~4294967295u, _wgslsmith_mult_u32(26434u, 1u), 147368u, ~4294967295u) % vec4<u32>(32u))) | ~_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(11959i, 48681i, var_0, u_input.a.x), func_3()), u_input.a);
    var var_2 = 1837f;
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-199f, 343f, -1161f, -627f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(356f, 257f, -401f, 1237f), vec4<f32>(-117f, -1000f, 1949f, 418f), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1087f, 256f, 471f, 493f) * vec4<f32>(-1966f, -569f, 156f, 1825f)))) + vec4<f32>(_wgslsmith_f_op_f32(ceil(767f)), -494f, _wgslsmith_f_op_f32(sign(-745f)), _wgslsmith_f_op_f32(1000f * 898f))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1040f), _wgslsmith_f_op_f32(466f * 1210f), _wgslsmith_f_op_f32(898f * -1075f), _wgslsmith_f_op_f32(ceil(454f))))))), all(!(!select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false)))));
    let var_4 = vec3<u32>(0u, max(~(reverseBits(61672u) | firstTrailingBit(44769u)), ~_wgslsmith_mult_u32(~36060u, ~4294967295u)), 1u);
    return firstTrailingBit(_wgslsmith_add_vec4_i32(select(~abs(var_1), _wgslsmith_sub_vec4_i32(~vec4<i32>(var_1.x, -93428i, 58239i, u_input.a.x), vec4<i32>(var_0, -30983i, 77131i, u_input.a.x)), vec4<bool>(all(vec2<bool>(true, true)), all(vec2<bool>(false, false)), all(vec3<bool>(true, true, true)), true)), (vec4<i32>(-1i) * -vec4<i32>(var_0, var_0, var_1.x, 1i)) ^ (_wgslsmith_div_vec4_i32(vec4<i32>(27067i, 0i, -2147483647i, u_input.a.x), u_input.a) ^ _wgslsmith_mod_vec4_i32(var_1, u_input.a))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>, arg_3: bool) -> i32 {
    let var_0 = _wgslsmith_mult_vec4_i32(vec4<i32>(~abs(u_input.a.x), u_input.a.x, u_input.a.x & -u_input.a.x, 20047i), u_input.a) >> (~countOneBits(vec4<u32>(select(32498u, 0u, false), min(18745u, 17091u), _wgslsmith_mod_u32(4294967295u, 7525u), ~25466u)) % vec4<u32>(32u));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    global1 = -1000f;
    global0 = array<vec2<i32>, 14>();
    let var_2 = -2147483647i;
    return select(_wgslsmith_dot_vec4_i32(var_0, abs(func_2())), select(u_input.a.x, min(-6270i, var_2), true) << (23098u % 32u), arg_1.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> Struct_1 {
    let var_0 = select(!(!vec4<bool>(select(false, false, true), all(vec3<bool>(false, true, true)), true, all(vec4<bool>(true, true, true, true)))), select(vec4<bool>(true, select(true, true, true), true, !all(vec3<bool>(true, false, false))), select(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec2<bool>(false, true))), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true))), false)), !vec4<bool>(true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), false)), true, 65339u < select(0u, 0u, true)));
    global0 = array<vec2<i32>, 14>();
    let var_1 = min(abs(_wgslsmith_sub_vec2_u32(select(reverseBits(vec2<u32>(15055u, 51648u)), countOneBits(vec2<u32>(4294967295u, 1u)), var_0.yx), ~(~vec2<u32>(4294967295u, 1u)))), firstTrailingBit(max(firstLeadingBit(vec2<u32>(1u, 1u)), min(vec2<u32>(28144u, 19410u), vec2<u32>(49840u, 0u)) << (select(vec2<u32>(32667u, 68079u), vec2<u32>(35902u, 0u), var_0.x) % vec2<u32>(32u)))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -478f), 0i, u_input.a.xw);
    let var_3 = select(vec3<bool>(all(!(!vec4<bool>(var_0.x, false, true, var_0.x))), !any(vec2<bool>(true, var_0.x)), true), select(var_0.xwx, vec3<bool>(true, var_0.x, !(0u < var_1.x)), false), !var_0.wxw);
    return Struct_1(-348f, arg_2, (vec2<i32>(-1i) * -vec2<i32>(-1i, u_input.a.x)) ^ vec2<i32>(var_2.c.x, -26768i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 14>();
    let var_0 = func_4(vec4<i32>(~(~u_input.a.x) << (~(~22070u) % 32u), _wgslsmith_dot_vec2_i32(-vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 38043i), ~vec2<i32>(-1i, u_input.a.x), global0[_wgslsmith_index_u32(~4294967295u, 14u)])), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, ~u_input.a.x, 1i), min(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) ^ u_input.a.yxx, _wgslsmith_sub_vec3_i32(vec3<i32>(33792i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -34211i)))), ~(_wgslsmith_dot_vec3_i32(u_input.a.xxy, u_input.a.xwz) >> (~0u % 32u))), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(20680u, 4294967295u), vec2<u32>(4294967295u, 109196u))), 14u)], select(vec2<i32>(-3717i, -35924i) ^ vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x), true)), 1i), _wgslsmith_mod_i32(func_1(vec3<bool>(true, true, true), vec3<bool>(true, false, true), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-617f, -867f, 1363f))), true), u_input.a.x) ^ 51577i);
    let var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-430f - 2341f), var_0.a, _wgslsmith_f_op_f32(floor(-817f))));
    var var_2 = 1u;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0.a, var_0.a))), _wgslsmith_f_op_f32(var_1.x + -628f)));
    var var_3 = Struct_2(func_4(u_input.a, _wgslsmith_sub_i32(u_input.a.x, 0i) | 0i, ~_wgslsmith_dot_vec4_i32(func_2(), firstTrailingBit(vec4<i32>(0i, u_input.a.x, var_0.c.x, -7567i)))), _wgslsmith_add_i32(select(_wgslsmith_clamp_i32(var_0.b, 20319i, -2147483647i), func_1(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<f32>(-2459f, var_1.x, var_0.a), true), true), reverseBits(-var_0.b)));
    let x = u_input.a;
    s_output = StorageBuffer(func_3().x, vec2<i32>(u_input.a.x, var_0.c.x), _wgslsmith_f_op_f32(min(var_3.a.a, -722f)), _wgslsmith_mult_vec4_u32(vec4<u32>(countOneBits(~4294967295u), ~1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(82829u, 13957u, 4294967295u, 4294967295u), vec4<u32>(81022u, 23978u, 0u, 0u)), firstLeadingBit(_wgslsmith_sub_u32(15415u, 1u))), ~vec4<u32>(1u, 1u, 1u, 1u)));
}

