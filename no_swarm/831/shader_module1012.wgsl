struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
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

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(global0.a, vec2<f32>(521f, global0.a.x), -(~global0.c), !global0.d);
    global0 = Struct_1(global0.a, vec2<f32>(_wgslsmith_f_op_f32(abs(-1931f)), _wgslsmith_f_op_f32(785f + global0.a.x)), _wgslsmith_mult_i32(~select(min(0i, -38155i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c, -1i), vec2<i32>(var_0.c, global0.c)), true), 0i), select(!var_0.d, vec2<bool>(any(!vec4<bool>(false, false, global0.d.x, true)), false), !(!global0.d.x != any(vec4<bool>(var_0.d.x, false, false, var_0.d.x)))));
    global0 = var_0;
    return var_0;
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.x))), _wgslsmith_f_op_f32(ceil(1000f)), global0.a.x, _wgslsmith_f_op_f32(min(global0.b.x, global0.b.x)))), _wgslsmith_f_op_vec2_f32(-arg_2.a.wx), _wgslsmith_mod_i32(countOneBits(-(~2147483647i)), func_2().c), arg_2.d);
    var var_0 = arg_1;
    var_0 = arg_1;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(268f, arg_2.a.x, arg_2.b.x) * vec3<f32>(arg_2.a.x, -355f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), 1000f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(-2600f)), _wgslsmith_f_op_f32(-global0.a.x), arg_2.b.x));
    let var_2 = vec3<u32>(u_input.a.x, firstLeadingBit(_wgslsmith_mult_u32(u_input.a.x >> (_wgslsmith_mod_u32(4294967295u, u_input.a.x) % 32u), _wgslsmith_sub_u32(1u, ~4294967295u))), 4294967295u);
    return all(!(!select(vec4<bool>(global0.d.x, false, global0.d.x, true), vec4<bool>(false, global0.d.x, false, false), vec4<bool>(true, false, true, arg_2.d.x)))) == arg_2.d.x;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = u_input.a;
    let var_1 = func_2();
    let var_2 = !(!vec4<bool>(true, global0.d.x, func_3(countOneBits(vec3<i32>(arg_0.c, -1i, -15834i)), vec4<i32>(-49087i, -2147483647i, -66473i, 1i), arg_0), true));
    var var_3 = global0.d;
    let var_4 = arg_0.c;
    return func_2();
}

fn func_4(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.a.x;
    var_0 = func_2().a.x;
    global0 = func_2();
    var var_1 = arg_2;
    var_0 = _wgslsmith_f_op_f32(1252f - arg_1.x);
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(var_1.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-943f, -975f, 2065f, arg_1.x) * vec4<f32>(arg_2.a.x, arg_2.b.x, 273f, -483f)), _wgslsmith_f_op_vec4_f32(max(var_1.a, global0.a))), select(!vec4<bool>(var_1.d.x, var_1.d.x, false, true), vec4<bool>(arg_2.d.x, false, var_1.d.x, true), select(vec4<bool>(true, arg_2.d.x, global0.d.x, var_1.d.x), vec4<bool>(false, false, arg_2.d.x, true), vec4<bool>(global0.d.x, var_1.d.x, var_1.d.x, global0.d.x)))))), global0.a.zy, ~(-(~96i)), func_2().d);
}

fn func_5(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(step(arg_0.a.x, global0.b.x));
    let var_2 = var_0;
    var_1 = 171f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, vec2<f32>(_wgslsmith_f_op_f32(floor(global0.b.x)), -721f), -global0.c, !vec2<bool>(global0.d.x, global0.d.x));
    var var_0 = func_5(func_4(firstLeadingBit(-global0.c) << (4294967295u % 32u), _wgslsmith_f_op_vec4_f32(-global0.a), func_1(Struct_1(global0.a, global0.a.yy, global0.c << (1u % 32u), select(global0.d, global0.d, false)))), vec3<i32>(-1i) * -vec3<i32>(1i, _wgslsmith_div_i32(global0.c, 63828i), -1i), ~firstTrailingBit(1u));
    let var_1 = func_5(Struct_1(vec4<f32>(-816f, global0.b.x, global0.a.x, global0.a.x), global0.a.ww, func_2().c, func_1(func_2()).d), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, -1i, var_0.c), vec3<i32>(var_0.c, 1i, -2147483647i))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.c, var_0.c, _wgslsmith_sub_i32(19209i, global0.c)), vec3<i32>(2147483647i, select(68739i, 9888i, true), ~(-1i)), _wgslsmith_add_vec3_i32(-vec3<i32>(-2147483647i, var_0.c, -1i), vec3<i32>(var_0.c, 7273i, var_0.c))), u_input.a.x);
    let var_2 = func_1(func_4(_wgslsmith_mod_i32(-var_0.c, func_1(Struct_1(vec4<f32>(var_0.b.x, global0.b.x, -791f, var_0.b.x), vec2<f32>(global0.a.x, var_0.a.x), 27639i, var_0.d)).c), vec4<f32>(_wgslsmith_div_f32(-2149f, _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_div_f32(256f, var_1.b.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1312f + var_1.b.x))), func_5(func_4(2147483647i, vec4<f32>(1000f, var_0.a.x, var_0.b.x, var_0.a.x), var_1), vec3<i32>(var_0.c, -6888i, var_1.c), 4294967295u).b.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-343f, global0.b.x, var_0.a.x, global0.a.x) + global0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, var_0.a.x))), reverseBits(~global0.c), vec2<bool>(!var_0.d.x, !var_1.d.x)))).a.x;
    let var_3 = ~(~(~17597u));
    let var_4 = ~countOneBits(var_3);
    let var_5 = min(vec3<u32>(abs(~(~var_4)), ~(~u_input.a.x), 0u), _wgslsmith_clamp_vec3_u32(~max(max(vec3<u32>(50678u, var_4, 22864u), vec3<u32>(u_input.a.x, var_4, u_input.a.x)), vec3<u32>(4294967295u, var_4, var_3) & vec3<u32>(var_4, 0u, 61620u)), ~reverseBits(~vec3<u32>(var_4, 61388u, var_3)), vec3<u32>(u_input.a.x, 18103u, ~(~19874u))));
    global0 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(523f, 497f, -1000f, var_0.b.x))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -133f, 1000f, 2331f) * var_0.a))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-231f, 1000f, -941f, 1011f)) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1663f, -1000f, 783f, -249f), vec4<f32>(2211f, var_1.a.x, global0.b.x, var_0.a.x)), var_0.a, select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_1.d.x, var_1.d.x, var_1.d.x), false))))), _wgslsmith_div_vec2_i32(max(vec2<i32>(global0.c, 20789i) & vec2<i32>(var_1.c, global0.c), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_1.c), vec2<i32>(1i, 24514i), vec2<i32>(var_1.c, global0.c))) >> (select(u_input.a, select(vec2<u32>(4294967295u, 36294u), u_input.a, var_1.d.x), var_0.d.x) % vec2<u32>(32u)), -vec2<i32>(~5459i, ~var_0.c)), ~vec3<u32>(_wgslsmith_div_u32(u_input.a.x, ~34319u), ~abs(var_3), firstTrailingBit(var_5.x >> (0u % 32u))), global0.b.x, var_4);
}

