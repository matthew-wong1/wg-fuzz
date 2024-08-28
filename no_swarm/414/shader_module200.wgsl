struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 12>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    let var_0 = !vec3<bool>((arg_0.x != -28372i) || true, true, true);
    let var_1 = _wgslsmith_mod_i32(global0.a.x, 2147483647i) | 11608i;
    global1 = array<f32, 12>();
    global0 = Struct_1(u_input.c);
    let var_2 = firstLeadingBit(u_input.c);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-125f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1315f) * global1[_wgslsmith_index_u32(u_input.b.x << (14224u % 32u), 12u)])) * global1[_wgslsmith_index_u32(~0u, 12u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~reverseBits(73776u), 12u)]), global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, 1u), 4294967295u << (u_input.b.x % 32u), ~2353u)) >> (u_input.b.x % 32u), 12u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 12u)] - 1372f))), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 24152u), vec3<u32>(12415u, u_input.b.x, u_input.b.x)), 12u)] - global1[_wgslsmith_index_u32(84406u, 12u)])));
}

fn func_2() -> i32 {
    let var_0 = u_input.a;
    let var_1 = min(vec3<i32>(firstLeadingBit(u_input.c.x), _wgslsmith_mod_i32(global0.a.x, u_input.a), -_wgslsmith_mod_i32(firstTrailingBit(global0.a.x), u_input.a)), u_input.c);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-644f, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(22799u, 4294967295u) >> (~u_input.b.x % 32u), 12u)], 1264f, 677f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-414f, -681f, -1453f, global1[_wgslsmith_index_u32(u_input.b.x, 12u)])) * _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(2147483647i, 0i, -2147483647i))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], -1696f, global1[_wgslsmith_index_u32(1u, 12u)], 471f))) + vec4<f32>(_wgslsmith_f_op_f32(-1087f - 888f), global1[_wgslsmith_index_u32(43693u, 12u)], _wgslsmith_f_op_vec4_f32(func_3(global0.a)).x, -147f))));
    let var_3 = u_input.b.x;
    global0 = Struct_1(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(~7267i, global0.a.x, 1i), -vec3<i32>(u_input.c.x, -2147483647i, 2147483647i))));
    return min(~((var_1.x & _wgslsmith_mod_i32(var_1.x, global0.a.x)) >> (~firstLeadingBit(1u) % 32u)), var_0);
}

fn func_1(arg_0: Struct_1) -> f32 {
    var var_0 = Struct_1(vec3<i32>(-33281i, ~(-2219i), _wgslsmith_div_i32(1i, (arg_0.a.x ^ global0.a.x) << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 19348u, u_input.b.x)) % 32u))));
    let var_1 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, firstLeadingBit(-23491i), _wgslsmith_add_i32(func_2(), ~(-1038i))), var_0.a & u_input.c));
    var var_2 = Struct_1(reverseBits(var_0.a) & var_1.a);
    var var_3 = ~firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, max(u_input.b.x, u_input.b.x), u_input.b.x, u_input.b.x), reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 56731u, 4294967295u, u_input.b.x), vec4<u32>(u_input.b.x, 37822u, u_input.b.x, u_input.b.x))), ~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) >> (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 0u) % vec4<u32>(32u))));
    var var_4 = !vec4<bool>(!(~var_3.x < ~u_input.b.x), !all(vec3<bool>(true, false, false)) || true, true, false);
    return _wgslsmith_f_op_f32(1582f + global1[_wgslsmith_index_u32(~(~var_3.x), 12u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(~u_input.b.x, min(u_input.b.x, 1271u), firstTrailingBit(u_input.b.x)), u_input.b.x, all(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), 12u)] - _wgslsmith_f_op_f32(func_1(Struct_1(global0.a & vec3<i32>(1i, u_input.a, global0.a.x))))));
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, global1[_wgslsmith_index_u32(117469u, 12u)], var_0, var_0) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 12u)], 112f, global1[_wgslsmith_index_u32(25363u, 12u)], var_0)))), vec4<f32>(_wgslsmith_f_op_f32(trunc(var_0)), -1223f, var_0, _wgslsmith_f_op_f32(abs(-115f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, global1[_wgslsmith_index_u32(1u, 12u)], var_0)) - vec4<f32>(var_1.x, var_0, var_0, var_1.x)) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-834f, -117f, -1000f, 1000f), vec4<f32>(1151f, 1215f, var_1.x, var_1.x))), vec4<f32>(var_1.x, var_1.x, -621f, -1658f))))));
    global0 = Struct_1(u_input.c);
    let var_2 = Struct_1(_wgslsmith_add_vec3_i32(-(~(~vec3<i32>(global0.a.x, -1i, 658i))), _wgslsmith_sub_vec3_i32(u_input.c << (vec3<u32>(u_input.b.x, 85663u, u_input.b.x) % vec3<u32>(32u)), firstTrailingBit(countOneBits(vec3<i32>(-2147483647i, -6928i, global0.a.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(50760u, 12u)] - _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-149f, var_1.x)))), vec3<i32>(i32(-1i) * -2147483647i, global0.a.x, -4613i), ~vec4<u32>(~(~1u), countOneBits(u_input.b.x) | ~2757u, u_input.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 0u), vec3<u32>(u_input.b.x, 1221u, 69973u)) << (4294967295u % 32u)));
}

