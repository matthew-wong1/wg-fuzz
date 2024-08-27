struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(-627f);
    let var_1 = _wgslsmith_mult_vec2_i32(~(u_input.a.wx << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u))), -u_input.a.yz) >> (max(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.b, u_input.b), ~(~vec2<u32>(2800u, u_input.b))), vec2<u32>(~(~17204u), abs(u_input.b))) % vec2<u32>(32u));
    var var_2 = Struct_3(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true));
    let var_3 = u_input.b;
    let var_4 = u_input.a.x;
    return vec3<u32>(firstLeadingBit(4294967295u), 1u, _wgslsmith_sub_u32(var_3, _wgslsmith_mod_u32(var_3, abs(u_input.b)) << (0u % 32u)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = u_input.b;
    let var_1 = func_3();
    var var_2 = -1427f;
    let var_3 = _wgslsmith_mult_u32(~var_0, _wgslsmith_sub_u32(~(u_input.b >> (4294967295u % 32u)) >> ((_wgslsmith_clamp_u32(7007u, u_input.b, 96439u) >> (u_input.b % 32u)) % 32u), ~1u));
    let var_4 = Struct_2(any(arg_0.xz), _wgslsmith_f_op_vec2_f32(-arg_1), var_1, u_input.a);
    return var_4;
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = arg_1.a;
    var var_1 = _wgslsmith_f_op_f32(floor(arg_1.b.x));
    let var_2 = ~(~vec2<u32>(_wgslsmith_clamp_u32(40984u, ~53178u, 21347u), 19146u));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b.x)));
    var_1 = arg_1.b.x;
    return Struct_3(!select(select(!vec4<bool>(false, false, arg_1.a, arg_1.a), vec4<bool>(arg_1.a, true, arg_1.a, false), false), !(!vec4<bool>(arg_1.a, false, true, true)), vec4<bool>(u_input.a.x < u_input.a.x, false, true && arg_1.a, true)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32, arg_3: Struct_2) -> u32 {
    let var_0 = false;
    var var_1 = 0i;
    let var_2 = arg_3.c.x;
    var_1 = -28262i & _wgslsmith_mult_i32(_wgslsmith_add_i32(-abs(1i), ~u_input.a.x), ~_wgslsmith_add_i32(~arg_3.d.x, _wgslsmith_sub_i32(arg_3.d.x, -1i)));
    let var_3 = vec4<i32>(-reverseBits(-(i32(-1i) * -2147483647i)), firstTrailingBit(0i), 2147483647i, -110398i);
    return 21101u;
}

fn func_6(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    var var_0 = func_4(_wgslsmith_sub_vec3_u32(arg_1.wwz, arg_1.zxy), func_2(vec3<bool>((arg_0 == arg_0) || arg_0, !(true == arg_0), false), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-606f, 525f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(318f, -1000f)))), any(select(!vec3<bool>(true, arg_0, true), !vec3<bool>(arg_0, arg_0, false), arg_0)))).a.xy;
    return _wgslsmith_mult_u32(1u, arg_1.x);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: vec3<bool>, arg_3: vec2<u32>) -> bool {
    var var_0 = func_6(all(select(select(vec4<bool>(arg_1.x, arg_1.x, false, arg_2.x), vec4<bool>(true, arg_1.x, true, false), vec4<bool>(arg_1.x, true, false, true)), vec4<bool>(true, arg_2.x, false, arg_1.x), arg_1.x)) & (arg_3.x > _wgslsmith_mult_u32(u_input.b & 14091u, _wgslsmith_mod_u32(16901u, 46327u))), vec4<u32>(~(~(~u_input.b)), _wgslsmith_mult_u32(u_input.b, ~(~u_input.b)), func_5(func_4(reverseBits(vec3<u32>(u_input.b, 10298u, 7279u)), func_2(arg_2, vec2<f32>(-810f, arg_0.x), true)), func_4(vec3<u32>(u_input.b, u_input.b, 1u) | vec3<u32>(arg_3.x, 36600u, 4294967295u), Struct_2(false, vec2<f32>(346f, 128f), vec3<u32>(u_input.b, 557u, 43978u), u_input.a)), 1061f, Struct_2(false, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -2723f)), vec3<u32>(u_input.b, arg_3.x, 1u) >> (vec3<u32>(1u, 37101u, 26120u) % vec3<u32>(32u)), ~vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, -1i))), abs(~(~u_input.b))));
    let var_1 = func_2(select(!(!(!vec3<bool>(arg_1.x, arg_2.x, arg_1.x))), !arg_2, select(vec3<bool>(true, false, arg_2.x && arg_1.x), func_4(~vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_2(arg_2.x, arg_0.yz, vec3<u32>(arg_3.x, 1u, arg_3.x), u_input.a)).a.ywx, vec3<bool>(arg_1.x, !arg_1.x, u_input.b < arg_3.x))), arg_0.yy, !arg_1.x);
    var_0 = arg_3.x;
    var var_2 = _wgslsmith_f_op_f32(-1000f - 1417f) != arg_0.x;
    var var_3 = vec2<bool>(!var_1.a & arg_1.x, arg_1.x);
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1824f, 980f, false))) != 1149f, all(vec4<bool>(true, true, true, true)), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true)))), !(!func_1(vec3<f32>(969f, 289f, -1284f), vec2<bool>(true, false), vec3<bool>(false, false, false), vec2<u32>(u_input.b, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, u_input.a, ~vec3<u32>(~4294967295u, firstTrailingBit(func_3().x), u_input.b), 4294967295u);
}

