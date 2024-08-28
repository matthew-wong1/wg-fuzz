struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(false, vec2<i32>(-1i, 29860i), vec4<i32>(-12522i, -22489i, 0i, 0i), -719f), Struct_1(false, vec2<i32>(1i, 0i), vec4<i32>(i32(-2147483648), 51892i, 1i, i32(-2147483648)), 732f), Struct_1(true, vec2<i32>(-29360i, 12241i), vec4<i32>(2147483647i, -1470i, -1i, -32330i), 1000f), Struct_1(false, vec2<i32>(i32(-2147483648), -20207i), vec4<i32>(41472i, i32(-2147483648), 3523i, 871i), 1329f), Struct_1(false, vec2<i32>(i32(-2147483648), -34805i), vec4<i32>(-6772i, -32000i, 1i, -38594i), 1519f), Struct_1(true, vec2<i32>(2147483647i, -79641i), vec4<i32>(0i, i32(-2147483648), -33468i, 0i), 1000f), Struct_1(true, vec2<i32>(-60168i, 0i), vec4<i32>(40144i, 1i, -1i, 1i), -1000f), Struct_1(true, vec2<i32>(31936i, -1i), vec4<i32>(-1i, 54518i, 0i, 5402i), -569f), Struct_1(true, vec2<i32>(1i, i32(-2147483648)), vec4<i32>(2147483647i, -1i, -32083i, -31608i), -446f), Struct_1(true, vec2<i32>(2147483647i, 51199i), vec4<i32>(i32(-2147483648), -15422i, 2147483647i, 0i), 1501f), Struct_1(true, vec2<i32>(-1i, 2147483647i), vec4<i32>(1i, -35059i, -1i, 0i), -314f), Struct_1(false, vec2<i32>(13535i, -14386i), vec4<i32>(12948i, 8682i, -1i, 20697i), 126f), Struct_1(false, vec2<i32>(-5480i, -26840i), vec4<i32>(-1364i, -1i, -21361i, 46632i), -1000f), Struct_1(true, vec2<i32>(-44361i, 0i), vec4<i32>(-6345i, 2147483647i, i32(-2147483648), -16284i), -2270f), Struct_1(false, vec2<i32>(-26262i, 2147483647i), vec4<i32>(49014i, -11265i, 17450i, i32(-2147483648)), -1112f), Struct_1(true, vec2<i32>(4923i, -14632i), vec4<i32>(0i, -64944i, -1i, 27403i), -1000f), Struct_1(true, vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(1778i, i32(-2147483648), i32(-2147483648), 0i), 440f), Struct_1(true, vec2<i32>(-1i, -11136i), vec4<i32>(-18948i, -21710i, -14086i, i32(-2147483648)), 441f), Struct_1(false, vec2<i32>(-1i, 39590i), vec4<i32>(-14611i, 0i, -8269i, i32(-2147483648)), -330f), Struct_1(true, vec2<i32>(854i, 11631i), vec4<i32>(1i, 0i, 1i, i32(-2147483648)), 1122f), Struct_1(false, vec2<i32>(1i, 1i), vec4<i32>(-1i, -14668i, 0i, 40529i), 1260f));

