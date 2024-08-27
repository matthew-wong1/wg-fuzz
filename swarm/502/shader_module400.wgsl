struct Struct_1 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
    e: u32,
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

var<private> global0: Struct_1;

var<private> global1: vec2<i32> = vec2<i32>(-1863i, 19692i);

var<private> global2: array<vec3<f32>, 6>;

var<private> global3: array<u32, 9> = array<u32, 9>(42197u, 1u, 29220u, 4294967295u, 49597u, 99486u, 1u, 1u, 40567u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: i32) -> Struct_1 {
    return Struct_1(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.c.x, 9u)], 9u)], _wgslsmith_add_u32(global0.b.x, firstTrailingBit(u_input.e)), _wgslsmith_add_u32(1u, _wgslsmith_mod_u32(~24471u, 4294967295u))), global0.b, (~(global0.c << (vec4<u32>(u_input.e, global3[_wgslsmith_index_u32(1u, 9u)], 1144u, u_input.e) % vec4<u32>(32u))) >> (global0.c % vec4<u32>(32u))) | ~(global0.c | vec4<u32>(1u, 1u, 1u, 1u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>) -> f32 {
    global2 = array<vec3<f32>, 6>();
    var var_0 = Struct_1(vec3<u32>(reverseBits(u_input.c.x << (_wgslsmith_dot_vec2_u32(global0.a.yz, vec2<u32>(18932u, 1u)) % 32u)), _wgslsmith_sub_u32(u_input.e, global3[_wgslsmith_index_u32(global0.b.x, 9u)]), 11011u), (~(u_input.c | u_input.c) | vec3<u32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(26246u, global0.a.x), 9u)], u_input.e, 0u)) & (vec3<u32>(10146u, global3[_wgslsmith_index_u32(global0.c.x, 9u)], ~u_input.e) & global0.b), vec4<u32>(_wgslsmith_mod_u32(func_2(u_input.d.x).a.x, ~(~u_input.c.x)), firstTrailingBit(global3[_wgslsmith_index_u32(global0.c.x, 9u)]), global3[_wgslsmith_index_u32(~1u, 9u)], 2965u));
    var var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(1i, -1i), global1.x), _wgslsmith_div_vec2_i32(u_input.d.yx & vec2<i32>(-50982i, _wgslsmith_div_i32(global1.x, global1.x)), _wgslsmith_mult_vec2_i32(min(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, -6068i), u_input.d.yz), ~u_input.b), -u_input.b)));
    var var_2 = arg_0.xx;
    var var_3 = !var_2.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_1.x, arg_1.x)), _wgslsmith_f_op_f32(min(475f, 803f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_1.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))));
}

fn func_1() -> vec4<u32> {
    var var_0 = func_2(-499i);
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1302f, 1349f, -1248f))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1387f, 628f, -1000f, -123f) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-447f, -413f, -452f, 1323f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(188f, 142f, -1537f, -452f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1481f, -1157f, -1074f) + vec4<f32>(-192f, -624f, -916f, 625f)))) - vec4<f32>(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1671f, -521f)))), -534f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1503f, -225f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-374f))))));
    return vec4<u32>(50658u, _wgslsmith_div_u32(16254u, abs(~1u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, 69080u, 4294967295u), u_input.c) & global3[_wgslsmith_index_u32(~(~global0.a.x), 9u)], ~1u, ~firstTrailingBit(~u_input.c.x)), 12674u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(firstLeadingBit(_wgslsmith_add_vec3_u32(u_input.c, u_input.c)) >> (global0.a % vec3<u32>(32u)), global0.b, _wgslsmith_sub_vec4_u32(global0.c, func_1()));
    global1 = -reverseBits(countOneBits(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(~89339u, var_0.c.x) ^ ~(_wgslsmith_mult_u32(global0.c.x, 0u) << (abs(27022u) % 32u)));
}

