struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<i32>) -> f32 {
    var var_0 = ~_wgslsmith_div_i32(arg_0.a.c.x, _wgslsmith_dot_vec3_i32(arg_0.a.c.yxz, vec3<i32>(i32(-1i) * -1i, u_input.a, 27209i)));
    var var_1 = Struct_3(arg_1, arg_1, arg_1.a);
    var_0 = arg_1.c.x;
    var var_2 = arg_0.a;
    let var_3 = Struct_2(arg_0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -593f))), var_2.b.x)) + -772f));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> vec3<bool> {
    let var_0 = false;
    let var_1 = arg_0;
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_1), var_1, -var_1.c.yw)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_0.b.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-273f, -377f)), ~var_1.c));
    var var_3 = ~u_input.d.x;
    let var_4 = all(!vec2<bool>(var_0, all(vec2<bool>(true, var_0)))) || var_0;
    return select(select(select(!vec3<bool>(var_0, var_4, true), !(!vec3<bool>(var_0, true, false)), !arg_2), vec3<bool>(var_0, 4294967295u >= u_input.d.x, !(!arg_2)), -firstTrailingBit(-2147483647i) >= 1i), vec3<bool>((1116f > var_2.a.b.x) && true, any(!(!vec2<bool>(var_0, false))), true), vec3<bool>(false, any(!vec4<bool>(true, true, false, arg_2)), arg_2 & (_wgslsmith_mult_u32(u_input.d.x, u_input.d.x) <= _wgslsmith_mult_u32(44750u, 0u))));
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: bool, arg_3: i32) -> Struct_1 {
    let var_0 = 0i;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))) * 917f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, -163f) + vec2<f32>(arg_1, arg_1)))))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1831f, 3185f), vec2<f32>(arg_1, arg_1)))), vec2<f32>(_wgslsmith_f_op_f32(872f * arg_1), arg_1)))), u_input.c);
    var var_2 = select(vec3<bool>(select(any(!vec4<bool>(false, arg_2, false, arg_2)), true, arg_2), true, true), vec3<bool>(true, any(!select(vec4<bool>(arg_2, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2))), (firstTrailingBit(4294967295u) ^ _wgslsmith_mult_u32(17346u, u_input.d.x)) >= ~firstTrailingBit(u_input.d.x)), !func_2(Struct_1(_wgslsmith_f_op_f32(572f - arg_1), var_1.b, var_1.c), u_input.c.x, true));
    let var_3 = vec3<u32>(19334u, ~(~firstTrailingBit(u_input.d.x)) & abs(0u), _wgslsmith_clamp_u32(90646u, _wgslsmith_mult_u32(0u, u_input.d.x) >> (38236u % 32u), u_input.d.x) << (u_input.d.x % 32u));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)) - 187f), var_1.b, firstTrailingBit(var_1.c));
    return Struct_1(163f, _wgslsmith_f_op_vec2_f32(max(var_1.b, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(506f, -1334f)), _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(exp2(var_1.b.x)))))), var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = vec2<bool>(all(vec3<bool>((u_input.a < 24961i) & true, true, true)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    let var_1 = var_0.x;
    var var_2 = vec2<i32>(-firstTrailingBit(~u_input.a >> (u_input.d.x % 32u)), ~reverseBits(countOneBits(~0i)));
    var var_3 = select(select(vec4<bool>(true, !var_1, arg_1.c.x <= -2298i, select(false, true, true)), !(!select(vec4<bool>(var_0.x, var_0.x, var_1, true), vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(var_0.x, true, false, var_0.x))), select(!select(vec4<bool>(true, true, true, false), vec4<bool>(var_1, var_1, var_1, var_1), true), select(select(vec4<bool>(var_1, true, true, var_0.x), vec4<bool>(var_1, true, false, true), var_1), select(vec4<bool>(false, var_1, var_1, var_1), vec4<bool>(var_1, var_1, true, var_1), vec4<bool>(false, true, true, true)), all(vec4<bool>(var_0.x, true, false, true))), var_1 && var_0.x)), select(!select(select(vec4<bool>(var_0.x, true, true, var_1), vec4<bool>(var_1, var_1, var_1, false), false), vec4<bool>(false, var_1, true, var_0.x), true && var_0.x), vec4<bool>(var_1, var_0.x, false, any(vec3<bool>(true, true, true))), var_1), select(select(select(vec4<bool>(var_0.x, false, var_1, true), select(vec4<bool>(var_0.x, var_0.x, true, true), vec4<bool>(var_1, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, false)), select(vec4<bool>(var_0.x, false, false, var_0.x), vec4<bool>(var_0.x, var_0.x, false, var_1), vec4<bool>(false, var_0.x, true, var_1))), select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(false, true, var_0.x, true), var_1), vec4<bool>(!var_0.x, true, var_0.x, var_0.x)), !vec4<bool>(any(vec3<bool>(var_0.x, var_0.x, false)), var_1, true, true), any(!vec4<bool>(var_1, var_1, var_1, false)) | any(select(vec3<bool>(true, true, var_1), vec3<bool>(false, var_1, true), vec3<bool>(var_1, false, var_0.x)))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.b));
    return arg_1.c.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = Struct_2(func_1(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.c.zyx, vec3<i32>(-53626i, u_input.a, 0i)), _wgslsmith_mod_i32(-arg_1.x, 2147483647i)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1449f, _wgslsmith_f_op_f32(round(-435f))))), any(vec2<bool>(-74409i > u_input.c.x, true)), -59908i));
    var var_1 = ~(~(abs(u_input.d) | vec3<u32>(u_input.d.x, arg_3.x, arg_0.x))) & ~(u_input.d >> (firstLeadingBit(arg_0.zyz) % vec3<u32>(32u)));
    var var_2 = func_1(u_input.c.yx, _wgslsmith_f_op_f32(-var_0.a.b.x), false, firstLeadingBit(-1i));
    return Struct_3(func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i) * -u_input.b, ~vec2<i32>(1i, 39897i) << (vec2<u32>(arg_3.x, arg_0.x) % vec2<u32>(32u))), _wgslsmith_f_op_f32(var_2.b.x - var_0.a.a), arg_1.x < arg_2, 29641i), Struct_1(var_2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_2.b))), ~u_input.c), -682f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-593f - _wgslsmith_div_f32(-271f, 1871f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(2788f, 1478f, false))))));
    let var_1 = ~vec4<u32>(1u, u_input.d.x, ~(u_input.d.x & _wgslsmith_add_u32(u_input.d.x, u_input.d.x)), countOneBits(5166u));
    var var_2 = firstLeadingBit(u_input.c.x);
    var var_3 = func_5(vec4<u32>(firstTrailingBit(~u_input.d.x), ~(~(~var_1.x)), 20181u, ~(~(~1u))), vec3<i32>(1i, 1i, 2732i), _wgslsmith_mod_i32(func_4(func_1(u_input.b, _wgslsmith_f_op_f32(f32(-1f) * -490f), !var_0, _wgslsmith_div_i32(u_input.a, u_input.c.x)), func_1(reverseBits(vec2<i32>(1i, -22216i)), -1553f, false, 28251i)), countOneBits(1i)), vec4<u32>(_wgslsmith_div_u32(~1u, _wgslsmith_div_u32(28667u, 286u)), var_1.x, ~u_input.d.x, 22546u));
    var var_4 = func_5(var_1 << (vec4<u32>((var_1.x >> (0u % 32u)) << (max(41791u, 1u) % 32u), var_1.x, _wgslsmith_mult_u32(var_1.x, u_input.d.x) & _wgslsmith_sub_u32(29518u, u_input.d.x), u_input.d.x) % vec4<u32>(32u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, 0i) | u_input.a, var_3.a.c.x, var_3.a.c.x), min(~var_3.b.c.yzy, _wgslsmith_mod_vec3_i32(~vec3<i32>(-32974i, -2147483647i, -1i), u_input.c.wyx)), vec3<i32>(-u_input.b.x, -u_input.c.x, 16531i)), u_input.c.x & u_input.c.x, select(var_1, ~abs(vec4<u32>(0u, var_1.x, 62753u, 4294967295u)), var_0));
    var_2 = u_input.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.wz, ~(~firstLeadingBit(max(u_input.d.x, var_1.x))), abs(~(~var_1.x)));
}

