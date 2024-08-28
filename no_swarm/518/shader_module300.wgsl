struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<u32>, 18> = array<vec2<u32>, 18>(vec2<u32>(0u, 34960u), vec2<u32>(1u, 48089u), vec2<u32>(33277u, 41613u), vec2<u32>(0u, 39417u), vec2<u32>(17066u, 32384u), vec2<u32>(91310u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(25498u, 14465u), vec2<u32>(3074u, 1u), vec2<u32>(70481u, 4294967295u), vec2<u32>(4294967295u, 51667u), vec2<u32>(1u, 0u), vec2<u32>(19864u, 7754u), vec2<u32>(45564u, 45022u), vec2<u32>(0u, 67542u), vec2<u32>(47485u, 1u), vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 13124u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: u32) -> bool {
    var var_0 = ~u_input.e;
    global0 = ~(reverseBits(~(~vec4<u32>(global0.x, 1u, u_input.a.x, global0.x))) | (min(reverseBits(vec4<u32>(arg_2, 658u, 30112u, global0.x)), _wgslsmith_div_vec4_u32(vec4<u32>(21430u, arg_0, 4294967295u, 0u), vec4<u32>(global0.x, 53683u, 76944u, 10936u))) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(arg_2, 39648u, 0u, global0.x), vec4<u32>(u_input.e, 4294967295u, 0u, arg_0)) ^ vec4<u32>(arg_2, arg_2, 773u, global0.x))));
    return all(!(!(!(!vec2<bool>(arg_1, arg_1)))));
}

fn func_3() -> vec4<u32> {
    global0 = vec4<u32>(abs(37412u << (~_wgslsmith_mult_u32(u_input.e, 16351u) % 32u)), 4294967295u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0.x, u_input.e)), ~firstLeadingBit(global1[_wgslsmith_index_u32(max(71977u, 4294967295u), 18u)])), ~(~global0.x) & ~_wgslsmith_clamp_u32(_wgslsmith_sub_u32(4294967295u, u_input.e), ~global0.x, 9629u));
    var var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(select(vec3<i32>(u_input.b, -77182i, 7683i), vec3<i32>(-14139i, 1409i, u_input.b), vec3<bool>(true, true, true)), -vec3<i32>(u_input.c, u_input.d, 24225i) & (vec3<i32>(u_input.b, u_input.d, u_input.b) | vec3<i32>(2147483647i, u_input.b, u_input.b)))), !(!all(vec4<bool>(true, true, true, true))), Struct_2(u_input.c, -279f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1023f))))));
    var var_1 = select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e, 22000u, global0.x, 4565u), ~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, u_input.a.x)) > 1u, true, !(!any(vec4<bool>(false, false, false, true)))) | (!any(select(vec2<bool>(true, var_0.b), vec2<bool>(true, false), vec2<bool>(var_0.b, var_0.b))) | var_0.b);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(478f, var_0.c.b)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.c.b, var_0.c.b)), vec2<f32>(-426f, -1000f)), select(select(vec2<bool>(false, false), vec2<bool>(var_0.b, false), var_0.b), vec2<bool>(var_0.b, var_0.b), global0.x <= u_input.a.x)))))));
    var var_3 = Struct_2(u_input.d, _wgslsmith_f_op_f32(-1598f - _wgslsmith_f_op_f32(min(-1805f, var_0.c.c))), var_0.c.c);
    return abs(~(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 57370u, global0.x, u_input.a.x), vec4<u32>(14987u, u_input.a.x, 4294967295u, 69659u)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.e, 63693u, 1u, global0.x), vec4<u32>(u_input.a.x, u_input.e, u_input.e, global0.x), vec4<u32>(29190u, 51792u, 14700u, u_input.e)) % vec4<u32>(32u)))));
}

