struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1u, vec4<bool>(false, false, true, false), vec2<u32>(41856u, 55219u), 1656f);

var<private> global1: array<u32, 11> = array<u32, 11>(21487u, 1106u, 2131u, 1u, 4294967295u, 67557u, 0u, 0u, 47231u, 13142u, 4294967295u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_3) -> bool {
    global1 = array<u32, 11>();
    var var_0 = !all(arg_2.b.b);
    let var_1 = _wgslsmith_f_op_f32(-arg_2.b.d);
    var_0 = select(!select(all(vec2<bool>(arg_0.b.x, true)) | select(false, true, true), any(select(vec4<bool>(arg_2.b.b.x, false, false, arg_0.b.x), arg_2.b.b, false)), all(select(vec3<bool>(global0.b.x, true, arg_2.a), arg_2.b.b.ywz, vec3<bool>(false, global0.b.x, arg_0.b.x)))), global0.b.x, any(global0.b));
    var var_2 = arg_0.b.wx;
    return any(select(!vec3<bool>(arg_0.b.x, false, var_2.x), vec3<bool>(!all(vec2<bool>(true, arg_2.a)), any(!global0.b.zzw), all(!arg_0.b)), select(select(arg_2.b.b.xzy, !arg_0.b.xxx, false != arg_0.b.x), vec3<bool>(false, arg_2.b.b.x, var_2.x), select(vec3<bool>(false, false, true), !vec3<bool>(false, var_2.x, true), vec3<bool>(arg_2.a, false, true)))));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = Struct_1(~_wgslsmith_add_u32(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(4294967295u, 11u)], _wgslsmith_dot_vec4_u32(vec4<u32>(73330u, arg_0.c.x, u_input.a, global0.a), vec4<u32>(1099u, 0u, 6272u, u_input.a))), ~u_input.a), select(select(global0.b, vec4<bool>(-959f >= global0.d, all(global0.b), arg_0.b.x, !arg_0.b.x), arg_0.b), global0.b, func_3(arg_0, ~reverseBits(14830u), Struct_3(arg_0.b.x, arg_0))), ~vec2<u32>(~(~global0.a), 22740u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.d * global0.d))));
    global0 = arg_0;
    let var_0 = Struct_2(arg_0);
    let var_1 = var_0.a;
    global0 = Struct_1(1u, vec4<bool>(u_input.a <= (global0.c.x & min(23371u, u_input.a)), !func_3(Struct_1(global1[_wgslsmith_index_u32(4294967295u, 11u)], var_0.a.b, arg_0.c, -317f), u_input.a, Struct_3(arg_0.b.x, var_1)), all(!vec2<bool>(var_0.a.b.x, var_0.a.b.x)), any(arg_0.b.ww)), ~global0.c, -635f);
    return var_0.a.b.x;
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    global0 = Struct_1(countOneBits(4294967295u), vec4<bool>(global0.b.x, global0.b.x, any(global0.b.wwz), !(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, 2147483647i, -58236i), vec4<i32>(arg_1.x, -54257i, 0i, u_input.b)) < ~arg_0)), global0.c, _wgslsmith_f_op_f32(ceil(global0.d)));
    var var_0 = Struct_2(Struct_1(1u, arg_2, global0.c, -135f));
    global0 = Struct_1(_wgslsmith_mult_u32(var_0.a.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u | var_0.a.c.x, u_input.a | var_0.a.a, ~global0.a), ~vec3<u32>(var_0.a.a, global1[_wgslsmith_index_u32(global0.c.x, 11u)], global1[_wgslsmith_index_u32(0u, 11u)]))), !select(!(!global0.b), !arg_2, select(vec4<bool>(true, arg_2.x, true, global0.b.x), select(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x), vec4<bool>(true, false, global0.b.x, false), false), !vec4<bool>(var_0.a.b.x, arg_2.x, false, true))), firstTrailingBit(global0.c), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_0.a.d, -1595f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.d * 1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.d * -1199f), _wgslsmith_f_op_f32(2937f * global0.d)))))));
    let var_1 = Struct_3(arg_2.x, Struct_1(0u, vec4<bool>(!(false || arg_2.x), !any(var_0.a.b.yyy), arg_2.x, !(!var_0.a.b.x)), var_0.a.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-232f - var_0.a.d))));
    let var_2 = var_1.b;
    return Struct_1(global0.a, var_2.b, global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.d, _wgslsmith_f_op_f32(-910f + -195f), true)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.d))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    let var_0 = func_4(reverseBits(~abs(abs(-2147483647i))), ~_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(39456i, u_input.b, 1i, u_input.b), ~vec4<i32>(u_input.b, u_input.b, -39340i, -7448i), vec4<i32>(2147483647i, 0i, u_input.b, -2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(0i, u_input.b, 1i), 2147483647i, -2147483647i ^ u_input.b, select(u_input.b, -2147483647i, false))), select(!vec4<bool>(true, true, 1u > global0.c.x, arg_0.b.x), !vec4<bool>(func_2(Struct_1(arg_1.a, vec4<bool>(arg_0.b.x, false, false, true), arg_0.c, -1000f)), false, arg_0.b.x && global0.b.x, any(vec3<bool>(false, false, true))), !global0.b));
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    global0 = Struct_1(min(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(4294967295u, u_input.a), global0.c.x), reverseBits(~vec2<u32>(22047u, global0.c.x))), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 1u)), abs(vec2<u32>(u_input.a, 0u)))), arg_0.b, vec2<u32>(~29162u, _wgslsmith_clamp_u32(0u, ~7590u, 4294967295u) & 4294967295u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.d * -556f), _wgslsmith_div_f32(func_4(firstLeadingBit(0i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b) >> (vec4<u32>(var_0.a, u_input.a, 1u, 4294967295u) % vec4<u32>(32u)), func_4(2147483647i, vec4<i32>(u_input.b, u_input.b, 2147483647i, u_input.b), vec4<bool>(global0.b.x, false, true, global0.b.x)).b).d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * arg_0.d)))));
    var var_1 = arg_0.b.wxx;
    return _wgslsmith_f_op_f32(-global0.d);
}

