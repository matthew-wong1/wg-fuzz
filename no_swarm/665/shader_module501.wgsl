struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global1: array<Struct_1, 32>;

var<private> global2: i32;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    var var_0 = u_input.b;
    let var_1 = -118f;
    var var_2 = 46190u;
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(max(u_input.c >> (min(u_input.c, u_input.a.x) % 32u), u_input.c << (~4294967295u % 32u)), 44832u) << (30281u % 32u), 32u)];
    var var_4 = 1u << (countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, u_input.c) & vec2<u32>(4294967295u, u_input.c), u_input.a.yz >> (u_input.a.yx % vec2<u32>(32u))), u_input.a.xy)) % 32u);
    return (_wgslsmith_mod_vec4_u32(~(~vec4<u32>(59154u, u_input.a.x, u_input.a.x, 4294967295u)), vec4<u32>(~u_input.a.x, 489u, 0u, abs(u_input.c))) | vec4<u32>(4294967295u, 4963u, u_input.c, u_input.a.x)) & select(_wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 0u, 1u, u_input.c), ~vec4<u32>(u_input.a.x, 1u, 4294967295u, 26238u)), vec4<u32>(0u, abs(u_input.a.x), u_input.a.x | u_input.c, u_input.a.x) >> (_wgslsmith_add_vec4_u32(min(vec4<u32>(u_input.a.x, 4294967295u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, 0u)), vec4<u32>(u_input.c, 4294967295u, 50444u, u_input.c)) % vec4<u32>(32u)), vec4<bool>(true, any(vec4<bool>(true, true, true, true)), true, true));
}

fn func_2() -> Struct_1 {
    global2 = u_input.b;
    let var_0 = vec4<i32>(1i, ~_wgslsmith_add_i32(u_input.b, u_input.b) & reverseBits(u_input.b), ~u_input.b, 32258i) >> (min(~(~(vec4<u32>(u_input.a.x, 57344u, u_input.c, 42095u) ^ vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, 46378u))), _wgslsmith_div_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.c, 6521u, 7710u, u_input.c)), func_3(Struct_1(u_input.b), _wgslsmith_f_op_f32(637f + -1206f)))) % vec4<u32>(32u));
    global2 = ~(2147483647i | _wgslsmith_dot_vec3_i32(~(-vec3<i32>(u_input.b, -2147483647i, var_0.x)), vec3<i32>(min(-3303i, -30422i), u_input.b, -42689i)));
    global1 = array<Struct_1, 32>();
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-357f, 1176f, -347f, 213f)))), vec4<f32>(-195f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1488f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-214f, 212f)), _wgslsmith_f_op_f32(f32(-1f) * -762f)), 1051f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1685f, -492f), _wgslsmith_f_op_f32(-133f - _wgslsmith_f_op_f32(389f + 576f)), -757f, 674f)));
    return global1[_wgslsmith_index_u32(4294967295u, 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-432f * _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1000f, -941f)))), 248f, true))));
    return vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(521f, var_0, true))), -947f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-747f, 1090f), _wgslsmith_f_op_f32(-var_0)))), select(true, true, true), select(1i ^ arg_0.a, countOneBits(_wgslsmith_add_i32(arg_1.a, arg_1.a)), u_input.b <= ~arg_1.a) >= ~u_input.b);
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = ~abs(u_input.a);
    let var_1 = 1u;
    global2 = 28218i;
    var var_2 = arg_0.zz;
    var_2 = arg_0.xx;
    return func_2();
}

fn func_1(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = func_5(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), func_4(func_2(), Struct_1(0i))), all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false)))), global1[_wgslsmith_index_u32(581u, 32u)], 1215f, vec4<bool>(!(all(vec4<bool>(true, false, false, false)) && true), any(vec4<bool>(true, true, all(vec3<bool>(false, true, true)), true)), true, any(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))));
    let var_1 = Struct_1(~1i);
    let var_2 = Struct_1(var_0.a);
    var var_3 = Struct_1(var_2.a);
    var var_4 = vec3<u32>(firstTrailingBit(_wgslsmith_div_u32(~9956u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9019u, u_input.c), vec3<u32>(u_input.a.x, u_input.c, 121678u)))) << (_wgslsmith_dot_vec3_u32(u_input.a | reverseBits(u_input.a), countOneBits(~u_input.a)) % 32u), 9308u, 4294967295u);
    return vec2<bool>(!any(vec3<bool>(true, true, true)), !(var_2.a == abs(firstLeadingBit(var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 14>();
    global1 = array<Struct_1, 32>();
    global0 = array<vec2<bool>, 14>();
    var var_0 = select(!func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(454f, 233f) + _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-502f, 1717f), vec2<f32>(604f, 1558f))))), !(!global0[_wgslsmith_index_u32((u_input.a.x | 5867u) << (u_input.c % 32u), 14u)]), all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), all(vec4<bool>(true, true, true, true)))));
    var_0 = !vec2<bool>(var_0.x | !var_0.x, var_0.x);
    let var_1 = !(!func_4(Struct_1(~(-12303i)), func_2()).yy);
    let x = u_input.a;
    s_output = StorageBuffer((countOneBits(vec2<i32>(1i, u_input.b)) | countOneBits(-vec2<i32>(-1i, u_input.b))) | vec2<i32>(u_input.b, ~u_input.b));
}