var<private> global2: Struct_2;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: vec3<bool>) -> i32 {
    let var_0 = !arg_0;
    var var_1 = !any(!arg_2) || all(!select(!vec2<bool>(arg_2.x, false), vec2<bool>(true, var_0), arg_2.x | false));
    let var_2 = Struct_2(global2.c, _wgslsmith_f_op_f32(trunc(arg_1.x)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, global2.d, 10848u), firstTrailingBit(abs(vec3<u32>(2585u, 0u, 1u)))), 21u)], _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.e << (4294967295u % 32u), min(global2.d, global2.d), _wgslsmith_add_u32(global2.d, 22259u)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, global2.d)), abs(~vec3<u32>(u_input.e, u_input.e, u_input.a)))), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2.c.c.x, -29256i, -54911i) >> (vec3<u32>(0u, global2.d, u_input.e) % vec3<u32>(32u)), vec3<i32>(u_input.c.x, global2.e.x, 37893i)) ^ _wgslsmith_div_vec3_i32(vec3<i32>(2147483647i, -21009i, 1797i), vec3<i32>(global2.e.x, u_input.d, -47966i)), select(u_input.b, vec3<i32>(global2.e.x ^ -15337i, _wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-50387i, u_input.c.x, 1i)), u_input.b.x), global2.a.a)));
    let var_3 = ~(((firstTrailingBit(vec2<u32>(1u, 8751u)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 5055u), vec2<u32>(u_input.e, var_2.d), vec2<u32>(u_input.a, 4294967295u)) % vec2<u32>(32u))) & abs(select(vec2<u32>(42334u, global2.d), vec2<u32>(var_2.d, 4294967295u), vec2<bool>(var_2.a.a, arg_2.x)))) | reverseBits(select(_wgslsmith_clamp_vec2_u32(vec2<u32>(12583u, global2.d), vec2<u32>(103108u, var_2.d), vec2<u32>(46404u, 1u)), select(vec2<u32>(0u, 74217u), vec2<u32>(0u, var_2.d), arg_2.zx), any(vec3<bool>(var_0, true, true)))));
    var var_4 = 4769u;
    return firstLeadingBit(~min(-var_2.e.x, var_2.e.x)) >> (select(~(~_wgslsmith_mod_u32(u_input.e, 37952u)), 1u, !var_0) % 32u);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32((u_input.c.x >> ((~u_input.a & global2.d) % 32u)) & ~419i, func_3(false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.c.d, global2.c.d, global2.a.d) + vec3<f32>(1369f, 1573f, global2.b))), vec3<bool>(global2.a.a, any(vec4<bool>(true, true, false, true)), global2.a.a && true)) & -2147483647i);
    let var_1 = select(vec3<bool>(false, true, u_input.d > ~(~u_input.b.x)), select(!(!select(vec3<bool>(false, true, true), vec3<bool>(global2.a.a, global2.a.a, true), vec3<bool>(global2.a.a, false, global2.a.a))), !(!vec3<bool>(true, global2.a.a, false)), true), any(select(vec2<bool>(global2.c.a, global2.c.a), vec2<bool>(true, global2.c.a), !vec2<bool>(global2.a.a, false))) || all(!select(vec3<bool>(true, global2.c.a, false), vec3<bool>(global2.a.a, global2.c.a, true), false)));
    var var_2 = Struct_2(Struct_1(true, global2.e.zy, vec4<i32>(global2.c.b.x, 23007i, -global2.a.b.x, -global2.e.x & (global2.a.b.x << (global2.d % 32u))), -1655f), _wgslsmith_f_op_f32(-global2.c.d), Struct_1(true, global2.e.zy, min(vec4<i32>(-32436i, ~0i, u_input.b.x, 6735i), vec4<i32>(global2.e.x, 1i, 49282i, 57744i) & firstTrailingBit(global2.c.c)), global2.a.d), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, u_input.a))), vec2<u32>(reverseBits(u_input.e), 6769u), vec2<u32>(13297u, 0u)), vec2<u32>(max(~u_input.a, 20356u << (u_input.e % 32u)), 1u)), global2.c.c.xxx);
    var_0 = firstTrailingBit(-14147i) ^ -14298i;
    let var_3 = true;
    return Struct_1(false, abs(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.d, u_input.d), vec2<i32>(global2.c.b.x, -2147483647i)), abs(vec2<i32>(u_input.b.x, -37495i))) | _wgslsmith_mod_vec2_i32(abs(u_input.c.yx), firstLeadingBit(global2.e.yy))), _wgslsmith_sub_vec4_i32(global2.a.c, vec4<i32>(~global2.a.c.x >> (37331u % 32u), var_2.c.b.x, ~_wgslsmith_div_i32(var_2.e.x, var_2.a.c.x), global2.c.c.x)), _wgslsmith_f_op_f32(global2.a.d * _wgslsmith_f_op_f32(-247f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-546f * global2.b) + _wgslsmith_div_f32(global2.c.d, 684f)))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> vec4<u32> {
    var var_0 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(1u, 0u, 21114u)) ^ (vec3<u32>(u_input.e, u_input.a, u_input.a) >> (select(min(vec3<u32>(27203u, 1u, 1u), vec3<u32>(4294967295u, u_input.e, 4294967295u)), vec3<u32>(29281u, 12221u, 1u), false) % vec3<u32>(32u))), select(max(firstLeadingBit(vec3<u32>(3520u, 23909u, 15599u)), vec3<u32>(global2.d, 53454u, global2.d) >> (select(vec3<u32>(1u, 2241u, global2.d), vec3<u32>(global2.d, global2.d, u_input.e), vec3<bool>(arg_2.a, global2.c.a, false)) % vec3<u32>(32u))), ~countOneBits(vec3<u32>(global2.d, u_input.e, 30030u)), vec3<bool>(arg_2.a, arg_2.d < _wgslsmith_div_f32(global2.c.d, -1382f), !any(vec2<bool>(true, false)))));
    let var_1 = vec3<u32>(38985u, ~77825u, _wgslsmith_sub_u32(4294967295u, 20845u));
    var var_2 = global2.c.a;
    let var_3 = vec3<f32>(global2.c.d, _wgslsmith_f_op_f32(f32(-1f) * -2395f), arg_2.d);
    var var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-804f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - global2.a.d))))));
    return vec4<u32>(_wgslsmith_sub_u32(1u, ~var_0.x), countOneBits(92804u), 1u, ~(_wgslsmith_dot_vec3_u32(min(var_1, var_1), var_1) << (77112u % 32u)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec2<i32>) -> Struct_2 {
    global2 = Struct_2(global1[_wgslsmith_index_u32(0u, 21u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a.d))), global2.c, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(vec4<u32>(global2.d, u_input.e, 4294967295u, u_input.e), vec4<u32>(70356u, 10236u, u_input.a, 68094u)), ~vec4<u32>(u_input.a, u_input.e, 30241u, global2.d), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.d, 0u, 1u, global2.d), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))) | vec4<u32>(~global2.d, 4294967295u, u_input.e, 1u), func_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(arg_1.d + global2.b))), all(select(vec4<bool>(true, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, true, false, global2.c.a))), func_2())), vec3<i32>(-(~_wgslsmith_dot_vec4_i32(arg_0, vec4<i32>(arg_3.x, arg_3.x, 24165i, 10980i))), arg_0.x, arg_1.b.x));
    var var_0 = global2.c;
    let var_1 = abs(-1i);
    var_0 = Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(global2.d, u_input.e, 9505u)), vec3<u32>(global2.d, 0u, u_input.a)), ~4294967295u) > ~min(54048u, global2.d), ~(~_wgslsmith_div_vec2_i32(~vec2<i32>(-10201i, arg_1.c.x), _wgslsmith_clamp_vec2_i32(arg_1.c.yx, vec2<i32>(u_input.d, var_1), vec2<i32>(-22405i, 3040i)))), vec4<i32>(~1i, -1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(-4123i, _wgslsmith_div_i32(arg_2, 0i)), -1i), arg_3.x >> (1u % 32u)), _wgslsmith_div_f32(-639f, _wgslsmith_f_op_f32(max(-108f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.d * 942f)))))));
    global0 = 47548u;
    return Struct_2(global1[_wgslsmith_index_u32(firstLeadingBit(4294967295u & firstLeadingBit(_wgslsmith_clamp_u32(0u, 1u, u_input.a))), 21u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-936f, _wgslsmith_f_op_f32(-global2.a.d))) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.c.d + -1000f), global2.c.d)))), arg_1, 4294967295u, vec3<i32>(_wgslsmith_clamp_i32(func_2().c.x, -(i32(-1i) * -15079i), _wgslsmith_mod_i32(func_3(true, vec3<f32>(global2.a.d, -1131f, -1251f), vec3<bool>(var_0.a, var_0.a, arg_1.a)), func_3(var_0.a, vec3<f32>(1473f, arg_1.d, arg_1.d), vec3<bool>(global2.a.a, false, true)))), 1i, _wgslsmith_div_i32(-32203i, firstLeadingBit(var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec4<i32>(~firstTrailingBit(-71220i), ~10553i, -_wgslsmith_clamp_i32(~(-1i), u_input.c.x, u_input.b.x ^ global2.a.b.x), ~2147483647i), global2.a, -min(_wgslsmith_sub_i32(-global2.e.x, u_input.b.x), _wgslsmith_div_i32(1364i >> (1u % 32u), 1i)), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.b.x, countOneBits(-14612i)), u_input.c.yx)));
    var var_1 = Struct_1(true, _wgslsmith_clamp_vec2_i32(var_0.a.b, ~firstTrailingBit(-u_input.c.xy), _wgslsmith_mult_vec2_i32(global2.e.xy, select(u_input.c.xz, var_0.c.c.zx, vec2<bool>(global2.c.a, global2.c.a)))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.b.x, global2.c.c.x), global2.c.b), vec2<i32>(56793i, 0i)), u_input.b.yz), -1272i, _wgslsmith_mult_i32(global2.c.b.x, _wgslsmith_div_i32(global2.c.c.x, -1i)), u_input.c.x), -2698f);
    global1 = array<Struct_1, 21>();
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~firstTrailingBit(vec4<u32>(u_input.a, var_0.d, 31052u, u_input.a)), vec4<u32>(u_input.a, u_input.e, _wgslsmith_sub_u32(select(4294967295u, var_0.d, var_1.a), 41913u), u_input.a)), countOneBits(~_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.d, var_0.d, 4294967295u), ~vec3<u32>(var_0.d, 1u, u_input.a))));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(func_1(vec4<i32>(11567i, 1i, var_0.c.c.x, -2147483647i), Struct_1(false, var_1.b, var_0.c.c, var_1.d), var_1.b.x, vec2<i32>(-16050i, -32477i)).a.d, global2.b), var_1.d)));
}

