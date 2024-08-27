struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: array<f32, 11>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> bool {
    let var_0 = Struct_2(468f, Struct_1(_wgslsmith_mod_vec3_i32(-vec3<i32>(u_input.b, 27727i, u_input.b), vec3<i32>(reverseBits(23137i), 1i, -28142i << (1u % 32u))), 1i, !select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), false)));
    var var_1 = 1024f;
    let var_2 = global0[_wgslsmith_index_u32(~((abs(u_input.d << (u_input.c.x % 32u)) ^ (1u | _wgslsmith_dot_vec3_u32(u_input.c, u_input.c))) << (_wgslsmith_add_u32(~select(u_input.d, 56758u, true), ~u_input.c.x) % 32u)), 3u)];
    var var_3 = any(vec4<bool>(!(!(!var_0.b.c.x)), !var_0.b.c.x, false, true));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -926f), Struct_1(vec3<i32>(2147483647i, i32(-1i) * -u_input.a, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.a, 33513i), vec4<i32>(var_0.b.b, var_0.b.a.x, 22864i, 2147483647i), vec4<i32>(u_input.a, -2147483647i, u_input.a, -1i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-7747i, 89632i, u_input.b, u_input.a), vec4<i32>(var_0.b.b, -2147483647i, 2147483647i, -33018i)))), -57094i, vec4<bool>(any(vec4<bool>(var_0.b.c.x, true, var_0.b.c.x, true)), any(var_0.b.c.wxz), var_0.b.c.x, var_0.b.c.x)));
    return any(var_4.b.c.zz);
}

fn func_2() -> f32 {
    var var_0 = !((abs(u_input.c.x) <= u_input.d) || true);
    let var_1 = Struct_1(vec3<i32>(20622i, 51753i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(u_input.a & u_input.b, u_input.b | -1i, -1i | u_input.a), u_input.b)), ~u_input.b, select(vec4<bool>(any(vec3<bool>(true, false, false)) || true, true, !all(vec3<bool>(false, false, true)), !any(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), true), func_3()), vec4<bool>(u_input.b != u_input.b, false, !select(true, true, true), firstTrailingBit(39393u) > ~1u)));
    global1 = array<f32, 11>();
    let var_2 = Struct_2(-930f, var_1);
    let var_3 = vec2<bool>(false, true);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 3u)] + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1177f)), global1[_wgslsmith_index_u32(4294967295u, 11u)], (0i == u_input.b) || !var_1.c.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-182f, global1[_wgslsmith_index_u32(u_input.c.x, 11u)])) + global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.e, 4294967295u, 30327u), vec4<u32>(68807u, 45260u, 0u, u_input.e)), 3u)]) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(11224u, 11u)] * global0[_wgslsmith_index_u32(u_input.c.x, 3u)])))));
}

