struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<vec3<bool>, 4>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: bool, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> vec3<f32> {
    var var_0 = arg_3.a.zz;
    global1 = array<vec3<bool>, 4>();
    let var_1 = arg_3;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.c), global0.x);
    let var_3 = var_1.b.zz;
    return vec3<f32>(-401f, _wgslsmith_div_f32(_wgslsmith_div_f32(var_2, -443f), arg_3.c), -1025f);
}

fn func_3(arg_0: vec2<u32>, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_3(Struct_1(!(!vec3<bool>(false, true, arg_1.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(54076i, 2147483647i, -2147483647i) >> (~u_input.c.xyz % vec3<u32>(32u)), select(vec3<i32>(-2147483647i, 18454i, -1i), u_input.b, true)), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, 1482f, global0.x, 283f))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(410f, global0.x, 2420f, -631f) - vec4<f32>(-1088f, global0.x, 2031f, 653f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, 653f, global0.x, global0.x)))), Struct_1(select(vec3<bool>(true, select(arg_1.x, arg_1.x, false), true), !(!vec3<bool>(false, arg_1.x, arg_1.x)), arg_1.x), abs(~vec3<i32>(u_input.a, u_input.a, 24914i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.x, global0.x)))), select(vec4<bool>(true & any(arg_1), true, arg_1.x, false), !(!select(vec4<bool>(arg_1.x, true, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false), vec4<bool>(arg_1.x, true, true, arg_1.x))), select(!(!vec4<bool>(arg_1.x, false, false, arg_1.x)), vec4<bool>(true, select(true, arg_1.x, arg_1.x), !arg_1.x, true), !select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, false)))));
    var var_1 = -2147483647i;
    var var_2 = select(vec2<bool>(any(global1[_wgslsmith_index_u32(u_input.c.x, 4u)]), true), vec2<bool>(var_0.d.x, arg_1.x), !var_0.a.a.x);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.b.zww))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(true, vec2<u32>(arg_0.x, 0u), vec3<u32>(9585u, arg_0.x, arg_0.x), var_0.c))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, var_0.b.x, 1281f)))))), select(select(var_0.c.a, select(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], var_0.c.a, vec3<bool>(true, false, true)), u_input.c.x >= 1u), vec3<bool>(true, false, !arg_1.x), ~u_input.b.x < _wgslsmith_clamp_i32(-2147483647i, u_input.b.x, var_0.c.b.x)))));
    var var_3 = select(var_0.d, vec4<bool>(arg_1.x, !((36728u != u_input.c.x) || any(vec2<bool>(true, false))), true, true), !var_0.d);
    return u_input.b.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<bool>) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.x, _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(min(global0.x, global0.x))), _wgslsmith_f_op_f32(sign(784f)))));
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(4294967295u, 4u)], vec3<i32>(func_3(reverseBits(u_input.c.yy), select(vec3<bool>(arg_2.x, false, arg_0.a.x), global1[_wgslsmith_index_u32(0u, 4u)], global1[_wgslsmith_index_u32(arg_1.a, 4u)])) ^ -5586i, min(arg_1.b.x & ~1i, select(-1i, arg_0.b.x | arg_1.b.x, false || arg_0.a.x)), func_3(u_input.c.xz | vec2<u32>(arg_1.a, arg_1.a), select(select(vec3<bool>(false, arg_0.a.x, arg_2.x), global1[_wgslsmith_index_u32(arg_1.a, 4u)], true), select(vec3<bool>(arg_0.a.x, true, false), vec3<bool>(true, arg_0.a.x, false), false), vec3<bool>(true, arg_0.a.x, false)))), global0.x);
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = countOneBits(-countOneBits(var_0.b.x));
    let var_3 = Struct_2(!arg_0.a, -(~_wgslsmith_div_vec2_i32(arg_1.b.yy, reverseBits(arg_0.b))));
    return Struct_1(!select(global1[_wgslsmith_index_u32(max(~0u, arg_1.a), 4u)], vec3<bool>(arg_2.x, var_0.a.x, false), any(vec4<bool>(false, var_3.a.x, false, false))), -_wgslsmith_clamp_vec3_i32(arg_1.b, vec3<i32>(~u_input.b.x, 1i, _wgslsmith_mod_i32(-2147483647i, -1i)), ~u_input.b), _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(f32(-1f) * -383f)));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1, arg_3: Struct_4) -> f32 {
    var var_0 = Struct_4(~_wgslsmith_div_u32(arg_3.a, _wgslsmith_mult_u32(arg_3.a, 4294967295u) << (arg_3.a % 32u)), vec3<i32>(u_input.a, arg_3.b.x, arg_0.b.x));
    let var_1 = vec3<bool>(any(select(!arg_0.a.xz, vec2<bool>(true, select(true, arg_2.a.x, arg_1)), arg_0.a.x)), false, true);
    var var_2 = Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(-140f)), _wgslsmith_f_op_f32(min(arg_0.c, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_1(true, vec2<u32>(32823u, var_0.a), u_input.c.zyx, Struct_1(vec3<bool>(arg_2.a.x, arg_1, var_1.x), u_input.b, arg_0.c))).x), arg_2.c))), func_2(Struct_2(func_2(Struct_2(vec2<bool>(var_1.x, var_1.x), vec2<i32>(arg_0.b.x, arg_0.b.x)), Struct_4(9566u, arg_0.b), vec2<bool>(false, false)).a.zy, vec2<i32>(-2147483647i, -45799i)), arg_3, select(func_2(Struct_2(var_1.xy, arg_2.b.xz), Struct_4(73603u, arg_3.b), var_1.yy).a.zy, !arg_0.a.xy, arg_0.a.yx)), !vec4<bool>(true && arg_2.a.x, any(vec2<bool>(true, false)) != (arg_3.a >= u_input.c.x), true, !(var_1.x | false)));
    let var_3 = Struct_4(countOneBits(var_0.a), ~var_2.a.b);
    var var_4 = Struct_2(select(func_2(Struct_2(var_1.zx, u_input.b.yz), arg_3, select(arg_0.a.zx, vec2<bool>(false, false), any(vec2<bool>(var_2.d.x, arg_1)))).a.yy, arg_0.a.yz, !(!(!arg_0.a.yz))), min(arg_2.b.xx, min(countOneBits(arg_3.b.xy), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_3.b.x, u_input.b.x), arg_0.b.yz, vec2<i32>(1i, u_input.a))) << (~vec2<u32>(arg_3.a, var_3.a) % vec2<u32>(32u))));
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.c * _wgslsmith_f_op_f32(-arg_0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<bool>(true, false), _wgslsmith_div_vec2_i32(~(~(~vec2<i32>(-2147483647i, u_input.a))), abs(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.b.xx, vec2<i32>(-1i, 0i), u_input.b.xx), -u_input.b.yz))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(var_0.a.x, abs(u_input.c.xw << (vec2<u32>(u_input.c.x, 54634u) % vec2<u32>(32u))), u_input.c.yyw, Struct_1(select(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(u_input.c.x, 4u)], global1[_wgslsmith_index_u32(0u, 4u)]), u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -1179f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(Struct_2(vec2<bool>(true, var_0.a.x), u_input.b.xx), Struct_4(27231u, vec3<i32>(-8607i, -1i, var_0.b.x)), var_0.a), true, Struct_1(global1[_wgslsmith_index_u32(u_input.c.x, 4u)], u_input.b, global0.x), Struct_4(0u, vec3<i32>(2147483647i, var_0.b.x, 1002i))))) * 2034f));
    var_0 = Struct_2(vec2<bool>(true, var_0.a.x), u_input.b.xy);
    global1 = array<vec3<bool>, 4>();
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(989f, var_1, -571f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 723f, 1542f) - vec3<f32>(-1573f, -936f, var_1))), vec3<f32>(_wgslsmith_f_op_f32(select(global0.x, global0.x, var_0.a.x)), var_1, -1000f), select(func_2(Struct_2(vec2<bool>(var_0.a.x, var_0.a.x), var_0.b), Struct_4(u_input.c.x, u_input.b), vec2<bool>(false, false)).a, !vec3<bool>(false, var_0.a.x, true), any(vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(183f, -400f, var_1)))) + vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 2262f, -365f)))));
    let var_2 = !(!select(vec4<bool>(true, true, true, select(false, false, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), select(vec4<bool>(false, var_0.a.x, false, var_0.a.x), vec4<bool>(var_0.a.x, false, false, var_0.a.x), vec4<bool>(var_0.a.x, false, true, var_0.a.x)), select(vec4<bool>(var_0.a.x, var_0.a.x, false, true), vec4<bool>(var_0.a.x, var_0.a.x, false, false), false)), u_input.c.x > _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 1u, 107303u, u_input.c.x), u_input.c)));
    var var_3 = vec2<i32>(-(~2147483647i), ~func_2(Struct_2(vec2<bool>(true, var_2.x), vec2<i32>(45148i, var_0.b.x) << (vec2<u32>(u_input.c.x, 37818u) % vec2<u32>(32u))), Struct_4(_wgslsmith_add_u32(1u, u_input.c.x), max(vec3<i32>(var_0.b.x, -1i, 55239i), u_input.b)), var_0.a).b.x);
    let var_4 = !(!(!global1[_wgslsmith_index_u32(25997u, 4u)]));
    let x = u_input.a;
    s_output = StorageBuffer(-1i);
}

