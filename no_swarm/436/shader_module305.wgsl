struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28> = array<bool, 28>(false, false, false, false, false, true, true, false, true, false, false, true, false, false, false, false, false, true, true, true, false, false, false, true, false, true, true, false);

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 6>;

var<private> global3: array<vec4<bool>, 19>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1189f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-174f, 816f)))));
    var var_1 = vec3<i32>(-20246i, u_input.a.x, ~(~_wgslsmith_sub_i32(u_input.a.x, u_input.c.x)) << (firstLeadingBit(_wgslsmith_sub_u32(~473u, global1.a.x)) % 32u));
    global1 = Struct_2(global1.a, global1.b);
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, 297f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1426f, 950f) - vec2<f32>(-455f, 118f)))))));
    global1 = Struct_2(vec2<u32>(36228u, _wgslsmith_add_u32(36433u >> (_wgslsmith_mod_u32(global1.a.x, 111078u) % 32u), ~(~6513u))), global1.b);
    return _wgslsmith_dot_vec4_u32(~firstLeadingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b, 39851u, global1.a.x, u_input.b), vec4<u32>(u_input.b, u_input.b, global1.a.x, 4294967295u) ^ vec4<u32>(42920u, 65983u, global1.a.x, 4294967295u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(~global1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 4294967295u, 60439u), vec4<u32>(0u, 7118u, 20739u, 3286u)), 1u, ~13633u), _wgslsmith_mod_vec4_u32(~vec4<u32>(74648u, 7325u, global1.a.x, 10583u), max(vec4<u32>(3871u, 35504u, u_input.b, global1.a.x), vec4<u32>(4294967295u, u_input.b, 0u, 24908u))), _wgslsmith_mult_vec4_u32(vec4<u32>(global1.a.x, 4294967295u, 49865u, global1.a.x) >> (vec4<u32>(u_input.b, 4294967295u, global1.a.x, global1.a.x) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(global1.a.x, u_input.b, u_input.b, 1599u)))));
}

fn func_2() -> bool {
    let var_0 = Struct_2(~vec2<u32>(~u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(37207u, u_input.b, u_input.b, 7592u), vec4<u32>(global1.a.x, 1u, global1.a.x, 30608u))), global2[_wgslsmith_index_u32(firstLeadingBit(func_3()), 6u)]);
    var var_1 = global1.b;
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-348f, -1057f, 413f)) - vec3<f32>(-862f, 348f, 963f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, -1502f, 1996f))) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2452f), 1585f, _wgslsmith_div_f32(-1127f, 1000f))))));
    var var_3 = _wgslsmith_f_op_f32(var_2.x - var_2.x);
    var var_4 = vec2<bool>(_wgslsmith_dot_vec4_u32(~firstLeadingBit(vec4<u32>(74732u, 92792u, var_0.a.x, 1975u)), vec4<u32>(u_input.b, select(23552u, 1u, false), 1u, 26233u)) == ~(~1u), global0[_wgslsmith_index_u32(func_3(), 28u)]);
    return true;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: vec3<i32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3.b;
    var var_1 = Struct_2(global1.a, Struct_1(true, false, arg_1, true || !global1.b.d));
    global2 = array<Struct_1, 6>();
    let var_2 = Struct_2(abs(~global1.a), Struct_1(var_1.b.b, func_2(), false, global1.b.d));
    let var_3 = reverseBits(firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(372i, u_input.c.x), firstTrailingBit(vec2<i32>(0i, 74913i)))));
    return 1205f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.yy, global0[_wgslsmith_index_u32(41450u, 28u)], u_input.a, Struct_1(false, true, true, global1.b.a))))))) + 1000f);
    global3 = array<vec4<bool>, 19>();
    var var_1 = select(!(!vec2<bool>(true, 0u < u_input.b)), select(select(!select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 28u)], false), vec2<bool>(global0[_wgslsmith_index_u32(global1.a.x, 28u)], true), vec2<bool>(false, global1.b.c)), !vec2<bool>(global1.b.b, false), global1.b.d), select(select(vec2<bool>(false, true), !vec2<bool>(global0[_wgslsmith_index_u32(25170u, 28u)], true), select(vec2<bool>(true, false), vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 28u)], true), vec2<bool>(true, false))), vec2<bool>(!global1.b.c, global1.b.b), global1.a.x > u_input.b), false), !vec2<bool>(!global1.b.b, true));
    let var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2, 1093f, var_2, var_2), vec4<f32>(280f, var_2, 396f, var_2))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, -544f, -655f, -405f) + vec4<f32>(var_2, -632f, var_0, var_0))))))));
    var var_4 = select(select(select(vec3<bool>(all(vec3<bool>(global1.b.b, true, true)), false, false), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.a.x, 28u)], global0[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 28u)], false, false), true), vec3<bool>(false, true, false), var_1.x), select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(global1.a.x, 28u)], global0[_wgslsmith_index_u32(15673u, 28u)]), vec3<bool>(var_1.x, global1.b.c, false), var_1.x), select(vec3<bool>(true, global1.b.c, true), vec3<bool>(true, false, false), true), global1.b.b)), !vec3<bool>(global0[_wgslsmith_index_u32(41658u, 28u)], false, all(vec3<bool>(true, true, global1.b.b))), select(!(!vec3<bool>(true, global1.b.d, false)), !vec3<bool>(false, global0[_wgslsmith_index_u32(36891u, 28u)], global1.b.a), var_1.x)), select(!vec3<bool>(global1.b.d, true, var_1.x && false), select(select(select(vec3<bool>(true, true, var_1.x), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), !vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 28u)], var_1.x, true), !var_1.x), !vec3<bool>(global1.b.b, global0[_wgslsmith_index_u32(u_input.b, 28u)], false), true), select(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 28u)], true, false), vec3<bool>(false, false, true), global0[_wgslsmith_index_u32(66015u, 28u)]), vec3<bool>(global1.b.c, func_2(), any(vec3<bool>(var_1.x, var_1.x, global1.b.c))), u_input.c.x <= (u_input.c.x ^ 71861i))), !all(select(!vec2<bool>(global1.b.d, false), select(vec2<bool>(global0[_wgslsmith_index_u32(global1.a.x, 28u)], var_1.x), vec2<bool>(global1.b.d, true), false), select(vec2<bool>(true, global1.b.a), vec2<bool>(true, global0[_wgslsmith_index_u32(global1.a.x, 28u)]), global0[_wgslsmith_index_u32(39221u, 28u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(-71657i), u_input.a.x, abs(_wgslsmith_clamp_vec2_i32(~u_input.c.wz, ~(-u_input.a.zz), vec2<i32>(u_input.c.x << (0u % 32u), _wgslsmith_mult_i32(u_input.c.x, u_input.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(var_2)), _wgslsmith_f_op_f32(func_1(u_input.a.zy, 61422u != global1.a.x, reverseBits(vec3<i32>(2147483647i, u_input.a.x, -19024i)), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 28u)], true, global1.b.b, true))), _wgslsmith_f_op_f32(var_3.x * var_2) > -211f))), ~_wgslsmith_mult_u32(~(~global1.a.x), func_3()));
}

