struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: i32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec4<i32> = vec4<i32>(28104i, 32995i, 18140i, 40445i);

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: bool) -> vec2<i32> {
    global2 = false;
    global1 = abs(-(vec4<i32>(-1i) * -(u_input.a | vec4<i32>(global1.x, -24400i, u_input.a.x, 0i))));
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2057f, -694f)))))), -207f, false));
    var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1809f)) * 160f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-182f)), -832f, arg_3 | true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(978f * 613f)))))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -944f), -665f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-380f, -881f)) - _wgslsmith_f_op_f32(min(793f, 2827f))), _wgslsmith_f_op_f32(-1014f * -891f))), Struct_2(all(arg_0.xxz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1790f, -111f) - vec2<f32>(-1127f, 576f))) - vec2<f32>(1000f, _wgslsmith_f_op_f32(f32(-1f) * -652f)))), -2147483647i);
    return vec2<i32>(-firstLeadingBit(-reverseBits(var_1.c)), _wgslsmith_div_i32(_wgslsmith_div_i32(firstLeadingBit(arg_2), 2147483647i), -61609i));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec3<f32>) -> i32 {
    global2 = arg_1.x;
    global1 = reverseBits(u_input.a);
    let var_0 = arg_2;
    let var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-arg_2.a))), var_0.b, 37165i);
    var var_2 = _wgslsmith_div_f32(-197f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-499f, -1109f)))));
    return _wgslsmith_dot_vec2_i32(~func_3(select(select(vec4<bool>(false, arg_2.b.a, arg_1.x, var_0.b.a), vec4<bool>(true, true, false, arg_1.x), arg_1), select(arg_1, vec4<bool>(var_1.b.a, arg_1.x, false, arg_1.x), arg_1), var_0.b.a), countOneBits(_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(u_input.b.x, global0.x, global0.x))), -1i, true), global1.xy);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_mult_i32(min(u_input.a.x, i32(-1i) * -(~u_input.a.x)), _wgslsmith_sub_i32(global1.x, _wgslsmith_mult_i32(_wgslsmith_mult_i32(func_2(global1.x, vec4<bool>(true, true, false, arg_0.x), Struct_3(arg_1.xyw, Struct_2(true, vec2<f32>(-2131f, 1000f)), -724i), arg_1.yyw), u_input.a.x), 2147483647i)));
    global2 = true;
    var var_1 = select(select(arg_0.xy, arg_0.yy, arg_0.yz), vec2<bool>(true, arg_0.x), any(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.yx, true)));
    var var_2 = Struct_2(var_1.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-991f * 1372f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-208f))) + -119f)));
    global1 = -vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, global1.x, 2147483647i), u_input.a) & 0i, func_3(vec4<bool>(false, false, true, false), firstTrailingBit(u_input.b.yzz), 41176i, any(vec4<bool>(false, false, arg_0.x, true))).x << (_wgslsmith_mod_u32(~u_input.b.x, 1u) % 32u), abs(~20493i) & _wgslsmith_sub_i32(global1.x << (18228u % 32u), i32(-1i) * -1i), -firstTrailingBit(_wgslsmith_mult_i32(-26577i, 0i)));
    return Struct_3(arg_1.xyw, Struct_2(all(!(!vec3<bool>(true, true, var_1.x))), arg_1.yx), u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = firstLeadingBit(vec2<u32>(~_wgslsmith_mod_u32(51403u, 10141u), ~(~4294967295u)));
    let var_0 = ~u_input.b;
    var var_1 = func_1(vec3<bool>(true, true, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2024f, -271f)) * -1623f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2639f)) + -414f), -846f, 1f)));
    var var_2 = ~0u;
    var_2 = global0.x;
    let var_3 = Struct_4(-2765f, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1651f, var_1.b.b.x)) + _wgslsmith_f_op_f32(floor(-281f))), _wgslsmith_f_op_f32(floor(var_1.b.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) - _wgslsmith_f_op_f32(1769f + var_1.a.x))), var_1.b, var_1.c), select(!(!(!vec3<bool>(var_1.b.a, var_1.b.a, false))), vec3<bool>(true, var_1.b.a, any(select(vec3<bool>(false, false, var_1.b.a), vec3<bool>(var_1.b.a, var_1.b.a, false), var_1.b.a))), true), ~(-_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, 1i, -61318i, global1.x), vec4<i32>(var_1.c, 19909i, -41749i, u_input.a.x)), u_input.a)), u_input.a.yx);
    global1 = vec4<i32>(-u_input.a.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-global1.x, firstTrailingBit(u_input.a.x), _wgslsmith_div_i32(15268i, 1823i), firstLeadingBit(-27399i)), select(-var_3.d, u_input.a, vec4<bool>(var_3.b.b.a, var_3.b.b.a, var_1.b.a, var_3.b.b.a)), -vec4<i32>(3806i, 0i, 62199i, var_3.d.x) << (_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 1u, 17712u, 18165u), vec4<u32>(4294967295u, 25066u, u_input.c.x, 1u)) % vec4<u32>(32u))), vec4<i32>(var_3.e.x, 2147483647i, _wgslsmith_add_i32(i32(-1i) * -26744i, var_3.d.x), func_1(select(vec3<bool>(var_1.b.a, true, var_1.b.a), vec3<bool>(var_3.b.b.a, false, var_1.b.a), var_3.c), vec4<f32>(var_3.a, var_1.b.b.x, -945f, -339f)).c)), -50531i, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.x);
}

