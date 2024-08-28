struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: i32,
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

var<private> global0: Struct_1 = Struct_1(vec3<f32>(465f, 440f, -1000f), vec3<i32>(0i, -1i, -1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec3<i32> {
    var var_0 = !select(!vec2<bool>(true, all(vec3<bool>(false, true, true))), vec2<bool>(true, true), vec2<bool>(true, false));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-499f, arg_0, global0.a.x), vec3<f32>(1155f, global0.a.x, global0.a.x), vec3<bool>(true, var_0.x, false)))), _wgslsmith_f_op_vec3_f32(-global0.a)))), -(~(vec3<i32>(-24945i, 1i, -2147483647i) ^ -u_input.c.zyy)));
    var_0 = vec2<bool>(var_0.x, true);
    var var_2 = vec2<f32>(471f, arg_0);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x * -1071f)), arg_0, var_1.a.x), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-435f - global0.a.x))), 1588f, _wgslsmith_f_op_f32(f32(-1f) * -1792f)))), firstTrailingBit(vec3<i32>(-1i) * -(global0.b << (vec3<u32>(0u, 4294967295u, u_input.a) % vec3<u32>(32u)))));
    return vec3<i32>(33144i, u_input.c.x, -var_3.b.x) >> (max(vec3<u32>(99756u, 13878u, u_input.a), _wgslsmith_mult_vec3_u32(select(~vec3<u32>(4294967295u, 13681u, u_input.a), ~vec3<u32>(4294967295u, 4294967295u, u_input.b), !var_0.x), vec3<u32>(10113u, u_input.a, ~1u))) % vec3<u32>(32u));
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_1(global0.a, -(~(u_input.c.wzw >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, 27802u, 4294967295u), vec3<u32>(22259u, 4294967295u, u_input.a)) % vec3<u32>(32u)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, -407f, global0.a.x)) - vec3<f32>(var_0.a.x, global0.a.x, global0.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -1845f, 633f)) + vec3<f32>(_wgslsmith_f_op_f32(max(-705f, global0.a.x)), _wgslsmith_f_op_f32(round(global0.a.x)), -122f))), -vec3<i32>(_wgslsmith_sub_i32(-57290i, u_input.d), 0i, reverseBits(_wgslsmith_mult_i32(global0.b.x, -1i))));
    global0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(trunc(700f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + _wgslsmith_div_f32(-465f, var_0.a.x)) * _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(select(-524f, -150f, true)))), global0.a.x), func_3(969f, vec2<i32>(global0.b.x, max(u_input.c.x, 1i)) | global0.b.xy));
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.a), vec3<i32>(2147483647i, global0.b.x, global0.b.x) << (vec3<u32>(1u, ~u_input.b, u_input.b) % vec3<u32>(32u)));
    var_0 = var_1;
    return 2147483647i;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>) -> u32 {
    var var_0 = global0.b;
    var_0 = vec3<i32>(_wgslsmith_mod_i32(arg_0.b.x, -min(54575i, var_0.x)), -5722i, func_2(true));
    let var_1 = select(select(vec2<bool>(true, true), !(!select(vec2<bool>(true, false), vec2<bool>(true, false), true)), vec2<bool>(true, true)), vec2<bool>(false, !all(vec3<bool>(true, false, false))), !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), select(vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), true), vec2<bool>(true, true)), all(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))));
    var var_2 = Struct_1(arg_0.a, _wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(31741i, -40303i, var_0.x) ^ vec3<i32>(global0.b.x, 0i, 10832i), abs(vec3<i32>(-6888i, arg_0.b.x, u_input.c.x))), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, var_0.x, firstTrailingBit(-11100i)), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.b.x, global0.b.x, global0.b.x), _wgslsmith_mod_vec3_i32(global0.b, global0.b), ~arg_0.b)), global0.b | u_input.c.ywz));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1452f, 1378f, 1530f) * vec3<f32>(-844f, global0.a.x, var_2.a.x)))), vec3<i32>(67574i, u_input.d, _wgslsmith_sub_i32(1i, max(-26839i, global0.b.x))));
    return 72268u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec3<u32>(~40531u, ~firstLeadingBit(~u_input.b), u_input.b << (abs(0u) % 32u)));
    let var_1 = ~_wgslsmith_mult_u32(~_wgslsmith_sub_u32(func_1(Struct_1(vec3<f32>(404f, -274f, global0.a.x), global0.b), vec3<u32>(59644u, u_input.b, var_0.x)), u_input.a), ~min(u_input.b, u_input.b));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(global0.a)), _wgslsmith_mod_vec3_i32(global0.b, max(_wgslsmith_clamp_vec3_i32(global0.b, -u_input.c.wyy, select(vec3<i32>(-1i, 1i, u_input.c.x), u_input.c.wxw, vec3<bool>(true, true, false))), vec3<i32>(-2147483647i, global0.b.x, global0.b.x))));
    let var_3 = Struct_1(var_2.a, vec3<i32>(~(-1i), ~(u_input.d ^ reverseBits(-8725i)), global0.b.x));
    var var_4 = 6028u;
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.x);
}