fn func_2() -> vec2<bool> {
    let var_0 = u_input.e;
    let var_1 = select(abs(~vec4<i32>(34965i | u_input.d, u_input.b, u_input.d, ~1i)), min(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(33759i, -1i, u_input.b, 1i), vec4<i32>(-2147483647i, 0i, u_input.d, u_input.d)), vec4<i32>(u_input.c, u_input.b, 2147483647i, -38507i)), vec4<i32>(0i, ~u_input.d, u_input.d, 34094i)), vec4<i32>(u_input.c, u_input.b, _wgslsmith_sub_i32(-24988i, u_input.c >> (u_input.e % 32u)), firstLeadingBit(~(-12583i)))), select(vec4<bool>(true, !(6373i < u_input.d), true, !any(vec4<bool>(false, true, true, true))), vec4<bool>(!(u_input.c > -29921i), any(vec4<bool>(true, true, true, true)), true, false), vec4<bool>(true, true, !all(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(1000f - -685f) < _wgslsmith_f_op_f32(sign(1776f)))));
    global1 = array<vec2<u32>, 18>();
    global0 = ~abs(_wgslsmith_sub_vec4_u32(firstLeadingBit(func_3()), reverseBits(firstTrailingBit(vec4<u32>(u_input.e, 2949u, 1u, var_0)))));
    var var_2 = Struct_2(_wgslsmith_div_i32(var_1.x, _wgslsmith_div_i32(u_input.b, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), var_1.xy))), 132f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(772f)), _wgslsmith_f_op_f32(step(679f, 1000f))))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-718f - 366f), 1000f))));
    return select(vec2<bool>(true, false), select(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(false, true, false)), vec2<bool>(true, (global0.x == global0.x) & true), false), (u_input.c <= ~_wgslsmith_div_i32(u_input.d, -24601i)) | true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<i32>(-45426i, -1i, u_input.c));
    var var_1 = Struct_3(Struct_1(vec3<i32>(firstLeadingBit(0i), _wgslsmith_div_i32(var_0.a.x, 36894i), 0i & u_input.b) >> (global0.xyz % vec3<u32>(32u))), func_1(45041u, !all(vec4<bool>(false, false, false, false)), ~u_input.a.x), Struct_2(0i, 562f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1339f)), 1067f))));
    global1 = array<vec2<u32>, 18>();
    var var_2 = select(select(!(!select(vec2<bool>(var_1.b, false), vec2<bool>(var_1.b, var_1.b), var_1.b)), func_2(), false), !vec2<bool>(any(select(vec3<bool>(true, var_1.b, var_1.b), vec3<bool>(var_1.b, var_1.b, var_1.b), var_1.b)), var_1.b), false);
    let var_3 = ~0u | max(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(56578u, global0.x, global0.x), u_input.a), _wgslsmith_sub_u32(u_input.e, 62513u)) | (0u ^ ~u_input.e), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(41032u, 14100u), u_input.a.yx), 100677u, min(26685u, u_input.a.x) >> (4294967295u % 32u)));
    var var_4 = Struct_3(Struct_1(abs(var_1.a.a)), ((~global0.x == 0u) | var_1.b) && var_2.x, Struct_2(u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -2394f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1252f * var_1.c.b), _wgslsmith_f_op_f32(round(var_1.c.b)))) - 796f)));
    let var_5 = vec3<bool>(855f >= _wgslsmith_div_f32(var_1.c.b, 1154f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-869f)), var_1.c.c)) <= var_1.c.b, func_2().x);
    var_4 = Struct_3(var_1.a, func_1(global0.x, true, 0u), Struct_2(var_1.a.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f * -1823f)), _wgslsmith_f_op_f32(-1096f + _wgslsmith_f_op_f32(max(-1086f, var_4.c.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(609f, 549f))))));
    global1 = array<vec2<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(~countOneBits(~global0.yy), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.e, global0.x) << (_wgslsmith_clamp_u32(79552u, _wgslsmith_mult_u32(13991u, 53871u), global0.x) % 32u), 18u)]), _wgslsmith_sub_i32(var_1.c.a, -var_0.a.x), _wgslsmith_mult_i32(2147483647i, ~u_input.d), (vec4<i32>(-1i) * -(vec4<i32>(var_1.a.a.x, -1i, -32667i, var_0.a.x) << (vec4<u32>(0u, u_input.e, u_input.e, 10168u) % vec4<u32>(32u)))) >> (vec4<u32>(max(select(global0.x, global0.x, var_4.b), global0.x), ~59089u, 25465u, _wgslsmith_mult_u32(select(u_input.e, var_3, true), var_3)) % vec4<u32>(32u)), var_1.a.a);
}

