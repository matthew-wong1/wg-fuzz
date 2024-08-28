struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: array<vec4<f32>, 21>;

var<private> global2: Struct_2 = Struct_2(30396u, 1u, Struct_1(vec2<i32>(2501i, 1i), 32668i, 47168u), vec4<i32>(2147483647i, i32(-2147483648), -15272i, -1i), Struct_1(vec2<i32>(1i, 23057i), 2147483647i, 0u));

var<private> global3: array<u32, 15>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_5) -> u32 {
    let var_0 = Struct_4(Struct_3(~firstLeadingBit(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)), select(vec3<bool>(true, arg_0.x || true, all(vec3<bool>(false, true, arg_0.x))), select(arg_0, select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(true, arg_0.x, false), false), !arg_0.x), !(global2.c.a.x > arg_1.a.a.x)), ~(~_wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(1u, arg_1.a.c)))), Struct_2(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 18396u, 23460u, global3[_wgslsmith_index_u32(35614u, 15u)]), vec4<u32>(1u, 0u, arg_1.a.c, arg_1.a.c)), ~vec4<u32>(28520u, arg_1.a.c, 50876u, 4294967295u)) ^ 64996u, ~abs(global2.a), arg_1.a, ~(global2.d & vec4<i32>(-3164i, -2147483647i, -28607i, 37383i)) ^ -global2.d, global2.c), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(global2.a, 1u, 4294967295u, 12125u)), vec4<u32>(arg_1.a.c, u_input.a.x, arg_1.a.c, 0u) ^ ~vec4<u32>(1u, global2.a, global2.b, u_input.a.x)), 22u)] & ~(-select(40434i, 0i, arg_0.x)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.a.c, 0u, 25352u, global2.e.c), ~vec4<u32>(4294967295u, 42653u, 16762u, arg_1.a.c)), select(~vec4<u32>(global2.b, u_input.a.x, arg_1.a.c, u_input.a.x), ~vec4<u32>(4294967295u, global2.b, u_input.a.x, 12360u), true)), _wgslsmith_clamp_u32(34806u, _wgslsmith_sub_u32(0u, u_input.a.x), _wgslsmith_add_u32(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.c.c, 15u)], 15u)])) | min(~global2.b, max(global3[_wgslsmith_index_u32(0u, 15u)], arg_1.a.c))), vec4<bool>(arg_0.x, !(arg_0.x | true), all(!vec2<bool>(arg_0.x, arg_0.x)), any(!arg_0)));
    global1 = array<vec4<f32>, 21>();
    var var_1 = !select(!select(var_0.e.yx, !vec2<bool>(arg_0.x, false), var_0.e.yy), arg_0.zx, var_0.a.b.x);
    global2 = Struct_2(101357u, ~0u, Struct_1(var_0.b.d.xz, _wgslsmith_sub_i32(select(2147483647i, 1i, true), -_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_0.b.b, 22u)], global2.e.a.x, 2147483647i)), global2.a), (vec4<i32>(-1i) * -vec4<i32>(var_0.b.c.b, global0[_wgslsmith_index_u32(4294967295u, 22u)], global2.c.b, arg_1.a.a.x)) & global2.d, Struct_1(_wgslsmith_div_vec2_i32(~firstTrailingBit(global2.d.yy), arg_1.a.a), 26795i ^ global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 1u, u_input.a.x), vec4<u32>(27222u, var_0.b.c.c, u_input.a.x, global3[_wgslsmith_index_u32(var_0.b.b, 15u)])), 9781u), 22u)], global2.b));
    var var_2 = vec4<bool>(false, any(select(!select(var_0.e, vec4<bool>(arg_0.x, false, arg_0.x, var_1.x), var_1.x), !vec4<bool>(var_0.e.x, arg_0.x, var_1.x, arg_0.x), !arg_0.x)), !(-1i < _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_1.a.b, var_0.c, global2.c.b), ~global2.d)), arg_0.x);
    return global2.e.c ^ abs(_wgslsmith_add_u32(30456u, ~_wgslsmith_mult_u32(arg_1.a.c, 4294967295u)));
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_2(~10566u, func_3(vec3<bool>(all(vec4<bool>(true, false, false, true)), false, any(vec4<bool>(true, false, false, false))), Struct_5(Struct_1(global2.d.xy, global0[_wgslsmith_index_u32(60889u, 22u)], 0u))) >> (u_input.a.x % 32u), Struct_1(-global2.d.xw << (~(~vec2<u32>(u_input.a.x, u_input.a.x)) % vec2<u32>(32u)), 0i, abs(u_input.a.x)), reverseBits(global2.d), global2.e);
    var var_1 = var_0.e;
    global2 = var_0;
    global0 = array<i32, 22>();
    var var_2 = _wgslsmith_mult_u32(min(49072u | func_3(vec3<bool>(true, false, true), Struct_5(var_0.e)), abs(59588u)), 0u);
    return Struct_5(var_0.c);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_1) -> Struct_4 {
    var var_0 = select(vec4<bool>(true, !(!all(vec2<bool>(false, true))), any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), false), vec2<bool>(false, false), vec2<bool>(true, true))), _wgslsmith_dot_vec3_i32(~vec3<i32>(-21549i, arg_0.a.b, -1i), ~global2.d.xwx) > -_wgslsmith_mod_i32(8200i, global0[_wgslsmith_index_u32(arg_1.a.c, 22u)])), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(all(vec4<bool>(false, false, false, false)), true, false, true)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true))), vec4<bool>(false, false, all(vec4<bool>(true, true, true, true)), any(vec3<bool>(true, false, false)) == false)), false);
    global3 = array<u32, 15>();
    let var_1 = Struct_5(arg_2);
    global1 = array<vec4<f32>, 21>();
    var var_2 = -vec4<i32>(arg_2.a.x, func_2().a.a.x, global0[_wgslsmith_index_u32(arg_0.a.c & 0u, 22u)], arg_0.a.b);
    return Struct_4(Struct_3(~(~(~u_input.a)), !select(select(vec3<bool>(var_0.x, var_0.x, var_0.x), var_0.zzy, var_0.ywz), var_0.wwz, any(vec3<bool>(var_0.x, var_0.x, var_0.x))), vec2<u32>(_wgslsmith_mult_u32(arg_2.c, global2.b), ~_wgslsmith_add_u32(arg_1.a.c, 4294967295u))), Struct_2(arg_1.a.c, min(~(~53434u), ~(arg_2.c | 49413u)), Struct_1(arg_0.a.a, -firstLeadingBit(arg_2.a.x), abs(min(10342u, 0u))), vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.c.b, global2.c.a.x), firstLeadingBit(arg_1.a.b)), abs(~1i), var_2.x, ~(-var_2.x)), Struct_1(max(~global2.c.a, -vec2<i32>(-1i, -1i)), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(80360u, global3[_wgslsmith_index_u32(46930u, 15u)]), 22u)] ^ 29561i, 17807u)), ~arg_2.a.x, 17726u, !vec4<bool>(var_0.x, any(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), var_0.x, false));
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    let var_0 = !(!any(vec2<bool>(true, true)) & true) || (31455u > (_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(22494u, u_input.a.x, 21100u, global2.e.c)), _wgslsmith_add_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 15u)], arg_0.b.b, global2.b, global3[_wgslsmith_index_u32(arg_0.d, 15u)]), vec4<u32>(u_input.a.x, arg_0.b.a, 1u, u_input.a.x))) & ~global3[_wgslsmith_index_u32(u_input.a.x | 14025u, 15u)]));
    let var_1 = Struct_3(select(~select(countOneBits(arg_0.a.a), ~vec3<u32>(2945u, global3[_wgslsmith_index_u32(global2.b, 15u)], global2.b), arg_0.e.zyz), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, global2.e.c, 43724u), vec3<u32>(global2.b, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.a, 15u)], 15u)], 33593u), ~vec3<u32>(arg_0.d, arg_0.d, global2.b)), firstLeadingBit(max(arg_0.a.a, vec3<u32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], 13355u, 63680u)))), func_4(func_2(), func_2(), func_2().a).e.x), select(select(arg_0.a.b, arg_0.a.b, arg_0.e.ywz), func_4(Struct_5(Struct_1(global2.d.ww, -18939i, u_input.a.x)), func_2(), Struct_1(~arg_0.b.d.yz, arg_0.c, abs(41315u))).a.b, false), vec2<u32>(global3[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0.d & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.c.c, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46934u, 15u)], 15u)]), vec3<u32>(0u, global2.c.c, global3[_wgslsmith_index_u32(u_input.a.x, 15u)])), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(global2.e.c, 15u)], firstTrailingBit(global3[_wgslsmith_index_u32(u_input.a.x, 15u)]))), 15u)], u_input.a.x));
    let var_2 = !select(select(arg_0.e, vec4<bool>(any(vec3<bool>(var_1.b.x, true, false)), true, select(arg_0.a.b.x, var_1.b.x, var_1.b.x), arg_0.e.x), !(global2.b < 0u)), !arg_0.e, arg_0.e);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -637f))) + _wgslsmith_f_op_f32(round(2093f))))) + _wgslsmith_f_op_f32(f32(-1f) * -133f));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1672f), _wgslsmith_f_op_f32(floor(-1167f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -494f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -850f, 875f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-525f, -539f, 207f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -285f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1449f)))));
    return Struct_5(func_4(Struct_5(func_2().a), func_2(), global2.e).b.e);
}

