struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global1: array<f32, 19>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<f32>) -> i32 {
    let var_0 = arg_1.x >> (~arg_1.x % 32u);
    let var_1 = Struct_2(Struct_1(!(!(!vec2<bool>(arg_0, arg_0)))), Struct_1(!vec2<bool>(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, 96518u), 3u)], arg_0)), Struct_1(vec2<bool>(false, any(vec4<bool>(arg_0, false, arg_0, false)))), min(max(_wgslsmith_mult_i32(min(-42608i, u_input.a), u_input.a), 14166i), 2147483647i), Struct_1(select(select(!vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), all(vec2<bool>(true, arg_0))), vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)] | true, false), false)));
    global1 = array<f32, 19>();
    var var_2 = var_1.a;
    var_2 = Struct_1(var_1.b.a);
    return abs(i32(-1i) * -u_input.a);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(arg_1.a, arg_1.e, arg_1.c, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_1.d, max(u_input.a, u_input.a), 0i), _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, u_input.a, 29208i, arg_1.d), vec4<i32>(-1i, -1i, 9808i, -38446i)), vec4<i32>(-47678i, u_input.a, -1i, 0i), vec4<i32>(arg_1.d, u_input.a, u_input.a, -2147483647i) | vec4<i32>(1i, arg_1.d, arg_1.d, arg_1.d))) >> (_wgslsmith_div_u32(48835u, 1u) % 32u), Struct_1(select(select(arg_1.b.a, !arg_1.a.a, !global0[_wgslsmith_index_u32(38029u, 3u)]), arg_1.b.a, true)));
    var var_1 = Struct_2(Struct_1(select(vec2<bool>(u_input.a >= 5998i, arg_1.a.a.x), !vec2<bool>(global0[_wgslsmith_index_u32(17363u, 3u)], var_0.e.a.x), true)), var_0.c, arg_1.a, _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(10531i, var_0.d, -11897i, 0i), vec4<i32>(var_0.d, u_input.a, arg_1.d, -8339i)), select(vec4<i32>(arg_1.d, arg_1.d, 1i, var_0.d), vec4<i32>(arg_1.d, arg_1.d, var_0.d, 2147483647i), arg_1.c.a.x))), _wgslsmith_clamp_i32(func_3(false, vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1[_wgslsmith_index_u32(20663u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]), arg_0.yx))), -arg_1.d, 1i)), Struct_1(arg_1.c.a));
    var_1 = Struct_2(var_1.c, var_1.b, Struct_1(select(!(!vec2<bool>(true, var_1.e.a.x)), !(!var_1.a.a), 2147483647i < var_1.d)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-42559i, u_input.a, var_1.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.d, u_input.a, arg_1.d), vec3<i32>(arg_1.d, arg_1.d, var_1.d), vec3<i32>(var_1.d, arg_1.d, var_0.d)) | (vec3<i32>(var_1.d, var_0.d, u_input.a) | vec3<i32>(arg_1.d, arg_1.d, var_0.d))), -var_1.d), Struct_1(!vec2<bool>(any(vec3<bool>(var_0.e.a.x, false, true)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 3u)], var_1.a.a.x)))));
    let var_2 = -_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-33489i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 26580i, -1i, arg_1.d), vec4<i32>(25127i, -1i, var_1.d, var_1.d))), firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.d, var_0.d), vec2<i32>(var_1.d, 7297i)))), ~vec2<i32>(2605i, ~var_1.d));
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), ~abs(~vec3<u32>(4294967295u, 4294967295u, 22780u)));
    return var_0.c;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = true;
    let var_1 = 4294967295u;
    global1 = array<f32, 19>();
    var var_2 = Struct_1(arg_0.a);
    let var_3 = any(select(!(!vec3<bool>(false, arg_0.a.x, true)), vec3<bool>(true, false, all(vec2<bool>(global0[_wgslsmith_index_u32(var_1, 3u)], false))), ~var_1 != 56183u)) && !any(!(!vec3<bool>(false, true, global0[_wgslsmith_index_u32(19687u, 3u)])));
    return Struct_2(func_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(538f, -1414f, 613f), vec3<f32>(-1162f, global1[_wgslsmith_index_u32(var_1, 19u)], -1399f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_1, 19u)], -2591f, global1[_wgslsmith_index_u32(101238u, 19u)]) + vec3<f32>(global1[_wgslsmith_index_u32(var_1, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(var_1, 19u)])) - _wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_1, 19u)], 177f, global1[_wgslsmith_index_u32(var_1, 19u)]), vec3<f32>(global1[_wgslsmith_index_u32(0u, 19u)], 438f, global1[_wgslsmith_index_u32(1u, 19u)]))))), Struct_2(Struct_1(select(arg_0.a, var_2.a, vec2<bool>(arg_0.a.x, false))), arg_0, arg_0, ~u_input.a, Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, var_3), true)))), arg_0, arg_0, countOneBits(firstLeadingBit(u_input.a) & (i32(-1i) * -u_input.a)), func_2(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(-456f, -1396f, 1604f), _wgslsmith_f_op_vec3_f32(vec3<f32>(899f, global1[_wgslsmith_index_u32(4294967295u, 19u)], -449f) * vec3<f32>(global1[_wgslsmith_index_u32(var_1, 19u)], global1[_wgslsmith_index_u32(32693u, 19u)], -934f))))), Struct_2(func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-281f, global1[_wgslsmith_index_u32(11086u, 19u)], 1194f))), Struct_2(arg_0, Struct_1(vec2<bool>(var_0, var_0)), Struct_1(vec2<bool>(arg_0.a.x, var_2.a.x)), 33509i, Struct_1(arg_0.a))), Struct_1(vec2<bool>(true, true)), arg_0, -1i, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(111f, 1169f, global1[_wgslsmith_index_u32(0u, 19u)]) + vec3<f32>(-388f, global1[_wgslsmith_index_u32(81265u, 19u)], -1271f)), Struct_2(arg_0, arg_0, arg_0, 2147483647i, arg_0)))));
}