fn func_4(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = Struct_2(1419f, Struct_1(min(~vec3<i32>(-8581i, -78245i, u_input.b), firstLeadingBit(-vec3<i32>(u_input.a, -2147483647i, u_input.a))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(-73175i, -8407i, u_input.a), vec3<i32>(u_input.b, u_input.b, u_input.a), vec3<bool>(false, false, false)), ~vec3<i32>(u_input.b, u_input.a, u_input.b)), ~(vec3<i32>(28754i, -10993i, u_input.b) ^ vec3<i32>(0i, -1i, u_input.b))), !select(select(vec4<bool>(true, true, true, false), vec4<bool>(arg_2, true, arg_2, true), vec4<bool>(false, true, arg_2, arg_2)), select(vec4<bool>(true, true, true, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), arg_2), vec4<bool>(true, arg_2, arg_2, arg_2))));
    var var_1 = Struct_1(vec3<i32>(var_0.b.a.x & 2147483647i, -30204i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(~0i, ~var_0.b.a.x), 0i)), u_input.a, !select(var_0.b.c, vec4<bool>(var_0.b.c.x | false, true, global1[_wgslsmith_index_u32(18639u, 11u)] >= var_0.a, any(vec4<bool>(true, false, false, true))), vec4<bool>(var_0.b.c.x, !arg_2, var_0.b.c.x, true)));
    global1 = array<f32, 11>();
    let var_2 = vec2<i32>(17155i, var_1.b);
    var_1 = Struct_1(vec3<i32>(var_1.a.x, 0i, 0i), var_2.x, !select(vec4<bool>(arg_2, all(var_1.c), arg_2, true), vec4<bool>(arg_2, arg_2, any(vec3<bool>(false, true, true)), true), false));
    return Struct_1(max(max(~vec3<i32>(var_1.a.x, -1144i, var_1.b), ~vec3<i32>(6956i, var_2.x, 0i)), _wgslsmith_mod_vec3_i32(select(-var_0.b.a, firstTrailingBit(vec3<i32>(var_2.x, var_2.x, 1i)), var_1.c.x), min(vec3<i32>(var_0.b.a.x, var_0.b.a.x, -52150i) & vec3<i32>(-1i, 1i, var_2.x), var_1.a >> (vec3<u32>(u_input.d, 0u, u_input.d) % vec3<u32>(32u))))), _wgslsmith_div_i32(u_input.b >> (_wgslsmith_add_u32(~44548u, u_input.c.x) % 32u), var_0.b.a.x), select(vec4<bool>(false, true, false, !var_0.b.c.x), vec4<bool>(arg_2, true, false, all(vec3<bool>(false, true, var_1.c.x))), arg_2));
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> i32 {
    global0 = array<f32, 3>();
    var var_0 = func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(ceil(107f)), _wgslsmith_f_op_f32(1112f - -1527f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.x, 11u)] + global0[_wgslsmith_index_u32(arg_0.x, 3u)]))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(func_2()), -191f, -578f)))), 1000f, !(u_input.b > u_input.a) == any(vec2<bool>(true, arg_0.x < 45361u)));
    let var_1 = 1808f;
    global1 = array<f32, 11>();
    var var_2 = Struct_2(_wgslsmith_f_op_f32(round(arg_3.x)), Struct_1(var_0.a >> (u_input.c % vec3<u32>(32u)), countOneBits(~(-var_0.a.x)), !select(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), !var_0.c, true)));
    return 36830i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 3>();
    var var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, 46163u >> (_wgslsmith_mod_u32(u_input.c.x, u_input.d) % 32u), countOneBits(u_input.c.x)), ~u_input.c), u_input.c | (u_input.c ^ vec3<u32>(68220u, u_input.e, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, u_input.c.x), u_input.c.xz))));
    let var_1 = Struct_2(-968f, Struct_1(~vec3<i32>(u_input.a, -26042i, -u_input.b), -abs(func_1(u_input.c, global0[_wgslsmith_index_u32(u_input.c.x, 3u)], var_0.zx, vec3<f32>(1281f, -760f, global0[_wgslsmith_index_u32(var_0.x, 3u)]))), !(!func_4(vec4<f32>(-783f, global1[_wgslsmith_index_u32(var_0.x, 11u)], -1000f, global0[_wgslsmith_index_u32(50364u, 3u)]), global1[_wgslsmith_index_u32(var_0.x, 11u)], true).c)));
    let var_2 = i32(-1i) * -var_1.b.a.x;
    let var_3 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(614f, 1983f, var_1.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(var_0.x, 3u)]))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a, 406f, -1584f, 1012f), vec4<f32>(-1633f, 1000f, global1[_wgslsmith_index_u32(39055u, 11u)], global0[_wgslsmith_index_u32(25033u, 3u)]), var_1.b.c)) * vec4<f32>(global0[_wgslsmith_index_u32(126700u, 3u)], -1000f, -1365f, var_1.a)) * vec4<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 11u)]), var_1.a, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.c.x, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)])), -211f))), var_1.a, func_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, 536f))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(41195u, 3u)])), 278f, global0[_wgslsmith_index_u32(firstTrailingBit(var_0.x), 3u)]), 409f, all(vec4<bool>(!var_1.b.c.x, var_1.b.c.x, func_3(), !var_1.b.c.x))).c.x).c.wzy;
    let var_4 = var_1.b.c.xy;
    let var_5 = (-var_2 << (~65547u % 32u)) > abs(-_wgslsmith_dot_vec2_i32(var_1.b.a.zz >> (vec2<u32>(var_0.x, u_input.c.x) % vec2<u32>(32u)), vec2<i32>(1i, 1i)));
    let var_6 = Struct_1(vec3<i32>(-(~(-1i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-1i, -1i, var_2, var_1.b.b)), ~vec4<i32>(1735i, var_1.b.a.x, var_2, var_1.b.b)), -4347i) | vec3<i32>(var_2, _wgslsmith_sub_i32(~var_2, -23640i), min(~u_input.b, -10993i)), u_input.b, var_1.b.c);
    var var_7 = -vec3<i32>(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_div_i32(-1i, var_1.b.b)), ~u_input.b), _wgslsmith_add_i32(1i, abs(_wgslsmith_add_i32(var_6.a.x, -37681i))), -(i32(-1i) * -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(u_input.c), ~vec4<u32>(24537u, 23971u, ~u_input.e, var_0.x), vec4<i32>(select(var_1.b.a.x, _wgslsmith_div_i32(var_7.x >> (u_input.e % 32u), _wgslsmith_add_i32(u_input.b, var_2)), any(var_1.b.c.xz) && var_3.x), u_input.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_2, -37686i, 288i, -11310i), _wgslsmith_mod_vec4_i32(vec4<i32>(0i, -10855i, 1i, 2147483647i), vec4<i32>(-2438i, -1i, 0i, u_input.a))), ~(-2147483647i) & u_input.a), var_1.b.a.x), var_1.a);
}

