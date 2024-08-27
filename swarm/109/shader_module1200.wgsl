struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<i32, 23>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> f32 {
    var var_0 = !vec2<bool>(true, arg_2.a);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(691f, arg_1.x) * arg_1), _wgslsmith_div_vec2_f32(vec2<f32>(global0.x, arg_1.x), arg_1), true))))), 102f, select(true, !any(vec4<bool>(false, var_0.x, true, var_0.x)), true));
    var var_2 = var_1;
    let var_3 = (i32(-1i) * -_wgslsmith_dot_vec2_i32(-vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], u_input.d), ~vec2<i32>(arg_0.x, 0i))) >> (0u % 32u);
    var_2 = Struct_2(vec2<f32>(global0.x, _wgslsmith_f_op_f32(abs(381f))), -2215f, any(select(select(select(vec3<bool>(var_0.x, arg_2.a, var_2.c), vec3<bool>(false, arg_2.a, true), var_0.x), vec3<bool>(true, false, true), true), vec3<bool>(arg_1.x != var_1.a.x, true, arg_2.a && false), !var_2.c)));
    return var_2.b;
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = false;
    global0 = vec2<f32>(896f, global0.x);
    let var_1 = abs(~min(reverseBits(u_input.b ^ -58267i), -1894i));
    global1 = array<i32, 23>();
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(-u_input.a, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, 969f), vec2<f32>(582f, 994f), true)), Struct_1(true)))))), true);
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(round(1530f)), _wgslsmith_f_op_f32(918f * global0.x)))) + vec2<f32>(704f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1481f)) * _wgslsmith_div_f32(var_2.a.x, global0.x)))), _wgslsmith_div_f32(global0.x, global0.x), -340f > _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b * -1049f) * _wgslsmith_f_op_f32(sign(var_2.b))), -522f));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: i32) -> vec2<u32> {
    var var_0 = func_2(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a));
    var var_1 = 95875u;
    let var_2 = select(any(!vec3<bool>(arg_1.c, true, true)), false, false);
    var var_3 = _wgslsmith_sub_vec2_u32(reverseBits(~(~u_input.c.yx)), max(u_input.c.zz << ((vec2<u32>(u_input.c.x, 118501u) >> (u_input.c.xy % vec2<u32>(32u))) % vec2<u32>(32u)), u_input.c.yy));
    let var_4 = ~(~_wgslsmith_mult_vec3_u32(vec3<u32>(1u, _wgslsmith_clamp_u32(var_3.x, u_input.c.x, var_3.x), 4294967295u), ~u_input.c.ywz));
    return vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.c.wz, _wgslsmith_add_vec2_u32(select(u_input.c.yx, var_4.zy, vec2<bool>(true, false)), var_4.zz)), 86370u) & _wgslsmith_clamp_vec2_u32(~firstLeadingBit(vec2<u32>(var_4.x, 19623u)), vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(u_input.c.x), abs(61893u)), 38003u), _wgslsmith_mult_vec2_u32(var_4.zx | (vec2<u32>(4294967295u, u_input.c.x) << (var_4.yy % vec2<u32>(32u))), max(var_4.zx >> (var_4.yy % vec2<u32>(32u)), select(var_4.zy, vec2<u32>(var_3.x, var_3.x), vec2<bool>(arg_2.x, var_2)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    global1 = array<i32, 23>();
    global0 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - arg_2.b), 1f))));
    let var_0 = Struct_1(any(select(!(!vec2<bool>(true, arg_2.c)), !select(vec2<bool>(arg_2.c, true), vec2<bool>(true, arg_0.a), vec2<bool>(false, arg_0.a)), !select(vec2<bool>(arg_2.c, false), vec2<bool>(arg_0.a, false), vec2<bool>(true, false)))));
    global0 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1168f, arg_2.a.x) + -1002f)))), arg_2.b);
    let var_1 = Struct_2(arg_2.a, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_2.a.x, -1002f), _wgslsmith_f_op_f32(global0.x * global0.x))))), select(!(true || select(arg_2.c, arg_0.a, arg_0.a)), arg_2.c, arg_0.a));
    return abs(global1[_wgslsmith_index_u32(37739u, 23u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_i32(~firstLeadingBit(vec4<i32>(u_input.a.x, 20835i, global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)])), vec4<i32>(-422i, ~_wgslsmith_div_i32(u_input.e, global1[_wgslsmith_index_u32(4294967295u, 23u)]), _wgslsmith_sub_i32(~0i, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c.x, 20471u), 23u)]), func_4(Struct_1(true), func_1(vec2<f32>(global0.x, global0.x), Struct_2(vec2<f32>(285f, -511f), global0.x, false), vec3<bool>(false, false, false), 0i), Struct_2(vec2<f32>(global0.x, 1291f), 322f, true))), vec4<i32>(u_input.b << (~4294967295u % 32u), ~(-1i) << (~u_input.c.x % 32u), -abs(0i), u_input.b)) >> (vec4<u32>(u_input.c.x, 154545u, u_input.c.x, _wgslsmith_sub_u32(12642u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 47863u, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 1u)), firstLeadingBit(1u)))) % vec4<u32>(32u));
    let var_1 = var_0.yy;
    let var_2 = select(~abs(vec2<u32>(min(7254u, 1u), u_input.c.x)), u_input.c.yx, vec2<bool>(any(vec3<bool>(true, true, true)) && true, any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), false), all(vec4<bool>(false, true, true, true))))));
    let var_3 = _wgslsmith_dot_vec3_u32(vec3<u32>(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(1u, 15692u, 33664u, var_2.x)), vec4<u32>(0u, var_2.x, var_2.x, var_2.x) ^ u_input.c), ~(~_wgslsmith_add_u32(u_input.c.x, var_2.x)), ~(~var_2.x)), u_input.c.xzx);
    global1 = array<i32, 23>();
    let var_4 = -(vec2<i32>(-1i) * -((vec2<i32>(-24286i, global1[_wgslsmith_index_u32(var_3, 23u)]) & vec2<i32>(0i, var_1.x)) | reverseBits(vec2<i32>(var_0.x, 1i))));
    var var_5 = false;
    global0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-261f, _wgslsmith_f_op_f32(global0.x * global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))))));
    var_5 = all(vec2<bool>(true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(32220u, u_input.c.x), var_2) <= (var_3 << (_wgslsmith_sub_u32(u_input.c.x, 4294967295u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-33254i, ~_wgslsmith_clamp_u32(u_input.c.x, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), ~1u) ^ _wgslsmith_dot_vec3_u32(select(~u_input.c.wyx, vec3<u32>(u_input.c.x, 0u, 21672u) | u_input.c.zww, select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), min(~u_input.c.zzz, vec3<u32>(var_2.x, var_2.x, u_input.c.x))), ~abs(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 4294967295u, var_3), vec3<u32>(1798u, 0u, u_input.c.x))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.x, global0.x), vec2<f32>(global0.x, 685f))) + vec2<f32>(1f, 1f))))));
}

