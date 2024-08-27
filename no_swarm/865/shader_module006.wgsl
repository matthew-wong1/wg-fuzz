struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 5> = array<vec4<f32>, 5>(vec4<f32>(1000f, 284f, -818f, 723f), vec4<f32>(-248f, 1036f, -650f, -152f), vec4<f32>(-410f, 223f, -649f, 214f), vec4<f32>(-543f, 1000f, 325f, 304f), vec4<f32>(-289f, 688f, -217f, 300f));

var<private> global1: array<vec3<f32>, 6> = array<vec3<f32>, 6>(vec3<f32>(510f, -782f, 616f), vec3<f32>(1088f, 805f, -1369f), vec3<f32>(428f, -1852f, -203f), vec3<f32>(2115f, 1000f, 948f), vec3<f32>(-450f, 964f, 811f), vec3<f32>(1152f, -1435f, -369f));

var<private> global2: array<i32, 26>;

var<private> global3: array<vec4<bool>, 13> = array<vec4<bool>, 13>(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global2 = array<i32, 26>();
    let var_0 = arg_1;
    global3 = array<vec4<bool>, 13>();
    var var_1 = Struct_2(arg_2);
    var var_2 = arg_0 >= -437f;
    return max(~_wgslsmith_add_u32(~1u, arg_1.a.b), var_1.a.a);
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    let var_0 = Struct_2(Struct_1(~22000u, abs(abs(func_3(986f, Struct_2(Struct_1(0u, 20023u, 2147483647i)), Struct_1(u_input.b, u_input.b, 1i), Struct_2(Struct_1(4294967295u, 38094u, global2[_wgslsmith_index_u32(60311u, 26u)]))))), -1i));
    let var_1 = u_input.e;
    var var_2 = u_input.c;
    let var_3 = var_0;
    var_2 = vec2<u32>(4294967295u, firstTrailingBit(var_0.a.b));
    return abs(_wgslsmith_mod_i32(0i >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.b, 54161u), vec3<u32>(4294967295u, 0u, 47092u)) % 32u), -2147483647i));
}

fn func_1(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<i32>) -> u32 {
    var var_0 = 1u;
    var var_1 = min(~u_input.a, ~reverseBits(~_wgslsmith_div_u32(4294967295u, u_input.a)));
    let var_2 = ~(-_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 0i), arg_3), func_2(arg_2.zyw), -66640i, i32(-1i) * -2147483647i), vec4<i32>(arg_3.x, 1i, ~(-14705i), 30088i)));
    global2 = array<i32, 26>();
    return 1u >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~u_input.d, firstLeadingBit(~(~(u_input.c.x >> (u_input.a % 32u)))), 0i);
    var_0 = Struct_1(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c.x, ~1u ^ ~u_input.a, var_0.a), ~(~func_1(vec3<f32>(1318f, 1880f, 3358f), 0i, vec4<bool>(true, false, false, true), vec3<i32>(-1i, var_0.c, -1i))), 4294967295u >> (abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 0u, var_0.a), vec3<u32>(u_input.a, 21782u, 0u))) % 32u)), 0u, u_input.e);
    global2 = array<i32, 26>();
    global0 = array<vec4<f32>, 5>();
    global2 = array<i32, 26>();
    global1 = array<vec3<f32>, 6>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_u32(4294967295u, u_input.b), max(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a, var_0.b, 33267u), reverseBits(vec3<u32>(var_0.b, 4294967295u, u_input.b))), 1u), ~global2[_wgslsmith_index_u32(var_0.b | func_3(259f, Struct_2(Struct_1(var_0.a, 1u, var_0.c)), Struct_1(var_0.a, 0u, 1i), Struct_2(Struct_1(u_input.c.x, u_input.a, global2[_wgslsmith_index_u32(0u, 26u)]))), 26u)]));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -563f)) * -311f)));
    var var_3 = (vec3<i32>(select(abs(12982i), reverseBits(global2[_wgslsmith_index_u32(u_input.d, 26u)]), true), _wgslsmith_mult_i32(0i, 2147483647i), 1i) >> (vec3<u32>(_wgslsmith_mult_u32(var_0.b, ~20853u), 64971u, ~46072u) % vec3<u32>(32u))) << ((select(max(max(vec3<u32>(var_0.a, u_input.b, 118947u), vec3<u32>(57933u, var_0.a, 10612u)), min(vec3<u32>(4294967295u, u_input.d, 1u), vec3<u32>(u_input.d, 0u, 0u))), vec3<u32>(var_0.b, var_1.a.a & 24954u, max(u_input.b, 41231u)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true))) >> (abs(~firstTrailingBit(vec3<u32>(1u, u_input.d, 1u))) % vec3<u32>(32u))) % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(714f * 1f));
}

