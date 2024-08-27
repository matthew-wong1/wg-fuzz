struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27> = array<u32, 27>(1u, 2587u, 1u, 0u, 34403u, 28439u, 19029u, 0u, 98924u, 18481u, 0u, 0u, 55790u, 0u, 31945u, 1731u, 43360u, 58810u, 4294967295u, 4294967295u, 4294967295u, 39136u, 10112u, 0u, 24078u, 0u, 47020u);

var<private> global1: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(293f), Struct_2(814f), Struct_2(-411f), Struct_2(1215f), Struct_2(-1294f), Struct_2(786f), Struct_2(516f), Struct_2(344f), Struct_2(-215f), Struct_2(-363f), Struct_2(-885f), Struct_2(-2226f), Struct_2(409f), Struct_2(694f));

var<private> global2: array<u32, 32> = array<u32, 32>(82252u, 1u, 77519u, 3090u, 64121u, 61040u, 21948u, 1u, 44160u, 4294967295u, 48339u, 2803u, 24718u, 30876u, 0u, 4294967295u, 4294967295u, 15544u, 48101u, 1u, 0u, 1u, 1u, 9696u, 63432u, 466u, 1u, 0u, 4294967295u, 0u, 26753u, 48018u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1067f, -387f) - _wgslsmith_f_op_f32(round(411f)))) <= -1032f);
    let var_1 = _wgslsmith_div_u32(global0[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(4294967295u, global0[_wgslsmith_index_u32(24617u, 27u)])), 27u)], u_input.a.x) << (_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(1u & (u_input.b & 0u)), 27u)], 27u)], u_input.a.x) % 32u);
    let var_2 = _wgslsmith_add_u32(75105u, _wgslsmith_add_u32(~_wgslsmith_mult_u32(~4294967295u, var_1), 4294967295u));
    global0 = array<u32, 27>();
    var var_3 = 1000f;
    var var_4 = _wgslsmith_sub_i32(i32(-1i) * -25726i, -(_wgslsmith_mod_i32(u_input.c, u_input.c) << (~60634u % 32u))) ^ firstTrailingBit(18057i);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(43348u, ~0u) | ~_wgslsmith_dot_vec4_u32(max(vec4<u32>(global0[_wgslsmith_index_u32(23649u, 27u)], var_1, 7817u, var_2), vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 27u)], 27u)], 27u)], 27u)], 27u)], 32u)], global0[_wgslsmith_index_u32(50552u, 27u)], 4294967295u)), firstLeadingBit(vec4<u32>(63492u, global2[_wgslsmith_index_u32(var_1, 32u)], 13577u, 65610u))), _wgslsmith_div_i32(countOneBits(~u_input.d.x), u_input.c), _wgslsmith_div_i32(_wgslsmith_mod_i32(-13755i, ~(~u_input.c)), _wgslsmith_add_i32(-41319i, u_input.d.x)), i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -203f), _wgslsmith_f_op_f32(f32(-1f) * -1287f), all(vec2<bool>(false, var_0)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1064f)))))));
}