fn func_5(arg_0: Struct_2) -> u32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~(~1u), 19u)], global1[_wgslsmith_index_u32(~(~30178u), 19u)]) + _wgslsmith_f_op_f32(2118f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(15222u, 19u)], 463f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(~0u, 19u)] - _wgslsmith_div_f32(-175f, global1[_wgslsmith_index_u32(13273u, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(2382f))), true)), global1[_wgslsmith_index_u32(1u, 19u)])), global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(4294967295u >> (0u % 32u), 1u) << (0u % 32u)), 19u)]);
    global0 = array<bool, 3>();
    let var_1 = arg_0.b;
    var var_2 = ~vec2<i32>(1i, _wgslsmith_div_i32(0i, ~9587i));
    global0 = array<bool, 3>();
    return ~0u;
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 19>();
    global0 = array<bool, 3>();
    global0 = array<bool, 3>();
    let var_0 = abs(vec4<u32>(func_5(func_4(func_2(vec3<f32>(global1[_wgslsmith_index_u32(58350u, 19u)], 327f, global1[_wgslsmith_index_u32(4294967295u, 19u)]), Struct_2(Struct_1(vec2<bool>(true, true)), Struct_1(vec2<bool>(false, false)), Struct_1(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)])), u_input.a, Struct_1(vec2<bool>(false, global0[_wgslsmith_index_u32(1u, 3u)])))))), ~countOneBits(7252u), 1u, 5214u));
    global0 = array<bool, 3>();
    return func_4(Struct_1(!select(!vec2<bool>(global0[_wgslsmith_index_u32(130029u, 3u)], global0[_wgslsmith_index_u32(var_0.x, 3u)]), !vec2<bool>(global0[_wgslsmith_index_u32(var_0.x, 3u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(1u, 3u)], true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = Struct_1(!(!select(select(vec2<bool>(true, global0[_wgslsmith_index_u32(8465u, 3u)]), vec2<bool>(false, true), global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(global0[_wgslsmith_index_u32(109872u, 3u)], global0[_wgslsmith_index_u32(4294967295u, 3u)]), global0[_wgslsmith_index_u32(~1u, 3u)])));
    let var_2 = 1u;
    var var_3 = func_1();
    var var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(var_2, 19u)], global1[_wgslsmith_index_u32(1u, 19u)]))))))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(15832u, 19u)]))), _wgslsmith_div_f32(853f, global1[_wgslsmith_index_u32(var_2, 19u)])), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-346f, global1[_wgslsmith_index_u32(28542u, 19u)]))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(8u, 19u)])))), var_1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(vec4<i32>(-var_3.d, var_3.d, 1405i, _wgslsmith_mult_i32(-1i, u_input.a)) >> ((select(vec4<u32>(4294967295u, 80860u, 0u, var_2), vec4<u32>(0u, var_2, 4294967295u, 357u), false) >> (vec4<u32>(var_2, 47298u, 4294967295u, 37413u) % vec4<u32>(32u))) % vec4<u32>(32u)), min(~(-vec4<i32>(u_input.a, 2147483647i, -2147483647i, u_input.a)), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -2597i, 47008i, 1i), vec4<i32>(0i, u_input.a, u_input.a, var_3.d)), vec4<i32>(u_input.a, u_input.a, var_3.d, -80451i) | vec4<i32>(39846i, 11103i, 8141i, -34990i)))), var_2);
}

