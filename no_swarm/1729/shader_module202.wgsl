struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 20> = array<vec2<u32>, 20>(vec2<u32>(23440u, 0u), vec2<u32>(1904u, 1u), vec2<u32>(7744u, 84137u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(47681u, 29160u), vec2<u32>(32536u, 0u), vec2<u32>(1u, 5228u), vec2<u32>(37180u, 17832u), vec2<u32>(0u, 40792u), vec2<u32>(27131u, 21463u), vec2<u32>(1u, 67912u), vec2<u32>(7459u, 46783u), vec2<u32>(37533u, 21457u), vec2<u32>(43429u, 15812u), vec2<u32>(31313u, 55983u), vec2<u32>(105089u, 4294967295u), vec2<u32>(10839u, 46175u), vec2<u32>(0u, 74569u), vec2<u32>(4294967295u, 22330u));

var<private> global1: array<vec2<bool>, 8> = array<vec2<bool>, 8>(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<i32>) -> f32 {
    global0 = array<vec2<u32>, 20>();
    var var_0 = arg_2.b.ywz;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2201f, arg_0.d.x)))) * vec2<f32>(_wgslsmith_div_f32(-1000f, arg_2.c), arg_2.c)));
    var var_2 = arg_1;
    let var_3 = var_1.x;
    return arg_2.c;
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = Struct_1(arg_1.x, select(arg_0, select(!select(global1[_wgslsmith_index_u32(4294967295u, 8u)], vec2<bool>(false, arg_0.x), vec2<bool>(false, true)), select(vec2<bool>(arg_0.x, arg_0.x), select(vec2<bool>(arg_0.x, false), vec2<bool>(arg_3.d.b.x, false), arg_0.x), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1.x, u_input.b.x, arg_3.d.a), vec4<u32>(arg_3.d.a, 16666u, 27070u, arg_1.x)), 8u)]), any(vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x)) & true), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(arg_1.x, 4294967295u), vec2<u32>(59043u, u_input.b.x)), vec2<u32>(u_input.b.x, 28894u)) >= ~64088u), ~vec4<i32>(_wgslsmith_dot_vec3_i32(arg_3.d.c.wzw, reverseBits(arg_3.d.c.wxw)), arg_2, _wgslsmith_mod_i32(u_input.a.x, abs(u_input.a.x)), 0i), arg_3.b.xxw);
    global1 = array<vec2<bool>, 8>();
    var var_1 = _wgslsmith_div_f32(var_0.d.x, arg_3.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(arg_3.b)) * vec4<f32>(var_0.d.x, _wgslsmith_f_op_f32(func_1(arg_3.d, arg_3, arg_3, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(var_0.c.wzy, vec3<i32>(var_0.c.x, -25993i, 25908i)), _wgslsmith_sub_vec3_i32(var_0.c.zxx, vec3<i32>(var_0.c.x, u_input.a.x, arg_3.d.c.x))))), _wgslsmith_f_op_f32(var_0.d.x - 186f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1263f)))))));
    let var_3 = arg_3.a.x | 10422u;
    return _wgslsmith_f_op_vec2_f32(-arg_3.d.d.yx);
}

