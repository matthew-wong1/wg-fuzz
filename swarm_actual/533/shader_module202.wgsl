struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec2<f32> {
    global0 = array<i32, 17>();
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-521f)), _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -405f)), _wgslsmith_div_f32(-784f, -327f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-938f, 1088f, -764f, -849f) * vec4<f32>(-240f, 1000f, -715f, -115f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1546f, -558f, 535f, -1000f) - vec4<f32>(-503f, 642f, -896f, 1000f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(313f, -1645f, -528f, 349f)))), vec4<bool>(countOneBits(4294967295u) != u_input.b.x, any(vec3<bool>(true, true, true)), false, true))));
    global0 = array<i32, 17>();
    let var_1 = vec4<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 17u)] <= ~(-28520i | (u_input.c.x >> (23569u % 32u))), false, true);
    global0 = array<i32, 17>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + var_0.xx) - _wgslsmith_f_op_vec2_f32(sign(var_0.xx))) * _wgslsmith_div_vec2_f32(var_0.yx, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, 1057f))))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool) -> vec3<u32> {
    global0 = array<i32, 17>();
    let var_0 = Struct_1(select(arg_1, -global0[_wgslsmith_index_u32(4294967295u, 17u)], arg_2));
    return ~(~select(vec3<u32>(arg_0, u_input.b.x, 0u), vec3<u32>(arg_0, 36839u, u_input.b.x), arg_2)) >> (vec3<u32>(_wgslsmith_clamp_u32(108504u >> (_wgslsmith_mod_u32(38838u, u_input.b.x) % 32u), arg_0 << ((u_input.b.x << (u_input.b.x % 32u)) % 32u), ~0u), _wgslsmith_mod_u32(8652u, 27990u), 38373u) % vec3<u32>(32u));
}

fn func_1() -> StorageBuffer {
    var var_0 = min(reverseBits(vec2<u32>(u_input.b.x, abs(u_input.b.x))) & u_input.b, vec2<u32>(_wgslsmith_div_u32(4294967295u >> (u_input.b.x % 32u), ~0u) & u_input.b.x, _wgslsmith_add_u32(abs(~u_input.b.x), _wgslsmith_div_u32(abs(u_input.b.x), 28863u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-429f, 554f), _wgslsmith_f_op_vec2_f32(func_2(Struct_1(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 17u)]), -(_wgslsmith_mult_i32(-38006i, 54148i) ^ global0[_wgslsmith_index_u32(32149u, 17u)]))), vec2<bool>((~var_0.x >> (_wgslsmith_clamp_u32(u_input.b.x, var_0.x, 17225u) % 32u)) > _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(45053u, 4294967295u, var_0.x)), vec3<u32>(4294967295u, var_0.x, u_input.b.x)), (i32(-1i) * -global0[_wgslsmith_index_u32(104210u, 17u)]) == 56514i)));
    global0 = array<i32, 17>();
    var var_2 = var_1;
    let var_3 = Struct_1(_wgslsmith_dot_vec3_i32(-u_input.c, min(_wgslsmith_mult_vec3_i32(vec3<i32>(12176i, 0i, global0[_wgslsmith_index_u32(var_0.x, 17u)]), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], -50450i, 2147483647i), u_input.c)), -u_input.c)));
    return StorageBuffer(_wgslsmith_clamp_vec3_u32(func_3(countOneBits(~var_0.x), abs(-33088i), (u_input.c.x ^ u_input.a) <= _wgslsmith_div_i32(u_input.c.x, u_input.c.x)), countOneBits(countOneBits(vec3<u32>(0u, 894u, 1u))), reverseBits(vec3<u32>(4294967295u >> (var_0.x % 32u), 1u >> (u_input.b.x % 32u), abs(var_0.x)))), _wgslsmith_f_op_f32(max(372f, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

