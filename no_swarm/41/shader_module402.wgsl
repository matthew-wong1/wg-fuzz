struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-291f, -333f, 1409f, 511f, -687f, 369f, -354f, 1000f, 634f, -810f, -445f, 264f, 1946f, -1084f, 1497f, -2043f, -257f, -386f, -2317f, 1267f, 198f, -1346f, -130f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> bool {
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + _wgslsmith_f_op_f32(floor(-662f)));
    global0 = array<f32, 23>();
    return all(!vec2<bool>(true || !arg_1.b.c.c, arg_1.b.d.c));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>) -> vec4<i32> {
    global0 = array<f32, 23>();
    let var_0 = arg_0;
    let var_1 = var_0;
    global0 = array<f32, 23>();
    var var_2 = Struct_1(1i, ~vec3<i32>(u_input.a, ~0i, arg_0.b.a.b.x), select(arg_0.a.c, all(select(select(vec3<bool>(var_1.a.c, var_1.b.c.c, true), vec3<bool>(arg_0.a.c, arg_0.a.c, false), vec3<bool>(var_0.b.b.x, var_0.b.a.c, var_0.c.a.c)), !vec3<bool>(arg_1.x, true, var_1.b.c.c), arg_1.x)), firstTrailingBit(~var_0.a.a) <= abs(i32(-1i) * -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0.b.c.d)))) * _wgslsmith_f_op_f32(min(1273f, _wgslsmith_f_op_f32(select(var_0.a.d, arg_0.a.d, var_1.c.b.x))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1u);
    return firstLeadingBit(vec4<i32>(~_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_0.b.d.a, -29065i), select(var_1.c.a.b.xy, arg_0.c.c.b.zx, arg_1)), var_1.b.d.a, max(-28790i, ~firstTrailingBit(0i)), i32(-1i) * -2147483647i));
}

