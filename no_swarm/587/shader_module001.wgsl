struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_1(!select(select(select(vec2<bool>(true, arg_1.c.x), arg_1.a, arg_1.a.x), vec2<bool>(arg_1.a.x, arg_1.a.x), arg_1.c), arg_1.a, any(select(vec2<bool>(false, true), arg_1.c, arg_1.a))), arg_1.d, !arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(447f, var_0.d)))))), arg_1.b, _wgslsmith_f_op_f32(-1597f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(575f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.d), -1354f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b)))))));
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, _wgslsmith_clamp_i32(~2866i, arg_2.x, _wgslsmith_mod_i32(arg_2.x, u_input.b) | _wgslsmith_div_i32(-1i, u_input.e)), arg_2.x, -(~36462i)), vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(u_input.e), _wgslsmith_div_i32(0i, -2147483647i)), ~1i, ~arg_2.x, arg_2.x) >> (~_wgslsmith_mod_vec4_u32(max(vec4<u32>(arg_0.x, 34442u, arg_0.x, 0u), vec4<u32>(12399u, 12037u, u_input.d.x, arg_0.x)), vec4<u32>(arg_0.x, arg_0.x, u_input.a.x, 1u)) % vec4<u32>(32u)));
    var var_3 = 22502u;
    var_3 = ~_wgslsmith_clamp_u32(reverseBits(_wgslsmith_sub_u32(~4294967295u, ~arg_0.x)), _wgslsmith_dot_vec4_u32(max(vec4<u32>(19985u, u_input.d.x, 45485u, 35616u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.x, u_input.d.x, 4294967295u), vec4<u32>(7175u, arg_0.x, 1u, 25069u), vec4<u32>(arg_0.x, arg_0.x, 56923u, arg_0.x))), vec4<u32>(1u, select(arg_0.x, 18443u, var_0.a.x), _wgslsmith_mod_u32(arg_0.x, 1u), arg_0.x)), 0u);
    return firstTrailingBit(vec3<u32>(u_input.d.x, u_input.a.x, arg_0.x));
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -404f);
    return _wgslsmith_dot_vec3_u32(~(u_input.d >> (vec3<u32>(0u, u_input.d.x, 12422u) % vec3<u32>(32u))) & func_3(vec2<u32>(1u, 32137u), Struct_1(vec2<bool>(false, false), var_0, vec2<bool>(false, true), 410f), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(u_input.e, u_input.e))), ~u_input.d) >= u_input.d.x;
}

fn func_1(arg_0: u32) -> bool {
    let var_0 = -571f;
    var var_1 = Struct_1(vec2<bool>(all(vec3<bool>(true, true, true)), func_2()), -454f, !select(!select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true)), true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), 1f));
    let var_2 = vec3<bool>(false, true, all(select(select(select(vec4<bool>(var_1.c.x, false, var_1.c.x, var_1.a.x), vec4<bool>(true, false, var_1.c.x, false), var_1.a.x), vec4<bool>(var_1.a.x, false, false, true), !vec4<bool>(false, false, var_1.a.x, var_1.a.x)), !vec4<bool>(false, var_1.c.x, false, false), any(var_1.c))));
    let var_3 = firstLeadingBit(_wgslsmith_mod_vec4_i32(((vec4<i32>(u_input.e, u_input.b, u_input.c, -46354i) << (vec4<u32>(u_input.a.x, u_input.d.x, 0u, arg_0) % vec4<u32>(32u))) >> (~vec4<u32>(43980u, 1u, arg_0, 4294967295u) % vec4<u32>(32u))) | -(vec4<i32>(u_input.e, -1i, u_input.b, u_input.b) << (vec4<u32>(11053u, 48836u, u_input.a.x, 4294967295u) % vec4<u32>(32u))), vec4<i32>(u_input.e, ~u_input.e, ~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, -20660i, u_input.b, u_input.b), vec4<i32>(0i, 1i, -45567i, 83198i)), _wgslsmith_mult_i32(max(u_input.c, u_input.b), _wgslsmith_mult_i32(u_input.c, -8044i)))));
    var var_4 = all(var_2);
    return all(var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = min(firstTrailingBit(2147483647i), ~(-(~u_input.e)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(vec2<bool>(true & any(vec3<bool>(false, true, true)), func_1(_wgslsmith_div_u32(12152u, 81555u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -967f), _wgslsmith_f_op_f32(f32(-1f) * -283f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1001f - 1000f), _wgslsmith_div_f32(397f, 1220f))), true)), !vec2<bool>(true, u_input.b < u_input.c), -369f), Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f)) - 1f), select(vec2<bool>(true, func_1(u_input.d.x)), vec2<bool>(true, all(vec3<bool>(false, true, false))), vec2<bool>(u_input.c <= 1i, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(231f - -120f) - 697f)))), false, Struct_1(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(676f)), -883f))), vec2<bool>(true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) + _wgslsmith_f_op_f32(201f + -1510f))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-var_0.d), var_0.d);
    var var_2 = var_0;
    var var_3 = -(vec4<i32>(-1i) * -vec4<i32>(u_input.c, _wgslsmith_mult_i32(u_input.e, u_input.e), countOneBits(25718i), u_input.b >> (41109u % 32u)));
    var var_4 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(1u, _wgslsmith_clamp_u32(u_input.d.x, 0u, u_input.a.x)), u_input.d.x), ~vec3<u32>(40992u, 3831u, ~u_input.d.x), select(vec3<bool>(!var_2.c.x, var_4.a.x, var_0.a.x), !vec3<bool>(var_0.a.x, var_2.c.x, var_4.c.x), !select(vec3<bool>(false, false, var_0.c.x), vec3<bool>(var_0.c.x, var_2.c.x, var_2.a.x), vec3<bool>(var_4.c.x, var_2.c.x, var_0.a.x)))), -19084i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-521f, var_4.d))))), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.d, -317f, var_2.b, 881f)))))));
}

