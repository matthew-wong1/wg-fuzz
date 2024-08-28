struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> vec3<u32> {
    let var_0 = ~abs(vec2<u32>(firstLeadingBit(arg_1.x), firstLeadingBit(u_input.a))) >> (_wgslsmith_add_vec2_u32(abs(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, u_input.a), 1888u)), ~u_input.b >> (arg_1.yy % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = -1060f;
    let var_1 = abs(min(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), ~vec4<i32>(1i, 24220i, arg_0.x, -1i)), select(-_wgslsmith_sub_vec4_i32(vec4<i32>(32856i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(arg_0.x, -2147483647i, 11218i, -16493i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, 58758i, arg_0.x), abs(vec4<i32>(24789i, arg_0.x, arg_0.x, arg_0.x)), vec4<i32>(arg_0.x, -1i, -1i, arg_0.x) & vec4<i32>(7571i, 17246i, arg_0.x, 49817i)), false)));
    let var_2 = 1835f;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2422f))) * var_2), var_2, var_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -629f) - _wgslsmith_f_op_f32(abs(var_2)))))));
    return vec3<u32>(u_input.b.x, countOneBits(_wgslsmith_dot_vec4_u32(countOneBits(~vec4<u32>(u_input.b.x, 0u, 16209u, 30986u)), max(vec4<u32>(61791u, arg_1.x, 669u, 4294967295u), vec4<u32>(4294967295u, var_0.x, 0u, var_0.x)) ^ (vec4<u32>(35755u, arg_1.x, 4294967295u, 2563u) << (vec4<u32>(u_input.a, 67634u, 1u, 82405u) % vec4<u32>(32u))))), max(1u, 2465u));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> i32 {
    let var_0 = arg_1;
    let var_1 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(572f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -481f)))), _wgslsmith_f_op_f32(ceil(-2376f)), _wgslsmith_div_f32(-695f, 150f), 112f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-876f, -186f, 241f, -1000f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1245f, -1000f, 639f))) + vec4<f32>(-250f, 622f, 1000f, _wgslsmith_f_op_f32(abs(-418f))))));
    global0 = var_1.x;
    global0 = -874f;
    var var_2 = vec3<i32>((_wgslsmith_mult_i32(-1i, -34389i) << (1u % 32u)) | abs(arg_1.b.x), arg_1.b.x, -1i);
    return _wgslsmith_dot_vec2_i32(arg_1.b.zx, vec2<i32>(_wgslsmith_clamp_i32(var_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.x, var_2.x, 2147483647i), var_0.b), _wgslsmith_sub_i32(reverseBits(var_0.b.x), arg_1.b.x)), var_0.b.x ^ (arg_1.b.x << (~u_input.b.x % 32u))));
}

fn func_2() -> Struct_4 {
    global0 = 241f;
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-17355i, 1i, i32(-1i) * -abs(0i), func_4(true, Struct_4(func_3(vec2<i32>(0i, -1i), vec3<u32>(u_input.b.x, u_input.a, u_input.a)), -vec3<i32>(1i, 1i, -22093i)))), vec4<i32>(7032i, ~min(max(14092i, 1i), 18022i), func_4(true, Struct_4(vec3<u32>(u_input.b.x, 88555u, 24226u), select(vec3<i32>(-16358i, -25502i, -2147483647i), vec3<i32>(2147483647i, 1i, 2147483647i), false))), ~1i));
    var var_1 = Struct_4(~(~vec3<u32>(~u_input.a, 0u, _wgslsmith_div_u32(u_input.b.x, u_input.a))), vec3<i32>(_wgslsmith_sub_i32(select(var_0, var_0, all(vec4<bool>(true, false, false, false))), var_0), 2147483647i | ~var_0, _wgslsmith_div_i32(var_0 ^ var_0, var_0 ^ var_0) & -var_0));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(929f - 1797f) * -1232f))), Struct_1(_wgslsmith_f_op_f32(ceil(961f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(587f, 1789f))) - -1546f), -103f)), Struct_1(-1000f), 1f);
    var_1 = Struct_4(var_1.a, var_1.b);
    return Struct_4(vec3<u32>(~0u, select(~1u, var_1.a.x, !(var_1.b.x >= -42717i)), 18385u), _wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, 2147483647i), -var_1.b)), ~vec3<i32>(-2147483647i >> (var_1.a.x % 32u), _wgslsmith_mult_i32(-13626i, 33392i), min(-35826i, var_0))));
}

fn func_1() -> bool {
    var var_0 = func_2();
    let var_1 = Struct_4(_wgslsmith_clamp_vec3_u32(func_2().a & vec3<u32>(_wgslsmith_mult_u32(8163u, u_input.b.x), ~0u, ~0u), vec3<u32>(~19529u, ~u_input.a, u_input.b.x) | _wgslsmith_div_vec3_u32(var_0.a, var_0.a), ~min(var_0.a << (var_0.a % vec3<u32>(32u)), var_0.a)), var_0.b);
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-609f * -493f))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(801f, 661f))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1141f, -1922f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-490f, 1000f)), 1f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(-2260f, -1263f)))) + _wgslsmith_f_op_f32(866f - _wgslsmith_f_op_f32(round(975f))))));
    var var_3 = -(reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(-7011i, var_0.b.x, 1572i, 13233i), vec4<i32>(var_1.b.x, 1i, var_1.b.x, 2147483647i) & vec4<i32>(var_1.b.x, var_1.b.x, var_1.b.x, -69679i))) ^ -select(vec4<i32>(var_1.b.x, var_0.b.x, var_1.b.x, -26892i), abs(vec4<i32>(-2147483647i, var_0.b.x, -42063i, 35335i)), all(vec2<bool>(false, true))));
    var var_4 = !(false & all(vec2<bool>(true, true)));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(24357i, -2147483647i);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1310f, 1000f, -1401f, 1000f) - vec4<f32>(537f, -642f, -207f, 1502f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(823f, -1000f, 354f, 442f))))) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -540f), _wgslsmith_f_op_f32(1230f * -1874f), -809f, _wgslsmith_f_op_f32(-407f + -447f))))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, 773f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-424f, 1274f, true)), _wgslsmith_f_op_f32(-1242f + -414f))), -521f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(892f, 131f, -142f, -534f) - vec4<f32>(1000f, -460f, -559f, 497f))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1010f, -1591f, -112f, 104f)), vec4<f32>(-385f, -775f, 1281f, -478f)))))));
    var var_3 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(true, true)), vec2<bool>(func_1(), true), any(vec2<bool>(true, true))), vec2<bool>(0u > u_input.a, true), false);
    var_2 = vec4<f32>(686f, var_2.x, _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))));
    let var_4 = !all(vec2<bool>(true, true));
    var_3 = !vec2<bool>(var_3.x, func_3(_wgslsmith_mod_vec2_i32(var_0, var_0), countOneBits(vec3<u32>(u_input.a, 3282u, u_input.a))).x > u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, select(~func_2().a.xy, firstTrailingBit(max(u_input.b | vec2<u32>(u_input.b.x, 77641u), ~u_input.b)), var_3.x), vec4<u32>(7750u, u_input.a, func_2().a.x, u_input.a) >> (min(vec4<u32>(4294967295u << (0u % 32u), 0u >> (1u % 32u), u_input.a, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.a))), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.a, 1u), abs(vec4<u32>(4294967295u, u_input.b.x, 30996u, 58784u)))) % vec4<u32>(32u)));
}

