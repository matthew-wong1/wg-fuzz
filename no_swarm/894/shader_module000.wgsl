struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: vec4<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
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

var<private> global0: array<f32, 17>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec3<f32> {
    global0 = array<f32, 17>();
    var var_0 = ~_wgslsmith_clamp_u32(~(~u_input.d.x & u_input.a.x), u_input.a.x, ~(~51257u));
    let var_1 = -63105i;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2984f - -999f)), global0[_wgslsmith_index_u32(~(~(u_input.a.x << (~u_input.d.x % 32u))), 17u)], Struct_1(~_wgslsmith_clamp_u32(u_input.a.x, ~u_input.d.x, u_input.a.x & u_input.d.x), false, max(-(~var_1), 25012i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(17968u, 17u)], -690f, global0[_wgslsmith_index_u32(26425u, 17u)]), vec3<f32>(259f, global0[_wgslsmith_index_u32(1u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)]))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(675f, global0[_wgslsmith_index_u32(4294967295u, 17u)], -148f), vec3<f32>(-500f, global0[_wgslsmith_index_u32(2832u, 17u)], global0[_wgslsmith_index_u32(u_input.a.x, 17u)]))))), ~(1u & u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -372f) * _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.d.x, 17u)]))));
    global0 = array<f32, 17>();
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_2.c.d)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> i32 {
    global0 = array<f32, 17>();
    return select(16933i, arg_0.a.c, any(!select(!vec2<bool>(arg_1.a.b, arg_1.b.b), vec2<bool>(true, true), select(false, false, false))));
}

fn func_2(arg_0: u32) -> vec2<bool> {
    global0 = array<f32, 17>();
    var var_0 = vec2<i32>(u_input.b.x, ~(~0i ^ u_input.c.x));
    var_0 = vec2<i32>(func_4(Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 0u, 1u), u_input.d), false, min(u_input.c.x, var_0.x), vec3<f32>(global0[_wgslsmith_index_u32(61028u, 17u)], 560f, 663f), countOneBits(52281u)), Struct_1(1u, arg_0 < arg_0, u_input.c.x, _wgslsmith_f_op_vec3_f32(func_3()), ~5715u)), Struct_2(Struct_1(4294967295u, true, -10892i >> (arg_0 % 32u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1003f, 249f, 1697f)), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 66u), vec2<u32>(0u, 32556u))), Struct_1(1u, true, abs(11925i), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0[_wgslsmith_index_u32(25584u, 17u)], 1599f, 349f), vec3<f32>(global0[_wgslsmith_index_u32(45888u, 17u)], -109f, global0[_wgslsmith_index_u32(arg_0, 17u)]))), ~arg_0))), 3045i);
    var var_1 = !select(!vec3<bool>(all(vec2<bool>(true, true)), true, all(vec3<bool>(true, false, false))), vec3<bool>(false, true, !any(vec2<bool>(true, false))), !vec3<bool>(select(true, true, false), true, true));
    var_1 = vec3<bool>(var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 17u)] == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-232f)))), any(select(!vec4<bool>(var_1.x, var_1.x, false, var_1.x), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, var_1.x, false, var_1.x), false), !var_1.x)));
    return !vec2<bool>(any(!vec4<bool>(var_1.x, var_1.x, false, false)), !select(true, var_1.x, true));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    global0 = array<f32, 17>();
    let var_0 = !(!vec2<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 12162u, u_input.a.x), u_input.a) < min(u_input.d.x, u_input.a.x)));
    let var_1 = var_0.x;
    var var_2 = select(vec3<bool>(false, any(!func_2(1u)), var_0.x), select(!(!vec3<bool>(true, var_1, var_1)), select(vec3<bool>(all(vec3<bool>(var_0.x, false, false)), var_0.x, var_1), !vec3<bool>(false, var_1, false), vec3<bool>(!var_1, true, true)), vec3<bool>(!select(true, var_1, false), var_0.x, !var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f)) == arg_0.x);
    var var_3 = Struct_5(!select(any(vec3<bool>(var_2.x, var_2.x, var_2.x)), all(vec4<bool>(var_0.x, true, var_1, var_1)), true != any(vec4<bool>(var_1, var_1, var_0.x, true))), ~_wgslsmith_mult_vec3_i32(~u_input.c, min(max(vec3<i32>(u_input.c.x, u_input.b.x, u_input.b.x), vec3<i32>(40679i, 2147483647i, -2147483647i)), vec3<i32>(u_input.c.x, u_input.b.x, -2147483647i))), true, vec4<u32>(~58558u, abs(4294967295u), u_input.d.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.d.x, 18303u, u_input.a.x), vec4<u32>(0u, u_input.d.x, 28574u, u_input.a.x)), ~vec4<u32>(u_input.a.x, 5614u, u_input.a.x, 1u))), reverseBits(-23436i));
    return var_3.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0[_wgslsmith_index_u32(10085u, 17u)], global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-2140f, global0[_wgslsmith_index_u32(u_input.a.x, 17u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], 426f))))) & abs(u_input.a.x), true, -27502i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], 848f, 476f)) - _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], 1000f, global0[_wgslsmith_index_u32(u_input.d.x, 17u)]), vec3<f32>(global0[_wgslsmith_index_u32(u_input.d.x, 17u)], global0[_wgslsmith_index_u32(41261u, 17u)], 456f))))), u_input.a.x);
    global0 = array<f32, 17>();
    let var_1 = Struct_1(var_0.e, false, -53769i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1413f), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(trunc(1352f)))))), firstTrailingBit(reverseBits(~(~73485u))));
    global0 = array<f32, 17>();
    var var_2 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1233f)), 639f)), _wgslsmith_f_op_f32(sign(var_0.d.x)), Struct_1(0u, !all(select(vec4<bool>(false, var_1.b, var_0.b, var_1.b), vec4<bool>(false, true, true, var_1.b), var_0.b)), var_1.c, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-var_0.d), vec3<f32>(726f, var_1.d.x, -151f)))), ~_wgslsmith_clamp_u32(func_1(var_0.d.zz), 4294967295u, u_input.d.x | u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1790f, var_0.d.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))));
    global0 = array<f32, 17>();
    var var_3 = 1296f;
    var var_4 = Struct_1(var_2.c.a, !var_1.b, ~(-countOneBits(abs(-31149i))), var_1.d, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d);
}

