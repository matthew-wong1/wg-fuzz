struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32>;

var<private> global1: array<vec4<i32>, 6> = array<vec4<i32>, 6>(vec4<i32>(16607i, 12808i, 9135i, 11209i), vec4<i32>(2147483647i, -71388i, -23314i, -1i), vec4<i32>(54998i, -17168i, -12777i, 55041i), vec4<i32>(-4683i, 0i, 11827i, 13120i), vec4<i32>(i32(-2147483648), 1i, 0i, 2147483647i), vec4<i32>(-1i, -44524i, 76243i, -1i));

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: array<vec2<bool>, 16>;

var<private> global4: array<bool, 21>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<bool>) -> vec4<bool> {
    global2 = !(!arg_3.yz);
    return select(vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(46310u, 4294967295u, u_input.b, 0u))), ~vec4<u32>(7392u, u_input.b, u_input.b, u_input.b)), 21u)], max(_wgslsmith_div_i32(u_input.c, 1i), 1i) >= countOneBits(u_input.c), !all(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.b, 21u)], arg_0.x)), _wgslsmith_mult_u32(~u_input.b, _wgslsmith_mod_u32(u_input.b, u_input.b)) <= u_input.b), select(select(select(select(vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 21u)], false, arg_0.x, global4[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<bool>(true, false, arg_0.x, false), arg_0.x), vec4<bool>(global2.x, global2.x, global4[_wgslsmith_index_u32(u_input.b, 21u)], true), true), vec4<bool>(all(vec3<bool>(global2.x, global2.x, global0[_wgslsmith_index_u32(u_input.b, 32u)])), arg_2 == arg_1.x, !global0[_wgslsmith_index_u32(u_input.b, 32u)], true), select(!vec4<bool>(false, false, global0[_wgslsmith_index_u32(9380u, 32u)], false), vec4<bool>(global4[_wgslsmith_index_u32(0u, 21u)], global2.x, false, true), !arg_3.x)), vec4<bool>(global2.x, false, !all(arg_3), false), select(!(!vec4<bool>(global4[_wgslsmith_index_u32(1u, 21u)], global4[_wgslsmith_index_u32(4049u, 21u)], false, true)), select(!vec4<bool>(true, global0[_wgslsmith_index_u32(58563u, 32u)], global2.x, global2.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)], false, true), global4[_wgslsmith_index_u32(u_input.b, 21u)]), !(!vec4<bool>(true, true, global4[_wgslsmith_index_u32(53668u, 21u)], true)))), arg_0.x);
}

