struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: u32;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_1(vec2<i32>(max(_wgslsmith_div_i32(11665i, 6681i), _wgslsmith_dot_vec4_i32(vec4<i32>(-39194i, -51746i, -1i, -1i), vec4<i32>(-1i, 1i, 1i, 2147483647i))) ^ 1i, 12659i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2124f) - _wgslsmith_f_op_f32(2168f - -918f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1388f, 704f))))));
    var var_1 = _wgslsmith_sub_i32(_wgslsmith_div_i32(var_0.a.x, var_0.a.x), var_0.a.x);
    let var_2 = Struct_2(_wgslsmith_clamp_i32(var_0.a.x, var_0.a.x, ~select(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, var_0.a.x, 2147483647i, -18494i), vec4<i32>(2147483647i, 30229i, 2147483647i, var_0.a.x)), 1i, global0.x)), -33993i, Struct_1(select(_wgslsmith_add_vec2_i32(-var_0.a, -var_0.a), var_0.a, any(!vec2<bool>(global0.x, arg_0))), _wgslsmith_f_op_vec2_f32(var_0.b - var_0.b)), _wgslsmith_add_u32(104304u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(59896u, u_input.a.x, 1u), ~vec3<u32>(u_input.a.x, u_input.a.x, 6895u))));
    var var_3 = var_2.c;
    var var_4 = -1i;
    return ~_wgslsmith_div_i32(-1i, 2147483647i);
}

fn func_2() -> Struct_1 {
    var var_0 = ~_wgslsmith_sub_i32(-1i, select(-19580i, select(func_3(global0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -30533i), vec2<i32>(-38500i, 21211i)), false), true));
    let var_1 = -_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i) << (~(~vec4<u32>(49101u, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)), ~vec4<i32>(i32(-1i) * -17098i, 1i, 2988i, 1i), countOneBits(select(vec4<i32>(0i, -5025i, 2147483647i, 51443i), vec4<i32>(2147483647i, 39410i, 47325i, 1i), select(vec4<bool>(true, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, true, global0.x), global0.x))));
    var_0 = _wgslsmith_mult_i32(~64476i, var_1.x);
    let var_2 = global0.x;
    global1 = reverseBits(u_input.a.x);
    return Struct_1(var_1.yx, _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1375f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(113f)), -704f))))));
}

fn func_1() -> u32 {
    var var_0 = func_2();
    var var_1 = 1i;
    global1 = u_input.a.x;
    var_1 = -_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a.x, func_3(global0.x)), vec2<i32>(-(~74408i), 2147483647i));
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.yz, min(~u_input.a.yy, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.a.xy | vec2<u32>(u_input.a.x, 0u)))), vec2<u32>(~_wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, u_input.a.x), _wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.a.x, u_input.a.x, 4545u, 29892u), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u)), (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) & vec4<u32>(36398u, 42137u, 0u, 13169u)) << (~vec4<u32>(0u, 75560u, u_input.a.x, u_input.a.x) % vec4<u32>(32u)))));
    return ~1u;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: vec3<u32>) -> StorageBuffer {
    let var_0 = Struct_2(1i, -2147483647i >> (0u % 32u), func_2(), ~u_input.a.x);
    return StorageBuffer(~firstLeadingBit(countOneBits(firstTrailingBit(var_0.d))), ~var_0.d & (_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.d, u_input.a.x), _wgslsmith_add_u32(7098u, 1u)) ^ ~_wgslsmith_mult_u32(4294967295u, u_input.a.x)), ~(~firstTrailingBit(-vec2<i32>(var_0.b, var_0.c.a.x))), (min(~2147483647i, var_0.b << (40767u % 32u)) | var_0.b) >> (~arg_2.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    let var_0 = global0.x & (select(4294967295u > firstTrailingBit(u_input.a.x), true, !(u_input.a.x >= u_input.a.x)) | ((max(u_input.a.x, u_input.a.x) < u_input.a.x) & true));
    let var_1 = !global0.xz;
    global1 = u_input.a.x;
    global1 = 22945u;
    let x = u_input.a;
    s_output = func_4(vec2<bool>((func_1() >> (_wgslsmith_div_u32(30177u, u_input.a.x) % 32u)) <= ~(~4294967295u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, 1i, 1i, 1i)) < firstLeadingBit(min(45317i, -726i))), select(!any(global0.yy), !(!global0.x), false), u_input.a);
}

