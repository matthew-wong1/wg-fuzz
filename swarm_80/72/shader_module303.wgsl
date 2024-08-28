struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> f32 {
    let var_0 = arg_1;
    return _wgslsmith_f_op_f32(-625f * arg_2.a.b);
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -211f)))), _wgslsmith_f_op_f32(1042f + 1f), 1f), vec3<f32>(-168f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1638f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(exp2(1f)))));
    var var_1 = min(_wgslsmith_div_vec4_i32(select(u_input.e, u_input.e, vec4<bool>(true, true, true, true)), vec4<i32>(~global0[_wgslsmith_index_u32(u_input.d.x, 29u)], _wgslsmith_clamp_i32(41022i, -31366i, global0[_wgslsmith_index_u32(0u, 29u)]), u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(3402i, -2147483647i, 18353i, 0i), vec4<i32>(22527i, u_input.e.x, 2147483647i, -17798i))) ^ vec4<i32>(0i, _wgslsmith_mult_i32(-21814i, -1i), global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 29u)], global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.b.x), 29u)])), vec4<i32>(-1i) * -vec4<i32>(~u_input.e.x, firstTrailingBit(global0[_wgslsmith_index_u32(u_input.b.x, 29u)]), min(2570i, u_input.c), ~global0[_wgslsmith_index_u32(u_input.a.x, 29u)]));
    var var_2 = ~_wgslsmith_add_vec3_u32(vec3<u32>(~49727u, u_input.d.x, 1u), ~vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), firstTrailingBit(0u), abs(1u)));
    let var_3 = vec2<u32>(~var_2.x, var_2.x);
    var_1 = -(~countOneBits(max(vec4<i32>(u_input.e.x, 37617i, -64450i, -1i), u_input.e)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1558f)));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: i32) -> vec4<bool> {
    global0 = array<i32, 29>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-752f * _wgslsmith_f_op_f32(max(1466f, _wgslsmith_div_f32(1000f, -1061f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-437f, 788f)), 1000f))))), -1293f, _wgslsmith_f_op_f32(func_3()));
    global0 = array<i32, 29>();
    var var_1 = 82895u;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(503f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(max(var_0.x, 1101f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.x * -585f)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1572f, var_0.x, var_0.x, 1067f), vec4<f32>(var_0.x, 750f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.x, var_0.x, var_0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(-962f, var_0.x, var_0.x, -500f), vec4<f32>(-189f, 213f, var_0.x, -1536f)))))));
    return vec4<bool>(arg_1.x, (select(_wgslsmith_mod_i32(0i, 2147483647i), u_input.e.x, any(vec2<bool>(true, true))) >= u_input.c) || false, arg_1.x, _wgslsmith_f_op_f32(sign(-1129f)) >= -675f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1f;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(168f, 447f, false)), _wgslsmith_f_op_f32(abs(-1137f))), _wgslsmith_f_op_f32(f32(-1f) * -630f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-493f - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-788f - 335f), _wgslsmith_f_op_f32(func_1(vec3<f32>(661f, -409f, -2309f), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -111f, false)), Struct_2(Struct_1(vec4<bool>(true, false, false, false), -762f, false)), 704f))))))));
    global0 = array<i32, 29>();
    let var_1 = Struct_2(Struct_1(func_2(17831u, vec4<bool>(any(vec4<bool>(true, false, true, true)), true, false, true), _wgslsmith_div_i32(-2352i, ~u_input.e.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(939f * -1030f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -1000f)))), any(vec3<bool>(true, true, false))));
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, vec4<u32>(max(~(~4294967295u), ~(~72351u)), _wgslsmith_sub_u32((u_input.a.x << (u_input.a.x % 32u)) ^ u_input.d.x, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), u_input.a.x)), _wgslsmith_sub_u32(u_input.b.x, u_input.b.x), u_input.a.x), _wgslsmith_dot_vec3_i32(abs(u_input.e.zww), ~u_input.e.wzw));
}

