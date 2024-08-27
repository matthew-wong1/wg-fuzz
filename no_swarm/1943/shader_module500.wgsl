struct Struct_1 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global2: array<Struct_2, 32>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_1;
    let var_1 = Struct_2(select(global1[_wgslsmith_index_u32(~max(u_input.c.x, ~10451u), 22u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mod_u32(1u, ~0u), countOneBits(var_0.b.x)), 22u)], !global1[_wgslsmith_index_u32(firstTrailingBit(4294967295u) >> (_wgslsmith_clamp_u32(arg_1.b.x, 4294967295u, arg_1.b.x) % 32u), 22u)]), true, var_0, arg_1);
    let var_2 = arg_1;
    var var_3 = max(select(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -38767i, 73240i, -1i), -vec4<i32>(u_input.d.x, u_input.b, -1i, u_input.a.x), vec4<bool>(false, var_1.b, all(vec2<bool>(false, var_1.b)), 0i <= u_input.d.x)) & vec4<i32>(_wgslsmith_mult_i32(0i, ~u_input.d.x), -1i, _wgslsmith_mult_i32(min(21476i, -1i), ~u_input.d.x), u_input.d.x), (-abs(vec4<i32>(u_input.d.x, -2147483647i, u_input.b, 1i)) >> (vec4<u32>(min(u_input.c.x, 1u), arg_1.b.x, _wgslsmith_mod_u32(var_2.b.x, var_0.b.x), 0u) % vec4<u32>(32u))) >> (~var_1.d.b % vec4<u32>(32u)));
    var_3 = vec4<i32>(u_input.d.x, -min(u_input.d.x, u_input.b) ^ u_input.d.x, abs(~_wgslsmith_mod_i32(15100i, 38804i)), u_input.a.x) ^ vec4<i32>(var_3.x, _wgslsmith_clamp_i32(abs(-2147483647i), _wgslsmith_sub_i32(-1i, 27655i ^ u_input.a.x), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b, u_input.a.x), -8513i)), abs(countOneBits(-2147483647i)), 0i);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(247f * -570f) - _wgslsmith_f_op_f32(1f + -1682f));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<i32>, arg_2: vec3<bool>) -> bool {
    var var_0 = !arg_2.x;
    var var_1 = Struct_2(select(select(select(global1[_wgslsmith_index_u32(1u, 22u)], vec2<bool>(false, false), any(vec4<bool>(arg_2.x, arg_2.x, true, true))), vec2<bool>(true, true), select(!arg_2.yy, select(vec2<bool>(false, false), global1[_wgslsmith_index_u32(1u, 22u)], vec2<bool>(arg_2.x, arg_2.x)), true)), !(!select(vec2<bool>(arg_2.x, arg_2.x), global1[_wgslsmith_index_u32(3357u, 22u)], arg_2.x)), !vec2<bool>(true, arg_2.x)), all(arg_2), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<f32>(1253f, 881f), Struct_1(vec4<f32>(-983f, -465f, 739f, -1018f), vec4<u32>(28125u, u_input.c.x, 79426u, 0u)), vec2<f32>(-1078f, -383f)))), 617f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(232f + 1504f), _wgslsmith_f_op_f32(629f + 1600f)), 1f), ~_wgslsmith_add_vec4_u32(vec4<u32>(73580u, 73491u, 1u, 48774u), vec4<u32>(18327u, u_input.c.x, u_input.c.x, 0u))), Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(177f, 253f, 519f, 1748f) - vec4<f32>(-632f, 465f, 647f, 106f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1441f, 951f, 262f, 821f)))), ~max(~vec4<u32>(4294967295u, 5697u, 24761u, 1u), firstTrailingBit(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x)))));
    var var_2 = _wgslsmith_add_vec2_u32(~reverseBits(select(u_input.c.xy, vec2<u32>(1093u, var_1.c.b.x), var_1.b) ^ abs(var_1.d.b.yx)), _wgslsmith_clamp_vec2_u32(u_input.c.yy, u_input.c.zz, var_1.d.b.zz));
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(floor(var_1.c.a)), vec4<u32>(~2962u, _wgslsmith_div_u32(~var_2.x, var_2.x | 0u) ^ var_2.x, u_input.c.x, abs(2612u >> (var_1.d.b.x % 32u))));
    let var_4 = global2[_wgslsmith_index_u32(u_input.c.x, 32u)];
    return var_4.a.x;
}

