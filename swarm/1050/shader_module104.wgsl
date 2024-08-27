struct Struct_1 {
    a: u32,
    b: bool,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_4,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, true, true));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<bool>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(227f, -751f, 481f, arg_0.c.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1120f, 1359f, arg_0.c.b, -266f)))))));
    let var_1 = arg_0.c;
    var var_2 = vec2<i32>(arg_2, abs(_wgslsmith_dot_vec3_i32(select(vec3<i32>(20074i, var_1.a.x, u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(0i, arg_0.d, -2147483647i), vec3<i32>(u_input.b.x, 1i, 26378i)), arg_0.c.b < 121f), vec3<i32>(arg_0.d >> (6971u % 32u), ~arg_2, -2147483647i >> (1u % 32u)))));
    return select(_wgslsmith_dot_vec3_u32(vec3<u32>(27604u, select(~0u, 8574u, true), 0u), ~vec3<u32>(1u, 1u, 1u)), abs(_wgslsmith_mult_u32(0u, firstTrailingBit(select(20016u, 4294967295u, false)))), arg_1.x);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32) -> i32 {
    global0 = Struct_3(select(select(select(global0.a, global0.a, any(vec4<bool>(global0.a.x, false, false, global0.a.x))), select(global0.a, select(global0.a, vec3<bool>(false, true, global0.a.x), true), select(global0.a, global0.a, global0.a)), vec3<bool>(true, true, true)), !vec3<bool>(true, global0.a.x & true, true), !select(global0.a, vec3<bool>(global0.a.x, false, global0.a.x), any(vec3<bool>(false, global0.a.x, true)))));
    global0 = Struct_3(global0.a);
    var var_0 = Struct_1(~arg_1, true, _wgslsmith_mult_vec3_i32(u_input.b, u_input.b), !any(!(!global0.a)));
    var_0 = Struct_1(_wgslsmith_sub_u32(0u, ~min(func_3(Struct_5(Struct_3(vec3<bool>(true, true, var_0.d)), Struct_3(global0.a), Struct_4(vec4<i32>(2147483647i, 23701i, -16243i, 0i), 782f), u_input.b.x), global0.a, var_0.c.x), _wgslsmith_mult_u32(1u, 25175u))), u_input.a > firstTrailingBit(~(~u_input.b.x)), _wgslsmith_mod_vec3_i32(-var_0.c, var_0.c), true);
    let var_1 = false;
    return var_0.c.x;
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-730f, -198f, true)) + 479f);
    let var_1 = -(vec3<i32>(~abs(u_input.b.x), func_2(_wgslsmith_div_vec4_f32(vec4<f32>(783f, var_0, -410f, -657f), vec4<f32>(var_0, -161f, var_0, 208f)), _wgslsmith_clamp_u32(363u, 1023u, 85066u)), -46823i) << (_wgslsmith_mod_vec3_u32(max(reverseBits(vec3<u32>(17962u, 1u, 664u)), max(vec3<u32>(68266u, 4294967295u, 28916u), vec3<u32>(18350u, 4294967295u, 59812u))), abs(vec3<u32>(12141u, 22033u, 55399u))) % vec3<u32>(32u)));
    global0 = Struct_3(vec3<bool>(false, true, !global0.a.x));
    global0 = Struct_3(vec3<bool>(any(vec4<bool>(true, true, true, true)), !(global0.a.x | (global0.a.x && global0.a.x)), !(587f == _wgslsmith_f_op_f32(-var_0))));
    global0 = Struct_3(global0.a);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(global0.a);
    var var_1 = all(vec3<bool>(var_0, true, global0.a.x));
    var_1 = var_0;
    let var_2 = u_input.b.yx;
    let var_3 = Struct_2(-643f, !var_0 && all(!select(vec2<bool>(global0.a.x, var_0), global0.a.yx, vec2<bool>(false, global0.a.x))), Struct_1(func_1(), true, u_input.b, any(select(vec3<bool>(false, var_0, false), select(vec3<bool>(var_0, false, true), vec3<bool>(false, false, var_0), false), global0.a))), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(29104u, 4294967295u, 4294967295u, 1u)), any(vec4<bool>(true, any(global0.a), true, true)), u_input.b >> (_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, 121538u, 62220u), select(vec3<u32>(13351u, 4294967295u, 43287u), vec3<u32>(71721u, 4294967295u, 4294967295u), false)) % vec3<u32>(32u)), true));
    var var_4 = Struct_4(vec4<i32>(-1i) * -countOneBits(vec4<i32>(u_input.b.x, u_input.a, 1i, 2147483647i) ^ vec4<i32>(1i, var_2.x, u_input.a, var_3.d.c.x)), _wgslsmith_f_op_f32(trunc(-491f)));
    var var_5 = (~65268u << (_wgslsmith_mult_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 61042u, var_3.c.a), vec4<u32>(var_3.c.a, 58702u, 0u, var_3.c.a)), 5316u) % 32u)) <= var_3.d.a;
    let var_6 = Struct_3(vec3<bool>(var_3.b, all(global0.a), global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec4<i32>(-var_3.d.c.x, _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-39821i, -30363i, 19727i, u_input.b.x), _wgslsmith_div_vec4_i32(var_4.a, var_4.a)), 48068i), abs(-_wgslsmith_sub_i32(var_2.x, u_input.b.x)), 1i), var_3.c.a, var_2 | u_input.b.xy);
}

