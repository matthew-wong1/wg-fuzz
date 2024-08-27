struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 19> = array<bool, 19>(false, false, true, false, true, true, false, false, true, false, true, true, false, false, false, true, false, false, false);

var<private> global1: u32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> u32 {
    global1 = 0u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-907f)) * -859f) + 1048f));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-839f))) - -330f);
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b.x, 1u, min(~u_input.b.x, ~1u)), 19u)] != global0[_wgslsmith_index_u32(u_input.b.x, 19u)], Struct_1(~(~(u_input.b.x << (78215u % 32u))), _wgslsmith_add_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), min(17236u, max(u_input.b.x, 2233u))), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 0u, 0u, u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x)) << (~vec4<u32>(u_input.b.x, u_input.b.x, 37693u, u_input.b.x) % vec4<u32>(32u))), all(select(!vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], false), vec4<bool>(false, global0[_wgslsmith_index_u32(53481u, 19u)], true, global0[_wgslsmith_index_u32(73889u, 19u)]), true)), global0[_wgslsmith_index_u32(u_input.b.x, 19u)]));
    var var_3 = any(vec4<bool>(false, any(vec4<bool>(global0[_wgslsmith_index_u32(min(var_2.b.a, 20665u), 19u)], all(vec3<bool>(global0[_wgslsmith_index_u32(1u, 19u)], true, false)), false, !global0[_wgslsmith_index_u32(0u, 19u)])), var_2.a, false));
    return ~(~u_input.b.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = Struct_3(any(vec3<bool>(true, true, !global0[_wgslsmith_index_u32(~u_input.b.x, 19u)])), Struct_1(1u, func_3(), select(vec4<u32>(_wgslsmith_mod_u32(4294967295u, u_input.b.x), u_input.b.x, firstLeadingBit(u_input.b.x), u_input.b.x), _wgslsmith_mult_vec4_u32(vec4<u32>(128240u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, 4294967295u, 9054u, 86394u)), vec4<bool>(select(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), !global0[_wgslsmith_index_u32(30179u, 19u)], any(vec4<bool>(global0[_wgslsmith_index_u32(39947u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], false, true)), global0[_wgslsmith_index_u32(~u_input.b.x, 19u)])), select(false, all(vec3<bool>(true, global0[_wgslsmith_index_u32(18127u, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)])), true) || any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(0u, 19u)])), u_input.a > 31602i));
    return var_0.b;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1322f)))));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1927f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(223f, -293f)))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1515f, 899f, -678f, 462f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1425f, 1152f, -1560f, 1148f)))))));
    var var_3 = -84279i;
    global1 = 15632u;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 19>();
    var var_0 = Struct_3(false, Struct_1(~((39448u >> (u_input.b.x % 32u)) & _wgslsmith_add_u32(u_input.b.x, u_input.b.x)), u_input.b.x, select(vec4<u32>(u_input.b.x, ~u_input.b.x, abs(u_input.b.x), _wgslsmith_div_u32(36155u, 54661u)), select(vec4<u32>(u_input.b.x, u_input.b.x, 0u, 0u), vec4<u32>(0u, 103159u, 120489u, 0u), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)])) | _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(4157u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(82218u, 227u, u_input.b.x, 6061u)), true), !any(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(65038u, 19u)], true, global0[_wgslsmith_index_u32(u_input.b.x, 19u)])), true));
    global1 = 5229u;
    let var_1 = ~(~(vec2<i32>(-1i) * -(~u_input.d)));
    var var_2 = Struct_3(select(!any(!vec2<bool>(true, global0[_wgslsmith_index_u32(57245u, 19u)])), select(var_0.a, var_0.b.d, true), true), func_1());
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(min(~(var_2.b.c.wx >> (vec2<u32>(var_0.b.b, var_0.b.a) % vec2<u32>(32u))), ~reverseBits(vec2<u32>(var_0.b.b, 21600u))), ~abs(~vec2<u32>(u_input.b.x, var_0.b.c.x))), _wgslsmith_mod_vec2_u32(var_0.b.c.zw, u_input.b.zz));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(652f, -629f, -408f)))), vec3<f32>(-1000f, -729f, _wgslsmith_f_op_f32(max(-103f, 768f))))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(767f)))), 280f, _wgslsmith_f_op_f32(-1514f + 341f)) - vec3<f32>(-919f, 1f, _wgslsmith_f_op_f32(round(1f)))));
    let x = u_input.a;
    s_output = StorageBuffer((vec2<i32>(-1i) * -(u_input.d >> (var_2.b.c.xw % vec2<u32>(32u)))) ^ ~vec2<i32>(var_1.x, firstLeadingBit(u_input.d.x)), ~countOneBits(4294967295u));
}