fn func_1() -> Struct_1 {
    let var_0 = all(select(!vec4<bool>(true, any(vec4<bool>(false, true, true, true)), true, true), vec4<bool>(_wgslsmith_f_op_f32(-760f - -2076f) <= _wgslsmith_f_op_f32(step(-431f, 2045f)), func_2(min(u_input.a, vec2<i32>(u_input.b, -41236i)), vec4<i32>(u_input.a.x, u_input.d.x, -9627i, u_input.a.x), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true, func_2(firstTrailingBit(vec2<i32>(-1i, u_input.b)), ~vec4<i32>(u_input.d.x, -25440i, 2147483647i, u_input.d.x), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), false & (~(-2147483647i) != min(1i, u_input.b))));
    global1 = array<vec2<bool>, 22>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -422f) - 180f), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-349f + 576f) * _wgslsmith_f_op_f32(1008f - -1195f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-300f * -361f))), !select(select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(true, var_0, false, false), var_0), vec4<bool>(var_0, false, var_0, var_0), select(vec4<bool>(true, true, var_0, var_0), vec4<bool>(true, var_0, var_0, false), vec4<bool>(var_0, true, true, var_0))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-489f, 1260f, 3261f, var_1.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-645f, var_1.x, -1074f, -278f)))))), ~vec4<u32>(u_input.c.x, 4294967295u, ~4294967295u, 82455u));
    global0 = 18019u & ((u_input.c.x << ((var_2.b.x << (u_input.c.x % 32u)) % 32u)) >> (0u % 32u));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(select(803f, _wgslsmith_f_op_f32(exp2(var_2.a.x)), var_0)), _wgslsmith_div_f32(833f, var_1.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(var_1.x)), 596f))))), _wgslsmith_mod_vec4_u32(var_2.b, select(~var_2.b, var_2.b, false) | vec4<u32>(~var_2.b.x, u_input.c.x, _wgslsmith_dot_vec4_u32(var_2.b, var_2.b), _wgslsmith_clamp_u32(var_2.b.x, 610u, u_input.c.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: Struct_1) -> vec4<u32> {
    return ~_wgslsmith_add_vec4_u32(~vec4<u32>(~u_input.c.x, _wgslsmith_add_u32(u_input.c.x, arg_1.c.b.x), ~12659u, 68514u), _wgslsmith_mult_vec4_u32(firstTrailingBit(_wgslsmith_add_vec4_u32(arg_3.b, arg_3.b)), min(~arg_1.c.b, select(arg_3.b, arg_3.b, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1250f - 2400f)) + -1501f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-325f - -756f))), -1604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(616f))))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, 0u, 1u, u_input.c.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 0u) & firstLeadingBit(vec4<u32>(33220u, 0u, 46609u, u_input.c.x)), vec4<u32>(u_input.c.x, select(u_input.c.x, u_input.c.x, false), 0u, ~47727u), func_4(func_1(), Struct_2(vec2<bool>(true, false), false, Struct_1(vec4<f32>(292f, -123f, 440f, 1353f), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 0u)), Struct_1(vec4<f32>(424f, 432f, 187f, 1236f), vec4<u32>(55749u, 4294967295u, 24631u, u_input.c.x))), -vec4<i32>(u_input.d.x, 5611i, u_input.a.x, -2147483647i), Struct_1(vec4<f32>(-1405f, 1034f, -624f, -1223f), vec4<u32>(u_input.c.x, 29313u, u_input.c.x, u_input.c.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.x, var_0.a.x, 362f, var_0.a.x))))) - vec4<f32>(-532f, _wgslsmith_f_op_f32(276f * 1325f), var_0.a.x, 500f))), 1789f);
}

