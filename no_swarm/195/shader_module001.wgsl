struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, false, false, false));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = Struct_3(Struct_2(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a.x, 6813u), vec4<u32>(2248u, u_input.b, 27138u, 40177u)), u_input.a.x), select(~vec3<u32>(1u, u_input.a.x, 4294967295u), vec3<u32>(u_input.b, u_input.a.x, u_input.b) ^ vec3<u32>(u_input.b, 4294967295u, 46151u), false)), ~abs(firstTrailingBit(vec3<i32>(1i, 0i, arg_0)))));
    let var_1 = _wgslsmith_clamp_i32(13864i, var_0.a.b.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(-(~var_0.a.b.yz)), select(select(var_0.a.b.yy, var_0.a.b.xx, select(vec2<bool>(false, false), vec2<bool>(true, false), false)), abs(vec2<i32>(arg_0, 0i)), vec2<bool>(true, true))));
    let var_2 = var_0.a.b.x;
    global0 = array<vec4<bool>, 1>();
    let var_3 = vec2<i32>(var_2, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(~var_0.a.b.zy << (u_input.a % vec2<u32>(32u)), var_0.a.b.xy), ~firstTrailingBit(vec2<i32>(var_0.a.b.x, var_1)) << (vec2<u32>(~var_0.a.a, u_input.b) % vec2<u32>(32u))));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-_wgslsmith_div_i32(-arg_0, 1i), 0i | abs(arg_0), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, var_0.a.b.x), var_2), 0i), vec4<i32>(-1i) * -vec4<i32>(-var_2, _wgslsmith_mod_i32(arg_0, 60333i), var_3.x, var_2 & var_2));
}

fn func_2() -> i32 {
    let var_0 = Struct_4(vec3<bool>(select(true, true, true), true, any(vec4<bool>(true, true, true, all(vec3<bool>(true, true, true))))), vec2<bool>(true, false), func_3(_wgslsmith_add_i32(~(-1i), _wgslsmith_mod_i32(select(1i, -1i, true), _wgslsmith_add_i32(2147483647i, -2147483647i)))));
    global0 = array<vec4<bool>, 1>();
    let var_1 = -1i;
    global0 = array<vec4<bool>, 1>();
    let var_2 = false;
    return 1i;
}

fn func_1(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(-9526i, _wgslsmith_clamp_i32(func_2(), 1i, _wgslsmith_mult_i32(23190i >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 17389i, 31922i), vec3<i32>(25915i, 0i, -1i))))), 0i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-325f, 797f))))) * 1524f), select(!select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), all(!select(global0[_wgslsmith_index_u32(u_input.a.x, 1u)], vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)))));
    var var_2 = 46416u;
    var var_3 = Struct_4(vec3<bool>(-_wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 13467i, var_0, 0i), vec4<i32>(var_0, 11867i, -2147483647i, var_0)) >= (var_0 | -var_0), any(!(!var_1.b)), true), var_1.b.zx, 30843i);
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -710f), select(!select(vec3<bool>(var_3.b.x, false, var_3.a.x), vec3<bool>(var_3.a.x, false, false), var_1.b), !vec3<bool>(!var_1.b.x, all(global0[_wgslsmith_index_u32(u_input.a.x, 1u)]), true), select(vec3<bool>(any(vec4<bool>(var_3.a.x, var_3.a.x, var_3.a.x, var_1.b.x)), all(vec3<bool>(var_1.b.x, var_3.a.x, var_3.b.x)), var_3.b.x), !(!vec3<bool>(var_1.b.x, false, true)), var_3.a)));
    return ~_wgslsmith_mult_vec3_i32(select(vec3<i32>(-2147483647i, -55014i, var_0), vec3<i32>(var_0, 2147483647i, -22510i), select(vec3<bool>(false, var_1.b.x, var_1.b.x), var_4.b, var_4.b)), vec3<i32>(var_3.c, -15743i, var_3.c) & vec3<i32>(var_0, var_0, 1i)) ^ vec3<i32>(abs(~var_3.c), -2147483647i, var_3.c);
}

fn func_4(arg_0: vec4<i32>) -> vec2<u32> {
    global0 = array<vec4<bool>, 1>();
    var var_0 = _wgslsmith_mult_i32(arg_0.x, ~(-_wgslsmith_sub_i32(reverseBits(arg_0.x), func_3(-36751i))));
    let var_1 = Struct_3(Struct_2(u_input.b, vec3<i32>(_wgslsmith_mod_i32(-1i, arg_0.x), arg_0.x, _wgslsmith_add_i32(arg_0.x << (u_input.a.x % 32u), arg_0.x >> (u_input.b % 32u)))));
    let var_2 = ~0u;
    let var_3 = 50466u;
    return firstLeadingBit(vec2<u32>(~var_1.a.a, firstTrailingBit(u_input.b)) | u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 1>();
    global0 = array<vec4<bool>, 1>();
    let var_0 = func_4(vec4<i32>(_wgslsmith_mult_i32(18185i, _wgslsmith_dot_vec3_i32(func_1(vec2<f32>(-775f, 1508f)), abs(vec3<i32>(-6410i, 19529i, 1i)))), 23978i, -select(firstLeadingBit(-14617i), ~(-16028i), true), -1i));
    global0 = array<vec4<bool>, 1>();
    var var_1 = Struct_3(Struct_2(~_wgslsmith_clamp_u32(select(4294967295u, var_0.x, false), var_0.x << (35458u % 32u), 120612u), -_wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, -7970i, -1i) >> (vec3<u32>(u_input.a.x, 13656u, u_input.b) % vec3<u32>(32u)), select(vec3<i32>(-2147483647i, -2147483647i, -10657i), vec3<i32>(0i, -12775i, -39609i), vec3<bool>(true, true, false)), vec3<i32>(1i, 1i, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-607f + -1556f) * -339f)), _wgslsmith_f_op_f32(1222f + -1279f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -824f) - _wgslsmith_f_op_f32(f32(-1f) * -1065f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1300f + _wgslsmith_f_op_f32(min(718f, -579f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1355f, _wgslsmith_div_f32(-174f, _wgslsmith_div_f32(639f, -340f)), true))), -2147483647i, var_1.a.b.x);
}

