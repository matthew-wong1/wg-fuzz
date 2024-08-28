struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec2<f32>(-754f, 3967f), Struct_1(true, 56379u), vec4<i32>(-43469i, -1i, -673i, 49427i)), Struct_2(vec2<f32>(691f, 598f), Struct_1(true, 122627u), vec4<i32>(22002i, i32(-2147483648), 79696i, 1i)), Struct_2(vec2<f32>(369f, 892f), Struct_1(true, 4294967295u), vec4<i32>(-1i, -1i, 1i, 64840i)), Struct_2(vec2<f32>(-1569f, 225f), Struct_1(true, 4294967295u), vec4<i32>(-1i, 1i, 2147483647i, 62192i)), Struct_2(vec2<f32>(-450f, 1504f), Struct_1(true, 0u), vec4<i32>(-18443i, 2147483647i, -51287i, 2147483647i)), Struct_2(vec2<f32>(-2100f, -211f), Struct_1(true, 0u), vec4<i32>(31242i, -7271i, -1i, -8750i)), Struct_2(vec2<f32>(-1050f, -848f), Struct_1(true, 17830u), vec4<i32>(1i, 47483i, 0i, i32(-2147483648))), Struct_2(vec2<f32>(421f, -330f), Struct_1(false, 39304u), vec4<i32>(-26601i, -1i, i32(-2147483648), -6659i)), Struct_2(vec2<f32>(-635f, 171f), Struct_1(true, 21736u), vec4<i32>(-1i, i32(-2147483648), 38166i, 24607i)), Struct_2(vec2<f32>(1313f, -499f), Struct_1(false, 63137u), vec4<i32>(37886i, i32(-2147483648), 36439i, -9429i)), Struct_2(vec2<f32>(-211f, -509f), Struct_1(true, 33146u), vec4<i32>(32990i, 2147483647i, -1i, -7000i)), Struct_2(vec2<f32>(817f, -743f), Struct_1(true, 4294967295u), vec4<i32>(2025i, -1i, 0i, 27106i)), Struct_2(vec2<f32>(1172f, -1433f), Struct_1(true, 0u), vec4<i32>(61187i, i32(-2147483648), 1i, 25963i)), Struct_2(vec2<f32>(298f, 426f), Struct_1(true, 92896u), vec4<i32>(-38335i, -1i, 2147483647i, 2147483647i)), Struct_2(vec2<f32>(-1069f, 501f), Struct_1(false, 1u), vec4<i32>(28890i, i32(-2147483648), -18548i, 30698i)), Struct_2(vec2<f32>(-307f, -1086f), Struct_1(true, 0u), vec4<i32>(-25726i, -29235i, 1i, 2147483647i)), Struct_2(vec2<f32>(-153f, -1000f), Struct_1(true, 4294967295u), vec4<i32>(11452i, i32(-2147483648), -39781i, 46475i)), Struct_2(vec2<f32>(-992f, -383f), Struct_1(true, 6943u), vec4<i32>(1i, 1i, 1i, 1i)), Struct_2(vec2<f32>(-270f, 424f), Struct_1(true, 4294967295u), vec4<i32>(1i, 22640i, 2147483647i, 39399i)), Struct_2(vec2<f32>(-801f, 1000f), Struct_1(false, 0u), vec4<i32>(0i, 24523i, 2147483647i, -22647i)), Struct_2(vec2<f32>(1520f, -1275f), Struct_1(false, 4294967295u), vec4<i32>(-395i, 18120i, 6075i, -56478i)));

var<private> global1: i32 = 33291i;

