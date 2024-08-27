struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(383f, vec2<u32>(1281u, 3416u));

var<private> global1: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = vec4<i32>(~1i, 1i, max(_wgslsmith_div_i32(-(~0i), reverseBits(-1i)), 1i), _wgslsmith_mod_i32(19458i, -1i));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(1231f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * global0.a)))))), global0.a, global0.a);
    let var_2 = Struct_4(835f, min(_wgslsmith_div_vec2_u32(~(u_input.c.yz >> (vec2<u32>(global0.b.x, 48621u) % vec2<u32>(32u))), vec2<u32>(abs(arg_0), arg_0)), ~(~vec2<u32>(0u, arg_0))));
    global1 = !select(vec3<bool>(false, false & global1.x, global1.x), !select(!vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, true, false), !vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(global1.x, global1.x, true));
    global1 = !(!vec3<bool>(any(select(global1.zz, vec2<bool>(global1.x, global1.x), global1.zy)), true, !global1.x));
    return abs(_wgslsmith_sub_u32(u_input.b, min(~_wgslsmith_mult_u32(u_input.a.x, global0.b.x), arg_0)));
}

fn func_2() -> bool {
    var var_0 = Struct_1(min(1u, 1u), global1.x);
    var var_1 = global0.b.x;
    global1 = !(!vec3<bool>(false, all(vec3<bool>(false, false, false)), !(!global1.x)));
    global1 = vec3<bool>(true, all(select(vec2<bool>(var_0.b, true), select(!global1.xy, global1.zz, any(vec2<bool>(true, false))), true)), global1.x);
    var var_2 = vec4<u32>(firstTrailingBit(u_input.c.x), ~(~(~1u)), ~(~func_3(0u)), u_input.a.x) ^ vec4<u32>(reverseBits(_wgslsmith_mult_u32(var_0.a >> (var_0.a % 32u), _wgslsmith_div_u32(36040u, var_0.a))), 4294967295u, ~4294967295u, 12805u);
    return false;
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = func_2() & func_2();
    global0 = Struct_4(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(-global0.a)), abs(vec2<u32>(u_input.a.x, 57212u >> (_wgslsmith_div_u32(global0.b.x, 76248u) % 32u))));
    var var_1 = reverseBits(_wgslsmith_add_vec3_i32(select(min(vec3<i32>(2147483647i, -2147483647i, -17069i), vec3<i32>(946i, -14556i, -25078i)), select(vec3<i32>(0i, 0i, 7035i), vec3<i32>(29796i, -2147483647i, 14879i), vec3<bool>(global1.x, var_0, false)), !global1.x), select(vec3<i32>(44296i, -55082i, 20213i), vec3<i32>(0i, -1i, -63660i), global1.x) | -vec3<i32>(-9440i, 2147483647i, -7350i)) << (vec3<u32>(firstTrailingBit(_wgslsmith_sub_u32(u_input.a.x, 0u)), reverseBits(41292u >> (1u % 32u)), global0.b.x) % vec3<u32>(32u)));
    var var_2 = !func_2();
    let var_3 = global1.zz;
    return max(countOneBits(_wgslsmith_div_vec2_u32(~vec2<u32>(0u, arg_1.a), ~max(vec2<u32>(10422u, u_input.a.x), vec2<u32>(4294967295u, arg_1.a)))), ~u_input.c.zz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-336f, -163f)), select(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -868f)), Struct_1(~global0.b.x, global1.x)), reverseBits(global0.b), !all(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(false, true, global1.x), vec3<bool>(false, false, global1.x)))));
    global1 = vec3<bool>(select(firstLeadingBit(_wgslsmith_mult_i32(1i, 39624i)) >= (43071i >> (u_input.a.x % 32u)), _wgslsmith_clamp_i32(abs(-2147483647i), -39116i, 1i) <= ~(-1i), any(select(!vec4<bool>(true, global1.x, false, true), select(vec4<bool>(true, true, global1.x, true), vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, true, false, global1.x)), !global1.x))), !(!(!(u_input.b > global0.b.x))), true);
    let var_0 = Struct_3(vec3<bool>(global1.x, all(!select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, true), global1.x)), any(global1.yz) || all(select(vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x), global1.x))));
    var var_1 = Struct_4(1471f, firstLeadingBit(reverseBits(global0.b)));
    global1 = var_0.a;
    var var_2 = !(!var_0.a);
    global1 = select(vec3<bool>(any(vec2<bool>(false, global1.x)), !(_wgslsmith_f_op_f32(ceil(2560f)) == var_1.a), any(var_0.a.xz)), select(vec3<bool>(func_2(), any(select(vec4<bool>(global1.x, var_2.x, false, global1.x), vec4<bool>(true, var_0.a.x, true, var_2.x), global1.x)), false), !var_0.a, !any(vec2<bool>(false, global1.x))), true);
    var_1 = Struct_4(-648f, ~var_1.b);
    global0 = Struct_4(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0.a, _wgslsmith_f_op_f32(-var_1.a))), var_1.a), vec2<u32>(21682u, 36161u));
    let x = u_input.a;
    s_output = StorageBuffer(~func_3(0u));
}

