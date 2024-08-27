struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: i32,
    b: vec2<u32>,
    c: bool,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, false, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(true, true, true, true)));

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, true, false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2) -> vec2<u32> {
    let var_0 = Struct_3(-(~((i32(-1i) * -15322i) << (~u_input.b % 32u))), select(vec2<u32>(~4294967295u, ~70548u), abs(_wgslsmith_div_vec2_u32(vec2<u32>(0u, 55391u), vec2<u32>(u_input.b, 4066u))), false) & vec2<u32>(u_input.b, abs(1u)), true, countOneBits(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, u_input.d.x), firstTrailingBit(u_input.c)))));
    var var_1 = 8367u;
    global0 = array<Struct_1, 25>();
    var_1 = u_input.b;
    var var_2 = vec3<i32>(-914i ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(-36769i, u_input.a.x, var_0.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d.x, u_input.a.x, 38558i), reverseBits(u_input.a.zwy))), _wgslsmith_add_i32(u_input.c.x, u_input.d.x), u_input.c.x);
    return vec2<u32>(~select(~var_0.b.x, _wgslsmith_div_u32(1u, var_0.b.x), arg_0.b) << (~_wgslsmith_mod_u32(~0u, firstLeadingBit(24584u)) % 32u), max(~(~u_input.b), max(~u_input.b, max(0u, 7233u))) >> ((4294967295u ^ u_input.b) % 32u));
}

fn func_2() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1253f);
    var var_1 = u_input.d.zx;
    global1 = global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(57883u, ~(~u_input.b)) >> (_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(1618u, u_input.b), vec2<u32>(4294967295u, u_input.b)), func_3(Struct_2(global0[_wgslsmith_index_u32(1u, 25u)], true))) % 32u)), 25u)];
    var var_2 = max(u_input.d.x, -(~reverseBits(27880i)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1098f, -1042f))) + _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, 1516f) - vec2<f32>(1000f, var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_0))))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(sign(-1310f)), _wgslsmith_f_op_f32(-var_0)), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0)), -939f), !select(vec2<bool>(false, global1.a.x), global1.a.yx, global1.a.yx)))));
    return global1.a;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(func_2());
    global0 = array<Struct_1, 25>();
    global0 = array<Struct_1, 25>();
    var var_1 = _wgslsmith_sub_i32(-(~firstLeadingBit(1i)), ~(~(-u_input.c.x)) | u_input.d.x);
    var_0 = global0[_wgslsmith_index_u32(~u_input.b, 25u)];
    return Struct_2(Struct_1(var_0.a), true == any(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global1 = func_1().a;
    global1 = Struct_1(!select(vec4<bool>(false, !var_0.b, any(vec4<bool>(global1.a.x, var_0.b, global1.a.x, global1.a.x)), !global1.a.x), !global1.a, any(vec3<bool>(true, false, true))));
    let var_1 = Struct_1(!func_2());
    let var_2 = func_1().a;
    let var_3 = _wgslsmith_sub_i32(_wgslsmith_clamp_i32(u_input.c.x, abs(9709i), _wgslsmith_div_i32(u_input.c.x, -968i)), -1i);
    global0 = array<Struct_1, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, vec2<f32>(-1754f, -1036f), vec4<u32>(~0u, ~firstTrailingBit(u_input.b), ~u_input.b & u_input.b, u_input.b) << (vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), max(vec4<u32>(4294967295u, u_input.b, u_input.b, 51713u), vec4<u32>(46095u, u_input.b, u_input.b, u_input.b))), u_input.b, 4294967295u) % vec4<u32>(32u)), u_input.b);
}

