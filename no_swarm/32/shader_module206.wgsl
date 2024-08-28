struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 23>;

var<private> global1: Struct_4 = Struct_4(vec4<u32>(4294967295u, 1u, 0u, 32379u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(arg_1.a.xy * arg_1.a.wz);
    let var_1 = 281f;
    global1 = Struct_4(vec4<u32>(_wgslsmith_clamp_u32(global1.a.x, u_input.a, ~(~44970u)), global1.a.x, _wgslsmith_add_u32(global1.a.x, max(global1.a.x, abs(u_input.a))), u_input.a));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_f_op_f32(f32(-1f) * -236f));
    return arg_2;
}

fn func_3() -> bool {
    return _wgslsmith_mult_u32(u_input.a, ~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, u_input.a), vec3<u32>(u_input.a, 0u, global1.a.x)), u_input.a)) >= global1.a.x;
}

fn func_1() -> Struct_2 {
    global0 = array<Struct_4, 23>();
    global1 = Struct_4(~(~(~vec4<u32>(15016u, global1.a.x, global1.a.x, 116921u))));
    var var_0 = Struct_5(firstTrailingBit(1u), any(vec2<bool>(func_2(270f, Struct_1(vec4<f32>(-1048f, -1540f, -346f, 1000f), 235f, u_input.b.x, false), u_input.b.x, false) >= u_input.b.x, func_3() & true)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-875f, -440f, -376f, -233f))))), 1f, _wgslsmith_add_i32(22292i, -1i), false), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-906f, -488f, -1445f, -932f))), _wgslsmith_f_op_f32(min(-951f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-1187f)), _wgslsmith_f_op_f32(round(-367f)), var_0.b)))), u_input.b.x, any(select(!vec4<bool>(false, var_0.b, true, true), vec4<bool>(var_0.b, true, false, true), vec4<bool>(false, false, var_0.b, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_4, 23>();
    let var_0 = true;
    let var_1 = func_1();
    global1 = Struct_4(global1.a | select(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 64686u, u_input.a, u_input.a) & global1.a, vec4<u32>(30614u, 4294967295u, 6910u, 7343u)), global1.a, vec4<bool>(true | var_0, true, var_1.b.c > -14172i, all(vec3<bool>(true, true, true)))));
    let var_2 = reverseBits(_wgslsmith_div_u32(global1.a.x & (~36747u | (u_input.a << (global1.a.x % 32u))), ~u_input.a | 19911u));
    global1 = Struct_4(global1.a);
    var var_3 = global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(~4294967295u, var_2) << (~4294967295u % 32u)), 23u)];
    let var_4 = _wgslsmith_mod_u32(~firstTrailingBit(select(_wgslsmith_mod_u32(global1.a.x, 10864u), ~1u, !var_1.a.d)), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(u_input.b | vec2<i32>(-1i, firstLeadingBit(u_input.b.x)), firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(-52183i, u_input.b.x), u_input.b))), ~vec2<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.b.x, u_input.b.x)), _wgslsmith_add_vec3_i32(vec3<i32>(4560i, var_1.a.c, 28190i), vec3<i32>(1i, -14705i, _wgslsmith_mult_i32(2147483647i, var_1.a.c))), _wgslsmith_div_vec3_f32(vec3<f32>(813f, var_1.b.a.x, _wgslsmith_div_f32(func_1().b.b, _wgslsmith_div_f32(var_1.b.a.x, var_1.a.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.a.x), -552f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.b)))), _wgslsmith_sub_u32(countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a.x, u_input.a, var_3.a.x, 6905u), global1.a)), min(firstLeadingBit(abs(u_input.a)), ~u_input.a)));
}

