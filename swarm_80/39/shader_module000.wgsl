struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: u32,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<bool>,
    d: vec4<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-228f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-152f, 138f)) + -1459f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f), _wgslsmith_f_op_f32(round(-1905f))), _wgslsmith_f_op_f32(-406f * _wgslsmith_f_op_f32(1000f + 1388f))))));
    var var_1 = vec4<f32>(-650f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)) * -1309f))), _wgslsmith_f_op_f32(floor(-1855f)), 160f);
    var var_2 = Struct_4(Struct_2(!(!select(vec4<bool>(global0.e, false, true, true), vec4<bool>(false, true, false, false), true))));
    let var_3 = Struct_4(Struct_2(select(vec4<bool>(any(vec4<bool>(global0.b.x, global0.b.x, global0.e, false)), true, false, true), var_2.a.a, global0.e)));
    var var_4 = any(var_3.a.a.xyy) & any(!var_3.a.a.zx);
    return select(!select(global0.b, var_3.a.a.zx, var_2.a.a.x), vec2<bool>(any(select(select(var_2.a.a.wzz, vec3<bool>(true, global0.e, false), var_3.a.a.yxx), select(var_3.a.a.wwy, var_3.a.a.yxw, var_3.a.a.x), true)), true), !all(vec2<bool>(!var_3.a.a.x, any(vec4<bool>(global0.e, true, true, var_3.a.a.x)))));
}

fn func_2() -> Struct_4 {
    global0 = Struct_1(select(-2147483647i, -(global0.d.x & _wgslsmith_add_i32(global0.d.x, global0.d.x)), true), !func_3(), max(u_input.b, min(global0.c, min(15002u, _wgslsmith_add_u32(global0.c, 4294967295u)))), global0.d, global0.b.x);
    var var_0 = Struct_3(Struct_2(select(!select(vec4<bool>(global0.e, true, global0.b.x, global0.b.x), vec4<bool>(false, global0.e, global0.e, true), vec4<bool>(global0.e, global0.e, true, true)), select(!vec4<bool>(global0.b.x, global0.b.x, false, global0.e), !vec4<bool>(global0.b.x, true, global0.b.x, true), vec4<bool>(global0.e, global0.e, true, false)), vec4<bool>(false, true, false, global0.c > global0.c))), u_input.b, global0.b, !vec4<bool>(true, all(!global0.b), 535f < _wgslsmith_f_op_f32(step(-1009f, -405f)), !global0.b.x));
    return Struct_4(var_0.a);
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_4) -> Struct_1 {
    let var_0 = -select(-1i << (arg_1 % 32u), select(45585i, ~_wgslsmith_mult_i32(u_input.a, u_input.a), global0.b.x), global0.e);
    let var_1 = Struct_3(arg_2.a, arg_1, !global0.b, vec4<bool>(!select(false, true, true) & any(arg_2.a.a), arg_2.a.a.x, !arg_2.a.a.x & !(!global0.b.x), !func_3().x));
    let var_2 = func_2().a;
    var var_3 = var_1.d.xww;
    var var_4 = 46222u;
    return Struct_1(~(-1i | u_input.a), vec2<bool>(var_1.b >= _wgslsmith_mult_u32(abs(arg_1), arg_0.x), any(vec2<bool>(true, true))), min(arg_1, max(reverseBits(10489u) << (~global0.c % 32u), abs(max(arg_1, 64208u)))), countOneBits((select(global0.d, global0.d, true) << (arg_0.yx % vec2<u32>(32u))) >> (arg_0.xx % vec2<u32>(32u))), false);
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = func_4(~vec3<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.c, 4294967295u, 63756u, u_input.b), _wgslsmith_mod_vec4_u32(vec4<u32>(32261u, global0.c, 85979u, 0u), vec4<u32>(global0.c, 4294967295u, 28220u, 0u))), u_input.b, u_input.b), u_input.b, func_2());
    return 2147483647i | ~var_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_i32(-24258i, -1i);
    var var_1 = firstLeadingBit(-(~(~select(vec4<i32>(global0.a, u_input.a, u_input.a, -19951i), vec4<i32>(33998i, var_0, var_0, u_input.a), true))));
    var var_2 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-13274i, var_0, -1i, global0.d.x), vec4<i32>(37359i, global0.d.x, global0.d.x, 9388i)), firstLeadingBit(var_1.x))), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-69562i, u_input.a, 6365i, 9206i), vec4<i32>(var_1.x, u_input.a, var_1.x, var_0)), vec4<i32>(-16438i, -20891i, global0.a, 2147483647i)) & _wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, -33046i, 2147483647i, -2147483647i), vec4<i32>(21262i, 1i, -28214i, -78352i) << (vec4<u32>(16246u, 0u, global0.c, 4294967295u) % vec4<u32>(32u))), vec4<i32>(var_1.x, func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 2184f) + vec2<f32>(-242f, 1036f))), var_0, ~func_4(vec3<u32>(4294967295u, u_input.b, 1u), u_input.b, Struct_4(Struct_2(vec4<bool>(true, true, false, global0.e)))).a)), 1075f, 2147483647i, firstTrailingBit(countOneBits(-vec4<i32>(u_input.a, -1i, 20075i, 2147483647i))));
}

