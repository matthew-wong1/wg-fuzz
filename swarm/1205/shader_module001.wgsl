struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: Struct_1 = Struct_1(false, false, vec3<bool>(false, true, false), vec3<i32>(30335i, -24647i, 2147483647i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = true;
    global1 = Struct_1(false, (_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1111f)), _wgslsmith_f_op_f32(min(-876f, -1084f)))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -378f) - _wgslsmith_f_op_f32(-483f + -527f))) != true, global1.c, _wgslsmith_mult_vec3_i32(~global1.d, ~(_wgslsmith_mult_vec3_i32(global1.d, vec3<i32>(-50897i, global1.d.x, 2147483647i)) | select(global1.d, vec3<i32>(global1.d.x, global1.d.x, 0i), vec3<bool>(false, false, arg_0.x)))));
    global1 = Struct_1(any(vec2<bool>(global1.a, true)), true, !global1.c, ~vec3<i32>(_wgslsmith_mod_i32(select(-2147483647i, 0i, arg_0.x), ~1i), firstLeadingBit(global1.d.x), global1.d.x));
    var var_1 = u_input.b;
    var_1 = u_input.a.x;
    return Struct_2(-575f);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec3<u32> {
    global1 = Struct_1(!(!any(!vec2<bool>(global1.b, true))), true, select(!(!(!global1.c)), select(select(select(global1.c, vec3<bool>(global1.b, global1.b, true), global1.c), select(global1.c, global1.c, true), !vec3<bool>(false, global1.c.x, false)), vec3<bool>(true, true, true), -1375f != _wgslsmith_f_op_f32(floor(arg_0.x))), global1.b | all(select(global1.c.yx, vec2<bool>(false, false), vec2<bool>(false, false)))), vec3<i32>(i32(-1i) * -(48268i | global1.d.x), 6125i, arg_1.x));
    var var_0 = firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(countOneBits(-356i), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.d.x, arg_1.x, 16961i, 1i), vec4<i32>(22341i, global1.d.x, global1.d.x, global1.d.x)), firstTrailingBit(arg_1.x)));
    let var_1 = Struct_1(global1.b, -1490f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-242f + -1382f))) + arg_0.x), global1.c, global1.d);
    var_0 = vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_mult_i32(var_1.d.x, var_1.d.x), 1i, min(-arg_1.x, -1i), var_1.d.x), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.d.x, -27402i, 0i, var_1.d.x), reverseBits(vec4<i32>(-1i, -50490i, -1i, -33478i)), vec4<i32>(var_0.x, arg_1.x, global1.d.x, var_0.x) | vec4<i32>(-1i, var_0.x, global1.d.x, -8083i))), 2147483647i, _wgslsmith_mult_i32(19448i, -var_0.x));
    var var_2 = !select(!select(true, !global1.a, global1.a), all(!select(global1.c, global1.c, vec3<bool>(global1.b, var_1.c.x, false))), (48696u ^ countOneBits(u_input.a.x)) < _wgslsmith_clamp_u32(u_input.b | 68539u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u), vec4<u32>(u_input.b, 0u, u_input.a.x, 5562u)), _wgslsmith_mult_u32(u_input.a.x, 4294967295u)));
    return vec3<u32>(u_input.b, countOneBits(~firstLeadingBit(u_input.a.x) >> (_wgslsmith_dot_vec2_u32(max(vec2<u32>(u_input.a.x, u_input.b), vec2<u32>(u_input.a.x, u_input.a.x)), u_input.a) % 32u)), _wgslsmith_clamp_u32(u_input.a.x, 102089u, 33014u));
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.x, -208f, u_input.b <= u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a + arg_1.a) - arg_1.a)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-383f, -681f)), arg_0.x), false)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-496f + arg_0.x)), _wgslsmith_f_op_f32(f32(-1f) * -852f)))));
    let var_1 = global0[_wgslsmith_index_u32(113761u, 20u)];
    var var_2 = vec4<i32>(abs(countOneBits(-17692i)), 40415i, firstTrailingBit(-30279i), -1i);
    var var_3 = vec3<bool>(!select(!(global1.d.x != -52737i), true, !(true && global1.c.x)), false, !var_1.c.x);
    let var_4 = Struct_1(!(_wgslsmith_div_u32(arg_2.x, _wgslsmith_dot_vec4_u32(var_1.d, var_1.d)) <= ~(~var_1.d.x)), var_3.x, global1.c, var_2.zyz);
    return Struct_2(var_1.b.a);
}

