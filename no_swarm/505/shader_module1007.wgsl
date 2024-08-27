struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: vec3<bool>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-60754i, vec4<f32>(3274f, -1143f, 635f, 401f), true, 103604u);

var<private> global1: i32 = 52598i;

var<private> global2: array<bool, 1> = array<bool, 1>(false);

var<private> global3: array<vec2<i32>, 6> = array<vec2<i32>, 6>(vec2<i32>(2147483647i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(71593i, -1i), vec2<i32>(0i, 16958i), vec2<i32>(77335i, 29524i), vec2<i32>(-13567i, 25987i));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(global3[_wgslsmith_index_u32(~firstLeadingBit(arg_0.d), 6u)], global3[_wgslsmith_index_u32(27297u, 6u)], vec2<i32>(34768i, arg_0.a)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i) << (_wgslsmith_div_vec3_u32(vec3<u32>(global0.d, 55796u, arg_0.d), u_input.a.xyw) % vec3<u32>(32u)), vec3<i32>(-15078i, global0.a, -1i) & -vec3<i32>(global0.a, 2147483647i, global0.a)), _wgslsmith_clamp_i32(firstLeadingBit(arg_0.a) | arg_0.a, abs(62366i << (0u % 32u)), _wgslsmith_div_i32(_wgslsmith_clamp_i32(arg_0.a, -1i, -1i), arg_0.a))));
    var var_0 = ~(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, _wgslsmith_div_u32(22983u, global0.d)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, 1u), reverseBits(u_input.a.yz))) | _wgslsmith_mult_vec2_u32(u_input.a.zw, vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.a.wzz, u_input.a.xyw), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.d, global0.d)))));
    var_0 = vec2<u32>(global0.d, 47513u);
    let var_1 = u_input.a;
    var var_2 = true;
    return arg_0.a;
}

fn func_2() -> vec2<u32> {
    global0 = Struct_1(max(global0.a, -2410i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global0.b - vec4<f32>(global0.b.x, global0.b.x, global0.b.x, 680f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(635f, -1397f, 233f, global0.b.x)))))), false, _wgslsmith_div_u32(4294967295u, (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), u_input.a.zy) & global0.d) >> ((_wgslsmith_div_u32(4294967295u, 46557u) ^ _wgslsmith_div_u32(0u, u_input.b)) % 32u)));
    global3 = array<vec2<i32>, 6>();
    var var_0 = vec2<bool>(global0.c, true);
    global1 = (select(global0.a, _wgslsmith_div_i32(1i >> (global0.d % 32u), -15950i), !(global0.c && var_0.x)) << (1u % 32u)) ^ countOneBits(min(firstLeadingBit(global0.a), func_3(Struct_1(-2147483647i, global0.b, global0.c, 48642u))));
    var var_1 = vec3<u32>(32901u, ~_wgslsmith_clamp_u32(u_input.a.x, ~(~98950u), u_input.a.x), ~(~abs(~0u)));
    return vec2<u32>(0u, ~(~24011u));
}