fn func_2(arg_0: bool, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: vec3<bool>) -> vec2<u32> {
    global3 = array<vec2<bool>, 16>();
    let var_0 = Struct_4(Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(1u, u_input.b), abs(u_input.b), _wgslsmith_mult_u32(u_input.b, u_input.b), ~u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) << (vec4<u32>(u_input.b, 0u, u_input.b, u_input.b) % vec4<u32>(32u)), min(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), vec4<u32>(u_input.b, 28669u, 50442u, u_input.b))), ~select(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), vec4<u32>(6867u, u_input.b, u_input.b, u_input.b), vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 32u)], arg_3.x, true))), ~vec4<u32>(9613u, ~u_input.b, 25467u, abs(70395u)), ~(-_wgslsmith_mult_i32(0i, u_input.a.x)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 21822u, 27458u, 4294967295u), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)))), -u_input.a.x, Struct_2(select(select(select(vec4<bool>(global2.x, arg_3.x, global0[_wgslsmith_index_u32(20842u, 32u)], global4[_wgslsmith_index_u32(u_input.b, 21u)]), vec4<bool>(global4[_wgslsmith_index_u32(58100u, 21u)], true, arg_3.x, true), global4[_wgslsmith_index_u32(1u, 21u)]), !vec4<bool>(true, global2.x, false, false), vec4<bool>(global4[_wgslsmith_index_u32(0u, 21u)], arg_3.x, true, true)), vec4<bool>(!global0[_wgslsmith_index_u32(0u, 32u)], arg_0, true, true || arg_3.x), select(!vec4<bool>(true, global2.x, arg_0, false), func_3(arg_3.xz, vec4<f32>(1766f, 489f, arg_2.x, arg_2.x), arg_2.x, arg_3), vec4<bool>(global4[_wgslsmith_index_u32(u_input.b, 21u)], arg_3.x, global2.x, false))), Struct_1(vec4<u32>(97663u, ~u_input.b, ~1u, 1u), vec4<u32>(~u_input.b, u_input.b, 4435u, _wgslsmith_dot_vec2_u32(vec2<u32>(36644u, 1u), vec2<u32>(4294967295u, 38988u))), firstTrailingBit(~(-1i)), vec4<u32>(4294967295u, 4294967295u ^ u_input.b, ~u_input.b, ~u_input.b)), true, Struct_1(vec4<u32>(min(49209u, 4294967295u), u_input.b ^ u_input.b, ~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(10820u, 1u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 105592u))), select(vec4<u32>(u_input.b, u_input.b, u_input.b, 13676u), firstLeadingBit(vec4<u32>(4294967295u, u_input.b, 44196u, 1u)), false), u_input.a.x << (u_input.b % 32u), vec4<u32>(u_input.b, u_input.b >> (0u % 32u), _wgslsmith_add_u32(u_input.b, u_input.b), abs(54120u))), u_input.a.x));
    let var_1 = ~_wgslsmith_mod_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 2140u, u_input.b, 49283u), var_0.c.b.b) << (((var_0.c.b.b | vec4<u32>(89088u, 39951u, var_0.a.b.x, 10199u)) << (_wgslsmith_add_vec4_u32(var_0.a.d, vec4<u32>(u_input.b, var_0.c.b.b.x, u_input.b, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)), ~(~(~vec4<u32>(0u, u_input.b, u_input.b, var_0.a.a.x))));
    var var_2 = _wgslsmith_f_op_f32(round(arg_2.x));
    let var_3 = var_0.c.a.xzw;
    return var_1.xw;
}

fn func_1() -> Struct_3 {
    var var_0 = ~(~func_2(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(238f, 1057f, -915f, 898f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-447f, -669f, -932f, -311f))), vec3<bool>(true, global2.x, global2.x)) >> (select(vec2<u32>(4294967295u, ~13299u), vec2<u32>(4294967295u ^ u_input.b, 1u), !any(vec4<bool>(true, false, false, true))) % vec2<u32>(32u)));
    global4 = array<bool, 21>();
    global2 = vec2<bool>(!all(select(!vec3<bool>(true, global0[_wgslsmith_index_u32(66437u, 32u)], global0[_wgslsmith_index_u32(83515u, 32u)]), !vec3<bool>(false, global4[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(23142u, 32u)]), func_3(global3[_wgslsmith_index_u32(115694u, 16u)], vec4<f32>(140f, -1004f, -1165f, -1000f), 682f, vec3<bool>(global4[_wgslsmith_index_u32(u_input.b, 21u)], global0[_wgslsmith_index_u32(0u, 32u)], true)).x)), all(vec3<bool>(true, global0[_wgslsmith_index_u32(~u_input.b, 32u)], global0[_wgslsmith_index_u32(4294967295u, 32u)])));
    var var_1 = vec2<bool>(global2.x, true);
    global4 = array<bool, 21>();
    return Struct_3(Struct_1(_wgslsmith_clamp_vec4_u32(reverseBits(vec4<u32>(4294967295u, 4859u, u_input.b, 22512u)), ~vec4<u32>(var_0.x, var_0.x, 27436u, u_input.b), ~vec4<u32>(7213u, 0u, u_input.b, 63734u) << ((vec4<u32>(3973u, 19290u, 0u, var_0.x) << (vec4<u32>(u_input.b, var_0.x, 72314u, var_0.x) % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.b, ~5653u, 71896u, 7655u), ~reverseBits(vec4<u32>(var_0.x, 52617u, 26718u, 32695u))), _wgslsmith_dot_vec2_i32(select(vec2<i32>(1i, u_input.a.x), u_input.a, true) & -vec2<i32>(u_input.a.x, u_input.c), u_input.a), vec4<u32>(7902u, ~_wgslsmith_div_u32(u_input.b, u_input.b), 4294967295u, var_0.x)), Struct_1(vec4<u32>(~select(4294967295u, var_0.x, false), 32952u, _wgslsmith_mult_u32(u_input.b, ~0u), var_0.x), vec4<u32>(1u, ~u_input.b ^ select(var_0.x, u_input.b, true), ~55310u, var_0.x), -abs(select(1i, -1599i, false)), vec4<u32>(u_input.b, 1u, 1u, 1u) ^ ~abs(vec4<u32>(u_input.b, var_0.x, var_0.x, 4294967295u))));
}

fn func_4(arg_0: Struct_3) -> u32 {
    var var_0 = _wgslsmith_mult_vec4_u32(~countOneBits(_wgslsmith_clamp_vec4_u32(arg_0.b.a, arg_0.a.a, arg_0.b.a) & arg_0.a.d), _wgslsmith_mult_vec4_u32(~(arg_0.a.a | arg_0.b.b) & (vec4<u32>(u_input.b, u_input.b, 31074u, arg_0.a.d.x) & arg_0.b.a), arg_0.b.b));
    var var_1 = Struct_3(func_1().b, func_1().b);
    global4 = array<bool, 21>();
    var_1 = arg_0;
    var var_2 = ~(~(_wgslsmith_sub_vec3_u32(vec3<u32>(73079u, 51534u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(var_0.x, 1u, var_0.x))) & var_0.ywy));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(17941u, firstLeadingBit(min(u_input.b, 17755u)), func_4(func_1()), 22231u), firstTrailingBit(vec4<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(65401u, u_input.b), vec2<u32>(u_input.b, u_input.b)), _wgslsmith_sub_u32(u_input.b, 4294967295u), ~8567u)), ~max(firstTrailingBit(vec4<u32>(u_input.b, 0u, u_input.b, 33140u)), vec4<u32>(0u, u_input.b, 1u, 0u))), ~vec4<u32>(u_input.b, countOneBits(u_input.b), 1u, u_input.b), u_input.c, min(reverseBits(vec4<u32>(1u, u_input.b, 97065u, ~63913u)), ~(vec4<u32>(1u, u_input.b, u_input.b, 1u) ^ _wgslsmith_div_vec4_u32(vec4<u32>(59456u, u_input.b, 0u, u_input.b), vec4<u32>(0u, 32668u, u_input.b, u_input.b)))));
    global2 = !vec2<bool>(select(false, !(!global4[_wgslsmith_index_u32(var_0.b.x, 21u)]), true && global4[_wgslsmith_index_u32(23293u, 21u)]), true);
    global4 = array<bool, 21>();
    var var_1 = reverseBits(_wgslsmith_add_vec2_i32(u_input.a, ~min(u_input.a, vec2<i32>(59639i, u_input.a.x)))) | u_input.a;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(473f, _wgslsmith_f_op_f32(ceil(-1514f)), false & !global2.x))) + 539f);
    let var_3 = ~(firstLeadingBit(reverseBits(vec2<u32>(u_input.b, 1u)) | vec2<u32>(u_input.b, var_0.a.x)) & var_0.b.xw);
    var var_4 = Struct_3(Struct_1(abs(var_0.d), ~vec4<u32>(var_3.x, var_3.x, 39416u, 577u) << (func_1().a.d % vec4<u32>(32u)), ~57028i, vec4<u32>(reverseBits(_wgslsmith_add_u32(var_0.b.x, u_input.b)), func_4(Struct_3(Struct_1(var_0.d, var_0.a, u_input.a.x, vec4<u32>(var_0.d.x, var_0.d.x, u_input.b, 46448u)), var_0)), reverseBits(4294967295u), u_input.b)), var_0);
    let var_5 = global0[_wgslsmith_index_u32(countOneBits(1u), 32u)];
    var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(var_2, -342f)))) - var_2), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-685f + _wgslsmith_f_op_f32(f32(-1f) * -1566f)))), _wgslsmith_div_f32(var_2, 1441f)), vec3<u32>(108045u, countOneBits(func_4(func_1())), var_0.d.x));
}

