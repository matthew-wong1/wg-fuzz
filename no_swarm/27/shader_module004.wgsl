struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 1>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: bool) -> i32 {
    let var_0 = global0.x;
    let var_1 = Struct_2(arg_1);
    global1 = array<Struct_1, 1>();
    global0 = firstLeadingBit(firstLeadingBit(-vec4<i32>(global0.x, ~5723i, 5248i, _wgslsmith_dot_vec2_i32(global0.xx, vec2<i32>(global0.x, 0i)))));
    let var_2 = ~global0.x;
    return _wgslsmith_mult_i32(global0.x, ~global0.x & ~2594i);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<u32>) -> Struct_2 {
    global1 = array<Struct_1, 1>();
    global1 = array<Struct_1, 1>();
    global0 = vec4<i32>(countOneBits(max(-global0.x, global0.x)), ~global0.x, func_3(max(~(~vec3<u32>(u_input.a, 4294967295u, arg_2.x)), select(vec3<u32>(1u, arg_0.c.x, 1u) << (vec3<u32>(88510u, 74682u, 1u) % vec3<u32>(32u)), vec3<u32>(arg_2.x, arg_2.x, 1u) ^ vec3<u32>(arg_2.x, 1u, 40862u), arg_0.b)), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_0.a, vec4<f32>(438f, arg_0.d, arg_0.d, -1976f), false)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, 1357f, arg_1) + arg_0.a)), arg_0.b, vec2<u32>(9816u, ~arg_0.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_0.e), !(!arg_0.b)), firstTrailingBit(0i));
    var var_0 = vec2<bool>(select(arg_0.b, true, arg_2.x > arg_0.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-259f - arg_0.d) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1, arg_0.a.x) - _wgslsmith_f_op_f32(1065f - -1641f))) == arg_1);
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.a)), var_0.x, vec2<u32>(u_input.a, firstLeadingBit(firstTrailingBit(arg_0.c.x))) << (arg_2 % vec2<u32>(32u)), -1000f, vec2<u32>(1u, ~arg_2.x));
    return Struct_2(var_1);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_3 {
    global0 = firstTrailingBit(max(select(vec4<i32>(~global0.x, max(-31101i, 13234i), _wgslsmith_div_i32(arg_1.x, arg_1.x), ~arg_1.x), -vec4<i32>(global0.x, -2147483647i, global0.x, global0.x), arg_0.a.b & arg_0.a.b), vec4<i32>(arg_1.x, _wgslsmith_dot_vec2_i32(-global0.xz, arg_1), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 34000i) & vec2<i32>(arg_1.x, global0.x), arg_1 << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))), 2203i)));
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-650f, arg_0.a.a.x, 150f, -380f) + _wgslsmith_f_op_vec4_f32(-arg_0.a.a)) * _wgslsmith_div_vec4_f32(vec4<f32>(-727f, 431f, arg_0.a.a.x, arg_0.a.d), vec4<f32>(-2364f, 704f, 833f, arg_0.a.a.x))), any(!(!vec3<bool>(false, false, arg_0.a.b))), abs(max(vec2<u32>(38062u, 44822u), ~arg_0.a.e)), arg_0.a.a.x, arg_0.a.e));
    let var_1 = _wgslsmith_dot_vec4_i32(firstTrailingBit(~firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.x, 1i, 12582i, arg_1.x), vec4<i32>(1i, arg_1.x, 0i, 527i)))), _wgslsmith_sub_vec4_i32(-firstTrailingBit(vec4<i32>(global0.x, arg_1.x, global0.x, arg_1.x)), vec4<i32>(-20980i, arg_1.x, -50193i, -2147483647i)) << (~reverseBits(vec4<u32>(21666u, 4294967295u, 42450u, arg_0.a.c.x)) % vec4<u32>(32u)));
    var var_2 = var_0.a.a.x;
    let var_3 = select(!select(!select(vec4<bool>(var_0.a.b, true, var_0.a.b, arg_0.a.b), vec4<bool>(var_0.a.b, var_0.a.b, arg_0.a.b, false), arg_0.a.b), vec4<bool>(!var_0.a.b, var_0.a.b, false, true), !select(vec4<bool>(false, arg_0.a.b, arg_0.a.b, arg_0.a.b), vec4<bool>(false, arg_0.a.b, arg_0.a.b, false), arg_0.a.b)), !(!select(select(vec4<bool>(true, var_0.a.b, true, arg_0.a.b), vec4<bool>(true, var_0.a.b, arg_0.a.b, true), arg_0.a.b), vec4<bool>(arg_0.a.b, false, true, var_0.a.b), !vec4<bool>(arg_0.a.b, false, false, true))), !vec4<bool>(true, false, _wgslsmith_dot_vec2_u32(arg_0.a.c, vec2<u32>(0u, u_input.a)) > arg_0.a.e.x, false));
    return Struct_3(global0.zwx, vec4<bool>(false, var_3.x, arg_0.a.b, true), Struct_2(Struct_1(arg_0.a.a, any(select(vec2<bool>(false, arg_0.a.b), vec2<bool>(arg_0.a.b, true), false)), var_0.a.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a.a.x, -406f)) * 264f), arg_0.a.e)), _wgslsmith_div_f32(arg_0.a.a.x, arg_0.a.d));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> bool {
    global0 = vec4<i32>(-1i, global0.x, reverseBits(global0.x), -(~abs(global0.x)));
    global1 = array<Struct_1, 1>();
    var var_0 = Struct_1(arg_0.a, all(vec4<bool>(false, all(!vec3<bool>(true, arg_0.b, arg_0.b)), arg_0.b, arg_0.b)), ~(~arg_0.e), 386f, arg_0.e);
    var var_1 = !vec4<bool>(global0.x > ~(~2147483647i), (38190u & firstTrailingBit(4294967295u)) >= 4294967295u, true, true);
    var var_2 = func_4(func_2(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2462f) - _wgslsmith_f_op_f32(352f - _wgslsmith_f_op_f32(1174f - var_0.a.x))), var_0.c), global0.wy);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!vec2<bool>(func_1(global1[_wgslsmith_index_u32(~39678u, 1u)], -1000f, _wgslsmith_div_f32(-157f, -677f)), !(global0.x >= 2147483647i)));
    var var_1 = ~_wgslsmith_sub_u32(u_input.a, 0u >> (_wgslsmith_mult_u32(1u, 0u & u_input.a) % 32u));
    var var_2 = func_4(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-574f, -1674f, -1000f, 1000f))), _wgslsmith_div_vec4_f32(vec4<f32>(-2699f, 379f, 2192f, 1000f), vec4<f32>(1045f, 614f, 283f, 589f)))), func_1(Struct_1(vec4<f32>(1478f, 940f, 1000f, -906f), var_0.x, vec2<u32>(u_input.a, u_input.a), 418f, vec2<u32>(4294967295u, 1u)), -214f, _wgslsmith_div_f32(-985f, -1794f)), reverseBits(vec2<u32>(5704u, u_input.a)) & (vec2<u32>(0u, 28445u) | vec2<u32>(u_input.a, u_input.a)), _wgslsmith_f_op_f32(round(-1000f)), ~vec2<u32>(u_input.a, u_input.a))), global0.xz).c;
    let var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_2.a.a), any(vec3<bool>(true, var_0.x, false)) != false, _wgslsmith_add_vec2_u32(var_2.a.e, countOneBits(var_2.a.e)), var_2.a.d, ~_wgslsmith_mult_vec2_u32(vec2<u32>(20214u, 17060u), var_2.a.e)));
    global1 = array<Struct_1, 1>();
    var_1 = ~_wgslsmith_mult_u32(1u, ~1u);
    var var_4 = vec4<i32>(global0.x, abs(~(~(~global0.x))), global0.x, abs(global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(~((var_2.a.e.x >> (4294967295u % 32u)) | ~40842u) << (~20886u % 32u));
}

