struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(33993i, -5094i);

var<private> global1: vec3<f32> = vec3<f32>(-150f, -436f, 2626f);

var<private> global2: f32 = 974f;

var<private> global3: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: vec4<f32>) -> vec4<f32> {
    let var_0 = 0u;
    var var_1 = global3[_wgslsmith_index_u32(~18020u, 30u)];
    var var_2 = u_input.b;
    global3 = array<Struct_1, 30>();
    var var_3 = global3[_wgslsmith_index_u32(abs(arg_0), 30u)];
    return vec4<f32>(arg_3.x, -338f, arg_3.x, arg_1);
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: u32) -> vec4<f32> {
    let var_0 = arg_2.a;
    let var_1 = _wgslsmith_f_op_f32(step(arg_0, -934f));
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-351f, 1232f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1))), _wgslsmith_f_op_f32(step(1f, var_1))));
    var var_2 = Struct_1(~(-38294i) <= ~global0.x);
    let var_3 = Struct_1(arg_2.a);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_3, -518f, true, vec4<f32>(-3124f, arg_0, -1373f, -1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(307f)), _wgslsmith_f_op_f32(var_1 - global1.x), -499f, _wgslsmith_div_f32(-1000f, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, 2760f, 1122f, 1647f), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.x, global1.x, global1.x, var_1))), true)) + vec4<f32>(207f, -1000f, var_1, _wgslsmith_div_f32(-362f, global1.x)))));
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    var var_0 = global3[_wgslsmith_index_u32(min(~u_input.d.x, u_input.d.x), 30u)];
    var var_1 = ~reverseBits(~firstTrailingBit(~u_input.d));
    global3 = array<Struct_1, 30>();
    var var_2 = reverseBits(4294967295u);
    var var_3 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)) * _wgslsmith_f_op_vec4_f32(func_2(-1663f, ~var_1.ywx, global3[_wgslsmith_index_u32(u_input.d.x << (var_1.x % 32u), 30u)], _wgslsmith_mult_u32(u_input.d.x, 0u))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3.x * global1.x)))), 785f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1237f, -1396f, 2016f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, global1.x)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 172f, _wgslsmith_f_op_f32(-global1.x))) + vec4<f32>(global1.x, _wgslsmith_div_f32(680f, global1.x), _wgslsmith_f_op_f32(global1.x - -1022f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(false, vec3<bool>(false, false, false))) - _wgslsmith_f_op_f32(global1.x - 555f))))));
    global1 = var_0.wyw;
    global0 = select(vec2<i32>(~_wgslsmith_mult_i32(global0.x, global0.x), global0.x), countOneBits(~vec2<i32>(global0.x, 1i)), false) >> ((~vec2<u32>(firstLeadingBit(15145u), 0u) | min(~vec2<u32>(62761u, u_input.a.x), u_input.d.ww)) % vec2<u32>(32u));
    let var_1 = min(vec2<u32>(u_input.d.x | _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 1u, 4294967295u, 42516u), reverseBits(u_input.d)), 0u), vec2<u32>(u_input.d.x, u_input.d.x));
    global3 = array<Struct_1, 30>();
    let var_2 = global3[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_add_u32(((u_input.d.x & 4294967295u) | ~0u) >> ((var_1.x >> (_wgslsmith_div_u32(15169u, u_input.d.x) % 32u)) % 32u), ~(~16502u))), 30u)];
    let var_3 = min(_wgslsmith_clamp_vec3_i32(reverseBits(-(vec3<i32>(global0.x, -27091i, 1i) | vec3<i32>(0i, global0.x, 33498i))), select(_wgslsmith_clamp_vec3_i32(~vec3<i32>(-1i, 2147483647i, -24093i), -vec3<i32>(-9059i, u_input.c, global0.x), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.c, -11684i, u_input.c), vec3<i32>(global0.x, u_input.b, -1i))), ~_wgslsmith_sub_vec3_i32(vec3<i32>(-92272i, -1i, global0.x), vec3<i32>(32884i, global0.x, 37186i)), !select(vec3<bool>(var_2.a, var_2.a, false), vec3<bool>(var_2.a, var_2.a, false), false)), -(~(vec3<i32>(-22395i, 31214i, -5277i) ^ vec3<i32>(30114i, u_input.b, 2147483647i)))), ~vec3<i32>(-global0.x, global0.x, _wgslsmith_div_i32(-66057i, -40948i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(30663u, _wgslsmith_dot_vec3_u32(u_input.a << (select(u_input.a, u_input.a, vec3<bool>(var_2.a, var_2.a, var_2.a)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(45535u, 74466u, var_1.x), var_1.x, 6421u))), _wgslsmith_dot_vec3_i32(max(var_3, ~abs(vec3<i32>(var_3.x, -1i, global0.x))), -var_3), -1663f, ~((u_input.a.x | ~u_input.a.x) ^ min(~0u, u_input.d.x)), vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), -151f, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(~var_1.x, -935f, var_2.a, _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-702f, var_0.x, var_0.x, global1.x), vec4<f32>(-684f, 1351f, var_0.x, -1666f), true)))).x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, 714f))))));
}