fn func_2(arg_0: vec3<f32>) -> vec4<i32> {
    var var_0 = vec3<f32>(-1154f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)))) * global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_f_op_f32(max(-1169f, _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(~(~58849u), 23u)])))));
    var var_1 = Struct_1(u_input.a, vec3<i32>(-(~(-18120i)), reverseBits(1i), u_input.a), true, global0[_wgslsmith_index_u32(0u, 23u)], _wgslsmith_dot_vec2_u32(~vec2<u32>(~36223u, ~0u), vec2<u32>(1u, 1u)));
    let var_2 = ~select(vec3<u32>(_wgslsmith_sub_u32(39691u, firstLeadingBit(8768u)), ~(var_1.e >> (var_1.e % 32u)), 2955u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, abs(var_1.e), _wgslsmith_clamp_u32(var_1.e, 10954u, 19914u)), _wgslsmith_mult_vec3_u32(~vec3<u32>(1u, 46939u, var_1.e), vec3<u32>(var_1.e, var_1.e, 4294967295u) ^ vec3<u32>(var_1.e, var_1.e, 4294967295u))), select(select(vec3<bool>(true, true, true), !vec3<bool>(false, var_1.c, var_1.c), false), vec3<bool>(all(vec4<bool>(false, true, var_1.c, false)), true, var_1.c | true), true));
    let var_3 = !any(select(!(!vec2<bool>(var_1.c, true)), select(vec2<bool>(true, true), select(vec2<bool>(var_1.c, var_1.c), vec2<bool>(var_1.c, var_1.c), vec2<bool>(false, true)), any(vec4<bool>(false, var_1.c, var_1.c, var_1.c))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 23u)], var_1.d) > global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_2.x, var_2.x), 23u)]));
    var var_4 = var_2.zy;
    return func_4(Struct_3(Struct_1(firstLeadingBit(firstLeadingBit(-12544i)), _wgslsmith_clamp_vec3_i32(select(var_1.b, var_1.b, vec3<bool>(true, var_3, false)), abs(vec3<i32>(-70117i, var_1.b.x, u_input.a)), max(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(-15686i, var_1.a, var_1.b.x))), var_1.c, -358f, 0u), Struct_2(Struct_1(0i, -vec3<i32>(var_1.b.x, var_1.b.x, var_1.a), func_3(0i, Struct_3(Struct_1(1i, var_1.b, var_1.c, 1714f, var_2.x), Struct_2(Struct_1(u_input.a, vec3<i32>(u_input.a, u_input.a, var_1.a), true, arg_0.x, 99752u), vec2<bool>(false, var_1.c), Struct_1(var_1.b.x, var_1.b, false, 874f, var_1.e), Struct_1(u_input.a, vec3<i32>(30819i, u_input.a, -34061i), var_3, var_0.x, var_2.x), vec2<u32>(9068u, var_4.x)), Struct_2(Struct_1(29968i, var_1.b, var_1.c, arg_0.x, 1u), vec2<bool>(var_1.c, true), Struct_1(u_input.a, vec3<i32>(-47499i, 42397i, u_input.a), true, var_1.d, 0u), Struct_1(1i, vec3<i32>(var_1.b.x, -40167i, 2147483647i), true, 827f, 1u), var_2.yx)), Struct_2(Struct_1(var_1.a, var_1.b, true, 1643f, var_2.x), vec2<bool>(var_1.c, true), Struct_1(2448i, var_1.b, false, var_0.x, var_4.x), Struct_1(var_1.a, var_1.b, true, var_1.d, 0u), vec2<u32>(18907u, 4294967295u))), -505f, var_2.x), select(!vec2<bool>(true, var_3), vec2<bool>(var_3, var_1.c), false), Struct_1(-5645i, vec3<i32>(u_input.a, var_1.a, var_1.b.x), all(vec2<bool>(var_3, false)), _wgslsmith_f_op_f32(min(var_0.x, -1032f)), 41673u), Struct_1(var_1.a ^ u_input.a, abs(vec3<i32>(var_1.b.x, -1i, var_1.b.x)), all(vec3<bool>(var_1.c, var_1.c, false)), _wgslsmith_f_op_f32(var_0.x + 941f), _wgslsmith_mult_u32(0u, var_4.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, var_4.x), vec2<u32>(4294967295u, var_2.x)) << (~vec2<u32>(var_1.e, var_4.x) % vec2<u32>(32u))), Struct_2(Struct_1(max(0i, u_input.a), firstTrailingBit(vec3<i32>(-2147483647i, 12482i, u_input.a)), false, var_0.x, var_2.x | var_4.x), vec2<bool>(any(vec3<bool>(false, false, var_3)), all(vec4<bool>(var_1.c, var_1.c, true, var_1.c))), Struct_1(_wgslsmith_clamp_i32(45152i, 2147483647i, var_1.b.x), _wgslsmith_clamp_vec3_i32(var_1.b, vec3<i32>(var_1.a, u_input.a, var_1.b.x), var_1.b), var_3, _wgslsmith_f_op_f32(-172f - var_1.d), ~var_2.x), Struct_1(~(-21507i), var_1.b, false, _wgslsmith_div_f32(-287f, -629f), ~13954u), min(~var_2.zy, var_2.zx))), vec2<bool>(true, true));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 23u)], 466f, global0[_wgslsmith_index_u32(arg_0, 23u)]) * vec3<f32>(-2445f, -1264f, global0[_wgslsmith_index_u32(1u, 23u)])), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(728f, -185f, global0[_wgslsmith_index_u32(arg_0, 23u)]), vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], 453f, -1866f))))) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-904f, -802f, -206f)), vec3<f32>(global0[_wgslsmith_index_u32(arg_0, 23u)], 890f, global0[_wgslsmith_index_u32(42163u, 23u)])))))));
    var var_1 = ~vec3<u32>(1u, 1u, 39152u);
    var_1 = ~(vec3<u32>(arg_0 << (max(64492u, var_1.x) % 32u), ~(~8066u), arg_0 >> (var_1.x % 32u)) | ~(~(~vec3<u32>(75536u, var_1.x, var_1.x))));
    global0 = array<f32, 23>();
    var var_2 = var_0.yy;
    return Struct_1(_wgslsmith_mult_i32(2147483647i, max(-20018i, select(-43954i, 1i, true))), vec3<i32>(func_2(vec3<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 23u)] + global0[_wgslsmith_index_u32(0u, 23u)]), -1764f, _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(var_1.x, 23u)])))).x, firstTrailingBit(-(~var_2.x)), ~var_2.x), true, 779f, 4294967295u);
}

