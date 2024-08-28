struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> f32 {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(~select(~vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 1u), !arg_2.a.wz), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), ~(~_wgslsmith_add_vec2_u32(~vec2<u32>(41211u, 11834u), firstTrailingBit(vec2<u32>(95555u, 0u)))));
    let var_2 = var_1.x;
    var var_3 = !arg_2.a.x;
    let var_4 = arg_0;
    return -1000f;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    let var_0 = arg_0;
    global0 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a), -159f, 502f)));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1881f, var_0.a, var_0.a)))));
    global1 = Struct_2(select(!vec4<bool>(arg_1.a.x, false & global1.a.x, arg_1.a.x, true), vec4<bool>(true, true, true, true), arg_1.a.x), -(global1.b ^ ~global1.b));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(global0.x * -713f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(657f - 1075f)))), vec3<f32>(_wgslsmith_f_op_f32(step(413f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1864f))))), 795f, _wgslsmith_f_op_f32(func_3(arg_1, arg_1, arg_1)))));
    return any(vec2<bool>(false, true));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~vec2<i32>(firstLeadingBit(arg_0.b.x), _wgslsmith_mod_i32(1i, max(abs(-54213i), u_input.a)));
    let var_1 = ((104687u << (_wgslsmith_clamp_u32(1u, countOneBits(1u), 0u) % 32u)) >> (~(~1u) % 32u)) <= _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), vec4<u32>(max(1u, 13557u), max(33458u, 0u), ~0u, _wgslsmith_add_u32(9492u, 11709u))));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-1000f, 471f, global1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -365f) * 1f)))))));
    let var_3 = countOneBits(~2094u);
    global0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(arg_0, arg_0, Struct_2(!vec4<bool>(true, true, var_1, false), _wgslsmith_div_vec4_i32(arg_0.b, global1.b)))), _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(exp2(global0.x)), global0.x);
    return Struct_1(global0.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<f32>) -> vec3<u32> {
    var var_0 = Struct_1(544f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -247f) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-508f, var_0.a, global1.a.x)) * var_0.a)))));
    var_0 = func_4(Struct_2(vec4<bool>(global1.a.x, select(false, func_2(Struct_1(132f), Struct_2(vec4<bool>(global1.a.x, false, global1.a.x, global1.a.x), global1.b)), false), any(global1.a.zzy), true), global1.b));
    var var_1 = Struct_2(!global1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(global1.b.x, firstTrailingBit(25002i)), global1.b.x ^ ~global1.b.x, arg_0.x, _wgslsmith_dot_vec2_i32(~vec2<i32>(5310i, -28342i), arg_0 >> (vec2<u32>(7516u, 54438u) % vec2<u32>(32u)))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 79015i, 23527i, u_input.a), vec4<i32>(global1.b.x, 0i, arg_0.x, global1.b.x)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, u_input.a, 23396i), global1.b), ~global1.b, !vec4<bool>(true, true, false, global1.a.x)))));
    var var_2 = ~var_1.b.xw;
    return vec3<u32>(1u >> (1u % 32u), 11486u, firstTrailingBit(64712u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~max(func_1(global1.b.zx, 354f, _wgslsmith_f_op_vec2_f32(vec2<f32>(1166f, global0.x) * global0.xz)), vec3<u32>(1u, 1u, 1u));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(1u, var_0.x), ~abs(13383u)), var_0.xx), ~(~1u), 4294967295u);
    let var_2 = -842f;
    var var_3 = Struct_2(!(!vec4<bool>(true, true, any(global1.a.zyx), true)), ~vec4<i32>(~countOneBits(0i), -1i, u_input.a, 25983i));
    var var_4 = -187f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~select(vec4<u32>(4294967295u, 1u, var_0.x, var_1.x), vec4<u32>(0u, 1u, var_1.x, var_1.x), var_3.a))), ~var_0.x, -82097i, _wgslsmith_f_op_f32(select(var_2, _wgslsmith_f_op_f32(func_3(Struct_2(vec4<bool>(false, false, global1.a.x, global1.a.x), vec4<i32>(var_3.b.x, 1i, -1i, global1.b.x)), Struct_2(var_3.a, vec4<i32>(global1.b.x, -1i, -1i, 0i)), Struct_2(global1.a, _wgslsmith_div_vec4_i32(global1.b, vec4<i32>(1i, global1.b.x, 0i, -2147483647i))))), !(!select(var_3.a.x, true, true)))));
}