fn func_4(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_mult_i32(global0.a, global0.a), global0.b, global0.c, 13881u);
    var var_0 = Struct_1(-2147483647i, global0.b, !(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - -266f))) >= 1213f), ~arg_1.x);
    var var_1 = !select(!(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b, 1u)], global0.c, true, var_0.c), vec4<bool>(global0.c, global0.c, true, var_0.c), true)), select(select(!vec4<bool>(global0.c, false, false, var_0.c), select(vec4<bool>(false, false, true, true), vec4<bool>(true, global0.c, global2[_wgslsmith_index_u32(var_0.d, 1u)], false), global2[_wgslsmith_index_u32(4294967295u, 1u)]), global2[_wgslsmith_index_u32(u_input.b, 1u)]), vec4<bool>(all(vec3<bool>(global0.c, false, var_0.c)), true, global0.c & true, global0.b.x <= 436f), select(select(vec4<bool>(var_0.c, global2[_wgslsmith_index_u32(global0.d, 1u)], true, var_0.c), vec4<bool>(global2[_wgslsmith_index_u32(global0.d, 1u)], true, true, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.c, true, global2[_wgslsmith_index_u32(24652u, 1u)], var_0.c), vec4<bool>(false, true, true, true), vec4<bool>(global0.c, true, false, true)))), true);
    let var_2 = Struct_2(Struct_1(firstLeadingBit(_wgslsmith_mult_i32(_wgslsmith_div_i32(-2147483647i, var_0.a), 37130i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.b.x, global0.b.x, -1000f, 1555f), vec4<f32>(global0.b.x, var_0.b.x, global0.b.x, var_0.b.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, -114f, 478f, global0.b.x))))), 6117u == ~_wgslsmith_dot_vec2_u32(arg_1, u_input.a.xz), abs(_wgslsmith_clamp_u32(0u, max(30843u, 1u), 1u))), Struct_1(_wgslsmith_sub_i32(firstLeadingBit(-14565i), 19981i), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), 636f, _wgslsmith_f_op_f32(sign(-612f)), 717f), true, ~(~var_0.d) ^ max(u_input.a.x, ~u_input.b)), ~arg_1.x, select(!vec3<bool>(all(vec4<bool>(true, var_1.x, var_1.x, false)), global0.d < var_0.d, false), vec3<bool>(true, true, true), all(!vec4<bool>(false, var_0.c, true, true))), global0.b.x);
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(353f - -870f) - var_0.b.x), _wgslsmith_f_op_f32(1157f + _wgslsmith_f_op_f32(-var_2.e)))), _wgslsmith_f_op_f32(max(600f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(var_2.a.b.x, var_2.b.b.x)))))))), _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(select(-2003f, _wgslsmith_f_op_f32(1275f + _wgslsmith_f_op_f32(round(434f))), true || (-27093i <= var_0.a)))));
    return Struct_1(2147483647i, var_0.b, true, ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(37968u, arg_1.x, 51196u, var_0.d)), vec4<u32>(4294967295u, reverseBits(29711u), 0u, ~4948u)));
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    global0 = func_4(~_wgslsmith_sub_i32(1i, _wgslsmith_sub_i32(-global0.a, global0.a)), ~firstTrailingBit(func_2()));
    global1 = -9544i;
    let var_0 = ~min(reverseBits(_wgslsmith_div_u32(func_2().x, ~arg_0.x)), 1u);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(global0.b.x)))), -1384f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1723f - -1310f))), global0.b.x, _wgslsmith_f_op_f32(sign(global0.b.x)));
    global0 = func_4(_wgslsmith_mod_i32(-32284i, 1i), vec2<u32>(firstTrailingBit(51807u), countOneBits(1u)));
    return func_4(func_4(-global0.a, arg_0).a, vec2<u32>(u_input.a.x, 19872u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.a.x, 17841u), select(139538u, _wgslsmith_mod_u32(global0.d, 4294967295u), global0.c)), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a.zz, vec2<u32>(u_input.a.x, 0u)), ~vec2<u32>(u_input.a.x, global0.d))));
    global1 = func_3(Struct_1(func_3(func_1(vec2<u32>(u_input.b, u_input.b))), var_0.b, (~global0.d == 74604u) | func_4(var_0.a, select(vec2<u32>(global0.d, u_input.a.x), vec2<u32>(21994u, global0.d), false)).c, 10920u));
    global3 = array<vec2<i32>, 6>();
    global0 = func_4(1i | _wgslsmith_sub_i32(global0.a, -6600i), vec2<u32>(_wgslsmith_mult_u32(~(~var_0.d), ~_wgslsmith_mod_u32(global0.d, 10385u)), 1177u));
    let var_1 = select(!select(vec3<bool>(var_0.c, global2[_wgslsmith_index_u32(16118u, 1u)], true), select(vec3<bool>(var_0.c, var_0.c, global2[_wgslsmith_index_u32(var_0.d, 1u)]), !vec3<bool>(var_0.c, global2[_wgslsmith_index_u32(global0.d, 1u)], false), vec3<bool>(var_0.c, true, var_0.c)), false), vec3<bool>(true, global2[_wgslsmith_index_u32(global0.d, 1u)], any(select(vec4<bool>(false, global0.c, global0.c, global2[_wgslsmith_index_u32(var_0.d, 1u)]), vec4<bool>(var_0.c, var_0.c, global0.c, false), !vec4<bool>(global0.c, true, false, true)))), true);
    let var_2 = ~_wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(~firstTrailingBit(vec3<i32>(var_0.a, global0.a, var_0.a)), vec3<i32>(func_1(u_input.a.wz).a, 1i, var_0.a >> (4294967295u % 32u))), (select(vec3<i32>(global0.a, var_0.a, var_0.a), vec3<i32>(0i, -2147483647i, 2147483647i), vec3<bool>(global0.c, global0.c, true)) & -vec3<i32>(12490i, 2147483647i, -61445i)) >> (~reverseBits(u_input.a.wxx) % vec3<u32>(32u)), vec3<i32>(2147483647i, min(-global0.a, global0.a), func_3(Struct_1(global0.a, global0.b, true, 5638u))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(global3[_wgslsmith_index_u32(reverseBits(0u) >> (_wgslsmith_add_u32(var_0.d, global0.d ^ 0u) % 32u), 6u)]), min(_wgslsmith_mod_vec4_i32(~select(vec4<i32>(2147483647i, global0.a, global0.a, 0i), vec4<i32>(2147483647i, 2147483647i, var_2.x, 1i), true), ~vec4<i32>(2147483647i, var_0.a, 1i, 16316i) | (vec4<i32>(global0.a, var_2.x, -2147483647i, -51059i) << (vec4<u32>(global0.d, global0.d, 4079u, global0.d) % vec4<u32>(32u)))), vec4<i32>(-15077i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global0.a, -2147483647i), vec2<i32>(-44680i, var_2.x)), reverseBits(var_2.x) ^ func_3(var_0), global0.a)), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), 16534u);
}