fn func_1(arg_0: u32) -> Struct_4 {
    let var_0 = func_5(func_4(func_2(), func_2(), func_2().a));
    var var_1 = _wgslsmith_f_op_f32(1120f * _wgslsmith_f_op_f32(sign(-170f)));
    var var_2 = ~_wgslsmith_mod_vec3_i32(global2.d.www, global2.d.zyz);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(367f + -186f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1282f)), _wgslsmith_f_op_f32(select(-1326f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-637f)))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(332f, 866f)), 659f))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(1032f))))));
    var var_4 = func_4(func_2(), Struct_5(Struct_1(~vec2<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 22u)]), ~(var_0.a.b & var_0.a.b), ~43470u)), Struct_1(abs(-_wgslsmith_mult_vec2_i32(vec2<i32>(var_2.x, var_0.a.b), var_0.a.a)), max((var_0.a.a.x | var_0.a.a.x) & var_0.a.a.x, global2.e.a.x), ~1u)).b;
    return func_4(var_0, var_0, func_2().a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(global2.e);
    var var_1 = 41786u;
    var var_2 = vec4<u32>(~(~(~179u)), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a.c, u_input.a.x, global2.b, 27367u), vec4<u32>(10238u, 59376u, 4294967295u, global2.e.c)), ~vec4<u32>(0u, 145369u, global2.e.c, global2.a)) >> (~(~global3[_wgslsmith_index_u32(1942u, 15u)]) % 32u), countOneBits(_wgslsmith_mult_u32(global2.a, var_0.a.c)), abs(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a))) | abs(_wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1990u, 4294967295u, 50214u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global2.b, 15u)], 15u)]), vec4<u32>(89395u, u_input.a.x, u_input.a.x, 4294967295u)), vec4<u32>(48892u, global3[_wgslsmith_index_u32(79196u, 15u)], 8465u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(1u, 15u)], 0u, 4294967295u, var_0.a.c) >> (vec4<u32>(global3[_wgslsmith_index_u32(71389u, 15u)], var_0.a.c, 0u, var_0.a.c) % vec4<u32>(32u))), ~(vec4<u32>(var_0.a.c, 1u, global2.b, 49049u) & vec4<u32>(0u, 88026u, global2.b, global3[_wgslsmith_index_u32(global2.b, 15u)]))));
    var var_3 = func_1(41415u ^ (1u << ((57430u & ~global3[_wgslsmith_index_u32(global2.b, 15u)]) % 32u)));
    global2 = Struct_2(~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(14707u, var_3.a.a.x, 20911u, 0u), vec4<u32>(4294967295u, 0u, 14032u, global2.a)), func_2().a.c), 1101u, func_5(func_4(Struct_5(global2.c), func_5(func_1(var_3.b.e.c)), Struct_1(vec2<i32>(var_0.a.a.x, global2.c.a.x), 29250i, _wgslsmith_add_u32(1u, var_3.d)))).a, -(~global2.d), global2.e);
    let x = u_input.a;
    s_output = StorageBuffer(-1925f);
}

