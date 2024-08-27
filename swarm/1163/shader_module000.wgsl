struct Struct_1 {
    a: bool,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: bool,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32, arg_1: vec2<i32>) -> u32 {
    global0 = array<Struct_4, 18>();
    global0 = array<Struct_4, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -799f))))) * 457f);
    let var_1 = any(select(select(select(vec3<bool>(true, false, true), !vec3<bool>(false, global1.a.x, true), vec3<bool>(true, true, true)), vec3<bool>(global1.b.a | global1.b.a, !global1.b.a, false), false), !(!vec3<bool>(global1.a.x, true, false)), global1.b.a));
    let var_2 = Struct_2(!(!(!(!global1.a))), Struct_1(any(global1.a), _wgslsmith_dot_vec3_i32(select(-vec3<i32>(-14i, u_input.a.x, u_input.a.x), firstLeadingBit(vec3<i32>(9005i, global1.b.b, 1i)), any(vec4<bool>(false, var_1, global1.a.x, global1.b.a))), -vec3<i32>(50338i, -1i, 24970i))));
    return ~(~(~(~_wgslsmith_mod_u32(53999u, 65768u))));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec4<i32> {
    let var_0 = vec2<bool>(any(select(!(!vec4<bool>(global1.b.a, global1.a.x, false, false)), select(!vec4<bool>(true, true, arg_0.b.b.a, true), select(vec4<bool>(global1.a.x, true, global1.b.a, false), vec4<bool>(true, arg_1, arg_1, false), vec4<bool>(true, true, true, false)), vec4<bool>(false, false, true, arg_1)), true)), arg_1);
    global1 = Struct_2(global1.a, arg_0.d.b);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(arg_0.a)), -743f, var_0.x)) + arg_0.a) - 324f), 1000f, arg_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a)))))));
    var var_2 = var_0.x;
    var_2 = true;
    return abs(vec4<i32>(global1.b.b, select(_wgslsmith_div_i32(1i, arg_0.d.b.b) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.c), vec2<u32>(4294967295u, 0u)) % 32u), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.a), true), firstLeadingBit(1i ^ arg_0.d.b.b), -1i));
}

