struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 9>;

var<private> global1: array<u32, 24>;

var<private> global2: array<bool, 8>;

var<private> global3: array<Struct_1, 30>;

var<private> global4: array<u32, 10> = array<u32, 10>(4294967295u, 1u, 1u, 71334u, 109582u, 31513u, 46207u, 1u, 61956u, 16698u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    global1 = array<u32, 24>();
    global4 = array<u32, 10>();
    let var_0 = ~arg_0.b.x;
    global4 = array<u32, 10>();
    global3 = array<Struct_1, 30>();
    return _wgslsmith_div_f32(-1545f, -720f);
}

fn func_2() -> u32 {
    global3 = array<Struct_1, 30>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1326f, _wgslsmith_f_op_f32(step(1066f, -690f)), _wgslsmith_f_op_f32(ceil(-1320f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-573f, -969f, 1000f), vec3<f32>(-357f, 1134f, -899f))))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3(Struct_1(20954i, vec3<u32>(13161u, 23191u, 14748u), 4294967295u), global2[_wgslsmith_index_u32(4294967295u, 8u)], vec3<f32>(-697f, -334f, -1726f), Struct_1(-34424i, vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 24u)], 1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51822u, 24u)], 24u)]), u_input.a))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1161f)), _wgslsmith_f_op_f32(floor(214f)))), false)));
    global3 = array<Struct_1, 30>();
    var var_1 = vec2<u32>(countOneBits(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(19482u, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(37227u, 10u)], 24u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)]), vec3<u32>(0u, 121835u, global1[_wgslsmith_index_u32(4294967295u, 24u)])))), 0u) ^ u_input.b.xx;
    let var_2 = global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(max(select(vec2<u32>(var_1.x, u_input.a) & u_input.b.xy, _wgslsmith_div_vec2_u32(u_input.b.zz, vec2<u32>(4294967295u, 4294967295u)), select(vec2<bool>(true, true), vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 8u)]), global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 10u)], 8u)])), vec2<u32>(abs(var_1.x), 0u)), ~countOneBits(select(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(u_input.b.x, var_1.x), false)))), 30u)];
    return global1[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.c, 0u), 17904u), ~var_1.x)), 24u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> vec2<bool> {
    global1 = array<u32, 24>();
    var var_0 = global3[_wgslsmith_index_u32(arg_1.b.x, 30u)];
    var var_1 = func_2();
    var var_2 = true;
    global2 = array<bool, 8>();
    return vec2<bool>(select(global2[_wgslsmith_index_u32(abs(66564u), 8u)], global2[_wgslsmith_index_u32(17464u, 8u)], any(!select(vec4<bool>(false, false, false, true), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.b.x, 8u)], global2[_wgslsmith_index_u32(var_0.b.x, 8u)], global2[_wgslsmith_index_u32(u_input.a, 8u)], global2[_wgslsmith_index_u32(arg_1.b.x, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], true, false, false)))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec3<bool>(!(!all(vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 8u)]))), any(vec2<bool>(false, global2[_wgslsmith_index_u32(29060u, 8u)])) && true, any(!func_1(Struct_1(41622i, u_input.b, 1u), Struct_1(17329i, vec3<u32>(39504u, 1u, 1941u), 9721u)))), global0[_wgslsmith_index_u32(~1u, 9u)], vec3<bool>(_wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(4294967295u, 10u)], 30u)], global2[_wgslsmith_index_u32(30624u, 8u)] || global2[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(62589u, 10u)], 8u)], _wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, -1000f, 169f)), global3[_wgslsmith_index_u32(0u, 30u)])) <= _wgslsmith_f_op_f32(-490f + _wgslsmith_f_op_f32(-374f * -1263f)), _wgslsmith_div_i32(-36991i << (1u % 32u), _wgslsmith_clamp_i32(-2147483647i, 1i, -1i)) <= _wgslsmith_div_i32(abs(-62631i), 1i), !global2[_wgslsmith_index_u32(countOneBits(~u_input.b.x), 8u)]));
    global1 = array<u32, 24>();
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20022u | _wgslsmith_dot_vec2_u32(~u_input.b.yx, _wgslsmith_div_vec2_u32(u_input.b.yy, u_input.b.yx))), vec2<u32>(var_1.c, global4[_wgslsmith_index_u32(15184u, 10u)])), 30u)];
    var var_3 = var_2.a;
    global1 = array<u32, 24>();
    global2 = array<bool, 8>();
    let var_4 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(~(global4[_wgslsmith_index_u32(21684u, 10u)] ^ 47069u) >> (var_2.b.x % 32u), _wgslsmith_clamp_u32(func_2() | var_2.c, 0u, 598u))), 30u)];
    global2 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(0i, 1i), -var_4.a), firstTrailingBit(max(vec2<i32>(15443i, 66861i), vec2<i32>(0i, var_2.a) | vec2<i32>(-22599i, 44257i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1203f, _wgslsmith_f_op_f32(-2054f + 1567f), var_0.x))))), var_1.a);
}

