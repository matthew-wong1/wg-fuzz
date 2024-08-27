struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(86463u, vec3<i32>(i32(-2147483648), -47754i, 1i)), Struct_1(4294967295u, vec3<i32>(30775i, 25140i, 42910i)), Struct_1(33593u, vec3<i32>(0i, -6780i, 20800i)), Struct_1(690u, vec3<i32>(-59149i, 49296i, -18153i)), Struct_1(5608u, vec3<i32>(43426i, 6104i, 40075i)), Struct_1(0u, vec3<i32>(0i, 0i, -72577i)), Struct_1(4294967295u, vec3<i32>(2147483647i, -1i, -15659i)), Struct_1(16558u, vec3<i32>(0i, -26599i, 2147483647i)), Struct_1(1u, vec3<i32>(i32(-2147483648), 1i, -7181i)), Struct_1(4294967295u, vec3<i32>(37531i, -1462i, i32(-2147483648))), Struct_1(31923u, vec3<i32>(-5503i, -18019i, -6742i)), Struct_1(4294967295u, vec3<i32>(41915i, 28128i, 0i)));

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<f32, 18>;

var<private> global3: i32 = 0i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = abs(-5015i);
    global0 = array<Struct_1, 12>();
    global2 = array<f32, 18>();
    return global0[_wgslsmith_index_u32(~1u, 12u)];
}

fn func_3() -> vec3<f32> {
    global1 = array<Struct_1, 21>();
    var var_0 = Struct_1(min(~_wgslsmith_div_u32(0u, u_input.a.x) & ~firstTrailingBit(26395u), ~1u), firstLeadingBit(-func_1(u_input.b).b << (~firstLeadingBit(vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x)) % vec3<u32>(32u))));
    global1 = array<Struct_1, 21>();
    var var_1 = var_0.b;
    let var_2 = 766f;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(var_2)), global2[_wgslsmith_index_u32(abs(0u), 18u)], _wgslsmith_f_op_f32(-173f - _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(23925u, 18u)])))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(593f, global2[_wgslsmith_index_u32(u_input.b.x, 18u)], -894f), vec3<f32>(-145f, global2[_wgslsmith_index_u32(52683u, 18u)], var_2))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-691f, -307f, _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b.x, 18u)], global2[_wgslsmith_index_u32(var_0.a, 18u)])) * vec3<f32>(var_2, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 18u)] + global2[_wgslsmith_index_u32(4294967295u, 18u)]), 780f)))));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<bool>) -> StorageBuffer {
    global0 = array<Struct_1, 12>();
    global2 = array<f32, 18>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(34765u, 18u)])), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(0u, 18u)]))), 503f, global2[_wgslsmith_index_u32(u_input.b.x, 18u)]) - _wgslsmith_f_op_vec3_f32(func_3())));
    let var_1 = 34901u;
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(firstTrailingBit(arg_0.xy), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d.x, u_input.c), u_input.d) ^ _wgslsmith_mult_vec2_i32(vec2<i32>(arg_0.x, -11540i), arg_0.xz), ~vec2<i32>(u_input.c, -1i))), _wgslsmith_sub_i32(firstTrailingBit(select(_wgslsmith_add_i32(u_input.d.x, u_input.c), abs(11352i), arg_1.x)), arg_0.x), ~firstTrailingBit(countOneBits(0i)));
    return StorageBuffer(_wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.b.x, u_input.b.x, 47214u)), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 12>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.a.x, 21u)];
    global2 = array<f32, 18>();
    global0 = array<Struct_1, 12>();
    let var_1 = -1i;
    var var_2 = func_1(u_input.b);
    var_2 = global1[_wgslsmith_index_u32(~(~(~(~0u))), 21u)];
    let x = u_input.a;
    s_output = func_2(abs(var_2.b), !vec2<bool>(!any(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_2.a, 18u)])) < _wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(var_2.a, 18u)], -1406f, true))));
}

