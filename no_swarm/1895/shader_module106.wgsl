struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec2<bool>,
    d: vec2<bool>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 28> = array<u32, 28>(15328u, 4294967295u, 0u, 50482u, 4294967295u, 68727u, 1u, 9837u, 1u, 29250u, 8617u, 4294967295u, 10776u, 4294967295u, 43654u, 0u, 4294967295u, 36888u, 4294967295u, 0u, 1u, 21712u, 29510u, 34583u, 4294967295u, 1u, 1u, 1u);

var<private> global1: array<bool, 29>;

var<private> global2: array<vec4<u32>, 6>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> u32 {
    var var_0 = -(_wgslsmith_clamp_i32(max(-2147483647i, -36613i), abs(2147483647i), i32(-1i) * -9157i) >> (1u % 32u)) << (~select(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 28u)], ~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 28u)]), global1[_wgslsmith_index_u32(0u, 29u)]) % 32u);
    let var_1 = Struct_1(true && all(select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(110125u, 29u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(8744u, 29u)], false, false, global1[_wgslsmith_index_u32(u_input.d, 29u)]), false), select(vec4<bool>(false, false, true, true), vec4<bool>(global1[_wgslsmith_index_u32(26157u, 29u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 28u)], 29u)], true, true), false), vec4<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 28u)], 29u)], false, false))), _wgslsmith_mult_vec2_u32(select(vec2<u32>(0u, u_input.a), ~u_input.b, !global1[_wgslsmith_index_u32(u_input.c.x, 29u)]) ^ _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c.yy, u_input.b), firstLeadingBit(u_input.b)), u_input.c.yy >> (select(~u_input.c.zy, vec2<u32>(39907u, 3239u), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 29u)])) % vec2<u32>(32u))), vec2<bool>(select(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(69567u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 28u)], 28u)]), 28u)], 28u)], 29u)], any(vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 29u)]))) | (global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(46400u, 28u)], 28u)], 29u)] || global1[_wgslsmith_index_u32(~61086u, 29u)]), any(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], false, false, global1[_wgslsmith_index_u32(45256u, 29u)]))), vec2<bool>(global1[_wgslsmith_index_u32(~u_input.b.x, 29u)], true), 72658u);
    let var_2 = var_1.a;
    let var_3 = abs(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(111741u, 28u)], 7383u) ^ vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 28u)]), var_1.b), 0u));
    let var_4 = Struct_1(any(!var_1.c), vec2<u32>(232u, global0[_wgslsmith_index_u32(1u, 28u)]), var_1.d, var_1.c, var_1.e);
    return _wgslsmith_div_u32(755u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_1.b.x, countOneBits(36903u), countOneBits(global0[_wgslsmith_index_u32(1u, 28u)]), _wgslsmith_div_u32(4294967295u, 4294967295u)), global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 6u)])));
}

