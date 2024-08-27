struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<u32>,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 30>;

var<private> global1: array<f32, 12> = array<f32, 12>(-1275f, 911f, 478f, -1000f, 603f, 1189f, -623f, 698f, -927f, 592f, -1337f, -1693f);

var<private> global2: array<f32, 4> = array<f32, 4>(687f, -940f, 219f, -296f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<bool> {
    global0 = array<i32, 30>();
    global2 = array<f32, 4>();
    global2 = array<f32, 4>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 4u)] * global2[_wgslsmith_index_u32(u_input.a.x, 4u)]))), global2[_wgslsmith_index_u32(12568u, 4u)], global2[_wgslsmith_index_u32(~(~4294967295u), 4u)]) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(4294967295u, 12u)], -1108f, global2[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<f32>(-2210f, -908f, global2[_wgslsmith_index_u32(u_input.b, 4u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(arg_1.x, 4u)], 562f, -290f))))), _wgslsmith_mult_u32(abs(~19041u), firstLeadingBit(~u_input.a.x)), global1[_wgslsmith_index_u32(arg_1.x, 12u)], !(!vec3<bool>(arg_0.a, arg_0.a, true)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(abs(2136f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-680f + _wgslsmith_f_op_f32(var_0.a.x - global1[_wgslsmith_index_u32(arg_1.x, 12u)])))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 12u)] - -526f) * _wgslsmith_f_op_f32(ceil(-193f))))), 602f);
    return !vec4<bool>(false, var_0.d.x, true, !all(vec2<bool>(var_0.d.x, false)));
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0.x)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 4u)]), global2[_wgslsmith_index_u32(~u_input.b, 4u)]))), u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), vec3<bool>(true, any(func_3(Struct_2(true, -2277i), u_input.a.zx)), any(vec3<bool>(false, true, true)))), !select(true, !(28480i > global0[_wgslsmith_index_u32(1u, 30u)]), true), vec4<u32>(25478u, ~(~(~u_input.b)), u_input.b, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)] + -1463f))) * 1107f), _wgslsmith_mult_vec2_i32(-reverseBits(vec2<i32>(1i, -19576i)), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], 0i), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 30u)], 8058i), vec2<i32>(-10132i, u_input.c))), ~vec2<i32>(-18627i, u_input.d))));
    global2 = array<f32, 4>();
    global1 = array<f32, 12>();
    var var_1 = vec3<bool>(false, all(select(vec2<bool>(var_0.b, !var_0.b), vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(var_0.a.d.x, var_0.a.d.x)), !var_0.b))), !var_0.a.d.x);
    global1 = array<f32, 12>();
    return abs(_wgslsmith_div_u32(u_input.b >> ((var_0.a.b | 1u) % 32u), u_input.a.x << (1u % 32u))) ^ firstTrailingBit(var_0.a.b);
}

fn func_1(arg_0: f32, arg_1: f32) -> vec2<i32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(949f)), _wgslsmith_f_op_f32(f32(-1f) * -766f))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) - global1[_wgslsmith_index_u32(~u_input.b, 12u)]))), u_input.b, -142f, !select(vec3<bool>(any(vec4<bool>(false, true, true, false)), true, true), vec3<bool>(true, false, u_input.b >= u_input.a.x), vec3<bool>(true, true, true)));
    let var_1 = !(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 1512f, global2[_wgslsmith_index_u32(u_input.b, 4u)], arg_0))) < _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.b, firstLeadingBit(var_0.b)), 0u, 0u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0, arg_1, -781f))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a - _wgslsmith_f_op_vec3_f32(vec3<f32>(198f, -1327f, arg_1) + vec3<f32>(global1[_wgslsmith_index_u32(var_0.b, 12u)], var_0.a.x, arg_1))), var_0.a)), ~var_0.b, -1224f, select(select(!vec3<bool>(true, var_0.d.x, true), var_0.d, true), var_0.d, var_0.d.x));
    var var_3 = vec2<bool>(!var_0.d.x, any(var_2.d.xy));
    let var_4 = Struct_3(var_2, any(!var_0.d.xz), u_input.a, _wgslsmith_f_op_f32(exp2(var_2.a.x)), -vec2<i32>(~(i32(-1i) * -2147483647i), ~global0[_wgslsmith_index_u32(var_2.b, 30u)]));
    return _wgslsmith_sub_vec2_i32(vec2<i32>(34954i, 49219i), abs(~firstLeadingBit(var_4.e))) >> (firstTrailingBit(~(~(vec2<u32>(var_0.b, var_0.b) | vec2<u32>(var_2.b, 4294967295u)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 4>();
    global2 = array<f32, 4>();
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(1138i, global0[_wgslsmith_index_u32(83371u, 30u)]), _wgslsmith_clamp_i32(u_input.e, 2111i, u_input.e)), u_input.d), 0i), -max(vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 30u)], -u_input.d), -func_1(1360f, 1000f)));
    var var_1 = !(true == !(false && all(vec2<bool>(false, false))));
    var var_2 = vec2<i32>((min(-15429i, countOneBits(1i)) >> (1u % 32u)) >> (abs(u_input.b) % 32u), 9627i);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x & ~u_input.d, u_input.a << (firstTrailingBit(~(vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, 1u) & vec4<u32>(99901u, u_input.b, u_input.b, 558u))) % vec4<u32>(32u)));
}

