struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32 = 1361f;

var<private> global2: vec3<i32> = vec3<i32>(1i, -41864i, -74051i);

var<private> global3: Struct_1 = Struct_1(i32(-2147483648));

var<private> global4: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(768i), Struct_1(0i), Struct_1(0i), Struct_1(16459i), Struct_1(161i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(2147483647i), Struct_1(-11895i), Struct_1(36412i), Struct_1(-36666i), Struct_1(-1i), Struct_1(-15217i), Struct_1(14195i), Struct_1(20769i), Struct_1(0i), Struct_1(i32(-2147483648)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~vec2<u32>(reverseBits(~1u), 1u >> (u_input.e.x % 32u)));
    let var_1 = vec3<bool>(false, any(vec2<bool>(true, true)), 1u <= var_0.x);
    global3 = Struct_1(-6833i);
    let var_2 = global4[_wgslsmith_index_u32(31353u, 17u)];
    var var_3 = -1514f;
    return global4[_wgslsmith_index_u32(abs(var_0.x) & ~_wgslsmith_sub_u32(6122u, var_0.x), 17u)];
}

fn func_1() -> Struct_1 {
    return func_2();
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(false, true), true)));
    global4 = array<Struct_1, 17>();
    var var_1 = Struct_1(reverseBits(~u_input.a));
    let var_2 = ~(~_wgslsmith_add_vec4_u32(select(vec4<u32>(u_input.b.x, 4294967295u, 76048u, u_input.b.x), countOneBits(vec4<u32>(u_input.c.x, 1u, 4294967295u, 38109u)), vec4<bool>(true, var_0.x, var_0.x, var_0.x)), max(vec4<u32>(4294967295u, u_input.c.x, 8379u, 37987u), ~vec4<u32>(u_input.e.x, u_input.e.x, u_input.b.x, u_input.e.x))));
    var_1 = Struct_1(1i);
    return ~(~(~reverseBits(~u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<Struct_1, 17>();
    var var_0 = global4[_wgslsmith_index_u32(~firstTrailingBit(firstLeadingBit(_wgslsmith_div_u32(u_input.c.x << (46536u % 32u), u_input.e.x))), 17u)];
    var var_1 = func_1();
    var var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.c.x), u_input.b.x, ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(u_input.c, u_input.e), func_3(global4[_wgslsmith_index_u32(u_input.e.x, 17u)])))), 17u)];
    global1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(1f, -416f, select(false, true, all(vec2<bool>(false, true)))))));
    var_2 = global4[_wgslsmith_index_u32(u_input.e.x ^ _wgslsmith_div_u32(60137u, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b.x, 20162u, u_input.b.x), ~vec4<u32>(u_input.e.x, 40430u, u_input.e.x, u_input.b.x)), ~0u, u_input.c.x)), 17u)];
    let var_3 = func_1();
    var var_4 = Struct_1(_wgslsmith_mod_i32(global2.x, 3922i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1396f - _wgslsmith_f_op_f32(sign(-775f)))), _wgslsmith_f_op_f32(-906f - -829f), select(_wgslsmith_clamp_vec2_u32(min(countOneBits(vec2<u32>(u_input.c.x, 24755u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(0u, u_input.c.x), u_input.e.zy)), ~(~vec2<u32>(u_input.b.x, 59720u)), u_input.c.xz), (u_input.e.zy | vec2<u32>(1u, u_input.e.x)) << (~u_input.b.yx % vec2<u32>(32u)), !select(true, true, select(true, false, false))), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(abs(1u), u_input.b.x), abs(1u), select(u_input.b.x, ~0u, any(vec2<bool>(true, true)))), ~vec4<u32>(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), u_input.b.x | 7888u, u_input.b.x, u_input.e.x | u_input.c.x)), reverseBits(firstTrailingBit(-vec2<i32>(-1i, 2147483647i))) & global2.yy);
}

