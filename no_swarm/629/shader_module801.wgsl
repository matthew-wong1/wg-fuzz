struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<f32>) -> bool {
    let var_0 = vec4<u32>(~(~firstLeadingBit(u_input.d.x)), u_input.a, ~(~u_input.d.x) << (~86312u % 32u), 72182u);
    global0 = reverseBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, 1i), vec2<i32>(-1i) * -vec2<i32>(global0.x, global0.x), abs(abs(vec2<i32>(7713i, global0.x))))) ^ vec2<i32>(_wgslsmith_mult_i32(-1i, -31252i), -6595i);
    global0 = ~(vec2<i32>(-1i) * -vec2<i32>(max(1i, -1i), global0.x));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-arg_0.x)));
    global0 = firstLeadingBit(abs(vec2<i32>(-26825i, reverseBits(global0.x)) & (vec2<i32>(1i, 1i) << (_wgslsmith_div_vec2_u32(u_input.c.yx, vec2<u32>(0u, var_0.x)) % vec2<u32>(32u)))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -340f)), arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x))) != -303f;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = Struct_3(arg_2.c, true, Struct_2(firstLeadingBit(select(min(vec4<i32>(global0.x, -12922i, global0.x, 2147483647i), vec4<i32>(-25895i, -15866i, global0.x, -11594i)), _wgslsmith_mult_vec4_i32(arg_2.a, vec4<i32>(global0.x, 1i, -10619i, 47701i)), vec4<bool>(false, true, false, true))), arg_2.b, Struct_1(arg_1)), arg_2);
    var var_1 = Struct_2(vec4<i32>(2147483647i, ~abs(global0.x >> (55664u % 32u)), global0.x, _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(arg_2.a, -var_0.d.a), 0i >> (arg_0.x % 32u))), Struct_1(-282f), arg_2.c);
    let var_2 = func_3(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.a, -484f)) * vec2<f32>(_wgslsmith_f_op_f32(-911f - -270f), -399f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b.a, var_1.c.a)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.a, 2065f) + vec2<f32>(var_1.b.a, -1000f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1852f, -406f)))))));
    var var_3 = true;
    let var_4 = vec2<i32>(arg_2.a.x, firstTrailingBit(-28476i));
    return select(select(!(!select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, var_2, var_0.b, var_2), vec4<bool>(var_0.b, var_0.b, var_2, var_2))), vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.a, 179f) + vec2<f32>(var_1.c.a, arg_1))), all(vec2<bool>(false, false)) & var_0.b, all(select(vec3<bool>(var_0.b, false, var_2), vec3<bool>(false, var_0.b, false), vec3<bool>(true, var_0.b, var_2))), all(select(vec4<bool>(var_2, var_2, var_2, var_0.b), vec4<bool>(false, var_0.b, var_2, false), var_2))), select(select(!vec4<bool>(var_0.b, var_0.b, false, var_0.b), !vec4<bool>(false, var_2, var_0.b, true), !var_0.b), vec4<bool>(var_0.b, true, all(vec2<bool>(var_2, var_0.b)), true), true)), select(!select(vec4<bool>(var_2, var_2, var_2, false), !vec4<bool>(false, var_0.b, true, true), var_2 != var_2), !vec4<bool>(func_3(vec2<f32>(var_0.a.a, -365f)), arg_2.a.x < -2147483647i, any(vec4<bool>(var_2, var_2, var_0.b, var_0.b)), true), !vec4<bool>(!var_2, var_0.b, !var_2, var_4.x <= 1i)), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(var_2, false, false, var_2), !vec4<bool>(var_2, false, true, true)), select(vec4<bool>(true, var_2, true, var_2), vec4<bool>(false, var_2, false, true), arg_0.x < u_input.c.x), select(vec4<bool>(true, var_0.b, var_0.b, true), select(vec4<bool>(var_0.b, var_0.b, true, var_0.b), vec4<bool>(true, true, var_2, true), vec4<bool>(true, var_2, var_0.b, true)), !vec4<bool>(var_0.b, var_0.b, var_0.b, var_0.b))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec2<bool>, arg_2: Struct_3) -> bool {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_2.a.a));
    var var_1 = select(!select(!func_2(u_input.d, 536f, arg_2.d), !vec4<bool>(arg_1.x, true, true, true), true), select(select(func_2(firstLeadingBit(u_input.c), arg_2.a.a, arg_2.c), select(vec4<bool>(true, true, arg_2.b, arg_1.x), !vec4<bool>(arg_1.x, arg_1.x, arg_2.b, arg_1.x), vec4<bool>(true, true, true, true)), !vec4<bool>(true, true, arg_1.x, true)), !select(func_2(u_input.c, -744f, arg_2.d), !vec4<bool>(arg_1.x, arg_2.b, arg_2.b, arg_1.x), arg_2.d.a.x > arg_0.x), select(!func_2(u_input.c, -607f, Struct_2(arg_2.c.a, Struct_1(275f), arg_2.d.c)), select(vec4<bool>(arg_2.b, false, arg_1.x, arg_2.b), select(vec4<bool>(arg_2.b, false, true, arg_2.b), vec4<bool>(false, arg_1.x, arg_2.b, true), arg_1.x), arg_1.x), func_2(u_input.c, -615f, arg_2.d).x)), func_3(vec2<f32>(_wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(614f * arg_2.d.b.a)), var_0)));
    global0 = _wgslsmith_sub_vec2_i32(-select(arg_2.d.a.wz, _wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2.d.a.xy, arg_0.yz), ~arg_0.xx), arg_1.x), vec2<i32>(arg_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, global0.x, global0.x), vec3<i32>(2804i, 11892i, arg_2.c.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_0.x, arg_2.c.a.x), vec3<i32>(arg_2.c.a.x, arg_2.d.a.x, global0.x)))) | arg_0.zy);
    let var_2 = _wgslsmith_f_op_f32(516f * _wgslsmith_f_op_f32(1322f + _wgslsmith_f_op_f32(-arg_2.c.c.a)));
    global0 = -arg_0.yy;
    return arg_2.b;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_3) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-508f + 1086f), 1f));
    let var_1 = select(select(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(arg_1.b, true), vec2<bool>(arg_1.b, false))), all(vec4<bool>(arg_1.b, arg_0, false, true)), arg_0), select(select(vec3<bool>(arg_0, arg_2.b, arg_2.b), !vec3<bool>(false, arg_1.b, true), !vec3<bool>(true, false, arg_3.b)), !func_2(vec3<u32>(7183u, 1u, 4584u), arg_1.d.b.a, Struct_2(vec4<i32>(global0.x, arg_2.d.a.x, 0i, arg_1.d.a.x), arg_3.a, arg_2.a)).wyw, vec3<bool>(arg_0, arg_2.b, arg_1.b)), vec3<bool>(!all(vec3<bool>(true, arg_3.b, arg_0)), arg_2.b, true)), func_2(~vec3<u32>(0u, ~u_input.a, 1u), 1000f, Struct_2(vec4<i32>(arg_3.d.a.x, arg_1.d.a.x, 0i, arg_3.d.a.x << (u_input.c.x % 32u)), arg_1.d.c, arg_1.d.b)).wxy, !func_2(u_input.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.b.a) * _wgslsmith_f_op_f32(sign(-1000f))), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1.c.a.x, arg_1.c.a.x, 17407i, -2147483647i), vec4<i32>(617i, arg_2.c.a.x, 0i, 1570i)), Struct_1(1362f), arg_2.a)).x);
    global0 = vec2<i32>(min(-arg_3.c.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(arg_2.d.a.x, arg_3.c.a.x, 41908i)), ~arg_3.d.a.yyw), ~2147483647i)), ~(i32(-1i) * -1i));
    global0 = vec2<i32>(arg_1.c.a.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(11383i, 14006i), arg_3.d.a.x));
    global0 = firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_1.c.a.x, arg_3.c.a.x, 0i, arg_1.d.a.x), vec4<i32>(arg_3.d.a.x, 0i, -2147483647i, 2147483647i)), vec4<i32>(-1i, 2147483647i, arg_1.c.a.x, global0.x)), 0i), _wgslsmith_add_vec2_i32(~vec2<i32>(global0.x, 0i), arg_3.c.a.xw)));
    return _wgslsmith_mult_vec2_i32(~arg_2.d.a.yy, reverseBits(~_wgslsmith_mult_vec2_i32(vec2<i32>(0i, -1i), arg_3.d.a.zw) & (_wgslsmith_mod_vec2_i32(arg_3.d.a.wy, vec2<i32>(53834i, 2147483647i)) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.d.a.x, arg_3.d.a.x), vec2<i32>(arg_1.d.a.x, 39745i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstTrailingBit(func_4(false, Struct_3(Struct_1(_wgslsmith_f_op_f32(541f - 810f)), func_1(-vec3<i32>(30706i, global0.x, 0i), vec2<bool>(true, true), Struct_3(Struct_1(371f), false, Struct_2(vec4<i32>(0i, global0.x, 2726i, global0.x), Struct_1(-565f), Struct_1(2794f)), Struct_2(vec4<i32>(0i, global0.x, global0.x, global0.x), Struct_1(-1000f), Struct_1(1000f)))), Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, global0.x, global0.x, global0.x), vec4<i32>(global0.x, -21500i, global0.x, 1i)), Struct_1(-1162f), Struct_1(1263f)), Struct_2(vec4<i32>(global0.x, global0.x, global0.x, global0.x), Struct_1(-267f), Struct_1(2009f))), Struct_3(Struct_1(-668f), false, Struct_2(vec4<i32>(global0.x, -1i, 1i, 0i), Struct_1(307f), Struct_1(-442f)), Struct_2(max(vec4<i32>(-28422i, global0.x, global0.x, 6956i), vec4<i32>(global0.x, global0.x, 2147483647i, -4020i)), Struct_1(1409f), Struct_1(1000f))), Struct_3(Struct_1(1f), true, Struct_2(-vec4<i32>(global0.x, global0.x, 2147483647i, global0.x), Struct_1(-1000f), Struct_1(-700f)), Struct_2(vec4<i32>(global0.x, 37095i, 0i, global0.x) | vec4<i32>(global0.x, global0.x, global0.x, 2147483647i), Struct_1(1450f), Struct_1(494f)))));
    let var_0 = Struct_2(vec4<i32>(global0.x, abs(-2147483647i), min(global0.x, ~2147483647i) >> (0u % 32u), abs(1i)), Struct_1(_wgslsmith_f_op_f32(select(-685f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(517f * -1357f)), !any(vec4<bool>(true, false, true, true))))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -145f)))));
    let var_1 = 61122i;
    global0 = vec2<i32>(-select(firstTrailingBit(~(-23490i)), 1i, true), var_0.a.x);
    global0 = vec2<i32>(-2147483647i, _wgslsmith_sub_i32(-var_0.a.x, global0.x));
    global0 = _wgslsmith_mod_vec2_i32(firstTrailingBit(~var_0.a.yz) << (u_input.c.zy % vec2<u32>(32u)), vec2<i32>(-global0.x, 1i));
    global0 = var_0.a.zz;
    var var_2 = _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, abs(80763u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(60046u, 4294967295u, 0u), vec3<u32>(49311u, u_input.a, u_input.c.x)) ^ countOneBits(1u)), vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec2_u32(u_input.c.yx, u_input.c.zz)) | _wgslsmith_div_u32(u_input.d.x, u_input.c.x), ~_wgslsmith_mult_u32(u_input.c.x, u_input.d.x), ~(~u_input.c.x)), u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(905f, var_0.c.a))))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-862f, var_0.b.a)))))), var_2.x);
}