fn func_2() -> u32 {
    let var_0 = Struct_1(true, vec2<u32>(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -223f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2340f), -1417f)), ~16144u), !vec2<bool>(!any(vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 28u)], 29u)])), false), vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 29u)]), u_input.a);
    var var_1 = _wgslsmith_mod_u32(~_wgslsmith_dot_vec4_u32((vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.x, 28u)], 28u)], u_input.b.x, u_input.a, 12197u) >> (vec4<u32>(u_input.b.x, 96388u, 1u, 31520u) % vec4<u32>(32u))) & countOneBits(global2[_wgslsmith_index_u32(111185u, 6u)]), _wgslsmith_mult_vec4_u32(vec4<u32>(12175u, var_0.b.x, 20307u, 20062u), global2[_wgslsmith_index_u32(0u, 6u)]) & abs(global2[_wgslsmith_index_u32(4294967295u, 6u)])), ~global0[_wgslsmith_index_u32(59595u, 28u)]);
    var var_2 = all(select(select(vec3<bool>(all(var_0.d), true, true), !vec3<bool>(var_0.a, var_0.d.x, false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.b.x, 28u)], 29u)])), !select(select(vec3<bool>(var_0.d.x, false, true), vec3<bool>(true, var_0.d.x, true), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 29u)], var_0.d.x)), !vec3<bool>(false, var_0.a, false), select(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(21895u, 28u)], 29u)], true, false), vec3<bool>(false, false, false), false)), false));
    let var_3 = Struct_1(all(vec3<bool>(false, false, var_0.c.x)), u_input.b, select(vec2<bool>(any(select(vec4<bool>(var_0.c.x, global1[_wgslsmith_index_u32(0u, 29u)], true, false), vec4<bool>(var_0.d.x, global1[_wgslsmith_index_u32(4294967295u, 29u)], var_0.d.x, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(41544u, 28u)], 29u)]), true)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0.b.x, 4294967295u, 0u), ~global0[_wgslsmith_index_u32(59451u, 28u)], 19279u), 29u)]), select(!var_0.c, vec2<bool>(true, all(vec3<bool>(false, var_0.d.x, var_0.c.x))), any(vec2<bool>(global1[_wgslsmith_index_u32(1u, 29u)], false))), all(vec3<bool>(!global1[_wgslsmith_index_u32(4294967295u, 29u)], false, any(vec3<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(7952u, 28u)], 29u)], var_0.d.x, var_0.c.x))))), select(var_0.c, !var_0.c, true), ~4294967295u);
    var var_4 = var_3.b;
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(var_4.x, min(~var_0.b.x, var_3.b.x)), ~0u);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<bool>) -> Struct_1 {
    var var_0 = !all(arg_3);
    let var_1 = Struct_1(all(!select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], true, global1[_wgslsmith_index_u32(60301u, 29u)], true), vec4<bool>(arg_0.a, global1[_wgslsmith_index_u32(arg_1, 29u)], true, global1[_wgslsmith_index_u32(arg_1, 29u)]), true), vec4<bool>(false, false, arg_3.x, arg_0.c.x), vec4<bool>(true, false, true, false))), u_input.c.xx, select(arg_0.c, vec2<bool>(arg_0.a, arg_3.x), arg_0.c), select(!select(arg_0.c, arg_0.c, arg_0.c), arg_3.zx, arg_3.x), ~(24532u & firstLeadingBit(~u_input.d)));
    var var_2 = global0[_wgslsmith_index_u32(arg_0.e, 28u)];
    let var_3 = reverseBits(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -15109i, -55045i, 2147483647i), vec4<i32>(-31957i, 5491i, 28335i, -2147483647i)), firstLeadingBit(-1i), 11257i), ~(-reverseBits(vec3<i32>(21759i, -1i, -2147483647i)))));
    global1 = array<bool, 29>();
    return Struct_1(!arg_3.x || global1[_wgslsmith_index_u32(arg_1, 29u)], select((~arg_0.b << (select(arg_0.b, vec2<u32>(4294967295u, 7293u), false) % vec2<u32>(32u))) | abs(~vec2<u32>(4294967295u, var_1.b.x)), vec2<u32>(var_1.b.x | (arg_1 >> (arg_1 % 32u)), ~1u), !all(!arg_3)), !select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 29u)], false), !var_1.d, false), vec2<bool>(arg_1 == 29979u, arg_2 < arg_2), arg_0.d), select(!arg_0.d, !var_1.c, arg_0.d), max(select(~var_1.b.x, u_input.d, true), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_clamp_u32(33830u, 0u, u_input.b.x)), _wgslsmith_clamp_u32(1u, func_2(), 25141u))));
}