var<private> global2: array<vec4<i32>, 8>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(198f)));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1426f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(438f))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1244f, -1443f)))) * vec2<f32>(_wgslsmith_f_op_f32(ceil(1523f)), _wgslsmith_f_op_f32(389f * -580f))))));
    global1 = -69130i;
    var var_2 = ~((_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), abs(u_input.a.wwy), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(4294967295u, u_input.a.x, 1u))) >> (u_input.b % vec3<u32>(32u))) | vec3<u32>(max(_wgslsmith_mod_u32(39685u, 4294967295u), _wgslsmith_mult_u32(u_input.b.x, u_input.a.x)), 15243u, 49773u));
    var var_3 = !(!vec3<bool>(true, !all(vec2<bool>(false, false)), all(vec4<bool>(true, true, true, true))));
    return true;
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(min(u_input.a.x, 0u << ((u_input.b.x | ~u_input.b.x) % 32u)), 21u)];
    var var_1 = countOneBits(~(~var_0.b.b));
    var var_2 = !select(vec4<bool>(all(select(vec3<bool>(var_0.b.a, true, var_0.b.a), vec3<bool>(var_0.b.a, false, var_0.b.a), vec3<bool>(false, false, var_0.b.a))), any(!vec3<bool>(false, var_0.b.a, false)), var_0.b.a, func_3()), select(!(!vec4<bool>(false, var_0.b.a, false, true)), !select(vec4<bool>(var_0.b.a, var_0.b.a, var_0.b.a, var_0.b.a), vec4<bool>(var_0.b.a, var_0.b.a, true, var_0.b.a), var_0.b.a), var_0.b.a), vec4<bool>(var_0.b.a, true, !var_0.b.a, !(var_0.a.x == 710f)));
    var_1 = _wgslsmith_clamp_u32(countOneBits(4294967295u), 75917u, 1u);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -904f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-725f, _wgslsmith_div_f32(var_0.a.x, -1000f))), -1268f)) + _wgslsmith_f_op_f32(exp2(var_0.a.x)));
    return var_0.c.x;
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: i32, arg_3: i32) -> vec4<bool> {
    var var_0 = global0[_wgslsmith_index_u32(~4294967295u, 21u)];
    var var_1 = select(_wgslsmith_add_u32(var_0.b.b, ~0u) > u_input.b.x, any(vec3<bool>(true, all(select(vec2<bool>(var_0.b.a, var_0.b.a), vec2<bool>(false, false), var_0.b.a)), func_3())), true);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(step(var_0.a.x, _wgslsmith_f_op_f32(-var_0.a.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-831f, var_0.a.x))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(848f * var_0.a.x), _wgslsmith_f_op_f32(min(-1033f, -176f)), !var_0.b.a))), 4896u);
    var_1 = true;
    var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(38343u >> (var_0.b.b % 32u), ~var_2.b) >> (var_2.b % 32u), 21u)];
    return select(!select(!vec4<bool>(var_0.b.a, var_0.b.a, false, var_2.a), vec4<bool>(var_0.b.a, !var_0.b.a, var_0.b.a, all(vec2<bool>(var_2.a, true))), !(!vec4<bool>(var_0.b.a, var_2.a, var_0.b.a, var_2.a))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.b.a, !var_0.b.a, true, !var_0.b.a), !(false & var_0.b.a)), vec4<bool>(var_0.b.a && true, min(var_0.b.b, 45618u) != _wgslsmith_mod_u32(26517u, u_input.a.x), ~(-83033i) < arg_1, !var_2.a), true), !select(vec4<bool>(true, false | var_0.b.a, false, true), !(!vec4<bool>(var_2.a, true, false, true)), true));
}

fn func_1(arg_0: u32) -> vec3<i32> {
    global1 = -27110i;
    let var_0 = select(select(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(true, false, true, false)), true, true, true && all(vec4<bool>(true, false, true, false))), !func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(-54520i, 2147483647i, -67505i), vec3<i32>(13948i, -2147483647i, 0i)), func_2(), 11244i, _wgslsmith_div_i32(-1i, -16680i))), !vec4<bool>(any(vec3<bool>(true, false, true)), all(vec2<bool>(true, true)), true, func_3()), select(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, false, true, true)), func_4(_wgslsmith_add_i32(~(-1i), 14930i), 1i, firstLeadingBit(-55956i), select(-2147483647i, 0i, true) | min(0i, -2147483647i)), true | func_4(1i, -51149i, abs(6774i), firstLeadingBit(18231i)).x));
    let var_1 = Struct_1(var_0.x, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, ~u_input.a, ~vec4<u32>(0u, arg_0, u_input.a.x, 32867u)), ~(vec4<u32>(arg_0, u_input.b.x, u_input.a.x, u_input.b.x) ^ vec4<u32>(4294967295u, 1u, 57056u, arg_0)))));
    var var_2 = 1i;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -174f), -446f, -315f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(149f, _wgslsmith_f_op_f32(sign(-302f))) + -711f) + -1000f));
    return ~(~reverseBits(~vec3<i32>(49494i, 1i, 2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(~func_1(13218u) >> (~(~u_input.a.yxy) % vec3<u32>(32u)), func_1(~(u_input.b.x << (u_input.a.x % 32u))), min(_wgslsmith_mult_vec3_i32(vec3<i32>(11626i, 20691i, -609i), vec3<i32>(1i, 1i, 1i)), abs(reverseBits(vec3<i32>(14509i, -2147483647i, 8730i))))), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 7610i, 1i), ~(-vec3<i32>(2147483647i, 0i, -2147483647i)), firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -1i, 25118i), vec3<i32>(-1i, -109372i, -2147483647i), vec3<i32>(2147483647i, -2147483647i, -11810i)))), vec3<i32>(1i, 1i, 1i)));
    var var_1 = ~(~(~vec3<u32>(u_input.b.x, max(u_input.b.x, u_input.a.x), ~19729u)));
    var var_2 = global0[_wgslsmith_index_u32(firstLeadingBit(reverseBits(4294967295u)), 21u)];
    global0 = array<Struct_2, 21>();
    global1 = 2147483647i;
    let var_3 = Struct_3(var_2.b);
    global0 = array<Struct_2, 21>();
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x)) - _wgslsmith_f_op_f32(-var_2.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(~(~func_1(_wgslsmith_mult_u32(u_input.b.x, var_3.a.b))), u_input.b, u_input.b, var_3.a.b, 60150i);
}

