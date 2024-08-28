struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_2, 18> = array<Struct_2, 18>(Struct_2(-19191i, Struct_1(vec3<i32>(-693i, 14768i, 23386i), true, 279f)), Struct_2(-30399i, Struct_1(vec3<i32>(24400i, -18690i, -27387i), false, -194f)), Struct_2(0i, Struct_1(vec3<i32>(0i, 1i, i32(-2147483648)), false, -414f)), Struct_2(0i, Struct_1(vec3<i32>(1i, -4071i, -24184i), true, 1631f)), Struct_2(0i, Struct_1(vec3<i32>(-8190i, 65829i, i32(-2147483648)), false, 1618f)), Struct_2(30951i, Struct_1(vec3<i32>(1i, i32(-2147483648), 0i), false, 1000f)), Struct_2(0i, Struct_1(vec3<i32>(1i, i32(-2147483648), 19729i), false, -1000f)), Struct_2(1i, Struct_1(vec3<i32>(44352i, -559i, -25444i), true, 778f)), Struct_2(20165i, Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -29352i), false, 1009f)), Struct_2(-59775i, Struct_1(vec3<i32>(1i, -39813i, 12983i), true, -697f)), Struct_2(-20099i, Struct_1(vec3<i32>(-10776i, 0i, i32(-2147483648)), true, -1000f)), Struct_2(-13848i, Struct_1(vec3<i32>(2147483647i, 1i, 0i), true, -221f)), Struct_2(-19892i, Struct_1(vec3<i32>(7436i, 32779i, 1i), true, 212f)), Struct_2(2147483647i, Struct_1(vec3<i32>(-1i, 1i, 19769i), false, 857f)), Struct_2(i32(-2147483648), Struct_1(vec3<i32>(22680i, -44011i, 0i), false, -857f)), Struct_2(2147483647i, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -1i), false, 250f)), Struct_2(1i, Struct_1(vec3<i32>(27290i, -33944i, -10371i), true, 760f)), Struct_2(i32(-2147483648), Struct_1(vec3<i32>(2619i, 21163i, 0i), false, -751f)));

var<private> global2: array<vec3<f32>, 26>;

var<private> global3: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(reverseBits(max(_wgslsmith_mod_u32(~u_input.b.x >> (~0u % 32u), (u_input.a & 4294967295u) | firstTrailingBit(16611u)), u_input.a)), 18u)];
    let var_1 = var_0.b;
    var var_2 = 1000f;
    global1 = array<Struct_2, 18>();
    global3 = Struct_2(max(i32(-1i) * -2147483647i, countOneBits(_wgslsmith_mult_i32(arg_1.a.x, var_1.a.x))), var_0.b);
    return global0.a.x;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec4<u32>) -> u32 {
    let var_0 = Struct_2(-(~global3.a), Struct_1(vec3<i32>(arg_0.x, global3.b.a.x, -(global3.b.a.x >> (0u % 32u))), global3.b.b, arg_1.c));
    var var_1 = ~firstTrailingBit(4294967295u);
    var var_2 = 1759f;
    var var_3 = var_0.b;
    let var_4 = !any(select(!select(vec3<bool>(true, var_3.b, true), arg_2.zwz, vec3<bool>(false, false, true)), vec3<bool>(arg_2.x && var_3.b, !arg_1.b, any(vec2<bool>(true, true))), all(!vec4<bool>(true, global3.b.b, false, arg_1.b))));
    return countOneBits(1u);
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = vec4<u32>(13042u, 1u, 11270u, func_4(-vec4<i32>(func_3(1i, global3.b), global0.a.x, _wgslsmith_mult_i32(-3915i, arg_0), -2147483647i), Struct_1(global0.a, !any(vec4<bool>(false, global3.b.b, global0.b, true)), _wgslsmith_f_op_f32(sign(global0.c))), !vec4<bool>(all(vec3<bool>(false, global3.b.b, false)), global0.c < 903f, u_input.a < u_input.a, all(vec3<bool>(global3.b.b, false, true))), _wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.b.x, 52098u, 0u, 43033u), ~countOneBits(vec4<u32>(u_input.b.x, u_input.a, u_input.b.x, u_input.b.x)))));
    var var_1 = u_input.b;
    global0 = Struct_1(~global3.b.a, global0.b, -1000f);
    var var_2 = -max(min(vec2<i32>(~(-43848i), 2147483647i), vec2<i32>(-2147483647i, global0.a.x)), reverseBits(~global3.b.a.zy << (~u_input.b.yy % vec2<u32>(32u))));
    let var_3 = global3.b.a;
    return global0.c;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    var var_0 = u_input.b.x;
    let var_1 = _wgslsmith_f_op_f32(func_2(~(arg_1.a.x ^ _wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, -1i, -51057i), global3.a))));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -685f), arg_2, _wgslsmith_f_op_f32(-global3.b.c), _wgslsmith_f_op_f32(2228f - -290f)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-130f, global0.c, var_1, -1274f) - vec4<f32>(-119f, 410f, -410f, global3.b.c))))))));
    let var_3 = !(all(select(select(vec2<bool>(true, global0.b), vec2<bool>(false, false), vec2<bool>(global0.b, true)), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, global0.b), vec2<bool>(arg_1.b, global3.b.b)))) || global3.b.b);
    global0 = Struct_1(global3.b.a, arg_1.b, _wgslsmith_f_op_f32(arg_1.c + -170f));
    return vec4<i32>(_wgslsmith_sub_i32(max(arg_1.a.x, select(global3.b.a.x, -2593i, false)) & _wgslsmith_sub_i32(i32(-1i) * -1i, arg_1.a.x), 0i), global0.a.x, max(arg_1.a.x, -arg_1.a.x), abs(-(_wgslsmith_dot_vec3_i32(global3.b.a, arg_1.a) & _wgslsmith_sub_i32(global0.a.x, -15138i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstTrailingBit(~func_1(true, global3.b, global0.c));
    global2 = array<vec3<f32>, 26>();
    var var_1 = global3.b.a.x;
    var_1 = (2147483647i & var_0.x) & -_wgslsmith_mod_i32(18797i, ~global0.a.x << (1u % 32u));
    global2 = array<vec3<f32>, 26>();
    var var_2 = Struct_2(firstLeadingBit(-global3.a), Struct_1(global3.b.a, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.c))));
    let var_3 = global0.a;
    let var_4 = Struct_1(global0.a, var_2.b.b & any(vec4<bool>(true, true | global0.b, false, all(vec4<bool>(true, var_2.b.b, global0.b, global0.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1025f)))));
    var var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_4.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(u_input.b.www), select(_wgslsmith_add_i32(_wgslsmith_clamp_i32(var_0.x, var_2.b.a.x, global0.a.x), _wgslsmith_clamp_i32(var_0.x, var_4.a.x, 8973i)) & global0.a.x, -9232i, false), -277f, (~firstLeadingBit(37677i) ^ -firstTrailingBit(-2147483647i)) | abs(abs(-20773i)), max(func_1(global3.b.b, var_4, _wgslsmith_f_op_f32(round(global3.b.c))).wz, _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_4.a.zz, vec2<i32>(var_4.a.x, var_3.x)), ~_wgslsmith_clamp_vec2_i32(var_3.yz, vec2<i32>(global3.a, var_2.a), var_3.xz))));
}