fn func_1() -> u32 {
    var var_0 = func_4(Struct_1(true, vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 28u)], 28u)], 28u)], 0u), vec2<u32>(u_input.b.x, 1u)), _wgslsmith_div_u32(func_2(), ~u_input.a)), !(!select(vec2<bool>(false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(37674u, 28u)], 28u)], 29u)]), vec2<bool>(false, global1[_wgslsmith_index_u32(u_input.c.x, 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], true))), !select(!vec2<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 29u)]), select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 29u)], false), vec2<bool>(true, global1[_wgslsmith_index_u32(36011u, 29u)]), false), vec2<bool>(global1[_wgslsmith_index_u32(37215u, 29u)], false)), u_input.c.x | max(reverseBits(global0[_wgslsmith_index_u32(4294967295u, 28u)]), ~global0[_wgslsmith_index_u32(4294967295u, 28u)])), _wgslsmith_div_u32(~(~(~u_input.c.x)), _wgslsmith_mult_u32(38286u, u_input.c.x)), _wgslsmith_div_f32(1000f, -1794f), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d, 29u)], !global1[_wgslsmith_index_u32(29601u, 29u)] | global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(abs(1u), 28u)], 29u)], true), vec3<bool>(false, all(vec2<bool>(true, global1[_wgslsmith_index_u32(7382u, 29u)])), 1u < u_input.d), !any(select(vec2<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(50547u, 28u)], 28u)], 29u)], true), vec2<bool>(false, global1[_wgslsmith_index_u32(34711u, 29u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 29u)], true)))));
    global1 = array<bool, 29>();
    let var_1 = select(_wgslsmith_add_i32(select(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -43448i, -1i), vec3<i32>(53974i, -37894i, 60932i)), ~1i), -39078i, !(global1[_wgslsmith_index_u32(1u, 29u)] != true)), ~abs(abs(-2147483647i))), max(1i, ~(_wgslsmith_div_i32(-2147483647i, -2147483647i) << (1u % 32u))), true);
    global2 = array<vec4<u32>, 6>();
    global0 = array<u32, 28>();
    return var_0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 29>();
    global2 = array<vec4<u32>, 6>();
    global1 = array<bool, 29>();
    let var_0 = vec2<u32>(4294967295u, ~_wgslsmith_div_u32(1u, 1u));
    global2 = array<vec4<u32>, 6>();
    let var_1 = Struct_1(!(all(select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 29u)], true, false, false), vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 29u)], true, false, global1[_wgslsmith_index_u32(29505u, 29u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 29u)], true, global1[_wgslsmith_index_u32(1u, 29u)]))) || true), reverseBits(u_input.b), vec2<bool>(true, true), vec2<bool>(!(!global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(30840u, 28u)], 29u)]) & global1[_wgslsmith_index_u32(func_1(), 29u)], global1[_wgslsmith_index_u32(reverseBits(~111695u), 29u)] || true), 4294967295u ^ func_2());
    let var_2 = Struct_1(select(any(vec4<bool>(true, var_1.d.x == true, var_1.a, var_1.a)), true, any(var_1.d)), vec2<u32>(~func_1(), _wgslsmith_mult_u32(62364u, var_1.b.x) | 39435u) | vec2<u32>(max(~var_1.e, var_1.b.x >> (0u % 32u)), _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(var_0.x, 28u)], 39390u)), select(select(!var_1.d, !select(var_1.c, vec2<bool>(false, true), var_1.c.x), !var_1.d), select(func_4(var_1, 49210u << (var_0.x % 32u), _wgslsmith_f_op_f32(185f - -348f), select(vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 29u)], false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 28u)], 29u)]), vec3<bool>(var_1.d.x, global1[_wgslsmith_index_u32(0u, 29u)], true), vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.x, 29u)], false))).c, func_4(func_4(var_1, u_input.a, -566f, vec3<bool>(true, false, var_1.a)), 0u, -448f, select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 29u)], false, false), vec3<bool>(true, var_1.a, true), vec3<bool>(true, true, var_1.d.x))).c, var_1.d.x), !vec2<bool>(select(false, var_1.a, true), var_1.c.x)), select(vec2<bool>((var_1.a || true) & false, false), vec2<bool>(!var_1.c.x, true), !vec2<bool>(!var_1.c.x, true)), firstLeadingBit(_wgslsmith_add_u32(32000u, min(~var_1.e, 1u))));
    global1 = array<bool, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 57136i), vec2<i32>(-27215i, -24563i)), ~12908i, -20907i) & 0i, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-456f, -721f, false)) - _wgslsmith_f_op_f32(-316f * -1310f)), -470f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-125f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1000f, -528f, 400f)))))), vec4<u32>(4294967295u, _wgslsmith_clamp_u32(0u, 0u, global0[_wgslsmith_index_u32(4294967295u, 28u)]) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0[_wgslsmith_index_u32(3170u, 28u)], 43828u), vec3<u32>(u_input.b.x, 7473u, u_input.a)), _wgslsmith_div_u32(firstTrailingBit(~25073u), _wgslsmith_add_u32(u_input.c.x, u_input.d) >> (firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 28u)]) % 32u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.c.x, 0u), max(~var_2.e, ~30800u))), 1u, (vec3<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-23244i, -2147483647i, -4024i, -10805i), vec4<i32>(1i, -1i, 41420i, -1i)), reverseBits(70727i)) >> (~u_input.c % vec3<u32>(32u))) | -(~abs(vec3<i32>(-10628i, -47793i, 1821i))));
}

