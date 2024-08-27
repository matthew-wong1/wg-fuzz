struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(42666i), Struct_1(17397i), vec2<f32>(1345f, 1000f), Struct_1(2094i), Struct_1(-1i)), Struct_2(Struct_1(1i), Struct_1(-60904i), vec2<f32>(647f, 362f), Struct_1(i32(-2147483648)), Struct_1(-1i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(0i), vec2<f32>(-1000f, -119f), Struct_1(-50182i), Struct_1(-31910i)), Struct_2(Struct_1(2147483647i), Struct_1(0i), vec2<f32>(1545f, -1000f), Struct_1(-1i), Struct_1(-8115i)), Struct_2(Struct_1(1i), Struct_1(-1i), vec2<f32>(-1037f, 1130f), Struct_1(13282i), Struct_1(0i)), Struct_2(Struct_1(-72076i), Struct_1(-59200i), vec2<f32>(-910f, 253f), Struct_1(0i), Struct_1(39750i)), Struct_2(Struct_1(37012i), Struct_1(0i), vec2<f32>(383f, -459f), Struct_1(30330i), Struct_1(1i)), Struct_2(Struct_1(-13270i), Struct_1(0i), vec2<f32>(-325f, -495f), Struct_1(26042i), Struct_1(1i)), Struct_2(Struct_1(13114i), Struct_1(-43753i), vec2<f32>(-534f, 528f), Struct_1(-48319i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(27396i), Struct_1(29247i), vec2<f32>(-1197f, 883f), Struct_1(1i), Struct_1(i32(-2147483648))), Struct_2(Struct_1(-1i), Struct_1(0i), vec2<f32>(1000f, -1510f), Struct_1(23766i), Struct_1(-52338i)), Struct_2(Struct_1(33495i), Struct_1(-28878i), vec2<f32>(-1698f, 307f), Struct_1(-12140i), Struct_1(1i)), Struct_2(Struct_1(-9145i), Struct_1(-23617i), vec2<f32>(-475f, -1000f), Struct_1(1i), Struct_1(-16651i)), Struct_2(Struct_1(-16824i), Struct_1(-31759i), vec2<f32>(-488f, 488f), Struct_1(i32(-2147483648)), Struct_1(2147483647i)), Struct_2(Struct_1(932i), Struct_1(1i), vec2<f32>(600f, -1592f), Struct_1(-46510i), Struct_1(-12812i)), Struct_2(Struct_1(2147483647i), Struct_1(i32(-2147483648)), vec2<f32>(1390f, -453f), Struct_1(-678i), Struct_1(7940i)), Struct_2(Struct_1(-16885i), Struct_1(1i), vec2<f32>(-188f, -1658f), Struct_1(2147483647i), Struct_1(58778i)), Struct_2(Struct_1(i32(-2147483648)), Struct_1(0i), vec2<f32>(786f, -567f), Struct_1(-7535i), Struct_1(1i)), Struct_2(Struct_1(1i), Struct_1(i32(-2147483648)), vec2<f32>(-2910f, 802f), Struct_1(58845i), Struct_1(-18775i)));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec4<bool> {
    global0 = array<Struct_2, 19>();
    let var_0 = vec3<i32>(u_input.a, ~1i, -2147483647i);
    let var_1 = -14972i;
    global0 = array<Struct_2, 19>();
    let var_2 = select(select(vec3<bool>(false, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), true, any(vec3<bool>(true, true, true))), false), vec3<bool>(true, true, true), select(select(vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), vec3<bool>(!any(vec2<bool>(true, true)), false, true | all(vec2<bool>(false, false))), true == (all(vec2<bool>(true, false)) || true)));
    return select(vec4<bool>(var_2.x, !var_2.x, true, var_2.x), select(vec4<bool>(!(!var_2.x), any(select(var_2, var_2, var_2)), any(vec4<bool>(var_2.x, false, false, var_2.x)), countOneBits(0i) > var_1), vec4<bool>(5186u <= ~u_input.c, !(var_0.x >= -1i), var_2.x, var_2.x), select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2.x, false, false, var_2.x), !var_2.x), vec4<bool>(var_2.x || true, false, all(vec4<bool>(var_2.x, true, var_2.x, var_2.x)), true), true)), all(vec4<bool>(false, !var_2.x && var_2.x, var_2.x, all(select(vec3<bool>(var_2.x, var_2.x, var_2.x), var_2, vec3<bool>(var_2.x, var_2.x, false))))));
}

fn func_2(arg_0: i32, arg_1: f32) -> bool {
    var var_0 = -(_wgslsmith_dot_vec3_i32(~countOneBits(vec3<i32>(arg_0, 2147483647i, -55619i)), vec3<i32>(2147483647i, u_input.a, u_input.a) ^ ~vec3<i32>(arg_0, -1i, -1i)) ^ arg_0);
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, arg_0) ^ vec2<i32>(0i, -1i), vec2<i32>(u_input.a, arg_0)), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, 0i)) << (~abs(~u_input.c) % 32u));
    var_1 = Struct_1(var_1.a);
    let var_2 = Struct_3(vec3<bool>(true, all(func_3()), true), _wgslsmith_f_op_f32(round(620f)));
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u, u_input.c), 19u)];
    return var_2.a.x;
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> bool {
    var var_0 = func_2(61434i, 663f);
    var_0 = arg_1.x;
    let var_1 = -(-(min(vec2<i32>(u_input.a, 57041i), vec2<i32>(54513i, u_input.a)) | vec2<i32>(-21602i, 37259i)) & (select(vec2<i32>(-23769i, 26057i), vec2<i32>(u_input.a, u_input.a), arg_1) << (~(~vec2<u32>(arg_0, 4294967295u)) % vec2<u32>(32u))));
    let var_2 = reverseBits(vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, 36425i, var_1.x), vec3<i32>(-1i, u_input.a, u_input.a)), vec3<i32>(-16603i, 2147483647i, u_input.a) | vec3<i32>(33365i, -1i, -2147483647i)), ~1i), var_1.x, i32(-1i) * -(~u_input.a)));
    var_0 = all(select(vec4<bool>(false, true, any(arg_1), false), vec4<bool>(true, arg_1.x, arg_0 > ~4294967295u, arg_1.x), select(!vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(u_input.c > 1u, true, arg_1.x | arg_1.x, false | arg_1.x), func_3())));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(select(vec2<bool>(false, func_1(6894u, vec2<bool>(false, false), 0u)), !func_3().yy, !select(vec2<bool>(false, false), vec2<bool>(true, false), true)), vec2<bool>(true, true), true), select(!(!func_3().zw), func_3().yz, !vec2<bool>(true, select(true, false, false))), vec2<bool>(_wgslsmith_f_op_f32(sign(-166f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f - -1504f)), false));
    global0 = array<Struct_2, 19>();
    var var_1 = -1555f;
    var_0 = vec2<bool>(any(select(!(!vec2<bool>(false, var_0.x)), !vec2<bool>(var_0.x, false), vec2<bool>(any(vec2<bool>(true, var_0.x)), true))), true);
    var var_2 = ~firstTrailingBit(~(~(~vec4<u32>(90103u, 4294967295u, 4294967295u, 22936u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~firstLeadingBit(~vec4<u32>(var_2.x, u_input.c, var_2.x, 0u)), vec4<u32>(countOneBits(76059u), _wgslsmith_add_u32(1u, 33355u) ^ (56707u & var_2.x), _wgslsmith_mod_u32(u_input.b.x, ~u_input.b.x), 1u)), -893f, ~_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(var_2.x, u_input.b.x, var_2.x)), var_2.xzy), ~var_2.yyy));
}

