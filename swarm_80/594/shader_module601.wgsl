struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 26> = array<vec2<u32>, 26>(vec2<u32>(4294967295u, 0u), vec2<u32>(23304u, 7919u), vec2<u32>(4294967295u, 0u), vec2<u32>(53265u, 12323u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 1353u), vec2<u32>(27575u, 0u), vec2<u32>(1u, 1u), vec2<u32>(0u, 1u), vec2<u32>(58691u, 13287u), vec2<u32>(23014u, 0u), vec2<u32>(111817u, 4294967295u), vec2<u32>(62537u, 99940u), vec2<u32>(3775u, 4294967295u), vec2<u32>(50598u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 31464u), vec2<u32>(10433u, 45165u), vec2<u32>(0u, 0u), vec2<u32>(9901u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 4968u), vec2<u32>(0u, 40678u), vec2<u32>(32001u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 3543u));

var<private> global1: vec4<u32> = vec4<u32>(1u, 0u, 1u, 4294967295u);

var<private> global2: array<Struct_3, 32>;

var<private> global3: i32;

var<private> global4: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec4<u32>) -> vec4<u32> {
    global1 = u_input.e;
    let var_0 = Struct_2(-24179i, Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a), _wgslsmith_add_i32(-(~global4.b), countOneBits(global4.b) | (global4.b & 0i)), _wgslsmith_f_op_f32(select(-247f, global4.c, false)), select(global4.d, global4.d, ~4294967295u > u_input.e.x)));
    global1 = _wgslsmith_mod_vec4_u32(~reverseBits(~u_input.e), vec4<u32>(countOneBits(firstLeadingBit(1u)), 4294967295u, ~27314u, 48185u));
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(var_0.b.a, vec2<f32>(global4.c, 374f))))) * _wgslsmith_f_op_vec2_f32(-var_0.b.a)), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-28882i, 2147483647i, var_0.b.b, global4.b), vec4<i32>(u_input.c, u_input.c, u_input.b, -2147483647i)), -vec4<i32>(var_0.a, -28252i, global4.b, -1i)), u_input.a.x, global4.b), _wgslsmith_f_op_f32(abs(1574f)), vec4<bool>(true, all(select(!vec4<bool>(true, global4.d.x, global4.d.x, global4.d.x), vec4<bool>(global4.d.x, false, var_0.b.d.x, var_0.b.d.x), var_0.b.d)), var_0.b.d.x, var_0.b.d.x));
    let var_1 = global1.x | 484u;
    return firstLeadingBit(select(vec4<u32>(_wgslsmith_dot_vec2_u32(max(u_input.e.xy, vec2<u32>(61670u, 4294967295u)), u_input.e.xy), _wgslsmith_add_u32(select(global1.x, var_1, true), _wgslsmith_mod_u32(66185u, 17054u)), arg_0.x, u_input.e.x), vec4<u32>(_wgslsmith_div_u32(var_1, 4294967295u), _wgslsmith_dot_vec2_u32(~u_input.e.yw, arg_0.xw), ~1u, u_input.d), all(vec3<bool>(true, false || global4.d.x, false))));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec4<u32>) -> f32 {
    let var_0 = global4.d.x;
    global3 = countOneBits(select(12623i, global4.b, arg_0.x == abs(u_input.b)));
    return _wgslsmith_f_op_f32(step(global4.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4.c)), -659f), _wgslsmith_f_op_f32(f32(-1f) * -384f))), 1000f))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> Struct_2 {
    global2 = array<Struct_3, 32>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(719f, arg_0, arg_3.x, -182f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(894f, -1000f, -1000f, global4.c))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1537f, 2211f, global4.a.x))))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(func_4(-u_input.a, !global4.d.x, func_3(u_input.e))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f - arg_0)), arg_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - -320f)))));
    let var_1 = countOneBits(global4.b) >= global4.b;
    let var_2 = arg_2;
    var var_3 = global4.d;
    return Struct_2(0i, Struct_1(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(696f, 1295f) * _wgslsmith_f_op_f32(step(var_0.x, -1431f)))), global4.b, -251f, global4.d));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec3<u32>) -> bool {
    global0 = array<vec2<u32>, 26>();
    var var_0 = func_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(global4.a.x)))), ~4294967295u, Struct_3(arg_1.b), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_f_op_f32(-global4.c)), arg_0.yy)));
    let var_1 = Struct_3(0i);
    var var_2 = u_input.e;
    var var_3 = _wgslsmith_add_vec2_u32(abs(vec2<u32>(global1.x, abs(29902u))), firstTrailingBit(~u_input.e.wy | _wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, var_2.x), u_input.e.zx, vec2<bool>(true, true)), ~u_input.e.xz)));
    return any(select(arg_1.d.wx, var_0.b.d.xz, select(global4.d.zy, select(select(arg_1.d.wy, var_0.b.d.zz, arg_1.d.x), vec2<bool>(arg_2.x, var_0.b.d.x), false), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global4.a)), i32(-1i) * -39754i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x)))), select(vec4<bool>(!(!global4.d.x), !func_1(vec3<f32>(580f, global4.c, global4.c), Struct_1(vec2<f32>(global4.c, -356f), u_input.a.x, 1128f, vec4<bool>(global4.d.x, global4.d.x, false, global4.d.x)), global4.d.yzy, global1.zzy), global4.d.x, true), !vec4<bool>(global4.d.x, u_input.c >= 48476i, global1.x == 83238u, global4.d.x), !any(!vec2<bool>(true, global4.d.x))));
    let var_0 = vec3<u32>(~2970u, 0u, u_input.e.x);
    var var_1 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global4.a.x, _wgslsmith_f_op_f32(select(global4.c, 1347f, false)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global4.a.x)), _wgslsmith_div_f32(global4.c, -1604f)))), 23490u, Struct_3((global4.b | _wgslsmith_dot_vec3_i32(vec3<i32>(71076i, -2147483647i, -60064i), u_input.a)) >> (_wgslsmith_clamp_u32(var_0.x, ~var_0.x, 1326u) % 32u)), vec2<f32>(_wgslsmith_f_op_f32(global4.c * _wgslsmith_f_op_f32(1f + global4.c)), global4.c)).b;
    var var_2 = (-u_input.a << (select(vec3<u32>(_wgslsmith_dot_vec2_u32(global0[_wgslsmith_index_u32(17505u, 26u)], global1.wz), firstTrailingBit(global1.x), 1u), abs(~vec3<u32>(30880u, 4294967295u, 1u)), !(!vec3<bool>(global4.d.x, false, false))) % vec3<u32>(32u))) >> (~abs(global1.zyy) % vec3<u32>(32u));
    var_2 = _wgslsmith_add_vec3_i32(u_input.a >> (global1.zwz % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, ~global4.b, _wgslsmith_sub_i32(_wgslsmith_sub_i32(var_1.b, var_2.x), 7940i << (global1.x % 32u))), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(var_2.x, var_2.x, 91573i, u_input.c), vec4<i32>(-1i, 2147483647i, u_input.a.x, -5296i) | vec4<i32>(7022i, -24696i, var_1.b, var_2.x)), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_2.x, 4152i, 6812i), vec4<i32>(global4.b, u_input.b, global4.b, 57308i), vec4<i32>(var_1.b, u_input.a.x, var_1.b, 2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 8972i, var_2.x, var_1.b), vec4<i32>(8643i, -2147483647i, 1i, u_input.b)))), 2147483647i, 1i, var_2.x), global0[_wgslsmith_index_u32(0u, 26u)]);
}