fn func_5(arg_0: Struct_1) -> i32 {
    let var_0 = ~reverseBits(~_wgslsmith_sub_u32(18262u, 10357u));
    var var_1 = Struct_2(Struct_1(func_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1991f, -552f, -1000f))).x & -18357i, -abs(arg_0.b), !(!arg_0.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-188f + arg_0.d) * global0[_wgslsmith_index_u32(~15936u, 23u)]), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(85115u, 23u)])))), arg_0.c)), abs(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(0u, var_0, var_0), ~34120u))), select(!(!(!vec2<bool>(arg_0.c, arg_0.c))), select(vec2<bool>(1069u < var_0, arg_0.c), select(vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, false), select(arg_0.c, arg_0.c, true)), vec2<bool>(true, true)), vec2<bool>(true, true || arg_0.c)), arg_0, Struct_1(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -1i, -2147483647i, -1i), _wgslsmith_clamp_vec3_i32(arg_0.b, vec3<i32>(22006i, u_input.a, u_input.a), -vec3<i32>(u_input.a, -1i, -2147483647i))), arg_0.c, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 23u)]), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, arg_0.e, 4294967295u), select(vec3<u32>(1u, arg_0.e, 1u), vec3<u32>(arg_0.e, 74819u, arg_0.e) & vec3<u32>(var_0, arg_0.e, var_0), vec3<bool>(false, arg_0.c, false)))), firstTrailingBit(firstLeadingBit(reverseBits(~vec2<u32>(arg_0.e, var_0)))));
    var_1 = Struct_2(Struct_1(i32(-1i) * -2147483647i, _wgslsmith_clamp_vec3_i32(-vec3<i32>(var_1.d.b.x, 1i, arg_0.b.x), arg_0.b & ~var_1.d.b, vec3<i32>(-2147483647i, ~(-34124i), arg_0.b.x)), !(var_1.b.x || false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.d)) + -901f), 6223u), !vec2<bool>(!(1i != var_1.a.b.x), !(!var_1.b.x)), Struct_1(_wgslsmith_dot_vec2_i32(~var_1.d.b.xz, _wgslsmith_add_vec2_i32(func_4(Struct_3(var_1.a, Struct_2(Struct_1(var_1.a.a, arg_0.b, arg_0.c, 164f, 45226u), var_1.b, Struct_1(48854i, vec3<i32>(u_input.a, 1i, 0i), arg_0.c, -388f, 4294967295u), Struct_1(var_1.a.b.x, arg_0.b, var_1.c.c, arg_0.d, var_1.e.x), var_1.e), Struct_2(Struct_1(u_input.a, vec3<i32>(var_1.d.a, -5602i, u_input.a), var_1.a.c, var_1.d.d, arg_0.e), vec2<bool>(false, false), var_1.d, Struct_1(arg_0.b.x, var_1.c.b, arg_0.c, 1103f, 18047u), var_1.e)), var_1.b).zy, _wgslsmith_sub_vec2_i32(arg_0.b.xy, vec2<i32>(-1i, -1i)))), var_1.c.b >> (max(firstTrailingBit(vec3<u32>(65629u, arg_0.e, 4524u)), reverseBits(vec3<u32>(0u, 22762u, arg_0.e))) % vec3<u32>(32u)), all(vec3<bool>(func_1(var_0).c, var_1.c.c, select(var_1.a.c, true, var_1.c.c))), _wgslsmith_f_op_f32(f32(-1f) * -870f), _wgslsmith_dot_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(17119u, 13376u), var_1.e), var_1.e, -466f > var_1.c.d), var_1.e)), func_1(25835u), ~(~(_wgslsmith_mult_vec2_u32(var_1.e, var_1.e) | (vec2<u32>(15848u, 1u) & var_1.e))));
    var var_2 = var_1.a.b.yz;
    var_2 = -_wgslsmith_mod_vec2_i32(-var_1.d.b.xz, func_4(Struct_3(var_1.a, Struct_2(Struct_1(-5022i, arg_0.b, var_1.b.x, arg_0.d, var_1.c.e), vec2<bool>(false, arg_0.c), arg_0, Struct_1(var_2.x, var_1.d.b, arg_0.c, arg_0.d, 816u), vec2<u32>(arg_0.e, var_1.e.x)), Struct_2(Struct_1(var_2.x, var_1.c.b, var_1.b.x, arg_0.d, 34166u), vec2<bool>(var_1.c.c, arg_0.c), Struct_1(var_2.x, vec3<i32>(var_1.d.a, var_1.d.b.x, 1469i), true, 312f, var_0), var_1.d, var_1.e)), select(select(var_1.b, vec2<bool>(false, true), var_1.d.c), !vec2<bool>(true, arg_0.c), func_1(54628u).c)).xx);
    return -abs(firstTrailingBit(firstLeadingBit(firstLeadingBit(var_1.d.b.x))));
}