fn func_1(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_1) -> f32 {
    let var_0 = func_2(_wgslsmith_div_i32(~33524i, ~2147483647i), vec2<i32>(-21763i, ~(-arg_2.b)));
    var var_1 = Struct_5(~_wgslsmith_sub_vec3_u32(~(vec3<u32>(13696u, 44547u, var_0) | vec3<u32>(var_0, 32525u, 1u)), max(select(vec3<u32>(var_0, var_0, var_0), vec3<u32>(0u, var_0, var_0), vec3<bool>(false, arg_0.x, true)), vec3<u32>(var_0, var_0, var_0))), true, !select(vec3<bool>(false, false && global1.a.x, false), !vec3<bool>(true, arg_2.a, arg_0.x), false));
    var var_2 = -func_3(Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1028f - -635f), 618f)), Struct_2(vec2<bool>(false, true), Struct_1(global1.a.x, global1.b.b)), var_1.a.x, Struct_2(!vec2<bool>(true, var_1.b), Struct_1(false, u_input.a.x)), global1.a.x), true);
    let var_3 = ~(~vec3<i32>(1i, var_2.x, var_2.x));
    var var_4 = Struct_2(var_1.c.zz, Struct_1(!(any(arg_0.zzx) | all(arg_0.xzw)), var_3.x));
    return -466f;
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: u32, arg_3: f32) -> Struct_2 {
    return Struct_2(select(global1.a, select(vec2<bool>(true, arg_1.x), arg_1.xz, vec2<bool>(any(arg_1), arg_1.x | global1.a.x)), true), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1421f, 483f, _wgslsmith_f_op_f32(sign(263f))) - vec3<f32>(1925f, _wgslsmith_f_op_f32(func_1(vec4<bool>(true, true, false, false), 444f, Struct_1(global1.b.a, 2147483647i))), -1367f))), vec3<bool>(true & !(!global1.b.a), all(!select(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), vec4<bool>(global1.a.x, global1.b.a, global1.b.a, global1.a.x), false)), global1.a.x), _wgslsmith_sub_u32(reverseBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 72482u, ~4294967295u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1789f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(389f)) * 699f)))));
    let var_0 = _wgslsmith_clamp_u32(reverseBits(~1u), ~abs(_wgslsmith_clamp_u32(~6142u, ~36380u, ~80106u)), abs(0u));
    var var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1658f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1238f, -2307f))) - _wgslsmith_f_op_f32(f32(-1f) * -1765f)), -360f), !select(vec3<bool>(var_0 >= 56982u, func_4(vec3<f32>(-593f, -107f, -748f), vec3<bool>(false, global1.b.a, false), var_0, -117f).b.a, true), select(!vec3<bool>(global1.b.a, true, true), vec3<bool>(false, false, true), !vec3<bool>(global1.b.a, global1.b.a, true)), true), ~min(_wgslsmith_mod_u32(1u, var_0), var_0), _wgslsmith_f_op_f32(func_1(select(vec4<bool>(global1.b.a, true, any(vec3<bool>(false, false, false)), any(global1.a)), vec4<bool>(global1.a.x, !global1.b.a, true, all(vec3<bool>(true, global1.b.a, global1.b.a))), all(select(vec3<bool>(true, global1.a.x, true), vec3<bool>(true, false, false), false))), -1310f, Struct_1(_wgslsmith_sub_i32(u_input.a.x, -59663i) == global1.b.b, 9760i))));
    var var_2 = Struct_1(global1.b.a, ~(countOneBits(u_input.a.x) >> (21630u % 32u)));
    let var_3 = var_2.a;
    var_2 = func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1494f, -1369f)), _wgslsmith_f_op_f32(f32(-1f) * -931f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-1326f)), -949f, any(global1.a))))), select(vec3<bool>(false, true, var_1.b.a), vec3<bool>(var_2.a, all(select(var_1.a, var_1.a, vec2<bool>(true, false))), true), true), _wgslsmith_dot_vec2_u32(min(abs(abs(vec2<u32>(0u, var_0))), ~vec2<u32>(var_0, var_0)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u) ^ vec2<u32>(var_0, var_0), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 12539u), vec2<u32>(36887u, 22375u), vec2<u32>(4294967295u, var_0))) << (select(abs(vec2<u32>(4294967295u, 60388u)), vec2<u32>(var_0, var_0), !var_1.a.x) % vec2<u32>(32u))), 1943f).b;
    var var_4 = Struct_4(Struct_2(global1.a, func_4(vec3<f32>(1f, 1f, 1f), select(select(vec3<bool>(true, false, true), vec3<bool>(var_2.a, var_1.b.a, false), global1.a.x), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), global1.b.a), select(vec3<bool>(global1.a.x, var_1.b.a, var_2.a), vec3<bool>(true, var_1.b.a, false), vec3<bool>(true, var_1.b.a, global1.a.x))), ~var_0, 200f).b), vec3<u32>(max(~_wgslsmith_div_u32(var_0, 17882u), _wgslsmith_div_u32(var_0, abs(var_0))), ~(var_0 >> (~26633u % 32u)), var_0));
    var var_5 = (var_4.b & var_4.b) & select(vec3<u32>(1u << (var_0 % 32u), var_0 | var_0, _wgslsmith_dot_vec2_u32(var_4.b.yy, vec2<u32>(var_0, 65732u))) >> (~abs(vec3<u32>(15719u, var_0, 26449u)) % vec3<u32>(32u)), abs(vec3<u32>(_wgslsmith_sub_u32(var_4.b.x, 22778u), reverseBits(var_4.b.x), var_4.b.x)), !vec3<bool>(false || var_1.b.a, true, true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_5.xx, (var_4.b.xx ^ ~var_5.zz) ^ var_5.xy));
}

