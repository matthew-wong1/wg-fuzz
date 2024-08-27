struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1142f, -2300f);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(true, 1i, vec4<bool>(true, false, true, false), -688f), Struct_1(true, 59312i, vec4<bool>(false, false, false, false), 1626f), Struct_1(true, 0i, vec4<bool>(false, true, true, true), 1882f), Struct_1(true, i32(-2147483648), vec4<bool>(true, true, false, true), -1238f));

var<private> global2: Struct_1;

var<private> global3: Struct_1;

var<private> global4: vec3<u32> = vec3<u32>(0u, 1u, 0u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(496f + global0.x))));
    let var_1 = !select(!global2.c, vec4<bool>(!global3.a, ~u_input.a.x <= 44542u, any(!vec4<bool>(false, global2.c.x, false, global2.c.x)), true), !select(vec4<bool>(global3.c.x, true, false, global3.a), global2.c, global2.c));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(global0.x)), _wgslsmith_f_op_f32(min(995f, global2.d)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global0.x))) * _wgslsmith_f_op_f32(-global2.d)) == _wgslsmith_f_op_f32(f32(-1f) * -749f), ~_wgslsmith_dot_vec4_i32(vec4<i32>(max(global3.b, global3.b), -7744i, abs(global2.b), reverseBits(-28003i)), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, global2.b, 2147483647i, u_input.b.x), vec4<i32>(-19094i, global3.b, global3.b, global2.b))), var_1, _wgslsmith_f_op_f32(min(global3.d, 229f)));
    var var_3 = true;
    return -(~(-2638i));
}

fn func_2() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-113f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-436f + global3.d))), _wgslsmith_f_op_f32(-global3.d), global2.d) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-598f))), global3.d, global2.d));
    let var_1 = global1[_wgslsmith_index_u32(~(~(~global4.x)), 4u)];
    global3 = Struct_1(!var_1.a, min(select(func_3(), -2147483647i, true), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), var_1.b, global3.b)), vec4<bool>(var_1.c.x, !var_1.a, true, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2.d + -1151f))));
    let var_2 = ~abs(~(vec3<i32>(global3.b, var_1.b, u_input.b.x) >> (u_input.a.wwz % vec3<u32>(32u)))) >> ((u_input.a.yyy ^ ~vec3<u32>(u_input.a.x, u_input.a.x, countOneBits(4294967295u))) % vec3<u32>(32u));
    var var_3 = var_1.c.xzz;
    return ~countOneBits(-_wgslsmith_div_i32(19268i, -var_1.b));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_1) -> vec3<bool> {
    let var_0 = vec4<i32>(_wgslsmith_mod_i32(arg_1.x, 22345i), _wgslsmith_sub_i32(func_2() ^ ((0i | arg_3.b) << ((0u | global4.x) % 32u)), 41486i), -2657i, 1i);
    var var_1 = !(!vec4<bool>(true, global2.d < _wgslsmith_f_op_f32(f32(-1f) * -499f), arg_0.x, _wgslsmith_f_op_f32(arg_3.d * -542f) <= _wgslsmith_f_op_f32(global3.d + global3.d)));
    global1 = array<Struct_1, 4>();
    global3 = Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(sign(arg_3.d)))))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -160f)) - arg_3.d), func_3(), !arg_3.c, _wgslsmith_f_op_f32(sign(global2.d)));
    let var_2 = u_input.a.yww;
    return !select(!global2.c.xzz, vec3<bool>(global4.x != u_input.c.x, var_1.x, all(global2.c) || (global2.a && false)), any(global2.c.yzx) && true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1[_wgslsmith_index_u32(1u, 4u)];
    global2 = Struct_1(global2.b != 30639i, global2.b | -5323i, !vec4<bool>(all(func_1(vec4<bool>(true, global2.c.x, global2.c.x, false), vec2<i32>(-9618i, u_input.b.x), global2.a, global1[_wgslsmith_index_u32(u_input.a.x, 4u)])), global2.c.x, true, !(1282f == global0.x)), -1073f);
    global4 = vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_mult_u32(abs(1u), ~global4.x), 7549u ^ global4.x), 0u, u_input.c.x);
    global4 = vec3<u32>(~global4.x, _wgslsmith_dot_vec2_u32(vec2<u32>(global4.x, 9088u), vec2<u32>(select(4294967295u, ~4294967295u, global3.a), _wgslsmith_clamp_u32(u_input.a.x, global4.x, ~28264u))), u_input.c.x);
    global3 = global1[_wgslsmith_index_u32(43906u, 4u)];
    let var_0 = _wgslsmith_f_op_f32(trunc(global0.x));
    let var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(14353u, select(u_input.a.x, global4.x, !(u_input.b.x < global2.b)), min(min(3133u, ~u_input.a.x), ~(global4.x << (31628u % 32u)))), ~countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.x, 1804u, 1312u), u_input.a.wxx)));
    let x = u_input.a;
    s_output = StorageBuffer(177f, 0i ^ _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(~2147483647i, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(292f)) * _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(global0.x * var_0));
}