fn func_5(arg_0: f32, arg_1: Struct_3) -> Struct_2 {
    global1 = array<u32, 11>();
    return Struct_2(Struct_1(22585u, !vec4<bool>(global0.b.x, true, true, true), arg_1.b.c, arg_1.b.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(_wgslsmith_mod_u32(1u, firstLeadingBit(global0.a) << ((u_input.a << (53156u % 32u)) % 32u)), select(!select(vec4<bool>(global0.b.x, true, true, global0.b.x), global0.b, global0.b), vec4<bool>(true, false, !global0.b.x, !global0.b.x), global0.b), _wgslsmith_div_vec2_u32(global0.c, vec2<u32>(global1[_wgslsmith_index_u32(u_input.a, 11u)], 52770u)) ^ vec2<u32>(_wgslsmith_add_u32(u_input.a, 4294967295u), 0u ^ global1[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1345f)), _wgslsmith_f_op_f32(347f * _wgslsmith_f_op_f32(global0.d + -1628f)))));
    var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(var_0.a, var_0.a))), Struct_3(-1000f <= _wgslsmith_f_op_f32(-global0.d), func_4(_wgslsmith_sub_i32(26125i, _wgslsmith_mod_i32(u_input.b, u_input.b)), _wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b, -2147483647i, u_input.b, 53659i), _wgslsmith_sub_vec4_i32(vec4<i32>(7609i, -28568i, 4990i, u_input.b), vec4<i32>(u_input.b, -12494i, 2147483647i, u_input.b)), ~vec4<i32>(59550i, u_input.b, 2147483647i, -31312i)), select(var_0.a.b, !global0.b, var_0.a.b.x))));
    var var_1 = u_input.a;
    var var_2 = Struct_2(Struct_1(~u_input.a, func_5(var_0.a.d, Struct_3(false, func_4(u_input.b, vec4<i32>(u_input.b, u_input.b, u_input.b, 2147483647i), var_0.a.b))).a.b, var_0.a.c, _wgslsmith_f_op_f32(step(global0.d, _wgslsmith_f_op_f32(1000f * global0.d)))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.d, var_2.a.d, -1061f, global0.d) + vec4<f32>(var_0.a.d, -987f, -1546f, 202f)), _wgslsmith_div_vec4_f32(vec4<f32>(1189f, 1536f, global0.d, 722f), vec4<f32>(790f, global0.d, global0.d, var_2.a.d)))) - vec4<f32>(_wgslsmith_f_op_f32(-809f + _wgslsmith_f_op_f32(func_1(Struct_1(u_input.a, vec4<bool>(var_0.a.b.x, var_0.a.b.x, true, var_2.a.b.x), global0.c, global0.d), var_2.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d * 817f)), global0.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a.d, 1246f)))) * vec4<f32>(_wgslsmith_div_f32(-911f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f * var_0.a.d) + _wgslsmith_div_f32(-252f, var_2.a.d))), -316f, _wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_f32(round(var_2.a.d)), Struct_3(false, Struct_1(15966u, var_0.a.b, vec2<u32>(10803u, 8465u), 666f))).a.d)));
    let var_4 = _wgslsmith_sub_u32(~(~u_input.a), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(var_0.a.c.x, 4294967295u, global1[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_mult_u32(u_input.a, 89963u)) | firstLeadingBit(~var_2.a.a), reverseBits(~1u)));
    let var_5 = -478f;
    let var_6 = !func_4(-7811i, -_wgslsmith_mod_vec4_i32(vec4<i32>(30558i, u_input.b, 2147483647i, 2147483647i) >> (vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(17440u, 11u)], 11u)], var_0.a.a, var_0.a.c.x, 141660u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 0i, 0i, 0i), vec4<i32>(u_input.b, u_input.b, u_input.b, 14357i), vec4<i32>(-38209i, u_input.b, u_input.b, -1i))), var_2.a.b).b.x;
    global0 = func_4(32256i ^ u_input.b, vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(~vec4<i32>(-41904i, u_input.b, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, -1i, -1i)), u_input.b, max(0i, -2147483647i) >> (func_5(120f, Struct_3(var_0.a.b.x, var_0.a)).a.c.x % 32u)) | -_wgslsmith_div_vec4_i32(vec4<i32>(2040i, -305i, u_input.b, -19869i), vec4<i32>(2147483647i, u_input.b, u_input.b, 1i) & vec4<i32>(-56703i, 47500i, 25437i, u_input.b)), var_2.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, abs(~(-67453i) | _wgslsmith_div_i32(u_input.b << (var_2.a.a % 32u), -u_input.b)), _wgslsmith_clamp_u32(12515u, countOneBits(reverseBits(abs(global0.a))), select(46126u, ~(~var_0.a.c.x), (-13714i == u_input.b) | all(var_0.a.b.wx))), _wgslsmith_f_op_f32(step(825f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-338f)) + -1176f))), _wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mult_u32(var_0.a.a, firstLeadingBit(0u)), max(4294967295u, _wgslsmith_mult_u32(var_0.a.c.x, u_input.a))), max(global0.a, 4294967295u)));
}

