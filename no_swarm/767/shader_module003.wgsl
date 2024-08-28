struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14> = array<bool, 14>(false, false, false, true, true, true, true, true, false, true, true, true, true, false);

var<private> global1: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(1537f, 2332f, 914f, -109f), vec4<f32>(-1312f, 893f, 382f, -638f), vec4<f32>(-325f, -744f, -627f, 786f), vec4<f32>(-320f, 325f, -423f, -1000f), vec4<f32>(-618f, 503f, -1575f, 114f));

var<private> global2: array<bool, 20> = array<bool, 20>(false, false, false, false, false, false, true, false, false, false, true, false, false, false, true, false, false, true, false, true);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: bool) -> vec3<u32> {
    var var_0 = any(!vec3<bool>(true, true, !global0[_wgslsmith_index_u32(0u, 14u)] | true));
    global2 = array<bool, 20>();
    let var_1 = ~(1u >> (arg_0.a.x % 32u));
    var_0 = all(vec3<bool>(global2[_wgslsmith_index_u32(10657u, 20u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(arg_0.a.x, 0u), max(4294967295u, 121468u))), 20u)], true));
    let var_2 = vec3<bool>(!(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.x, 20301i, -2147483647i), arg_1)) >= 0i), all(select(select(select(vec4<bool>(arg_3, global0[_wgslsmith_index_u32(arg_0.a.x, 14u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), vec4<bool>(global0[_wgslsmith_index_u32(var_1, 14u)], true, global2[_wgslsmith_index_u32(2594u, 20u)], global2[_wgslsmith_index_u32(arg_0.a.x, 20u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], true, false)), !vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 20u)], arg_3, global0[_wgslsmith_index_u32(var_1, 14u)], global0[_wgslsmith_index_u32(1u, 14u)]), any(vec2<bool>(global2[_wgslsmith_index_u32(1u, 20u)], true))), !select(vec4<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 14u)], arg_3, false, false), vec4<bool>(arg_3, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global2[_wgslsmith_index_u32(9277u, 20u)], true), global2[_wgslsmith_index_u32(12098u, 20u)]), all(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.x, 14u)], global0[_wgslsmith_index_u32(61516u, 14u)]), vec2<bool>(arg_3, true), true)))), global2[_wgslsmith_index_u32(reverseBits(select(_wgslsmith_add_u32(~5450u, _wgslsmith_mod_u32(var_1, var_1)), u_input.b.x & arg_0.a.x, global0[_wgslsmith_index_u32(abs(firstLeadingBit(var_1)), 14u)])), 20u)]);
    return arg_0.a;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(vec3<u32>(~max(~0u, u_input.b.x | u_input.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b.zwx, vec3<u32>(4294967295u, 957u, u_input.b.x)), vec3<u32>(80970u, u_input.b.x, u_input.b.x) & func_3(Struct_1(vec3<u32>(21489u, u_input.b.x, u_input.b.x)), vec4<i32>(75008i, -5303i, 6913i, u_input.a), vec3<i32>(u_input.a, u_input.a, -68065i), false)), 58564u));
    global2 = array<bool, 20>();
    var var_1 = var_0;
    global0 = array<bool, 14>();
    var var_2 = _wgslsmith_mult_u32(~(23022u >> (var_0.a.x % 32u)), _wgslsmith_div_u32(reverseBits(func_3(Struct_1(u_input.b.zwx), _wgslsmith_add_vec4_i32(vec4<i32>(1i, u_input.a, u_input.a, u_input.a), vec4<i32>(0i, -18065i, 1i, u_input.a)), vec3<i32>(u_input.a, 2147483647i, -1i) ^ vec3<i32>(18590i, 1i, u_input.a), true).x), abs(~0u)));
    return u_input.a;
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_sub_u32(6151u, u_input.b.x), ~16837u), 4294967295u, ~u_input.b.x));
    let var_1 = !(!(!any(vec4<bool>(global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(12510u, 20u)], true, true))));
    global0 = array<bool, 14>();
    global2 = array<bool, 20>();
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(616f, arg_0.x, -1416f, arg_0.x))), global1[_wgslsmith_index_u32(u_input.b.x, 5u)])));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 14>();
    let var_0 = func_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-820f - -690f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1749f, -1188f)))));
    global0 = array<bool, 14>();
    global1 = array<vec4<f32>, 5>();
    var var_1 = select(vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)], select(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.b.x, ~1u), 20u)], all(vec4<bool>(global0[_wgslsmith_index_u32(4614u, 14u)], true, true, true)), any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], false))), false, global0[_wgslsmith_index_u32(69590u >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.b.yw, vec2<u32>(u_input.b.x, u_input.b.x)), max(88711u, u_input.b.x)) % 32u), 14u)]), vec4<bool>(!any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false, false, global2[_wgslsmith_index_u32(u_input.b.x, 20u)])), true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~88245u), 20u)], true), select(!select(select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 20u)], false, true, global2[_wgslsmith_index_u32(1661u, 20u)]), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(u_input.b.x, 20u)]), global0[_wgslsmith_index_u32(u_input.b.x, 14u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(19567u, 14u)], true, false), all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], false, false, true))), !vec4<bool>(select(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(13318u, 14u)], global2[_wgslsmith_index_u32(0u, 20u)]), any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], global0[_wgslsmith_index_u32(39081u, 14u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 14u)])), false, select(global2[_wgslsmith_index_u32(27031u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)])), all(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(0u, 20u)], true), !vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 14u)], false), vec3<bool>(true, global0[_wgslsmith_index_u32(55324u, 14u)], global0[_wgslsmith_index_u32(u_input.b.x, 14u)])))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-984f, _wgslsmith_f_op_f32(round(-613f)), 1655f), vec3<f32>(118f, -258f, -1358f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1279f, 984f, -901f), vec3<f32>(2430f, 352f, 1000f), var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1072f, -1691f, 237f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1535f, 187f, 932f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-492f, 612f, -703f) - vec3<f32>(843f, 793f, -1053f))))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(956f, 1000f, 363f) * vec3<f32>(-1443f, -1371f, 1539f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -1549f, -225f))))), vec3<f32>(-1175f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(776f * 163f) + _wgslsmith_f_op_f32(max(1224f, 1047f))), -539f))));
    var var_3 = ~(~1u);
    global2 = array<bool, 20>();
    var_1 = select(vec4<bool>(false, var_1.x, false, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b.x, min(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.yy), 4294967295u), ~(~u_input.b.x)), 20u)]), vec4<bool>(select(!(var_2.x < -317f), global0[_wgslsmith_index_u32(~46085u, 14u)] || (u_input.a > -1i), !(!global0[_wgslsmith_index_u32(1u, 14u)])), false, true, all(var_1.xw)), select(!select(vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 14u)], true, global0[_wgslsmith_index_u32(40456u, 14u)]), select(vec4<bool>(true, true, var_1.x, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], false, var_1.x, false), true), vec4<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 20u)], false)), !vec4<bool>(global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 20u)], all(vec3<bool>(false, true, global2[_wgslsmith_index_u32(140179u, 20u)])), u_input.b.x < u_input.b.x, var_1.x || true), vec4<bool>(!all(vec3<bool>(global0[_wgslsmith_index_u32(72851u, 14u)], var_1.x, global0[_wgslsmith_index_u32(9681u, 14u)])), !(global0[_wgslsmith_index_u32(23512u, 14u)] | true), !(-1i > u_input.a), any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 14u)], true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-_wgslsmith_mult_i32(-32825i, var_0) >> (1u % 32u), _wgslsmith_dot_vec3_i32(-min(vec3<i32>(12475i, 1i, u_input.a), vec3<i32>(u_input.a, u_input.a, 2202i)), vec3<i32>(var_0, var_0, -2147483647i) >> (vec3<u32>(0u, u_input.b.x, 4294967295u) % vec3<u32>(32u))), 0i), ~(u_input.b.x ^ abs(func_3(Struct_1(vec3<u32>(4294967295u, u_input.b.x, 5131u)), vec4<i32>(var_0, u_input.a, -32329i, u_input.a), vec3<i32>(3503i, var_0, u_input.a), false).x)));
}

