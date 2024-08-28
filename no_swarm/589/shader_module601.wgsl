struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec4<bool>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(true, true, !(reverseBits(-2147483647i) >= _wgslsmith_mult_i32(u_input.d, reverseBits(-16353i))));
}

fn func_1(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_add_u32(arg_2.b.x, countOneBits(u_input.e));
    let var_1 = select(select(!(!vec3<bool>(arg_0, true, true)), !vec3<bool>(all(vec4<bool>(arg_0, false, arg_0, true)), select(false, false, false), 76172u < arg_2.a), vec3<bool>(true || all(vec4<bool>(false, arg_0, arg_0, arg_0)), true | (arg_0 | true), arg_0)), select(func_2(), vec3<bool>(arg_0, arg_0, !arg_0 & !arg_0), !(!(!vec3<bool>(arg_0, true, false)))), arg_0);
    var_0 = arg_2.b.x;
    let var_2 = reverseBits(~_wgslsmith_mult_vec2_u32(max(~arg_2.d.xz, select(arg_2.d.xz, u_input.b.yy, false)), ~arg_2.d.yz ^ vec2<u32>(arg_2.a, 1u)));
    let var_3 = Struct_3(arg_2, arg_2, u_input.b.yy, ~_wgslsmith_sub_u32(select(u_input.c.x | u_input.e, arg_2.b.x & 29405u, arg_1 >= arg_1), min(0u, var_2.x)));
    return arg_1;
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: u32, arg_3: bool) -> Struct_3 {
    let var_0 = Struct_3(Struct_1(718u, reverseBits(u_input.b.ywx), arg_0, vec3<u32>(47078u, ~min(0u, 65566u), abs(4294967295u) << (u_input.a % 32u))), Struct_1(~(~u_input.e), vec3<u32>(~4294967295u, ~arg_2, _wgslsmith_div_u32(1u, arg_2)) >> (firstLeadingBit(u_input.c & vec3<u32>(arg_2, u_input.b.x, arg_2)) % vec3<u32>(32u)), select(~arg_0, ~arg_0, vec3<bool>(true, true, true)) | arg_0, _wgslsmith_div_vec3_u32(~u_input.c, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, arg_2, u_input.c.x), vec3<u32>(u_input.e, 1u, 4294967295u)) ^ ~vec3<u32>(29866u, 65836u, u_input.e))), ~(vec2<u32>(_wgslsmith_div_u32(u_input.b.x, arg_2), u_input.a) >> (u_input.c.xy % vec2<u32>(32u))), abs(0u));
    let var_1 = Struct_2(arg_0 << (u_input.b.xzz % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(any(vec3<bool>(false, arg_3, arg_3)), _wgslsmith_f_op_f32(func_1(arg_3, arg_1, var_0.a)), var_0.a))), arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - arg_1) - _wgslsmith_f_op_f32(arg_1 * 968f))))), select(!(!vec4<bool>(arg_3, arg_3, true, false)), select(select(!vec4<bool>(arg_3, false, arg_3, arg_3), select(vec4<bool>(arg_3, false, false, arg_3), vec4<bool>(arg_3, arg_3, true, true), arg_3), true), vec4<bool>(false, arg_3, true, true), arg_3), !select(vec4<bool>(true, arg_3, true, true), vec4<bool>(arg_3, false, arg_3, false), arg_3)), Struct_1(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.b, vec4<u32>(4294967295u, 4294967295u, var_0.a.a, 0u)), vec4<u32>(1u, 4294967295u, var_0.d, var_0.c.x))), u_input.c, vec3<i32>(_wgslsmith_div_i32(2147483647i, 2147483647i) | _wgslsmith_mod_i32(26068i, u_input.d), firstLeadingBit(-8221i), 2147483647i), u_input.c << (reverseBits(~vec3<u32>(92917u, var_0.d, 4294967295u)) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(func_1(!select(arg_3, arg_3, arg_3), _wgslsmith_f_op_f32(func_1(true, arg_1, var_0.a)), var_0.b))));
    let var_2 = var_1;
    let var_3 = var_0;
    let var_4 = abs(1i);
    return Struct_3(var_3.a, var_0.a, u_input.b.xz, 15037u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(firstTrailingBit(_wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.d, u_input.d, u_input.d), vec3<i32>(-62788i, u_input.d, -2147483647i))) & ~(~min(vec3<i32>(u_input.d, 0i, 22481i), vec3<i32>(u_input.d, -1i, -24465i))), _wgslsmith_f_op_f32(func_1(false, -985f, Struct_1(~(~u_input.c.x), vec3<u32>(min(1u, 24771u), _wgslsmith_add_u32(u_input.e, u_input.c.x), _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(22962u, u_input.b.x, u_input.c.x, u_input.c.x))), countOneBits(vec3<i32>(-9357i, 0i, u_input.d) | vec3<i32>(u_input.d, 8813i, 1i)), ~u_input.c))), 11471u, !func_2().x);
    let var_1 = vec2<bool>(true, any(select(func_2().zy, !func_2().yy, vec2<bool>(true, all(vec2<bool>(false, true))))));
    var var_2 = Struct_2(var_0.b.c, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-861f, 2037f, -2082f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2897f, 592f, 432f))))), select(vec4<bool>(any(select(vec2<bool>(true, var_1.x), vec2<bool>(false, false), false)), all(select(vec4<bool>(var_1.x, var_1.x, var_1.x, false), vec4<bool>(var_1.x, var_1.x, false, false), vec4<bool>(var_1.x, true, true, true))), var_1.x, var_1.x), vec4<bool>(func_2().x, var_1.x, true, true), vec4<bool>(true, true, func_2().x, true)), Struct_1(select(var_0.a.b.x, max(_wgslsmith_dot_vec3_u32(u_input.b.wyw, var_0.b.b), 0u), true), u_input.b.wxz, _wgslsmith_div_vec3_i32(var_0.b.c, -var_0.b.c), firstLeadingBit(_wgslsmith_mult_vec3_u32(~var_0.a.b, vec3<u32>(var_0.b.b.x, u_input.b.x, var_0.b.b.x)))), _wgslsmith_f_op_f32(-233f + -1969f));
    var_0 = Struct_3(func_3(var_0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e)), _wgslsmith_dot_vec4_u32(~reverseBits(u_input.b), u_input.b), !var_1.x).b, Struct_1(53804u << (u_input.a % 32u), ~(~reverseBits(vec3<u32>(var_0.b.b.x, 4294967295u, var_0.b.d.x))), vec3<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -19661i, u_input.d, -1i), vec4<i32>(var_2.a.x, 2147483647i, u_input.d, u_input.d))), _wgslsmith_dot_vec2_i32(var_0.b.c.xx, vec2<i32>(var_2.d.c.x, var_2.d.c.x)) & var_2.d.c.x, ~(var_2.a.x << (60918u % 32u))), var_2.d.b), firstLeadingBit(~_wgslsmith_mod_vec2_u32(vec2<u32>(var_0.c.x, var_2.d.a), vec2<u32>(var_2.d.a, u_input.a))), ~(_wgslsmith_clamp_u32(1u, min(var_0.b.d.x, 1u), ~u_input.a) | 6283u));
    var_0 = Struct_3(Struct_1(func_3(vec3<i32>(var_0.b.c.x, _wgslsmith_div_i32(-1225i, -1228i), 0i), _wgslsmith_f_op_f32(func_1(false, _wgslsmith_f_op_f32(-var_2.e), Struct_1(54551u, vec3<u32>(var_2.d.b.x, var_0.b.a, 71825u), var_0.a.c, var_2.d.b))), max(4294967295u, ~76764u), all(var_2.c.xyy)).d, ~vec3<u32>(var_0.d, func_3(var_2.a, var_2.b.x, var_2.d.a, true).a.d.x, ~u_input.e), vec3<i32>(var_0.b.c.x | 2147483647i, ~(-2147483647i), 1i) >> (_wgslsmith_div_vec3_u32(~var_0.b.b, var_2.d.b) % vec3<u32>(32u)), firstLeadingBit(_wgslsmith_mod_vec3_u32(var_2.d.d, vec3<u32>(var_0.b.d.x, var_2.d.b.x, 5775u))) >> (var_2.d.d % vec3<u32>(32u))), var_2.d, var_2.d.d.yy, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(u_input.b.xx), ~max(-56369i, -43824i), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-325f + var_2.e))));
}

