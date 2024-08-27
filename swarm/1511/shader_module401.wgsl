struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 28> = array<f32, 28>(-1304f, -872f, -1000f, 1227f, 359f, 241f, -277f, 394f, 1184f, -201f, -1474f, 1268f, 553f, 994f, 306f, -229f, 1247f, -1000f, 190f, -105f, -1611f, 440f, -1062f, -1080f, -1000f, -478f, 1533f, -408f);

var<private> global1: array<Struct_2, 7>;

var<private> global2: array<vec2<bool>, 14>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool) -> f32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-775f)))), max(vec3<u32>(firstTrailingBit(u_input.c.x), ~u_input.c.x, u_input.c.x), _wgslsmith_add_vec3_u32(~vec3<u32>(u_input.c.x, 1u, 1u), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x) << (vec3<u32>(u_input.c.x, u_input.c.x, 26819u) % vec3<u32>(32u))))), all(!select(vec3<bool>(false, arg_0, arg_0), !vec3<bool>(false, false, arg_0), select(vec3<bool>(arg_0, arg_0, true), vec3<bool>(arg_0, false, true), vec3<bool>(true, arg_0, arg_0)))));
    return global0[_wgslsmith_index_u32(9691u, 28u)];
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = Struct_2(u_input.c.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(true))), 740f) >= _wgslsmith_f_op_f32(floor(-1275f)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, reverseBits(15600u), ~arg_0.x), vec4<u32>(5249u, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.c.x), vec2<u32>(arg_0.x, u_input.c.x) & arg_1.c.xz), 1u, u_input.c.x)));
    global2 = array<vec2<bool>, 14>();
    var var_1 = var_0.b;
    var var_2 = var_0;
    return global2[_wgslsmith_index_u32(4294967295u, 14u)];
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, i32(-1i) * -u_input.a.x), u_input.a.zw, ~(_wgslsmith_div_vec2_i32(vec2<i32>(0i, u_input.d), vec2<i32>(u_input.d, u_input.b)) >> ((vec2<u32>(u_input.c.x, 12751u) << (u_input.c % vec2<u32>(32u))) % vec2<u32>(32u)))), min(~select(-u_input.a.wz, vec2<i32>(u_input.b, -1i) ^ vec2<i32>(u_input.b, 0i), func_2(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), Struct_1(vec2<f32>(-407f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), global0[_wgslsmith_index_u32(u_input.c.x, 28u)], vec3<u32>(u_input.c.x, 0u, u_input.c.x)), u_input.a)), _wgslsmith_div_vec2_i32(select(vec2<i32>(u_input.b, -652i), u_input.a.wz, arg_0.x) | vec2<i32>(u_input.d, u_input.d), ~vec2<i32>(1i, -1i))));
    var var_1 = all(!(!func_2(min(vec3<u32>(4294967295u, u_input.c.x, 4044u), vec3<u32>(u_input.c.x, 1u, u_input.c.x)), Struct_1(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c.x, 28u)], 881f), global0[_wgslsmith_index_u32(u_input.c.x, 28u)], vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)), u_input.a)));
    var var_2 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-283f, -319f))))), -433f), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(min(u_input.c.x, u_input.c.x), u_input.c.x | 1u), ~u_input.c), 28u)], abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x >> (4294967295u % 32u), 1u, min(u_input.c.x, 3821u)), countOneBits(vec3<u32>(u_input.c.x, u_input.c.x, 42745u)))));
    var var_3 = 233f;
    global1 = array<Struct_2, 7>();
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(var_2.c.x, 28u)]))) - -998f), _wgslsmith_f_op_f32(-1f)), global0[_wgslsmith_index_u32(0u, 28u)], var_2.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global1 = array<Struct_2, 7>();
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(~0u, 28u)], global0[_wgslsmith_index_u32(abs(4294967295u), 28u)], var_0)), -735f))));
    var var_2 = func_1(!vec4<bool>(false && all(vec4<bool>(false, var_0, false, var_0)), !var_0, all(select(vec2<bool>(var_0, var_0), global2[_wgslsmith_index_u32(24719u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)])), var_0));
    var var_3 = vec3<bool>(var_0, !(u_input.d <= 0i), true);
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)], -2624f), vec3<f32>(-1915f, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], global0[_wgslsmith_index_u32(var_2.c.x, 28u)]))))), vec3<f32>(-1000f, -645f, var_2.a.x)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0[_wgslsmith_index_u32(0u, 28u)], var_1, global0[_wgslsmith_index_u32(u_input.c.x, 28u)])))) + vec3<f32>(1f, 1f, 1f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1467f), _wgslsmith_f_op_f32(-1030f + _wgslsmith_f_op_f32(func_3(var_0))), -240f));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4.x)) - 623f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~u_input.c.x >> (u_input.c.x % 32u), var_2.c.x, u_input.c.x, 1u) >> (vec4<u32>(u_input.c.x, 38845u, firstLeadingBit(var_2.c.x), select(~u_input.c.x, _wgslsmith_mod_u32(var_2.c.x, 54996u), var_3.x)) % vec4<u32>(32u)), ~(-reverseBits(u_input.b)), vec3<i32>(-32760i, u_input.d, _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.d, -u_input.b), _wgslsmith_dot_vec3_i32(u_input.a.yww & u_input.a.wzz, vec3<i32>(u_input.b, 29914i, 2147483647i)))));
}

