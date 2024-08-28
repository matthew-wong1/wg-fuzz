struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: bool,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 23>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = select(-global1.a >> (_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 0u, u_input.b, 63071u), ~vec4<u32>(1u, u_input.b, 1u, 28830u) | _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 1u, u_input.b), vec4<u32>(u_input.b, 16851u, 1u, u_input.b))) % vec4<u32>(32u)), global1.a, !all(global1.b.ywz) || any(select(select(vec3<bool>(global1.b.x, global1.b.x, true), global1.b.zxz, global1.b.xwx), select(global1.b.ywx, global1.b.xwy, global1.b.x), arg_0 <= global1.a.x)));
    var var_1 = Struct_4(Struct_3(global1.a, !vec4<bool>(false, true, false, any(global1.b)), global1.c), all(select(vec4<bool>(true, true, true, all(vec2<bool>(true, global1.b.x))), !vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), global1.b)));
    global0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-129f))))));
    var_1 = Struct_4(var_1.a, !(true & var_1.b));
    var var_2 = Struct_4(var_1.a, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(select(vec3<i32>(-1i, -1i, var_0.x), var_0.yww, false), _wgslsmith_clamp_vec3_i32(var_0.yww, vec3<i32>(2147483647i, -18491i, -1i), vec3<i32>(var_0.x, var_1.a.c.a, arg_0))), var_0.x) < _wgslsmith_mod_i32(abs(u_input.a.x | 21239i), i32(-1i) * -24892i));
    return 1u;
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f))), -840f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(1907f, -1389f))), 1140f) * _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(min(653f, -522f)), -262f, _wgslsmith_f_op_f32(sign(-1000f)), -729f), vec4<f32>(-176f, 1158f, _wgslsmith_f_op_f32(f32(-1f) * -544f), _wgslsmith_f_op_f32(min(822f, 1035f))))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2297f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-151f + var_0.x))))));
    var var_1 = 10256u;
    global2 = array<Struct_1, 23>();
    var var_2 = global2[_wgslsmith_index_u32(~u_input.b ^ _wgslsmith_mult_u32(func_3(_wgslsmith_div_i32(global1.a.x, u_input.a.x)), arg_0.x), 23u)];
    return global1.b;
}

fn func_2() -> i32 {
    var var_0 = vec4<bool>(any(global1.b.yz), global1.b.x, all(vec2<bool>(global1.b.x, true)), global1.b.x);
    global0 = -532f;
    var_0 = func_4((vec4<u32>(func_3(global1.a.x), ~u_input.b, 39932u | u_input.b, 4294967295u) & (~vec4<u32>(u_input.b, 1u, 25859u, u_input.b) << (_wgslsmith_mod_vec4_u32(vec4<u32>(55872u, 75491u, u_input.b, 4628u), vec4<u32>(u_input.b, 11646u, u_input.b, u_input.b)) % vec4<u32>(32u)))) << (select(vec4<u32>(countOneBits(57586u), firstLeadingBit(19293u), _wgslsmith_dot_vec2_u32(vec2<u32>(33803u, 0u), vec2<u32>(0u, 74967u)), ~18156u), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 49733u, 23641u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), global1.b.x) % vec4<u32>(32u)), -1i | abs(~(global1.c.a ^ u_input.a.x)), global1.b.zyy, !(!(!vec2<bool>(global1.b.x, false))));
    return -2147483647i ^ countOneBits(_wgslsmith_clamp_i32(global1.c.a, u_input.a.x, ~0i));
}

fn func_1() -> f32 {
    var var_0 = vec3<u32>(~1u, min(u_input.b, u_input.b), _wgslsmith_mult_u32(0u, ~_wgslsmith_mult_u32(0u, abs(28310u))));
    var var_1 = !(!((i32(-1i) * -1581i) == func_2())) & true;
    global2 = array<Struct_1, 23>();
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(226f, _wgslsmith_f_op_f32(461f - 1500f), true)))), 817f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-970f)) * -229f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f) - _wgslsmith_f_op_f32(max(-626f, -841f)))), 136f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(-1959f, 780f, -1114f, -219f), vec4<f32>(-1389f, 851f, -1814f, 146f)))))));
    var var_3 = min(abs(min(u_input.a.xzx, global1.a.xxw)), ~_wgslsmith_sub_vec3_i32(global1.a.yzx, u_input.a.xzz ^ global1.a.yzy));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1()) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-814f)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1515f, 273f, -711f), vec3<f32>(1980f, 406f, 631f), vec3<bool>(global1.b.x, global1.b.x, true)))), vec3<f32>(-578f, _wgslsmith_f_op_f32(abs(-395f)), _wgslsmith_div_f32(1022f, -584f)))));
    var_0 = 1293f;
    var var_2 = func_4(~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 0u, 40828u, 0u), vec4<u32>(50089u, 1u, 1u, u_input.b))), -max(-1i, ~global1.a.x), global1.b.yzz, func_4(~(~vec4<u32>(u_input.b, 33979u, 55325u, u_input.b)) | vec4<u32>(u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(32181u, u_input.b), vec2<u32>(u_input.b, u_input.b)), u_input.b | u_input.b, u_input.b), firstLeadingBit(u_input.a.x & _wgslsmith_dot_vec3_i32(global1.a.yxw, global1.a.zzw)), func_4(~vec4<u32>(u_input.b, 53939u, 2813u, 4294967295u), ~_wgslsmith_dot_vec4_i32(global1.a, vec4<i32>(global1.a.x, u_input.a.x, global1.a.x, global1.a.x)), !vec3<bool>(global1.b.x, global1.b.x, false), vec2<bool>(false, !global1.b.x)).zyw, select(global1.b.yx, vec2<bool>(global1.b.x, global1.b.x), vec2<bool>(global1.b.x, !global1.b.x))).yz).zxz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1327f - var_1.x), -1217f), _wgslsmith_f_op_f32(round(var_1.x)))), min(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, u_input.b, abs(u_input.b)), abs(countOneBits(vec3<u32>(u_input.b, 0u, u_input.b)))), 1u), ~reverseBits(vec3<u32>(~50806u, ~0u, 37781u)));
}

