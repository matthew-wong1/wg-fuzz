struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(368f, -191f, -409f, -1763f, -530f, 405f, -468f, -1491f, -1000f, -1000f, -1700f, 483f, -678f, 300f, 1860f, -413f, 450f, -252f, -1485f, -1365f, -225f, -257f, -1349f, 427f);

var<private> global1: Struct_2 = Struct_2(vec2<bool>(true, true), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, false)), -1361f);

var<private> global2: array<bool, 29>;

var<private> global3: array<i32, 22>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> bool {
    global1 = Struct_2(!select(select(!global1.c.a.xy, global1.d.a.zy, u_input.b <= -50338i), select(!global1.d.a.yz, global1.d.a.xx, vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 29u)], true)), global1.c.a.xz), Struct_1(global1.d.a), Struct_1(vec3<bool>(!(global2[_wgslsmith_index_u32(u_input.a, 29u)] & global2[_wgslsmith_index_u32(u_input.a, 29u)]), any(!global1.b.a), all(vec3<bool>(false, global1.d.a.x, global2[_wgslsmith_index_u32(4643u, 29u)])))), Struct_1(select(select(vec3<bool>(global1.c.a.x, global2[_wgslsmith_index_u32(u_input.c, 29u)], true), select(vec3<bool>(global1.b.a.x, global1.d.a.x, global2[_wgslsmith_index_u32(1u, 29u)]), global1.c.a, vec3<bool>(global1.c.a.x, global2[_wgslsmith_index_u32(49216u, 29u)], global1.c.a.x)), !global1.c.a), global1.d.a, global2[_wgslsmith_index_u32(~(u_input.a ^ u_input.a), 29u)])), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.e))), _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(u_input.a, 24u)])))));
    global3 = array<i32, 22>();
    var var_0 = !global1.c.a;
    var var_1 = 0u;
    var var_2 = Struct_2(vec2<bool>(!var_0.x, select(true, all(vec3<bool>(global1.a.x, global1.d.a.x, global2[_wgslsmith_index_u32(u_input.a, 29u)])), true) && select(global2[_wgslsmith_index_u32(61876u, 29u)] | global1.b.a.x, true, 1250f <= global1.e)), global1.c, Struct_1(select(!global1.c.a, !global1.c.a, true)), global1.d, _wgslsmith_f_op_f32(-global1.e));
    return !all(!(!(!vec4<bool>(global1.d.a.x, true, global2[_wgslsmith_index_u32(4294967295u, 29u)], global1.c.a.x))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: i32) -> f32 {
    global3 = array<i32, 22>();
    global1 = Struct_2(select(global1.a, vec2<bool>(func_3(), arg_1.a), false), Struct_1(!(!vec3<bool>(true, global1.c.a.x, false))), Struct_1(select(!(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a, 29u)], true, global2[_wgslsmith_index_u32(4294967295u, 29u)])), !(!global1.d.a), arg_1.a)), Struct_1(global1.d.a), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(6785u, 24u)]))));
    let var_0 = Struct_2(vec2<bool>(all(!select(vec3<bool>(global1.d.a.x, true, global1.a.x), vec3<bool>(arg_1.a, true, global1.c.a.x), vec3<bool>(false, false, false))), false), global1.b, global1.c, Struct_1(select(vec3<bool>(any(global1.d.a), false, true), select(select(vec3<bool>(true, global1.a.x, false), global1.c.a, true), !vec3<bool>(false, global1.c.a.x, true), select(global1.b.a, global1.b.a, true)), true)), -248f);
    var var_1 = -_wgslsmith_mod_vec2_i32(abs(vec2<i32>(-2147483647i, -1i)), _wgslsmith_mod_vec2_i32(arg_1.b.yy, arg_1.b.xy));
    var var_2 = Struct_5(Struct_4(Struct_3(arg_1.a, select(firstTrailingBit(vec3<i32>(u_input.b, arg_0, -1i)), arg_1.b, any(vec2<bool>(true, false)))), ~u_input.c, all(select(vec4<bool>(global1.a.x, global2[_wgslsmith_index_u32(u_input.c, 29u)], global1.d.a.x, false), vec4<bool>(arg_1.a, true, global1.d.a.x, false), true))));
    return 1000f;
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = 0i;
    global0 = array<f32, 24>();
    let var_1 = _wgslsmith_mod_u32(u_input.c, 1u);
    global2 = array<bool, 29>();
    var var_2 = -firstLeadingBit(~arg_1);
    return 0u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3) -> vec3<i32> {
    global3 = array<i32, 22>();
    let var_0 = vec4<u32>(func_4(arg_2, arg_2.b, abs(-vec2<i32>(u_input.b, -33572i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-647f, arg_1.e) + vec2<f32>(arg_0.e, -1154f)))), vec2<f32>(global1.e, _wgslsmith_f_op_f32(func_2(u_input.b, arg_2, arg_2.b.x))))), u_input.c ^ u_input.c, _wgslsmith_add_u32(~u_input.a, u_input.c), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(max(~vec4<u32>(u_input.a, 0u, 41637u, 0u), ~vec4<u32>(4294967295u, 1u, 37094u, u_input.a)), firstTrailingBit(vec4<u32>(u_input.c, 31449u, 4294967295u, u_input.a))), u_input.a, u_input.a));
    var var_1 = var_0.x;
    let var_2 = arg_2;
    global1 = Struct_2(select(!(!(!global1.a)), vec2<bool>(1u == ~var_0.x, arg_2.a & false), select(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(11572u, 29u)], arg_0.c.a.x), !arg_2.a), vec2<bool>(all(vec3<bool>(false, true, false)), all(vec3<bool>(arg_1.a.x, false, false))), vec2<bool>(!arg_1.c.a.x, true))), Struct_1(select(arg_0.d.a, arg_1.d.a, vec3<bool>(false, !arg_0.b.a.x, var_2.a))), arg_1.d, arg_1.c, arg_1.e);
    return vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(countOneBits(~arg_2.b), -_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.b.x, 0i, -3365i), arg_2.b), ~_wgslsmith_clamp_vec3_i32(arg_2.b, vec3<i32>(arg_2.b.x, -18308i, global3[_wgslsmith_index_u32(11786u, 22u)]), arg_2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 24>();
    var var_0 = ~_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 4108i, 42211i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 22u)], 18428i, u_input.b)), -vec3<i32>(-26730i, global3[_wgslsmith_index_u32(42835u, 22u)], global3[_wgslsmith_index_u32(93711u, 22u)])), select(func_1(Struct_2(global1.b.a.xx, global1.c, Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.c, 29u)], global2[_wgslsmith_index_u32(u_input.c, 29u)])), Struct_1(vec3<bool>(false, false, global1.d.a.x)), global0[_wgslsmith_index_u32(u_input.a, 24u)]), Struct_2(vec2<bool>(true, false), global1.c, Struct_1(vec3<bool>(global1.b.a.x, global1.a.x, global2[_wgslsmith_index_u32(4294967295u, 29u)])), Struct_1(vec3<bool>(global1.c.a.x, global1.d.a.x, true)), global1.e), Struct_3(false, vec3<i32>(0i, 30825i, 50303i))), vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 22u)], u_input.b, 5211i) >> (vec3<u32>(32000u, 1u, 39958u) % vec3<u32>(32u)), false)), vec3<i32>(2147483647i, firstLeadingBit(-4267i << (u_input.c % 32u)), (-32454i << (u_input.a % 32u)) ^ u_input.b));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, -1321f)))) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-370f, 2059f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1429f, -443f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e, _wgslsmith_f_op_f32(select(215f, global1.e, global2[_wgslsmith_index_u32(u_input.c, 29u)]))) - vec2<f32>(_wgslsmith_f_op_f32(-1740f * global0[_wgslsmith_index_u32(23968u, 24u)]), _wgslsmith_div_f32(global1.e, 1322f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)]), vec2<f32>(-506f, global0[_wgslsmith_index_u32(4294967295u, 24u)])))))))));
    var var_2 = abs(vec4<u32>(u_input.a, func_4(Struct_3(true, select(vec3<i32>(12103i, u_input.b, -1i), vec3<i32>(global3[_wgslsmith_index_u32(u_input.a, 22u)], u_input.b, 36458i), global1.d.a.x)), (vec3<i32>(global3[_wgslsmith_index_u32(u_input.c, 22u)], 72592i, 11287i) | vec3<i32>(u_input.b, u_input.b, -59180i)) << (abs(vec3<u32>(u_input.c, u_input.a, 4294967295u)) % vec3<u32>(32u)), -vec2<i32>(global3[_wgslsmith_index_u32(4294967295u, 22u)], 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0[_wgslsmith_index_u32(21627u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(570f, var_1.x) - vec2<f32>(var_1.x, 1191f)))), 1u, 79976u));
    var var_3 = Struct_5(Struct_4(Struct_3(false, ~(~vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(50131u, 22u)], 16103i))), ~(~u_input.a), -683f == global1.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-122f, global0[_wgslsmith_index_u32(var_2.x, 24u)], global0[_wgslsmith_index_u32(u_input.a, 24u)]), vec3<f32>(-775f, global0[_wgslsmith_index_u32(var_3.a.b, 24u)], var_1.x)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-225f, -301f, 387f), vec3<f32>(global1.e, -191f, -800f))), vec3<bool>(true, global1.a.x, false))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, global0[_wgslsmith_index_u32(4294967295u, 24u)], 543f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global0[_wgslsmith_index_u32(32335u, 24u)], global1.e)))), !global2[_wgslsmith_index_u32(~21044u, 29u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(598f, global0[_wgslsmith_index_u32(var_2.x, 24u)], 1772f, var_1.x)) - vec4<f32>(691f, global0[_wgslsmith_index_u32(107401u, 24u)], global0[_wgslsmith_index_u32(var_2.x, 24u)], global1.e)))), 2147483647i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-2891f, var_1.x)))), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~0u, 24u)] - global1.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.e))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -185f))))));
}

