struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 25>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec3<f32>) -> vec3<f32> {
    let var_0 = ~_wgslsmith_add_u32(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 92206u, 31876u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 25u)], 25u)]), abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 25u)], 25u)], 60637u, 46881u)))), countOneBits(~1u));
    var var_1 = vec2<bool>(true, true);
    global0 = array<u32, 25>();
    var_1 = select(vec2<bool>(true, !(_wgslsmith_mult_u32(0u, var_0) > 14085u)), !select(select(select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, true), vec2<bool>(true, var_1.x)), vec2<bool>(var_1.x, var_1.x), vec2<bool>(true, var_1.x)), vec2<bool>(true, true), !(!var_1.x)), var_1.x);
    var var_2 = vec2<i32>(reverseBits(i32(-1i) * -3238i), ~0i) >> (~(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(var_0, 25u)]) ^ vec2<u32>(var_0, 17625u), vec2<u32>(var_0, 18332u))) % vec2<u32>(32u));
    return vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(floor(arg_0.x)), -1041f);
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec2<bool>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.c.a.x, -972f, 684f), vec3<f32>(_wgslsmith_f_op_f32(325f * _wgslsmith_f_op_f32(select(arg_2.c.a.x, arg_0, true))), _wgslsmith_f_op_f32(-arg_2.c.a.x), arg_0)), 0u);
    return 16588u;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    let var_0 = u_input.b ^ (-2147483647i >> (_wgslsmith_sub_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1371u, 25u)], 25u)], global0[_wgslsmith_index_u32(67897u, 25u)]) >> (36704u % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b, arg_1.b, 0u, arg_1.b), vec4<u32>(39600u, 35413u, 9207u, 4294967295u)), 4294967295u << (global0[_wgslsmith_index_u32(0u, 25u)] % 32u))) % 32u));
    var var_1 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(var_1.a)), ~arg_1.b);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1153f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-571f - arg_1.a.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_1.a.x), arg_1.a.x)), arg_1.a.x)), -123f), arg_0.b);
    var var_3 = Struct_2(-2147483647i, func_3(276f, select(~u_input.c, abs(var_0), false), Struct_2(~var_0, 49692u, Struct_1(var_1.a, var_1.b), u_input.b >> (44804u % 32u), all(vec3<bool>(true, true, false))), vec2<bool>(true, true)) ^ _wgslsmith_mod_u32(var_2.b & 3518u, arg_1.b), Struct_1(var_1.a, var_2.b), ~_wgslsmith_dot_vec4_i32(~(-vec4<i32>(var_0, var_0, var_0, var_0)), vec4<i32>(u_input.b, ~(-10398i), 0i, _wgslsmith_div_i32(u_input.a, -1i))), any(vec2<bool>(true, true)));
    return arg_1;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = array<u32, 25>();
    let var_0 = ~_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(1u, 4294967295u)) ^ (vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(68378u, 25u)], 25u)]) & vec2<u32>(global0[_wgslsmith_index_u32(arg_0.c.b, 25u)], arg_2.b)), vec2<u32>(reverseBits(arg_1.b), ~arg_2.c.b)), (vec2<u32>(42298u, 0u) ^ reverseBits(vec2<u32>(arg_2.b, arg_0.c.b))) | ~(~vec2<u32>(61674u, global0[_wgslsmith_index_u32(arg_1.b, 25u)])));
    let var_1 = -1494i ^ ~_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a, arg_0.a, -2147483647i) << (vec3<u32>(global0[_wgslsmith_index_u32(arg_0.c.b, 25u)], 27282u, 0u) % vec3<u32>(32u)), countOneBits(vec3<i32>(arg_0.d, -29972i, 10393i))), _wgslsmith_clamp_i32(4120i, u_input.a, i32(-1i) * -2147483647i));
    var var_2 = false;
    let var_3 = _wgslsmith_dot_vec2_u32(~vec2<u32>(~(arg_2.b >> (arg_0.c.b % 32u)), ~4294967295u), ~vec2<u32>(~firstTrailingBit(4294967295u), global0[_wgslsmith_index_u32(~(var_0.x | global0[_wgslsmith_index_u32(25666u, 25u)]), 25u)]));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f)), arg_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 25>();
    global0 = array<u32, 25>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_2(_wgslsmith_div_i32(~u_input.a, u_input.b), _wgslsmith_clamp_u32(_wgslsmith_add_u32(52743u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6593u, 25u)], 25u)]), 0u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 25u)], 25u)]), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1440f, 401f, 287f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(74990u, 25u)], 25u)], 25u)]), vec2<u32>(22144u, global0[_wgslsmith_index_u32(0u, 25u)])), 25u)]), u_input.c, true), func_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_1(vec3<f32>(-321f, -1147f, -213f))), global0[_wgslsmith_index_u32(9612u, 25u)]), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1947f, -215f, -748f))), _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(19257u, 25u)], 47099u))), Struct_2(-2147483647i, ~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]), Struct_1(func_2(Struct_1(vec3<f32>(250f, -1000f, 191f), global0[_wgslsmith_index_u32(35950u, 25u)]), Struct_1(vec3<f32>(1048f, -780f, 436f), 18330u)).a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35885u, 25u)], 25u)] << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9916u, 25u)], 25u)], 25u)], 25u)] % 32u)), u_input.c, false))), 968f, _wgslsmith_f_op_f32(-930f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 523f), _wgslsmith_f_op_f32(trunc(910f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(565f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -196f)))))));
    global0 = array<u32, 25>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1002f), -1301f)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1926f, 776f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -368f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(var_0.x - var_0.x)))));
    global0 = array<u32, 25>();
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, -179f, -1000f, -602f) * var_1), var_1)))))));
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -758f, var_1.x, -435f)))) + var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(var_0.x + var_1.x))) - var_1.yy), ~(~abs(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)], 25u)], 84071u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 25u)], 25u)]))));
}