fn func_2() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2186f, 1301f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(vec2<bool>(true, true), u_input.b, -10362i, Struct_2(vec4<u32>(79351u, u_input.b.x, u_input.b.x, 23520u) << (vec4<u32>(32504u, 0u, 1u, u_input.b.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-734f, 1000f, 309f, -1424f)), -357f, Struct_1(u_input.b.x, global1[_wgslsmith_index_u32(55211u, 8u)], vec4<i32>(1i, u_input.a.x, 2147483647i, u_input.a.x), vec3<f32>(2017f, 105f, 381f))))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-876f, -447f) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-127f, -466f), vec2<f32>(2004f, 303f)))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -909f), _wgslsmith_f_op_f32(f32(-1f) * -296f)), vec2<bool>(true, true))))));
    var var_1 = Struct_2(vec4<u32>(u_input.b.x, ~1u & firstLeadingBit(u_input.b.x), 1u, ~countOneBits(u_input.b.x)) & select(abs(reverseBits(vec4<u32>(0u, 35866u, 15642u, 0u))), abs(vec4<u32>(0u, u_input.b.x, u_input.b.x, 1u) >> (vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x) % vec4<u32>(32u))), true), vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -1706f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -790f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) + -868f), Struct_1(_wgslsmith_dot_vec4_u32(~(vec4<u32>(u_input.b.x, 72622u, u_input.b.x, u_input.b.x) ^ vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 27197u, u_input.b.x), vec4<u32>(7952u, 0u, 4294967295u, 1u)), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), !(!select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(u_input.b.x, 8u)], global1[_wgslsmith_index_u32(20249u, 8u)])), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, max(u_input.a, u_input.a)), 65068i | u_input.a.x, u_input.a.x, ~(~2147483647i)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, 382f) * vec3<f32>(var_0.x, var_0.x, var_0.x))))))));
    let var_2 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-218f + var_0.x))), -1698f) >= 675f, any(vec2<bool>(var_1.d.b.x || (false && var_1.d.b.x), !all(vec2<bool>(var_1.d.b.x, var_1.d.b.x)))));
    let var_3 = Struct_1(u_input.b.x, vec2<bool>(all(select(select(vec3<bool>(false, false, true), vec3<bool>(var_1.d.b.x, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, var_2.x, false), !var_1.d.b.x)), any(var_1.d.b)), vec4<i32>(min(1i, ~(2147483647i | var_1.d.c.x)), 2147483647i, var_1.d.c.x, -_wgslsmith_add_i32(reverseBits(-13492i), -u_input.a.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.d.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_1.b.x, var_1.c)) + var_1.b.zyw)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1033f, var_1.c) * var_1.d.d) - var_1.b.wzx))));
    var var_4 = vec2<u32>(abs(~var_3.a), ~(~(1u | (u_input.b.x >> (38459u % 32u)))));
    return -(vec4<i32>(countOneBits(var_1.d.c.x) >> ((var_4.x & var_4.x) % 32u), 0i, -11510i, _wgslsmith_dot_vec4_i32(var_3.c << (vec4<u32>(var_4.x, 0u, u_input.b.x, var_4.x) % vec4<u32>(32u)), var_3.c)) | select(vec4<i32>(u_input.a.x, -1i << (1u % 32u), var_1.d.c.x, var_1.d.c.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.d.c.x, u_input.a.x, -2147483647i, var_1.d.c.x), vec4<i32>(var_1.d.c.x, 1i, u_input.a.x, u_input.a.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>((u_input.a.x & 1i) & u_input.a.x, _wgslsmith_div_i32(u_input.a.x, ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x)), u_input.a.x);
    let var_1 = Struct_2(~(~((vec4<u32>(0u, u_input.b.x, u_input.b.x, 21389u) & vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) ^ vec4<u32>(1u, 47551u, 13471u, u_input.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(7291u, global1[_wgslsmith_index_u32(13634u, 8u)], vec4<i32>(var_0.x, -2147483647i, var_0.x, -2147483647i), vec3<f32>(536f, 835f, 895f)), Struct_2(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 30755u), vec4<f32>(363f, -508f, -1642f, -1114f), 262f, Struct_1(87103u, vec2<bool>(true, true), vec4<i32>(2147483647i, 0i, u_input.a.x, 1i), vec3<f32>(1000f, 681f, 469f))), Struct_2(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<f32>(1000f, -1320f, 740f, -803f), -355f, Struct_1(1u, global1[_wgslsmith_index_u32(4294967295u, 8u)], vec4<i32>(-1i, 1i, u_input.a.x, 45787i), vec3<f32>(-963f, 1282f, -1000f))), var_0))), -395f, _wgslsmith_f_op_f32(-1000f - 309f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-318f, 1382f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1593f + _wgslsmith_f_op_f32(floor(-1026f))), _wgslsmith_f_op_f32(select(-1240f, -1506f, select(true, false, true))), false)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1080f, 752f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(394f, 738f))))), Struct_1(1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.b, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 21348u, 0u), vec3<u32>(29991u, u_input.b.x, 0u))) >> (33991u % 32u), 8u)], func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(305f, 432f, -753f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-532f, 588f, -647f), vec3<f32>(1937f, -589f, -640f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(select(var_1.d.d.x, 2072f, var_1.d.b.x)))))), _wgslsmith_mod_i32(var_1.d.c.x, _wgslsmith_clamp_i32(var_1.d.c.x, abs(-7480i), _wgslsmith_div_i32(var_1.d.c.x, -1i))) & _wgslsmith_div_i32(var_1.d.c.x, 48592i));
}

