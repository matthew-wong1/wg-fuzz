struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(20699i), Struct_3(3009i), Struct_3(i32(-2147483648)), Struct_3(-31069i), Struct_3(2147483647i), Struct_3(1i), Struct_3(-28860i), Struct_3(-22729i), Struct_3(2147483647i), Struct_3(-8364i), Struct_3(30287i), Struct_3(2147483647i), Struct_3(-20066i), Struct_3(2147483647i), Struct_3(19866i), Struct_3(i32(-2147483648)), Struct_3(-1i), Struct_3(7209i), Struct_3(2147483647i), Struct_3(-11255i), Struct_3(-12530i), Struct_3(38113i), Struct_3(i32(-2147483648)), Struct_3(0i), Struct_3(11157i), Struct_3(i32(-2147483648)), Struct_3(-38849i), Struct_3(-37084i), Struct_3(-33386i));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(true, true, true));

var<private> global3: array<vec2<bool>, 27> = array<vec2<bool>, 27>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global4: i32 = -1i;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: f32) -> vec3<i32> {
    var var_0 = Struct_2(Struct_1(select(vec3<bool>(all(global0.a), !global2.a.x, global2.a.x), select(global2.a, !global2.a, global2.a.x), global2.a)), ~vec4<u32>(max(~10428u, abs(arg_0.x)), 97095u, u_input.a, 14695u), Struct_1(vec3<bool>(global2.a.x, false, !any(vec2<bool>(true, global0.a.x)))), Struct_1(global2.a));
    var var_1 = 207f;
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * arg_2)) - -1619f)));
    var_1 = 1672f;
    var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(127f + arg_1.x) + 128f))));
    return abs(max((select(vec3<i32>(-42750i, 1i, 4253i), vec3<i32>(2147483647i, 24112i, -4184i), true) | _wgslsmith_mod_vec3_i32(vec3<i32>(-36385i, -23452i, -2147483647i), vec3<i32>(-27535i, 2147483647i, -1i))) | vec3<i32>(abs(2147483647i), max(25969i, -1i), 0i), _wgslsmith_add_vec3_i32(vec3<i32>(reverseBits(-60812i), i32(-1i) * -48322i, _wgslsmith_dot_vec4_i32(vec4<i32>(9129i, -2147483647i, 27326i, 2147483647i), vec4<i32>(0i, 27810i, -2147483647i, -18858i))), ~vec3<i32>(1i, 19559i, -1i))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_3 {
    global0 = Struct_4(!(!select(!vec2<bool>(global0.a.x, global2.a.x), !global0.a, any(global3[_wgslsmith_index_u32(u_input.a, 27u)]))), global0.b);
    var var_0 = vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(i32(-1i) * -1i, 7172i, ~1i), func_3(~(vec4<u32>(u_input.a, 38740u, 1u, u_input.a) << (vec4<u32>(u_input.a, 25156u, u_input.a, 4294967295u) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.x, global0.b.x, global0.b.x) * global0.b.wzz), 1655f)), _wgslsmith_sub_i32(arg_0.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(arg_0, abs(vec2<i32>(62414i, -1i))), arg_0.x)), 27449i << (u_input.a % 32u));
    var_0 = vec3<i32>(var_0.x, i32(-1i) * -52319i, 17474i);
    global2 = Struct_1(!(!select(vec3<bool>(global2.a.x, true, global0.a.x), select(vec3<bool>(false, global0.a.x, global0.a.x), global2.a, false), global2.a)));
    var var_1 = Struct_4(global2.a.xz, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global0.b.x, -125f), global0.b.x, global0.b.x, global0.b.x)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(sign(266f)), _wgslsmith_f_op_f32(global0.b.x * 220f), _wgslsmith_f_op_f32(round(global0.b.x)), global0.b.x))))));
    return global1[_wgslsmith_index_u32(u_input.a & ~4294967295u, 29u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<bool> {
    var var_0 = ~(~(~vec4<u32>(~1u, u_input.a ^ u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(26944u, 4294967295u, 4294967295u, 59616u), vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u)), u_input.a)));
    var var_1 = func_2(firstLeadingBit(vec2<i32>(~arg_1.a >> (~5377u % 32u), ~arg_3.x << (_wgslsmith_dot_vec2_u32(var_0.yw, vec2<u32>(var_0.x, 32350u)) % 32u))));
    let var_2 = Struct_2(arg_2, ~(vec4<u32>(_wgslsmith_add_u32(36498u, u_input.a), var_0.x >> (u_input.a % 32u), abs(u_input.a), u_input.a) >> (~(vec4<u32>(1u, 4294967295u, u_input.a, u_input.a) ^ vec4<u32>(u_input.a, var_0.x, var_0.x, u_input.a)) % vec4<u32>(32u))), Struct_1(select(global2.a, select(select(vec3<bool>(true, true, true), vec3<bool>(global0.a.x, arg_0.a.x, global0.a.x), false), !arg_2.a, !vec3<bool>(arg_2.a.x, false, false)), global2.a)), arg_0);
    let var_3 = arg_2;
    var var_4 = -firstTrailingBit(-firstTrailingBit(vec4<i32>(arg_3.x, 59956i, arg_1.a, 7i)) ^ arg_3);
    return vec3<bool>(true || !select(!global0.a.x, any(vec3<bool>(global2.a.x, false, var_3.a.x)), !arg_2.a.x), true, !all(vec4<bool>(all(vec3<bool>(true, var_3.a.x, global2.a.x)), 1i != var_1.a, !global0.a.x, false | global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.zxz;
    let var_1 = vec4<bool>(select(!any(!vec3<bool>(global0.a.x, global2.a.x, global2.a.x)), !all(func_1(Struct_1(vec3<bool>(false, false, false)), Struct_3(-1i), Struct_1(vec3<bool>(true, true, global2.a.x)), vec4<i32>(29846i, -11881i, -28936i, -56805i))), func_1(Struct_1(vec3<bool>(true, true, true)), Struct_3(-15528i), Struct_1(!global2.a), abs(vec4<i32>(4286i, 1i, 3125i, 13104i))).x), !func_1(Struct_1(func_1(Struct_1(global2.a), Struct_3(2147483647i), Struct_1(vec3<bool>(true, true, false)), vec4<i32>(-1i, -22316i, -980i, 14027i))), global1[_wgslsmith_index_u32(u_input.a, 29u)], Struct_1(select(vec3<bool>(global0.a.x, global2.a.x, true), global2.a, true)), min(-vec4<i32>(-1i, -1i, 4933i, 33240i), vec4<i32>(2147483647i, 36198i, -5875i, -5412i))).x, true, true);
    let var_2 = ~(~(~_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(29446i, -7153i, 2147483647i)), ~vec3<i32>(2147483647i, -10056i, 2147483647i))));
    let var_3 = Struct_1(select(!global2.a, vec3<bool>(false, var_1.x, any(vec3<bool>(global0.a.x, var_1.x, var_1.x))), u_input.a > ~abs(4294967295u)));
    let var_4 = select(-select(vec3<i32>(2147483647i, -2147483647i, 0i) & _wgslsmith_sub_vec3_i32(var_2, var_2), vec3<i32>(var_2.x, var_2.x, var_2.x) ^ var_2, false), ~vec3<i32>(-4777i, func_2(var_2.zz).a, var_2.x) ^ -_wgslsmith_mod_vec3_i32(var_2, ~var_2), !any(select(vec4<bool>(global0.a.x, true, false, global2.a.x), vec4<bool>(false, var_1.x, true, global2.a.x), select(var_1, var_1, vec4<bool>(false, true, false, global0.a.x)))));
    global0 = Struct_4(var_3.a.xx, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))))), _wgslsmith_f_op_f32(-638f * _wgslsmith_f_op_f32(round(global0.b.x))), 2111f, -272f));
    var var_5 = Struct_4(func_1(var_3, Struct_3(0i), Struct_1(vec3<bool>(all(global2.a), global2.a.x | true, var_3.a.x)), ~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-3151i, 36125i, -7438i, var_4.x), vec4<i32>(11339i, var_2.x, -2147483647i, var_2.x)), abs(vec4<i32>(2147483647i, var_2.x, -6097i, -2147483647i)))).xz, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0.b))), _wgslsmith_f_op_vec4_f32(sign(global0.b)), var_1)))));
    let var_6 = 70122i;
    let var_7 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.b.x))), global0.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -522f, var_2.xy);
}

