struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = Struct_1(!(!select(!vec4<bool>(false, arg_1, true, arg_0.a.x), select(vec4<bool>(arg_0.a.x, arg_1, true, false), vec4<bool>(arg_1, false, arg_0.a.x, arg_0.a.x), arg_1), true)), arg_0.b);
    let var_1 = var_0.a.x;
    let var_2 = arg_0.a.x;
    let var_3 = false;
    var var_4 = arg_0;
    return _wgslsmith_mod_i32(var_4.b.x, countOneBits(var_4.b.x));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(!select(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(select(true, false, false), true, true, true), true), ~firstLeadingBit(~(~vec3<i32>(7795i, 21636i, -19322i))));
    var var_1 = u_input.b;
    var_1 = 99607u;
    var var_2 = var_0.a.zw;
    var_2 = vec2<bool>(true, var_0.a.x);
    return -_wgslsmith_add_i32(_wgslsmith_add_i32(1i, func_2(var_0, true)), ~abs(var_0.b.x));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-538f, 831f));
    let var_1 = !(!select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), false), true), vec3<bool>(true, true, true)));
    let var_2 = ~vec2<u32>(u_input.a, _wgslsmith_mod_u32(0u, abs(u_input.a))) | vec2<u32>(143460u, 21586u);
    var var_3 = 1u;
    var var_4 = ~vec4<i32>(func_2(Struct_1(vec4<bool>(var_1.x, var_1.x, true, var_1.x), ~vec3<i32>(44548i, 2147483647i, -25904i)), !(var_0.x <= var_0.x)), ~1i, abs(_wgslsmith_clamp_i32(reverseBits(30046i), -31681i, 34400i)), func_3());
    return Struct_1(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_1.x, var_1.x, false, true), select(vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, false, false, false), var_1.x), var_1.x), var_1.x), vec4<bool>(_wgslsmith_div_f32(var_0.x, 1896f) != _wgslsmith_f_op_f32(-var_0.x), any(!vec4<bool>(true, var_1.x, var_1.x, true)), _wgslsmith_f_op_f32(max(var_0.x, -168f)) > _wgslsmith_f_op_f32(abs(var_0.x)), all(vec3<bool>(true, var_1.x, var_1.x))), vec4<bool>(true | var_1.x, all(select(vec4<bool>(var_1.x, false, false, var_1.x), vec4<bool>(true, var_1.x, var_1.x, var_1.x), true)), true, true | any(vec4<bool>(var_1.x, true, false, false)))), var_4.ywz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(1143f, -265f));
    var var_1 = -_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-16056i, _wgslsmith_div_i32(34972i, 27i)), -vec2<i32>(1i, 1i)), vec2<i32>(2147483647i, abs(min(36825i, 69182i))));
    var var_2 = func_1();
    let var_3 = var_0;
    var_2 = Struct_1(func_1().a, max(_wgslsmith_add_vec3_i32(var_2.b, firstLeadingBit(vec3<i32>(var_1.x, 20188i, var_1.x) ^ vec3<i32>(-2147483647i, var_1.x, 42306i))), var_2.b));
    var var_4 = Struct_1(!vec4<bool>(var_2.a.x, var_2.a.x, !var_2.a.x && (var_2.a.x || var_2.a.x), ~u_input.b != u_input.a), vec3<i32>(-(var_1.x ^ var_2.b.x), min(1i, firstTrailingBit(_wgslsmith_mod_i32(-1i, 27277i))), func_1().b.x));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~(-var_2.b.x)), countOneBits(abs(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, 22468u), vec3<u32>(u_input.a, u_input.b, u_input.a)))), vec4<u32>(_wgslsmith_div_u32(u_input.a, firstLeadingBit(u_input.a)), u_input.b, select(abs(16387u), ~1u, all(vec2<bool>(false, false))), 4294967295u) & vec4<u32>(37495u, abs(~u_input.a), ~_wgslsmith_sub_u32(u_input.b, u_input.b), u_input.b));
}

