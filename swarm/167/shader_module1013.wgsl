struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 6>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2() -> Struct_3 {
    global0 = array<vec3<f32>, 6>();
    global0 = array<vec3<f32>, 6>();
    var var_0 = Struct_1(_wgslsmith_add_i32(u_input.b, u_input.b));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-883f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1770f * -797f) + _wgslsmith_f_op_f32(floor(-1000f))))));
    var_0 = Struct_1(_wgslsmith_sub_i32(u_input.b, -89030i));
    return Struct_3(var_1.x);
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: i32) -> Struct_3 {
    return func_2();
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: Struct_3) -> Struct_2 {
    var var_0 = firstLeadingBit(~(2147483647i << (_wgslsmith_clamp_u32(4294967295u, u_input.a.x ^ u_input.c.x, u_input.a.x) % 32u)));
    var var_1 = _wgslsmith_mult_i32(u_input.b, select(_wgslsmith_dot_vec4_i32(firstTrailingBit(reverseBits(vec4<i32>(u_input.b, 1i, -21618i, -5824i))), vec4<i32>(abs(u_input.b), 2147483647i, ~u_input.b, _wgslsmith_mult_i32(u_input.b, 41706i))), 23799i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)) >= _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-557f, arg_2.a)))));
    let var_2 = Struct_1(-min(u_input.b, max(0i, u_input.b)));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(var_2.a, -23352i)) >> (vec2<u32>(1u, ~0u) % vec2<u32>(32u)), ~(~(-vec2<i32>(var_2.a, u_input.b)))), var_2.a, _wgslsmith_add_i32(-42334i, u_input.b), -109183i);
    var_0 = i32(-1i) * -(~_wgslsmith_add_i32(1i, u_input.b));
    return Struct_2(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, u_input.b, abs(7980i)), vec2<bool>(arg_1.x != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_2.a + arg_1.x))), true), -100f);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 6>();
    var var_0 = Struct_1(u_input.b);
    let var_1 = func_3(min(u_input.c.xxz, firstTrailingBit(abs(vec3<u32>(u_input.c.x, 1u, u_input.a.x))) & (abs(u_input.c.yxx) << (u_input.c.xzy % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c, 454f, arg_0.c)), vec3<f32>(542f, arg_0.c, arg_0.c), !vec3<bool>(arg_0.b.x, false, true))), global0[_wgslsmith_index_u32(~u_input.c.x, 6u)])), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.c, -406f, 856f), _wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(4294967295u, 6u)]))))), Struct_3(-150f));
    let var_2 = vec3<bool>(any(var_1.b), all(select(!(!vec2<bool>(var_1.b.x, false)), arg_0.b, !(!var_1.b.x))), arg_0.b.x);
    let var_3 = var_1.a.x;
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>, arg_3: f32) -> Struct_3 {
    let var_0 = Struct_2(~(_wgslsmith_add_vec4_i32(select(vec4<i32>(u_input.b, 0i, -70786i, u_input.b), vec4<i32>(-6576i, u_input.b, arg_0.a, u_input.b), vec4<bool>(false, false, arg_2.x, arg_2.x)), ~vec4<i32>(u_input.b, -2147483647i, 2147483647i, u_input.b)) >> (((u_input.c << (u_input.c % vec4<u32>(32u))) ^ vec4<u32>(46314u, arg_1, 1u, u_input.a.x)) % vec4<u32>(32u))), !select(arg_2, func_3(reverseBits(u_input.c.xwz), _wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(arg_1, 6u)], vec3<f32>(927f, 1000f, arg_3))), func_2()).b, vec2<bool>(arg_2.x & arg_2.x, arg_2.x)), arg_3);
    var var_1 = arg_1;
    let var_2 = false;
    global0 = array<vec3<f32>, 6>();
    var_1 = u_input.c.x;
    return Struct_3(175f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(func_3(~(vec3<u32>(0u, u_input.a.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.c.x, u_input.a.x)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -423f, 1559f) * global0[_wgslsmith_index_u32(u_input.c.x, 6u)]))), func_1(~4294967295u, 1i, u_input.b | -7313i)), Struct_1(~func_3(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 6u)], Struct_3(-1794f)).a.x)), ~41396u, select(!vec2<bool>(true, u_input.c.x != 29864u), select(!func_3(u_input.c.wzz, vec3<f32>(107f, 2316f, -234f), Struct_3(-607f)).b, !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), select(u_input.c.x > 7867u, select(false, false, true), all(vec2<bool>(false, true)))), !(63088i != abs(u_input.b))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 1f), -1659f));
    let var_1 = !vec3<bool>(select(true, !(-1i >= u_input.b), true), !select(true, false, true), all(vec4<bool>(true, true, true, true)));
    let var_2 = _wgslsmith_f_op_f32(-var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zy, _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a), func_1(u_input.c.x << (6590u % 32u), -u_input.b, countOneBits(0i)).a, var_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-567f + var_0.a), var_2)))), ~0u);
}