fn func_5(arg_0: Struct_2, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.a, -2074f, 879f), vec3<f32>(-305f, -2005f, 846f), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(415f, -451f, arg_0.a) - vec3<f32>(arg_0.a, 595f, -392f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a, 1000f, 717f)), global1.c)))));
    global1 = Struct_1(false, false, !select(select(global1.c, !vec3<bool>(false, global1.a, true), global1.c.x && true), select(global1.c, global1.c, select(global1.c, vec3<bool>(global1.a, false, false), global1.c)), vec3<bool>(u_input.b != u_input.b, false, global1.b)), -vec3<i32>(1i, _wgslsmith_sub_i32(global1.d.x << (1u % 32u), _wgslsmith_add_i32(arg_1, global1.d.x)), -_wgslsmith_add_i32(arg_1, 0i)));
    var var_1 = vec4<bool>(select(false && !(!global1.c.x), false, any(!vec4<bool>(false, global1.b, true, global1.a)) | (true || global1.c.x)), any(vec3<bool>(any(select(vec4<bool>(true, global1.a, global1.a, false), vec4<bool>(global1.b, false, false, global1.a), vec4<bool>(false, true, true, false))), any(vec2<bool>(global1.b, true)), false)), global1.a, -132f < _wgslsmith_f_op_f32(select(-583f, -1458f, true)));
    let var_2 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a));
}

fn func_1(arg_0: vec3<bool>) -> i32 {
    let var_0 = arg_0;
    global0 = array<Struct_3, 20>();
    var var_1 = vec3<f32>(527f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(296f)) - _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_vec3_f32(vec3<f32>(1028f, -1975f, -239f) - vec3<f32>(-477f, 220f, -385f)), func_2(var_0), func_3(vec4<f32>(-324f, 257f, -1494f, 468f), vec2<i32>(global1.d.x, 42290i))), _wgslsmith_div_i32(-1i, 2147483647i) >> (_wgslsmith_dot_vec2_u32(u_input.a, u_input.a) % 32u)))), _wgslsmith_f_op_f32(f32(-1f) * -463f));
    let var_2 = var_0.xy;
    global0 = array<Struct_3, 20>();
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(global1.d, countOneBits(global1.d)), vec3<i32>(_wgslsmith_add_i32(28760i, -25344i), 10531i, _wgslsmith_dot_vec3_i32(-global1.d, vec3<i32>(global1.d.x, global1.d.x, 54424i)) ^ -1i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = global0[_wgslsmith_index_u32(u_input.a.x, 20u)];
    var var_2 = _wgslsmith_mod_i32(2147483647i, func_1(global1.c));
    let var_3 = func_2(select(!(!select(var_1.c.yzx, vec3<bool>(false, false, var_0), false)), select(vec3<bool>(true, any(var_1.c.zyw), global1.c.x), select(!var_1.c.zxy, vec3<bool>(var_1.a.c.x, false, true), global1.b), var_1.c.yzz), !vec3<bool>(global1.c.x & false, global1.b & false, !var_1.c.x)));
    global1 = Struct_1(any(!select(global1.c, global1.c, false)), !((min(u_input.a.x, u_input.b) > var_1.d.x) != false), select(select(select(vec3<bool>(false, var_1.a.a, false), global1.c, true), !global1.c, !(!global1.c)), !(!select(global1.c, global1.c, vec3<bool>(var_0, true, var_0))), !var_1.c.zzx), reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(11584i, global1.d.x), ~global1.d.x, var_1.a.d.x), vec3<i32>(1i, 15540i >> (1u % 32u), 1i << (var_1.d.x % 32u)))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_1.d.x, 0u, 1u >> (1u % 32u), _wgslsmith_dot_vec3_u32(var_1.d.zyx, vec3<u32>(9964u, u_input.a.x, 4294967295u))) << (vec4<u32>(u_input.a.x, 37739u, countOneBits(u_input.b), 43085u) % vec4<u32>(32u)), reverseBits(_wgslsmith_clamp_i32(-select(var_1.a.d.x, -14806i, true), 102609i, global1.d.x)), abs(~(~var_1.d.x)) << (~1u % 32u));
}

