struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: bool,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14> = array<u32, 14>(80094u, 0u, 4294967295u, 30311u, 0u, 12683u, 1u, 0u, 16024u, 37163u, 0u, 35517u, 1u, 90722u);

var<private> global1: u32 = 4294967295u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_4 {
    global1 = reverseBits(0u);
    var var_0 = -select(abs(min(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, 96404i, 1i))), ~_wgslsmith_mod_vec3_i32(min(vec3<i32>(-21013i, 1i, 2147483647i), vec3<i32>(17916i, 78627i, -2147483647i)), vec3<i32>(1i, 1i, 1i)), !(!any(vec2<bool>(false, false))));
    let var_1 = u_input.c;
    global1 = var_1;
    let var_2 = select(true, true & any(vec3<bool>(true, all(vec2<bool>(true, true)), true)), true || any(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(false, false))));
    return Struct_4(abs(vec2<i32>(_wgslsmith_add_i32(2147483647i, var_0.x), var_0.x)), var_2, var_0.xy);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<bool>) -> Struct_4 {
    var var_0 = -2158f;
    var var_1 = (~_wgslsmith_div_u32(0u, max(u_input.e, global0[_wgslsmith_index_u32(1u, 14u)])) & (~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 46285u, global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.d.x), vec4<u32>(4294967295u, u_input.d.x, 50773u, 0u)) << (~u_input.e % 32u))) | ~countOneBits(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a.x, u_input.e)), u_input.d));
    global1 = 124944u;
    global0 = array<u32, 14>();
    var_1 = u_input.e;
    return func_2();
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec2<u32>, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-436f, -1000f))))))));
    let var_1 = func_1(vec2<bool>(all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false)))), false), select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false)), true), !vec3<bool>(true, any(vec2<bool>(false, true)), true), vec3<bool>(true, true, true)));
    return vec3<bool>(278f == arg_0, var_1.b, any(vec2<bool>(func_1(vec2<bool>(var_1.b, var_1.b), !vec3<bool>(var_1.b, var_1.b, false)).b, true)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<u32, 14>();
    var var_0 = _wgslsmith_dot_vec3_i32(~(~select(vec3<i32>(-14607i, arg_3.b, 1i), vec3<i32>(-1i, -41002i, arg_3.d.a), arg_2.x)) & abs(_wgslsmith_div_vec3_i32(~vec3<i32>(arg_3.b, -32547i, 0i), vec3<i32>(1i, arg_3.d.a, arg_3.b) ^ vec3<i32>(-2147483647i, -10621i, -1i))), _wgslsmith_mult_vec3_i32(min(vec3<i32>(29254i, arg_3.c, arg_3.c) << (~vec3<u32>(0u, arg_0, 4294967295u) % vec3<u32>(32u)), select(-vec3<i32>(arg_3.b, arg_3.b, arg_3.b), vec3<i32>(31229i, arg_3.d.c.x, -11519i) >> (vec3<u32>(102117u, global0[_wgslsmith_index_u32(0u, 14u)], u_input.a.x) % vec3<u32>(32u)), any(arg_3.e.a))), vec3<i32>(~reverseBits(-30696i), 41418i, ~arg_3.d.a)));
    var var_1 = Struct_1(select(select(vec4<bool>(true, false, true, true), vec4<bool>(arg_1.x | true, !arg_1.x, false, any(arg_3.d.d.a)), true), vec4<bool>(true, false, 4294967295u != ~global0[_wgslsmith_index_u32(arg_0, 14u)], true), select(arg_3.e.a, !(!arg_3.e.a), true)));
    var var_2 = vec2<f32>(-1206f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.b.x) - arg_3.d.b.x));
    var_0 = (_wgslsmith_mult_i32(-2147483647i, ~(-arg_3.c)) >> (arg_3.a.x % 32u)) | abs(1i);
    return var_1.a.wwx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<bool>(false, firstLeadingBit(~1u) < max(4294967295u >> (global0[_wgslsmith_index_u32(69407u, 14u)] % 32u), u_input.a.x)), vec3<bool>(true, true, true));
    var_0 = func_2();
    var var_1 = func_4((u_input.c >> ((reverseBits(u_input.b) | ~53718u) % 32u)) >> (~(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.e, 14u)], 14u)] << (~global0[_wgslsmith_index_u32(u_input.a.x, 14u)] % 32u)) % 32u), !vec2<bool>(u_input.a.x >= _wgslsmith_sub_u32(u_input.c, u_input.c), true), select(!vec3<bool>(true, false, all(vec3<bool>(true, var_0.b, false))), !func_3(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_sub_i32(1i, 1i), ~vec2<u32>(9529u, global0[_wgslsmith_index_u32(4294967295u, 14u)]), _wgslsmith_div_f32(1000f, -560f)), select(vec3<bool>(true, true, true), !select(vec3<bool>(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(true, var_0.b, true)), select(vec3<bool>(false, var_0.b, false), select(vec3<bool>(var_0.b, false, true), vec3<bool>(var_0.b, false, var_0.b), vec3<bool>(var_0.b, var_0.b, var_0.b)), var_0.b))), Struct_3(~(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 5288u, 73982u, u_input.b) ^ abs(vec4<u32>(41845u, 0u, global0[_wgslsmith_index_u32(0u, 14u)], 4294967295u))), var_0.c.x, _wgslsmith_sub_i32(13103i, var_0.a.x), Struct_2(var_0.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1228f, -1535f, -242f) + vec3<f32>(841f, -488f, 1050f))), firstTrailingBit(vec2<i32>(var_0.c.x, var_0.a.x)), Struct_1(vec4<bool>(true, var_0.b, true, false)), ~u_input.d.x), Struct_1(!select(vec4<bool>(true, false, false, var_0.b), vec4<bool>(var_0.b, var_0.b, true, true), vec4<bool>(false, false, true, true)))));
    var var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(countOneBits(~(~vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.b, 14u)], u_input.a.x, u_input.e))), ~(~vec4<u32>(1u, global0[_wgslsmith_index_u32(10225u, 14u)], u_input.c, 31070u)) >> (vec4<u32>(~109436u, global0[_wgslsmith_index_u32(40279u, 14u)], ~31451u, 8466u) % vec4<u32>(32u))), ~_wgslsmith_div_vec4_u32(~(vec4<u32>(u_input.c, u_input.b, u_input.c, global0[_wgslsmith_index_u32(4294967295u, 14u)]) << (vec4<u32>(29762u, 0u, 4294967295u, 31484u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], u_input.b, global0[_wgslsmith_index_u32(0u, 14u)], u_input.b), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], 1u, u_input.b, 22760u)), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.e, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(100391u, 14u)], 14u)]))));
    let var_3 = Struct_3(select(vec4<u32>(abs(~43418u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(67440u, var_2.x), 4294967295u), ~4294967295u, 1u), _wgslsmith_sub_vec4_u32(vec4<u32>(~u_input.a.x, ~1u, _wgslsmith_sub_u32(var_2.x, 16069u), u_input.d.x << (var_2.x % 32u)), reverseBits(vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 14u)], 1u, 4294967295u) ^ vec4<u32>(19603u, 3662u, global0[_wgslsmith_index_u32(18999u, 14u)], 1u))), select(select(!vec4<bool>(false, true, var_0.b, false), select(vec4<bool>(true, var_0.b, var_0.b, false), vec4<bool>(true, false, var_1.x, false), vec4<bool>(var_0.b, var_1.x, var_0.b, var_0.b)), var_0.b), select(select(vec4<bool>(var_1.x, var_0.b, var_0.b, false), vec4<bool>(var_0.b, true, false, var_0.b), true), vec4<bool>(var_0.b, true, false, false), !vec4<bool>(false, true, var_1.x, var_1.x)), var_2.x < ~var_2.x)), i32(-1i) * -_wgslsmith_mod_i32(-37529i, var_0.a.x | 0i), _wgslsmith_div_i32(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0.c.x, var_0.a.x), ~_wgslsmith_mod_i32(var_0.c.x, 2147483647i)), _wgslsmith_dot_vec3_i32(~vec3<i32>(1i, var_0.a.x, 1i), select(vec3<i32>(var_0.a.x, var_0.a.x, -1i), vec3<i32>(var_0.c.x, 12632i, var_0.c.x), var_0.b)) & _wgslsmith_mult_i32(_wgslsmith_mod_i32(0i, 2147483647i), 3213i)), Struct_2(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(-197f * _wgslsmith_f_op_f32(1074f + 445f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -788f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(113f - 1538f), -769f))), var_0.c, Struct_1(!(!vec4<bool>(var_0.b, true, var_0.b, false))), ~(~u_input.a.x) | u_input.d.x), Struct_1(select(vec4<bool>(var_0.b || true, !var_0.b, true, true), vec4<bool>(true, all(vec4<bool>(var_1.x, false, true, var_0.b)), true, func_2().b), var_0.b)));
    var_2 = vec4<u32>(firstTrailingBit(~4069u), var_2.x, ~_wgslsmith_dot_vec3_u32(var_3.a.yxx, ~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, var_2.x), vec3<u32>(var_3.a.x, 38517u, u_input.d.x))), _wgslsmith_clamp_u32(var_2.x, var_2.x, 4294967295u));
    let var_4 = 57832u;
    let var_5 = 2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstLeadingBit(var_3.a)), 0i, _wgslsmith_f_op_vec2_f32(exp2(var_3.d.b.xy)), func_2().a.x, vec3<u32>(0u, _wgslsmith_div_u32(~(~var_4), var_3.d.e), firstTrailingBit(0u)));
}

