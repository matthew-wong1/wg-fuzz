struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_1,
    d: u32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
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

var<private> global0: array<Struct_3, 29> = array<Struct_3, 29>(Struct_3(-516f, 45941u), Struct_3(-1729f, 4294967295u), Struct_3(-614f, 68161u), Struct_3(747f, 4294967295u), Struct_3(739f, 4294967295u), Struct_3(-396f, 4294967295u), Struct_3(1725f, 59914u), Struct_3(517f, 0u), Struct_3(899f, 69357u), Struct_3(-1831f, 1u), Struct_3(-665f, 63978u), Struct_3(-1000f, 9468u), Struct_3(-1155f, 79890u), Struct_3(1310f, 1u), Struct_3(-1000f, 6811u), Struct_3(205f, 100327u), Struct_3(-1249f, 17800u), Struct_3(2044f, 34580u), Struct_3(1000f, 11308u), Struct_3(-1939f, 4294967295u), Struct_3(472f, 44210u), Struct_3(2229f, 35364u), Struct_3(956f, 1u), Struct_3(-593f, 0u), Struct_3(1624f, 4294967295u), Struct_3(-830f, 0u), Struct_3(1852f, 1u), Struct_3(-1555f, 44178u), Struct_3(-981f, 67536u));

var<private> global1: Struct_1 = Struct_1(5877i, -14806i);

var<private> global2: array<vec2<f32>, 4>;

var<private> global3: f32 = 467f;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(max(-max(vec2<i32>(u_input.b, -76497i), vec2<i32>(u_input.b, arg_2.b)), ~(u_input.a ^ vec2<i32>(arg_2.a, -2147483647i))), u_input.a), 1i);
    let var_1 = 4294967295u & _wgslsmith_clamp_u32(_wgslsmith_div_u32(arg_3.x >> (_wgslsmith_clamp_u32(arg_3.x, 0u, arg_3.x) % 32u), firstTrailingBit(arg_1.x & 1u)), 0u, 96670u);
    let var_2 = Struct_4(arg_0, 507f, Struct_1(~u_input.a.x, -arg_2.a), _wgslsmith_dot_vec4_u32(~arg_3 | ~vec4<u32>(67553u, 0u, 36716u, arg_1.x), arg_3 >> (reverseBits(~vec4<u32>(92820u, 63120u, arg_3.x, 0u)) % vec4<u32>(32u))), vec4<bool>(!(~var_1 < 1u), all(vec2<bool>(true, true)), false, _wgslsmith_div_u32(arg_0.b << (85313u % 32u), 1u) == ~countOneBits(var_1)));
    global2 = array<vec2<f32>, 4>();
    let var_3 = var_2;
    return global1.a;
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: u32) -> i32 {
    var var_0 = Struct_2(Struct_1(u_input.b, _wgslsmith_div_i32(0i, u_input.b)), (20849u & arg_2) == _wgslsmith_add_u32(min(max(4294967295u, arg_0), 4294967295u), arg_2), Struct_1(u_input.a.x, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), 35878i)), -1616f);
    let var_1 = _wgslsmith_f_op_f32(trunc(var_0.d));
    var var_2 = ~arg_0;
    var var_3 = _wgslsmith_sub_i32(-2147483647i, -abs(_wgslsmith_mod_i32(-u_input.b, ~var_0.a.b)));
    var_2 = 1u;
    return firstLeadingBit(func_3(Struct_3(var_1, 38348u), ~(~vec3<u32>(8876u, 0u, arg_0)), Struct_1(u_input.b, -1i), (vec4<u32>(53824u, 4294967295u, 4294967295u, arg_2) & vec4<u32>(22716u, arg_0, arg_2, 34108u)) >> (~vec4<u32>(arg_0, 4744u, 6507u, arg_2) % vec4<u32>(32u))) & countOneBits(countOneBits(-2147483647i) << (~arg_2 % 32u)));
}

fn func_1() -> Struct_3 {
    var var_0 = select(-vec3<i32>(~func_2(41222u, vec2<f32>(-211f, 188f), 26505u), max(~u_input.a.x, abs(-59144i)), ~u_input.a.x ^ u_input.b), vec3<i32>(u_input.a.x, 4595i, _wgslsmith_div_i32(-u_input.b, 55167i)), false);
    var var_1 = _wgslsmith_f_op_f32(638f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(414f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(212f)))) - _wgslsmith_f_op_f32(-529f - _wgslsmith_f_op_f32(f32(-1f) * -808f)))));
    global2 = array<vec2<f32>, 4>();
    let var_2 = Struct_1(2147483647i, -_wgslsmith_mod_i32(firstTrailingBit(61194i), i32(-1i) * -18383i));
    let var_3 = firstTrailingBit(vec4<u32>(1u, 1u, 1u, 1u));
    return global0[_wgslsmith_index_u32(var_3.x, 29u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b;
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(-var_1.a);
    let var_3 = _wgslsmith_f_op_f32(sign(1817f));
    let var_4 = vec4<u32>(select(~select(68990u, _wgslsmith_mod_u32(var_1.b, 83919u), any(vec4<bool>(false, true, false, true))), 73048u, false), ~4294967295u, var_1.b, _wgslsmith_add_u32(var_1.b, _wgslsmith_div_u32(abs(1u), max(abs(var_1.b), 29503u))));
    var var_5 = _wgslsmith_f_op_f32(ceil(-552f));
    var var_6 = Struct_2(Struct_1(_wgslsmith_sub_i32(firstLeadingBit(global1.b) >> (4294967295u % 32u), u_input.a.x), global1.b), all(vec2<bool>(false, true)), Struct_1(u_input.a.x, global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3, 478f, true))) + var_1.a), -289f));
    var var_7 = vec4<u32>(~var_4.x, ~_wgslsmith_mod_u32(29649u >> (1u % 32u), 1u), 95373u, var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_4.x));
}

