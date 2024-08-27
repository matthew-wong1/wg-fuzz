struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: u32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -434f;

var<private> global1: Struct_1;

var<private> global2: array<bool, 25>;

var<private> global3: Struct_4 = Struct_4(vec2<u32>(52061u, 4294967295u), vec2<bool>(true, false), vec3<f32>(717f, 583f, 763f), 29429u, -199f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = firstLeadingBit(arg_1);
    let var_1 = Struct_2(global3.a.x >> (select(max(1u, ~global3.d), u_input.b, !(!global2[_wgslsmith_index_u32(47256u, 25u)])) % 32u), true, firstLeadingBit(_wgslsmith_add_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(global3.a.x, 0u), vec2<u32>(46392u, 1u)))), _wgslsmith_div_u32(~(~61450u), _wgslsmith_div_u32(global3.a.x, ~global3.d)) << (34314u % 32u));
    var var_2 = var_1.c;
    let var_3 = var_1;
    var_2 = 0u | reverseBits(7126u | u_input.b);
    return -683f;
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_4) -> u32 {
    var var_0 = Struct_3(Struct_1(global1.a, global3.b));
    var var_1 = Struct_3(var_0.a);
    var var_2 = arg_1;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(Struct_3(var_1.a), _wgslsmith_add_i32(u_input.c, u_input.c))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.x + var_0.a.a.x))), u_input.b == _wgslsmith_div_u32(arg_1.d, 4294967295u))) + _wgslsmith_div_f32(683f, 2491f)), _wgslsmith_f_op_f32(floor(var_1.a.a.x)));
    let var_4 = _wgslsmith_div_i32(max(u_input.a | countOneBits(-2147483647i), _wgslsmith_clamp_i32(-_wgslsmith_add_i32(u_input.c, u_input.c), 2147483647i, -4500i)), _wgslsmith_sub_i32(u_input.a, _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.a | 2147483647i, _wgslsmith_clamp_i32(-49656i, -64661i, -58701i)), -abs(1555i))));
    return _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(~102160u, u_input.b, min(60995u, 6590u), arg_0.x), _wgslsmith_sub_vec4_u32(~(vec4<u32>(0u, 0u, arg_0.x, 4294967295u) & vec4<u32>(8447u, arg_1.a.x, 1u, var_2.d)), _wgslsmith_add_vec4_u32(select(vec4<u32>(global3.d, global3.d, 1u, 95675u), vec4<u32>(arg_1.a.x, global3.d, u_input.b, var_2.d), vec4<bool>(var_1.a.b.x, var_1.a.b.x, global1.b.x, false)), select(vec4<u32>(arg_0.x, var_2.d, 0u, global3.d), vec4<u32>(global3.d, arg_1.d, 63727u, var_2.d), vec4<bool>(true, false, global3.b.x, global1.b.x))))), vec4<u32>(~(~global3.d), arg_1.a.x, arg_1.a.x, u_input.b) & ~vec4<u32>(u_input.b, ~var_2.a.x, select(u_input.b, 0u, var_1.a.b.x), ~0u));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: Struct_4, arg_3: Struct_4) -> vec4<f32> {
    global0 = global3.e;
    return global1.a;
}

fn func_1() -> vec2<bool> {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(~vec4<u32>(u_input.b >> (u_input.b % 32u), abs(global3.a.x), select(global3.a.x, 1u, true), u_input.b ^ u_input.b), vec2<i32>(-1i) * -(~vec2<i32>(u_input.c, u_input.a)), Struct_4(vec2<u32>(_wgslsmith_div_u32(1u, 7455u), global3.a.x), select(!global3.b, !global3.b, global3.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.c)), global3.d, _wgslsmith_f_op_f32(ceil(620f))), Struct_4(vec2<u32>(func_2(vec3<u32>(19989u, 2142u, global3.a.x), Struct_4(vec2<u32>(10980u, 1u), global1.b, vec3<f32>(global3.e, global3.e, -2784f), 4294967295u, -565f)), _wgslsmith_dot_vec2_u32(global3.a, global3.a)), global3.b, global1.a.xwy, u_input.b, global1.a.x))), vec4<f32>(global3.c.x, global3.e, _wgslsmith_f_op_f32(max(-888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + -951f)))), global1.a.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1307f, _wgslsmith_f_op_f32(f32(-1f) * -519f), 270f, var_0.x)), vec2<bool>(global3.b.x || global3.b.x, global2[_wgslsmith_index_u32(~(~u_input.b), 25u)]));
    var var_2 = var_1;
    let var_3 = vec2<bool>(false, all(select(vec4<bool>(true, global1.b.x, true, global1.b.x), select(select(vec4<bool>(global3.b.x, true, global3.b.x, false), vec4<bool>(var_2.b.x, true, true, global2[_wgslsmith_index_u32(28468u, 25u)]), global1.b.x), !vec4<bool>(var_1.b.x, var_2.b.x, global2[_wgslsmith_index_u32(62248u, 25u)], global2[_wgslsmith_index_u32(22332u, 25u)]), !vec4<bool>(var_1.b.x, true, false, global1.b.x)), all(select(vec2<bool>(false, false), vec2<bool>(false, true), var_2.b.x)))));
    let var_4 = -_wgslsmith_div_vec3_i32(-vec3<i32>(27332i, 20757i, i32(-1i) * -3809i), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.a, -41935i), firstLeadingBit(vec3<i32>(31985i, 0i, u_input.c) ^ vec3<i32>(2147483647i, 1i, u_input.a))));
    return vec2<bool>(_wgslsmith_add_i32(~u_input.a << ((u_input.b & global3.a.x) % 32u), reverseBits(-17954i)) >= u_input.c, any(select(select(!vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 25u)], false), select(vec3<bool>(var_2.b.x, global2[_wgslsmith_index_u32(global3.a.x, 25u)], false), vec3<bool>(global1.b.x, true, false), vec3<bool>(true, var_1.b.x, global1.b.x)), all(var_3)), select(vec3<bool>(false, var_3.x, false), vec3<bool>(global2[_wgslsmith_index_u32(70028u, 25u)], true, false), vec3<bool>(var_3.x, global3.b.x, true)), true)));
}

