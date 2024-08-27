struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: vec4<f32> = vec4<f32>(-1000f, 153f, -710f, -674f);

var<private> global2: bool = false;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = ~(~abs(~1588u));
    var var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) * _wgslsmith_f_op_f32(-var_1.a)), (vec4<u32>(26507u, _wgslsmith_mod_u32(arg_0.b.x, u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 75208u, 1u, arg_0.b.x), var_1.b), 57449u) & vec4<u32>(var_1.b.x << (u_input.e % 32u), ~u_input.b.x, ~u_input.e, _wgslsmith_mod_u32(u_input.c.x, var_1.b.x))) >> (var_1.b % vec4<u32>(32u)), ~var_1.c, var_1.d, arg_0.e);
    let var_3 = Struct_1(1184f, ~u_input.c, -(~(~_wgslsmith_clamp_vec4_i32(var_1.c, vec4<i32>(0i, 0i, var_1.c.x, -48482i), var_1.c))), _wgslsmith_f_op_f32(f32(-1f) * -1186f) > _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_2.b.x, 9u)]), _wgslsmith_f_op_f32(170f - -1071f), true))), _wgslsmith_f_op_f32(sign(-543f)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.e, 1545f, 1117f, var_1.e), vec4<f32>(262f, 537f, var_2.a, 451f)))) * _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-504f, var_3.e, 242f, global0[_wgslsmith_index_u32(0u, 9u)]))), vec4<f32>(-1174f, var_2.a, global0[_wgslsmith_index_u32(var_3.b.x, 9u)], var_2.a)))))));
    return 1u;
}

fn func_2(arg_0: vec2<f32>) -> vec3<u32> {
    let var_0 = Struct_1(433f, ~vec4<u32>(4294967295u, func_3(Struct_1(global1.x, u_input.b, vec4<i32>(u_input.d.x, u_input.a, u_input.a, 0i), false, global1.x)), ~1u, u_input.e), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(~vec4<i32>(-1i, u_input.d.x, u_input.a, -29525i), -vec4<i32>(-21744i, -1i, u_input.d.x, 1i)), all(select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, false, false), vec3<bool>(true, true, true))) | true, -429f);
    var var_1 = all(vec4<bool>(true, var_0.d || true, true, true));
    var_1 = true;
    let var_2 = var_0;
    let var_3 = Struct_1(1000f, u_input.b, _wgslsmith_mult_vec4_i32(var_2.c, vec4<i32>(_wgslsmith_mod_i32(~u_input.d.x, _wgslsmith_clamp_i32(var_2.c.x, var_2.c.x, var_0.c.x)), i32(-1i) * -u_input.a, -var_0.c.x, var_0.c.x)), var_0.c.x >= -16168i, _wgslsmith_f_op_f32(f32(-1f) * -145f));
    return _wgslsmith_sub_vec3_u32(firstLeadingBit(~select(var_3.b.xwx, vec3<u32>(1u, 2193u, u_input.e), false)) | ~_wgslsmith_add_vec3_u32(var_2.b.yzy, var_3.b.wzw), vec3<u32>(~(~4294967295u >> (0u % 32u)), var_0.b.x, 4294967295u));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = ~func_2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-536f, -219f))), -808f));
    global2 = -10602i > arg_0.c.x;
    var var_1 = u_input.a;
    let var_2 = true;
    var var_3 = arg_0;
    return var_3.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 9>();
    let var_0 = vec2<u32>(u_input.c.x, ~(u_input.e << (_wgslsmith_mult_u32(u_input.b.x << (4294967295u % 32u), 2131u) % 32u)));
    var var_1 = global1.x;
    var var_2 = u_input.d.x | func_1(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2077f) * _wgslsmith_f_op_f32(ceil(1684f))), countOneBits(u_input.c ^ vec4<u32>(47176u, 0u, var_0.x, 0u)), vec4<i32>(-u_input.d.x, u_input.d.x & -23429i, _wgslsmith_clamp_i32(-12531i, u_input.a, 46105i), u_input.d.x), !(var_0.x < var_0.x), 435f));
    let var_3 = Struct_1(1262f, ~_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_add_vec4_u32(~vec4<u32>(85767u, 1u, 7085u, 1u), firstTrailingBit(u_input.b))), -_wgslsmith_div_vec4_i32(~min(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a, -47192i, u_input.a)), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 0i, -2147483647i), vec4<i32>(32806i, u_input.a, -1i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, 2147483647i)), vec4<i32>(u_input.a, u_input.d.x, -1i, -2147483647i))), !(0i <= u_input.d.x), _wgslsmith_div_f32(526f, _wgslsmith_f_op_f32(floor(747f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e, _wgslsmith_f_op_f32(-global1.x), -1696f) + vec3<f32>(global1.x, global0[_wgslsmith_index_u32(~var_0.x, 9u)], global1.x)) + global1.ywx), global1.xy, vec3<f32>(1185f, -1232f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(min(u_input.b.x | var_3.b.x, 0u), 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.x, var_3.a, false)) * -162f))), vec3<i32>(var_3.c.x, ~(~firstLeadingBit(u_input.a)), ~(-1i)), firstLeadingBit(_wgslsmith_dot_vec2_i32(var_3.c.yw, vec2<i32>(select(-4951i, 0i, var_3.d), 17859i))));
}

