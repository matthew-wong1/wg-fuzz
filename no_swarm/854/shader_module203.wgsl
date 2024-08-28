struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, vec2<bool>(false, true), 1i);

var<private> global1: array<vec3<f32>, 9>;

var<private> global2: array<f32, 10> = array<f32, 10>(159f, -397f, -891f, -120f, 2152f, -471f, 201f, 923f, 1298f, -1056f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> i32 {
    global0 = Struct_1(!(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(49681u, 62398u, u_input.e.x, 22890u), vec4<u32>(48256u, 0u, 22519u, 3695u)), 10u)])) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1039f, 2143f, global0.b.x))))), select(!select(select(global0.b, global0.b, vec2<bool>(global0.b.x, global0.b.x)), vec2<bool>(global0.b.x, global0.a), true), global0.b, global0.b), -2147483647i);
    global0 = Struct_1(global0.a, global0.b, max(abs(i32(-1i) * -2147483647i), min(u_input.d, ~u_input.d)) & global0.c);
    var var_0 = Struct_1(global0.b.x, global0.b, -2147483647i);
    let var_1 = 530f;
    global0 = Struct_1(all(select(select(global0.b, vec2<bool>(global0.a, false), true), vec2<bool>(all(vec3<bool>(global0.a, global0.b.x, var_0.b.x)), false), true)), global0.b, -13881i);
    return i32(-1i) * -_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -1i), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.c, 2147483647i), vec2<i32>(u_input.b, var_0.c))), -vec2<i32>(global0.c, var_0.c));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = arg_1.b.ww;
    var var_1 = select(!select(!(!arg_1.b.yx), global0.b, select(true, arg_1.b.x, all(vec2<bool>(false, false)))), vec2<bool>(!global0.a, true), !vec2<bool>(all(select(vec2<bool>(global0.b.x, var_0.x), arg_1.b.xz, global0.b)), true));
    global0 = Struct_1(true, global0.b, u_input.d & _wgslsmith_dot_vec3_i32(select(-vec3<i32>(41019i, arg_0.a, global0.c), vec3<i32>(0i, global0.c, u_input.d), select(vec3<bool>(true, true, var_1.x), arg_0.b.xxz, arg_0.b.wxx)), select(vec3<i32>(u_input.b, global0.c, arg_0.a), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.a, -1i, global0.c), vec3<i32>(-399i, arg_1.a, global0.c)), var_0.x)));
    let var_2 = !(firstTrailingBit(8541u) < u_input.e.x);
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, u_input.a >> (1u % 32u), ~(u_input.a ^ 21910u)), vec4<u32>(min(min(u_input.e.x, u_input.e.x), firstTrailingBit(u_input.e.x)), _wgslsmith_sub_u32(4294967295u, u_input.a), _wgslsmith_clamp_u32(_wgslsmith_sub_u32(17173u, 0u), ~u_input.a, u_input.a), 105000u)), 10u)];
    return arg_0;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<i32>) -> vec2<bool> {
    var var_0 = -1222i;
    var var_1 = arg_0.b.x;
    var_0 = 40957i;
    let var_2 = func_3(Struct_3(func_2(), arg_0.b), arg_0);
    let var_3 = Struct_3(u_input.b, var_2.b);
    return !select(select(func_3(func_3(var_2, Struct_3(20208i, arg_0.b)), func_3(Struct_3(arg_1.x, var_2.b), var_2)).b.zw, func_3(var_2, var_2).b.yy, arg_0.b.wx), vec2<bool>(select(func_3(Struct_3(27443i, vec4<bool>(false, false, var_3.b.x, false)), Struct_3(var_3.a, vec4<bool>(arg_0.b.x, var_3.b.x, var_3.b.x, false))).b.x, all(arg_0.b.zww), any(vec4<bool>(false, false, false, false))), true), var_2.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-512f, -2251f))) < _wgslsmith_f_op_f32(-804f - 135f)), global0.b, u_input.d);
    global0 = Struct_1(global0.a, select(select(global0.b, select(!var_0.b, vec2<bool>(false, global0.b.x), !var_0.b), vec2<bool>(global0.b.x, false)), select(var_0.b, var_0.b, !(!global0.b)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(~global0.c, global0.c, -2147483647i, 1i) | countOneBits(vec4<i32>(var_0.c, -11358i, global0.c, 41894i)), -vec4<i32>(-2147483647i, global0.c, global0.c, -2147483647i) | vec4<i32>(-var_0.c, var_0.c, _wgslsmith_mult_i32(-2147483647i, var_0.c), abs(u_input.d))));
    var var_1 = select(func_1(Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -35282i, 1i, 45044i) & vec4<i32>(u_input.b, u_input.b, u_input.b, -2147483647i), vec4<i32>(u_input.b, 0i, 1i, global0.c)), select(!vec4<bool>(false, true, var_0.a, true), vec4<bool>(global0.b.x, false, false, false), !vec4<bool>(false, global0.a, global0.a, var_0.a))), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-11989i, -67680i, 34265i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -1i, -13631i), vec3<i32>(var_0.c, global0.c, -3859i))), vec3<i32>(-1i) * -vec3<i32>(global0.c, global0.c, global0.c))), !global0.b, global0.b);
    var var_2 = Struct_2(Struct_1(global0.b.x, func_1(func_3(func_3(Struct_3(u_input.b, vec4<bool>(var_1.x, global0.b.x, false, false)), Struct_3(-20331i, vec4<bool>(global0.b.x, global0.a, global0.b.x, true))), func_3(Struct_3(37712i, vec4<bool>(true, var_0.b.x, global0.b.x, var_1.x)), Struct_3(-1i, vec4<bool>(var_1.x, var_1.x, true, global0.a)))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, -88851i, -1i), vec3<i32>(947i, 4933i, u_input.b))), 43045i));
    let var_3 = vec4<i32>(40815i, global0.c, countOneBits(1i & ~u_input.b), -9445i);
    var var_4 = _wgslsmith_f_op_vec3_f32(select(global1[_wgslsmith_index_u32(~firstLeadingBit(u_input.c), 9u)], _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(35909u, 9u)] * vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 10u)], -1000f, global2[_wgslsmith_index_u32(u_input.c, 10u)])) + vec3<f32>(1000f, global2[_wgslsmith_index_u32(u_input.c, 10u)], global2[_wgslsmith_index_u32(0u, 10u)])) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(u_input.c, 9u)]))))), vec3<bool>(func_1(Struct_3(1i, !vec4<bool>(var_0.a, true, var_0.a, true)), var_3.xwx).x, true, var_1.x)));
    var var_5 = var_2.a;
    var var_6 = 20736i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.e.x, u_input.a, ~u_input.a, _wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(0u, 13643u))), _wgslsmith_clamp_vec4_u32(select(vec4<u32>(u_input.e.x, 4294967295u, u_input.a, u_input.a), vec4<u32>(0u, u_input.a, u_input.a, 1u), vec4<bool>(global0.b.x, true, var_5.b.x, global0.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(36837u, u_input.a, u_input.c, u_input.e.x), vec4<u32>(601u, 23555u, u_input.e.x, 1u)), ~vec4<u32>(16769u, 0u, u_input.a, 17718u)))), _wgslsmith_div_f32(750f, _wgslsmith_f_op_f32(sign(1000f))), ~(~84631u));
}