fn func_5(arg_0: u32, arg_1: Struct_4, arg_2: vec4<bool>) -> vec2<bool> {
    global1 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(global1.a)), global1.a, !(!arg_2.x))), select(global1.b, !select(select(vec2<bool>(arg_2.x, true), arg_2.zx, vec2<bool>(false, global3.b.x)), !global3.b, false), global1.b));
    global1 = Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-2205f, global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1608f) + -1624f), _wgslsmith_f_op_f32(abs(719f))), global1.a), vec2<bool>(true, arg_1.b.x));
    let var_0 = !select(false, true, !func_1().x);
    let var_1 = vec2<bool>(arg_1.b.x, all(!(!arg_2.wwx)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global1.a, vec4<f32>(1000f, 142f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(global1.a.x)), global3.c.x)), global3.c.x), !arg_2)), select(vec2<bool>(true, arg_1.b.x), var_1, true));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 25>();
    var var_0 = Struct_2(abs(26245u), any(!(!select(vec4<bool>(global1.b.x, global3.b.x, true, global3.b.x), vec4<bool>(global2[_wgslsmith_index_u32(0u, 25u)], global3.b.x, true, false), vec4<bool>(false, global1.b.x, global3.b.x, true)))), firstTrailingBit(_wgslsmith_mod_u32(1u, firstTrailingBit(0u >> (1u % 32u)))), 27838u);
    var var_1 = any(func_5(var_0.d, Struct_4(global3.a, select(vec2<bool>(false, true), vec2<bool>(global3.b.x, false), func_1()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.x, 1639f, -590f)), global3.a.x, -431f), select(!vec4<bool>(global3.b.x, true, true, global2[_wgslsmith_index_u32(u_input.b, 25u)]), !vec4<bool>(global1.b.x, false, global2[_wgslsmith_index_u32(var_0.c, 25u)], global1.b.x), !var_0.b)));
    let var_2 = -vec4<i32>(firstTrailingBit(countOneBits(u_input.a)) ^ (-u_input.c >> (countOneBits(global3.a.x) % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -30612i), vec3<i32>(1i, 1i, 1i)), u_input.c, u_input.c);
    var var_3 = firstLeadingBit(_wgslsmith_mod_u32(13011u, var_0.d));
    let var_4 = !select(!vec4<bool>(22614u <= global3.a.x, select(global3.b.x, global2[_wgslsmith_index_u32(72415u, 25u)], global1.b.x), true, true), select(!vec4<bool>(global1.b.x, true, var_0.b, var_0.b), !vec4<bool>(true, var_0.b, false, false), vec4<bool>(var_0.b, var_0.b, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_0.d, 1u, 0u), 25u)], any(vec2<bool>(false, true)))), true);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, ~firstTrailingBit(vec4<u32>(1u, var_0.d, ~103711u, 48737u)), vec4<u32>(~((var_0.d << (var_0.c % 32u)) << (~u_input.b % 32u)), ~_wgslsmith_mod_u32(1u, _wgslsmith_sub_u32(u_input.b, var_0.d)), func_2(_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(6247u, 93152u, u_input.b), vec3<u32>(4294967295u, var_0.a, global3.d)), ~vec3<u32>(global3.a.x, 4294967295u, 75324u)), Struct_4(vec2<u32>(global3.a.x, 0u), select(vec2<bool>(var_0.b, false), global1.b, global3.b), _wgslsmith_f_op_vec3_f32(-global3.c), ~global3.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), var_0.a), abs(reverseBits(firstTrailingBit(vec3<u32>(4294967295u, var_0.d, 0u)))), ~1i);
}

