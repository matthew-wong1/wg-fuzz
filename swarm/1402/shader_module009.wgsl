struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    return vec3<i32>(~max(u_input.a, abs(~0i)), ~_wgslsmith_clamp_i32(u_input.a, ~1i, u_input.a), u_input.a);
}

fn func_3(arg_0: i32, arg_1: i32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_sub_vec3_i32(abs(vec3<i32>(28728i, arg_0, select(arg_1, -7021i, true))), vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, arg_1, u_input.a), vec3<i32>(36187i, arg_1, 19544i) ^ vec3<i32>(-2147483647i, u_input.a, -1i)), arg_1)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(4294967295u, 1u), 1u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(259f, -859f, 1436f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(353f, -1000f, -1006f))))), max(26982u, ~(~1u) | ~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4755u, 50000u), vec3<u32>(0u, 70987u, 40571u))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, var_0.c.x) * _wgslsmith_f_op_f32(var_0.c.x - _wgslsmith_f_op_f32(-var_0.c.x))))) * var_0.c.x);
    let var_2 = 17395i;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2080f, -836f)))));
    var var_3 = ~abs(select(countOneBits(~vec2<u32>(1u, 21882u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, var_0.b), vec2<u32>(21257u, var_0.b)) << (abs(vec2<u32>(var_0.b, 47811u)) % vec2<u32>(32u)), vec2<bool>(true, true)));
    return vec3<i32>(1071i, max(~1i, -1i), -37594i);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: vec3<u32>, arg_3: vec3<bool>) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-529f, _wgslsmith_div_f32(arg_0.c, arg_0.c), _wgslsmith_f_op_f32(-1575f + 792f), 1f) + vec4<f32>(_wgslsmith_f_op_f32(round(-1142f)), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(arg_0.c * 316f), arg_0.c)) * vec4<f32>(1000f, -207f, _wgslsmith_f_op_f32(arg_0.c + arg_0.c), _wgslsmith_f_op_f32(arg_0.c - arg_1.x))));
    var var_1 = Struct_2(!(!(!arg_0.a)), vec3<i32>(arg_0.b.x, -1i, -arg_0.b.x), -2316f);
    var_1 = Struct_2(arg_3, arg_0.b, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.c, arg_0.c, true))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.c)), _wgslsmith_f_op_f32(-arg_1.x), var_1.c, var_0.x))))));
    var var_2 = ((min(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, 1u), countOneBits(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))) & ~(~vec4<u32>(0u, arg_2.x, 25910u, 61231u))) ^ ~(select(vec4<u32>(1u, 22030u, arg_2.x, arg_2.x), vec4<u32>(arg_2.x, 4294967295u, 64945u, 0u), vec4<bool>(var_1.a.x, true, arg_0.a.x, true)) & reverseBits(vec4<u32>(0u, arg_2.x, arg_2.x, arg_2.x)))) & _wgslsmith_mult_vec4_u32(vec4<u32>(~_wgslsmith_dot_vec3_u32(arg_2, arg_2), 0u, 0u, arg_2.x), ~max(vec4<u32>(41625u, arg_2.x, 0u, arg_2.x), ~vec4<u32>(arg_2.x, 116630u, arg_2.x, 28741u)));
    return true;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(func_2(Struct_2(vec3<bool>(all(vec2<bool>(false, false)), any(vec3<bool>(true, true, false)), true), vec3<i32>(-2284i, 43009i, u_input.a) | ~vec3<i32>(13478i, u_input.a, 1i), _wgslsmith_f_op_f32(-119f * _wgslsmith_f_op_f32(1000f + 1184f)))), 0u, vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -169f)), 158f), 386f, _wgslsmith_f_op_f32(-203f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(176f - 959f)))), 1u);
    let var_1 = -var_0.a.zy;
    let var_2 = func_4(Struct_2(vec3<bool>(true, true, true), ~select(vec3<i32>(20534i, u_input.a, var_0.a.x), vec3<i32>(var_1.x, var_1.x, -22517i), vec3<bool>(true, true, false)) & _wgslsmith_mult_vec3_i32(func_3(u_input.a, 29676i), func_2(Struct_2(vec3<bool>(true, false, false), vec3<i32>(var_1.x, 19039i, 34461i), var_0.c.x))), var_0.c.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c.yx), var_0.c.yz))), ((vec3<u32>(114326u, var_0.d, 90261u) | ~vec3<u32>(var_0.d, var_0.b, 1u)) | _wgslsmith_add_vec3_u32(max(vec3<u32>(1u, var_0.b, 126152u), vec3<u32>(var_0.b, 0u, var_0.d)), ~vec3<u32>(11623u, var_0.d, 41115u))) << (_wgslsmith_clamp_vec3_u32(~(vec3<u32>(var_0.b, 4294967295u, var_0.d) >> (vec3<u32>(var_0.d, var_0.b, var_0.b) % vec3<u32>(32u))), ~min(vec3<u32>(var_0.d, 1u, 19512u), vec3<u32>(1u, 4294967295u, 0u)), abs(vec3<u32>(49809u, 61302u, 83179u))) % vec3<u32>(32u)), select(vec3<bool>(true, (97326u != var_0.d) || true, _wgslsmith_mult_i32(31800i, var_1.x) >= _wgslsmith_mult_i32(-70359i, var_0.a.x)), vec3<bool>(_wgslsmith_f_op_f32(-var_0.c.x) <= _wgslsmith_f_op_f32(var_0.c.x + 990f), false, all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), false))), false));
    var var_3 = select(abs(var_0.d), ~_wgslsmith_mod_u32(_wgslsmith_div_u32(abs(1u), _wgslsmith_mod_u32(var_0.b, var_0.b)), var_0.b), any(select(select(!vec4<bool>(var_2, var_2, false, true), vec4<bool>(true, true, true, true), false), !(!vec4<bool>(var_2, var_2, var_2, var_2)), var_0.d <= ~var_0.d)));
    var_0 = Struct_1(-vec3<i32>(_wgslsmith_mod_i32(firstTrailingBit(2147483647i), 38035i ^ var_1.x), 19936i, -1i), _wgslsmith_mult_u32(reverseBits(~var_0.b), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(39714u, 0u, var_0.d, var_0.b), vec4<u32>(12795u, 4294967295u, 11330u, 30478u), vec4<bool>(false, var_2, var_2, true)), vec4<u32>(23780u, var_0.d, var_0.d, 23362u)), _wgslsmith_mult_vec4_u32(select(vec4<u32>(var_0.b, 4294967295u, var_0.b, 38388u), vec4<u32>(2223u, 4294967295u, var_0.b, 0u), true), max(vec4<u32>(var_0.b, var_0.b, var_0.d, var_0.d), vec4<u32>(var_0.d, var_0.d, 0u, 6958u))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c * _wgslsmith_f_op_vec3_f32(-var_0.c)), vec3<f32>(_wgslsmith_f_op_f32(exp2(var_0.c.x)), _wgslsmith_f_op_f32(round(var_0.c.x)), var_0.c.x)), ~var_0.d);
    return Struct_2(vec3<bool>(-1911f != _wgslsmith_f_op_f32(ceil(-1260f)), var_2, any(select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), vec2<bool>(var_2, var_2)), !vec2<bool>(var_2, false), any(vec4<bool>(true, var_2, true, var_2))))), vec3<i32>((select(0i, -2147483647i, var_2) & func_3(-43292i, 2147483647i).x) & reverseBits(_wgslsmith_div_i32(var_0.a.x, 1i)), (i32(-1i) * -9494i) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(1u, var_0.b)) % 32u), ~(~var_0.a.x) >> (1u % 32u)), var_0.c.x);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> vec3<i32> {
    let var_0 = Struct_1(arg_3.b | vec3<i32>(select(arg_2, -2147483647i, true), _wgslsmith_mult_i32(arg_0.b.x, 6722i), -46705i), ~arg_1.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-169f, arg_3.c, _wgslsmith_div_f32(697f, arg_3.c)), vec3<f32>(arg_3.c, _wgslsmith_f_op_f32(630f - -1000f), 1f), !func_1().a)))), ~(~(~35073u)));
    let var_1 = var_0.a.xz;
    var var_2 = var_0;
    let var_3 = var_0.c.xx;
    var var_4 = func_1();
    return (abs(var_0.a) ^ -(_wgslsmith_mult_vec3_i32(var_4.b, var_0.a) << (min(arg_1, arg_1) % vec3<u32>(32u)))) << (select(countOneBits(arg_1), vec3<u32>(~reverseBits(var_0.b), ~abs(94823u), countOneBits(40293u)), !arg_0.a.x) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1((func_5(Struct_2(vec3<bool>(true, true, false), vec3<i32>(u_input.a, u_input.a, 2282i), -834f), abs(vec3<u32>(0u, 1u, 51921u)), u_input.a, func_1()) << (~firstLeadingBit(vec3<u32>(30080u, 53648u, 42354u)) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_i32(countOneBits(vec3<i32>(u_input.a, 2147483647i, 2147483647i)), func_5(func_1(), ~vec3<u32>(0u, 42754u, 4294967295u), 2147483647i, func_1())), 0u, _wgslsmith_f_op_vec3_f32(vec3<f32>(-443f, _wgslsmith_f_op_f32(f32(-1f) * -1058f), _wgslsmith_f_op_f32(round(-1000f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-535f, 474f, 766f)), vec3<f32>(1963f, 830f, 1109f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 1000f, 654f) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1441f, 154f, -239f)))))), 1u);
    var var_1 = select(var_0.a.zx, func_3(reverseBits(var_0.a.x), 40094i).xy, 2147483647i >= -var_0.a.x);
    var_0 = Struct_1(~_wgslsmith_mod_vec3_i32(func_3(var_0.a.x ^ 0i, _wgslsmith_add_i32(-1i, u_input.a)), -(~vec3<i32>(41258i, var_0.a.x, 20702i))), var_0.b, var_0.c, var_0.d);
    let var_2 = select(!vec4<bool>(func_4(Struct_2(vec3<bool>(false, true, false), vec3<i32>(2147483647i, var_1.x, -7587i), var_0.c.x), var_0.c.xy, vec3<u32>(var_0.b, var_0.b, 4294967295u), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), true, -7601i >= var_0.a.x, true), vec4<bool>(false & (-8627i > _wgslsmith_add_i32(u_input.a, 1i)), func_1().a.x, any(func_1().a), true), vec4<bool>(min(1498i, _wgslsmith_dot_vec2_i32(var_0.a.zx, var_0.a.yy)) >= _wgslsmith_dot_vec2_i32(var_0.a.yy, func_2(Struct_2(vec3<bool>(false, true, false), vec3<i32>(var_0.a.x, 2147483647i, var_0.a.x), -688f)).yx), func_1().a.x, select(true, 1u != _wgslsmith_sub_u32(var_0.d, 0u), true), true));
    var var_3 = countOneBits(max(~(_wgslsmith_mult_vec4_i32(vec4<i32>(5479i, u_input.a, var_1.x, 16115i), vec4<i32>(var_0.a.x, u_input.a, 53235i, var_0.a.x)) | -vec4<i32>(var_1.x, 0i, var_0.a.x, -49658i)), -(vec4<i32>(-1i) * -vec4<i32>(var_1.x, var_1.x, -7863i, var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.a.xy, _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(-8499i, u_input.a)), var_0.a.yy >> (vec2<u32>(var_0.b, var_0.d) % vec2<u32>(32u))), func_3(countOneBits(18672i), var_1.x).zy), var_3.yz), vec4<u32>(~(~4558u), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(55187u, 4294967295u), vec2<u32>(var_0.b, 17788u)) & ~var_0.d), 1u, var_0.d));
}