fn func_6(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    let var_0 = ~(~10014u);
    global0 = array<f32, 23>();
    var var_1 = arg_2.e;
    let var_2 = 2147483647i;
    var var_3 = any(!(!select(vec4<bool>(false, false, arg_2.c.c, false), vec4<bool>(false, true, arg_2.c.c, false), vec4<bool>(true, true, false, true)))) && arg_2.c.c;
    return arg_2.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(vec4<i32>(u_input.a, abs(firstTrailingBit(-57003i)), _wgslsmith_mult_i32(~(u_input.a << (1u % 32u)), u_input.a), func_5(func_1(10057u))), vec3<i32>(~(-1i), _wgslsmith_mult_i32(u_input.a, u_input.a), -(~u_input.a)), Struct_2(func_1(1225u), vec2<bool>(true, true), func_1(4294967295u), Struct_1(20237i, -func_4(Struct_3(Struct_1(-1i, vec3<i32>(-1i, u_input.a, 5647i), true, -193f, 4294967295u), Struct_2(Struct_1(57342i, vec3<i32>(-3632i, -2147483647i, 75211i), false, -1000f, 29482u), vec2<bool>(true, false), Struct_1(u_input.a, vec3<i32>(0i, -2147483647i, -9634i), false, -1402f, 0u), Struct_1(u_input.a, vec3<i32>(u_input.a, u_input.a, u_input.a), true, global0[_wgslsmith_index_u32(0u, 23u)], 4294967295u), vec2<u32>(1u, 63879u)), Struct_2(Struct_1(u_input.a, vec3<i32>(u_input.a, u_input.a, u_input.a), false, 771f, 61883u), vec2<bool>(true, false), Struct_1(27294i, vec3<i32>(u_input.a, u_input.a, u_input.a), true, global0[_wgslsmith_index_u32(1u, 23u)], 45100u), Struct_1(u_input.a, vec3<i32>(u_input.a, 0i, u_input.a), true, -970f, 1u), vec2<u32>(420u, 1u))), vec2<bool>(true, true)).yzz, true && (global0[_wgslsmith_index_u32(95493u, 23u)] == global0[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(0u, 4131u, 0u), 23u)]), ~1u), ~min(firstTrailingBit(vec2<u32>(0u, 16855u)), ~vec2<u32>(42022u, 85034u))), 25142u);
    let var_1 = func_1(var_0.e);
    let var_2 = Struct_2(func_6(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, 2147483647i, -2147483647i) << ((vec4<u32>(31804u, 1u, 74938u, 4294967295u) >> (vec4<u32>(54568u, 27148u, var_0.e, 3729u) % vec4<u32>(32u))) % vec4<u32>(32u)), ~firstTrailingBit(vec4<i32>(-2147483647i, var_1.b.x, var_0.a, 1i))), _wgslsmith_mod_vec3_i32(~_wgslsmith_div_vec3_i32(var_1.b, vec3<i32>(var_0.a, var_1.a, var_1.a)), -(vec3<i32>(-2147483647i, -1i, -2147483647i) << (vec3<u32>(var_0.e, 1u, 76924u) % vec3<u32>(32u)))), Struct_2(var_1, select(vec2<bool>(var_0.c, var_0.c), vec2<bool>(false, var_1.c), var_0.c), var_1, var_1, (vec2<u32>(var_0.e, var_0.e) & vec2<u32>(4294967295u, 4294967295u)) ^ ~vec2<u32>(70825u, var_1.e)), var_0.e), !select(vec2<bool>(var_0.b.x == var_1.a, 13291u < var_0.e), select(vec2<bool>(false, false), !vec2<bool>(false, var_0.c), true), !select(true, true, var_1.c)), Struct_1(65858i, abs(var_1.b) ^ var_1.b, ((var_0.e ^ 1u) | 1u) > ~var_0.e, 1022f, 0u), Struct_1(var_1.a >> (reverseBits(4294967295u) % 32u), select(var_1.b, ~(var_0.b | vec3<i32>(-43204i, u_input.a, u_input.a)), false), true, _wgslsmith_f_op_f32(-var_0.d), var_1.e), vec2<u32>(_wgslsmith_add_u32(min(20649u, 4294967295u), 91012u), ~4294967295u & _wgslsmith_add_u32(firstTrailingBit(var_1.e), max(var_0.e, 4294967295u))));
    let var_3 = var_2.a;
    var var_4 = Struct_1(-firstTrailingBit(-2147483647i), func_4(Struct_3(func_1(abs(var_0.e)), var_2, Struct_2(Struct_1(var_2.a.b.x, vec3<i32>(var_3.a, var_1.b.x, -1i), var_2.a.c, var_3.d, 6355u), vec2<bool>(true, var_1.c), func_1(var_3.e), func_1(4294967295u), ~vec2<u32>(var_1.e, var_1.e))), var_2.b).wzy, !(!(!(!var_1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.d)), abs(var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

