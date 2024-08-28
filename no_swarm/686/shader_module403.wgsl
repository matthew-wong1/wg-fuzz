struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 12> = array<vec3<bool>, 12>(vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false));

var<private> global1: Struct_2 = Struct_2(18522u, false, vec4<i32>(-16098i, 0i, 12782i, 0i));

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 0u, 0u, 4294967295u);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2) -> u32 {
    var var_0 = arg_0;
    global0 = array<vec3<bool>, 12>();
    var var_1 = Struct_2(max(~_wgslsmith_dot_vec2_u32(~global2.yx, ~global2.yx), 1u), !((~arg_0.a | global1.a) >= select(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, global1.a), global2.yw), any(vec2<bool>(global1.b, global1.b)))), ~arg_0.c);
    let var_2 = Struct_1(!vec3<bool>((arg_0.a << (0u % 32u)) == ~1u, 0u != _wgslsmith_add_u32(1u, var_0.a), !any(vec3<bool>(var_0.b, false, arg_0.b))), var_1.c, arg_0.b, abs(countOneBits(24652u) & _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(arg_0.a, var_1.a))));
    var_0 = Struct_2(~(var_2.d | select(global1.a, reverseBits(4294967295u), 1i > var_1.c.x)), global1.b, -var_1.c >> (_wgslsmith_add_vec4_u32(~vec4<u32>(50251u, 4294967295u, 0u, 12049u), firstLeadingBit(vec4<u32>(36006u, 14233u, global1.a, 0u))) % vec4<u32>(32u)));
    return 47094u;
}

fn func_2(arg_0: u32) -> Struct_2 {
    var var_0 = true;
    return Struct_2(_wgslsmith_add_u32(firstLeadingBit(func_3(Struct_2(global1.a, global1.b, vec4<i32>(-36132i, 1i, 43088i, u_input.a.x)))), func_3(Struct_2(min(0u, 42496u), global1.b, global1.c << (vec4<u32>(arg_0, 37196u, arg_0, 20721u) % vec4<u32>(32u))))), global1.b, -global1.c);
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    var var_0 = Struct_1(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(reverseBits(~global2.x), global2.x, ~(~(~0u))), 12u)], _wgslsmith_clamp_vec4_i32(global1.c, vec4<i32>(firstTrailingBit(1i), _wgslsmith_add_i32(-1i, u_input.a.x), -1i, 1i), arg_0.c), arg_0.b && any(vec3<bool>(true, -32079i != global1.c.x, true)), ~(~_wgslsmith_div_u32(1u, 50964u)));
    global0 = array<vec3<bool>, 12>();
    let var_1 = Struct_1(vec3<bool>(false, true, true & (all(vec4<bool>(true, global1.b, true, arg_1)) && arg_1)), ((_wgslsmith_clamp_vec4_i32(vec4<i32>(-17515i, var_0.b.x, var_0.b.x, u_input.a.x), vec4<i32>(var_0.b.x, 0i, 46156i, 1i), vec4<i32>(var_0.b.x, -1i, u_input.a.x, var_0.b.x)) ^ vec4<i32>(arg_0.c.x, -40847i, 35671i, arg_0.c.x)) | _wgslsmith_add_vec4_i32(global1.c & vec4<i32>(2147483647i, arg_0.c.x, u_input.a.x, u_input.a.x), var_0.b)) << (~_wgslsmith_mod_vec4_u32(select(vec4<u32>(0u, arg_0.a, global2.x, arg_0.a), vec4<u32>(var_0.d, 4294967295u, arg_0.a, 40966u), var_0.a.x), ~vec4<u32>(arg_0.a, var_0.d, 1u, 28599u)) % vec4<u32>(32u)), arg_0.b, 22948u);
    var var_2 = func_2(50493u);
    var_2 = arg_0;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    let var_0 = arg_0.b.zxz;
    var var_1 = arg_0;
    var var_2 = var_1.b.zwx;
    let var_3 = arg_0;
    var var_4 = var_1.a.x;
    return _wgslsmith_div_vec4_u32(vec4<u32>(~var_1.d, 0u, 1u, global1.a), vec4<u32>(_wgslsmith_sub_u32(global2.x | ~22800u, 1u), global2.x, 5253u, _wgslsmith_add_u32(0u, 14979u)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = arg_1;
    let var_1 = global1.c;
    let var_2 = ~(-43951i & max(31305i, arg_1.c.x));
    let var_3 = global2.xxz >> (global2.yzw % vec3<u32>(32u));
    let var_4 = vec4<i32>(2147483647i, min(firstLeadingBit(arg_2.x) | var_0.c.x, -1i), -(~(-2147483647i) | var_0.c.x), var_1.x) << (func_5(func_4(func_2(~arg_0.d), var_0.b || var_0.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-565f - 2309f)))) % vec4<u32>(32u));
    return _wgslsmith_div_u32(0u, abs(_wgslsmith_add_u32(99u, _wgslsmith_mult_u32(func_5(Struct_1(global0[_wgslsmith_index_u32(33134u, 12u)], arg_1.c, arg_1.b, 25280u), 331f).x, var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(vec2<bool>(global1.b, false)), any(!select(global0[_wgslsmith_index_u32(func_1(Struct_1(vec3<bool>(false, global1.b, global1.b), vec4<i32>(1i, 2147483647i, global1.c.x, 0i), false, 1u), Struct_2(11224u, global1.b, global1.c), global1.c.zwy, 23524u), 12u)], vec3<bool>(false, true, true), false)));
    let var_1 = true | var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.c.wyx, vec3<i32>(global1.c.x, u_input.a.x, u_input.a.x), vec2<u32>(firstLeadingBit(~98006u), 72548u), vec4<f32>(-1374f, _wgslsmith_f_op_f32(trunc(833f)), 112f, -1548f));
}

