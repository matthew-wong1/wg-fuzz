struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: vec3<f32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 28>;

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(false, true, vec3<f32>(-1152f, 1779f, -1987f), Struct_2(Struct_1(vec3<u32>(70228u, 12074u, 0u))), false), Struct_3(false, true, vec3<f32>(371f, 177f, -1227f), Struct_2(Struct_1(vec3<u32>(39686u, 0u, 4294967295u))), false), Struct_3(false, false, vec3<f32>(-879f, -1334f, 295f), Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u))), true), Struct_3(false, true, vec3<f32>(-182f, -945f, -378f), Struct_2(Struct_1(vec3<u32>(6300u, 5885u, 0u))), true), Struct_3(true, false, vec3<f32>(1325f, 526f, -1000f), Struct_2(Struct_1(vec3<u32>(0u, 59117u, 13609u))), false), Struct_3(true, true, vec3<f32>(-1000f, -1264f, 248f), Struct_2(Struct_1(vec3<u32>(8700u, 4294967295u, 21715u))), false));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_clamp_vec2_i32(countOneBits(-vec2<i32>(-1i, -9522i)), abs(vec2<i32>(36240i, -_wgslsmith_mult_i32(-9641i, 1i))), vec2<i32>(_wgslsmith_dot_vec2_i32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(max(u_input.a, 146668u), 23958u >> (1u % 32u)), 28u)], vec2<i32>(-44788i, -2147483647i)), 0i));
    global0 = array<vec2<i32>, 28>();
    global1 = array<Struct_3, 6>();
    let var_1 = select(!select(select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), vec3<bool>(false, true, false)), true), !select(vec3<bool>(any(vec3<bool>(false, false, true)), true, true), vec3<bool>(true, true, true), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 74285u), vec4<u32>(u_input.a, 4294967295u, 4294967295u, u_input.a)) == 41805u), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))), any(vec3<bool>(true, false, true))));
    var var_2 = false;
    return abs(var_0.x) << (u_input.a % 32u);
}

fn func_2(arg_0: bool, arg_1: Struct_4, arg_2: Struct_2, arg_3: Struct_4) -> u32 {
    let var_0 = _wgslsmith_mod_i32(i32(-1i) * -1i, -12595i);
    global0 = array<vec2<i32>, 28>();
    global0 = array<vec2<i32>, 28>();
    let var_1 = 1089f;
    let var_2 = arg_2.a.a.yy;
    return countOneBits(arg_2.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_3, 6>();
    let var_0 = _wgslsmith_div_vec4_i32(-_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 49725i, -20643i, 1i), -vec4<i32>(1i, -19499i, -1i, 2147483647i) | _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -14468i, 0i, -25720i), vec4<i32>(-1i, 1i, -67258i, -32321i), vec4<i32>(2147483647i, 24292i, 0i, -15287i))), -(~(-vec4<i32>(17016i, 72591i, -14002i, 20151i))));
    global1 = array<Struct_3, 6>();
    global1 = array<Struct_3, 6>();
    let var_1 = var_0.x >= func_1();
    var var_2 = max(-_wgslsmith_mod_i32(var_0.x, var_0.x), reverseBits(-(608i >> (u_input.a % 32u))));
    global1 = array<Struct_3, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_div_u32(1u, u_input.a & 39694u), _wgslsmith_dot_vec4_u32(vec4<u32>(func_2(true, Struct_4(true), Struct_2(Struct_1(vec3<u32>(u_input.a, u_input.a, u_input.a))), Struct_4(true)), 76424u, 4294967295u, 1u), vec4<u32>(~u_input.a, ~u_input.a, u_input.a, u_input.a ^ 94872u))), _wgslsmith_add_i32(var_0.x, -20914i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -500f) + _wgslsmith_f_op_f32(-986f + 1048f)))), _wgslsmith_f_op_f32(855f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-707f, 651f)))));
}

