struct Struct_1 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<u32>(4294967295u, 4294967295u), -648f, -12420i);

var<private> global1: vec4<u32> = vec4<u32>(123403u, 4294967295u, 55895u, 4294967295u);

var<private> global2: vec2<f32> = vec2<f32>(-403f, 563f);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_2) -> u32 {
    global0 = Struct_4(_wgslsmith_clamp_vec2_u32(arg_0.xx, vec2<u32>(global0.a.x, global1.x), max(~vec2<u32>(global0.a.x, arg_0.x) ^ ~vec2<u32>(62936u, 42229u), select(~u_input.a, global1.zx, !vec2<bool>(arg_1.a, false)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global2.x)) * _wgslsmith_f_op_f32(global2.x * 710f)))))), 2147483647i);
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, global2.x)))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global0.b)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.x, 546f), vec2<f32>(-638f, global2.x), false))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b, 1968f)))))))));
    let var_0 = -(u_input.c ^ ~(-u_input.c));
    let var_1 = global1.wz;
    let var_2 = arg_1.a;
    return global1.x;
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_1) -> vec4<bool> {
    let var_0 = vec2<u32>(func_3(u_input.b, Struct_2(true)), firstLeadingBit(global0.a.x));
    global0 = arg_0;
    global1 = ~vec4<u32>((32067u >> (firstTrailingBit(arg_2.c) % 32u)) << (((global1.x | arg_0.a.x) << (32574u % 32u)) % 32u), global1.x, abs(_wgslsmith_add_u32(61490u, global1.x)) >> (~1u % 32u), ~1u);
    var var_1 = arg_2;
    global1 = ~arg_2.a;
    return vec4<bool>(!(!(-arg_0.c != -u_input.c)), var_1.b.x, arg_2.b.x, all(!var_1.b) != !(!(var_1.b.x | arg_2.b.x)));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> bool {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -337f)), global0.b, _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))))));
    let var_1 = 8342i;
    let var_2 = !all(select(select(!arg_0.wwy, arg_0.wyx, any(vec2<bool>(arg_0.x, arg_0.x))), func_2(Struct_4(u_input.a, global2.x, 1i), ~vec3<i32>(2147483647i, var_1, u_input.c), Struct_1(u_input.b, vec4<bool>(arg_1.a, true, true, arg_1.a), 4294967295u, vec4<f32>(global2.x, global2.x, arg_2, global2.x))).xzx, 19001u <= _wgslsmith_mod_u32(u_input.d, global1.x)));
    return all(vec4<bool>(!(!any(arg_0.xyw)), !arg_1.a, !any(!vec2<bool>(arg_0.x, false)), all(arg_0) & (reverseBits(global0.a.x) < global1.x)));
}

fn func_5(arg_0: bool, arg_1: Struct_3, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = Struct_4(select(vec2<u32>(func_3(vec4<u32>(37098u, 29238u, global1.x, 36741u), Struct_2(false)), _wgslsmith_div_u32(min(39491u, 0u), 46151u)), firstTrailingBit(vec2<u32>(53142u, func_3(u_input.b, Struct_2(arg_0)))), func_2(Struct_4(~u_input.b.yw, arg_1.b, ~u_input.c), vec3<i32>(_wgslsmith_add_i32(2147483647i, global0.c), u_input.c, global0.c << (u_input.a.x % 32u)), Struct_1(vec4<u32>(0u, 34208u, global0.a.x, arg_2.x) & vec4<u32>(30754u, 0u, 0u, 60377u), vec4<bool>(true, arg_0, arg_0, arg_0), countOneBits(global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, -2502f, -2253f, arg_1.a)))).xx), 1693f, -(~(~u_input.c)));
    global0 = Struct_4(~(global1.yy >> (u_input.a % vec2<u32>(32u))), _wgslsmith_f_op_f32(-var_0.b), u_input.c);
    let var_1 = Struct_1(abs(abs(u_input.b)), select(!(!vec4<bool>(true, arg_0, false, true)), select(vec4<bool>(u_input.d < 1u, any(vec3<bool>(arg_0, arg_0, true)), true, true), func_2(var_0, vec3<i32>(-2147483647i, -3930i, u_input.c), Struct_1(vec4<u32>(19058u, 30351u, 34419u, 1u), vec4<bool>(arg_0, arg_0, arg_0, true), 31463u, vec4<f32>(-1299f, global2.x, 1302f, arg_1.a))), (false || arg_0) == all(vec2<bool>(false, true))), true != !arg_0), _wgslsmith_div_u32(u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_div_u32(4294967295u, global0.a.x), 49550u)) & firstTrailingBit(_wgslsmith_sub_u32(97834u, var_0.a.x) | global1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(arg_1.b)), -993f, _wgslsmith_f_op_f32(select(188f, _wgslsmith_f_op_f32(f32(-1f) * -394f), !arg_0)), global0.b)));
    global1 = var_1.a;
    let var_2 = !(!vec3<bool>(true, false, true | (true | var_1.b.x)));
    return var_0;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    global0 = func_5(func_4(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, true), false), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), func_2(Struct_4(vec2<u32>(global1.x, 837u), 1000f, -19781i), vec3<i32>(-2147483647i, -2147483647i, 7126i), Struct_1(vec4<u32>(14838u, global1.x, 4294967295u, 48298u), vec4<bool>(false, false, false, true), global0.a.x, vec4<f32>(1169f, arg_0, -370f, global0.b))), true)), Struct_2(all(vec4<bool>(false, false, true, true))), arg_0), Struct_3(_wgslsmith_f_op_f32(ceil(arg_0)), 402f), countOneBits(abs(vec4<u32>(global1.x, _wgslsmith_mult_u32(1u, global0.a.x), _wgslsmith_dot_vec3_u32(global1.xww, vec3<u32>(1u, u_input.d, global0.a.x)), global0.a.x))));
    let var_0 = _wgslsmith_mod_vec3_u32(u_input.b.wzz, u_input.b.xyw);
    let var_1 = Struct_3(global2.x, -1859f);
    var var_2 = Struct_2(false);
    return StorageBuffer(-1247f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(1165f, -1052f, _wgslsmith_f_op_f32(global0.b * global0.b));
    let x = u_input.a;
    s_output = func_1(global2.x);
}

