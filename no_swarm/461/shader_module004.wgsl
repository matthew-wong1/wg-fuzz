struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: f32 = 582f;

var<private> global2: array<Struct_2, 18>;

var<private> global3: f32 = -656f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(Struct_1(vec2<i32>(2147483647i, u_input.c.x), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(777f * 620f) + 660f), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1255f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(228f, -290f)) * 1216f)), !vec2<bool>(u_input.c.x == u_input.c.x, true)), _wgslsmith_f_op_f32(step(-551f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-216f + _wgslsmith_f_op_f32(987f + -2572f)), -1567f))));
    var var_1 = global2[_wgslsmith_index_u32(u_input.d.x, 18u)];
    global0 = var_0.a.a.x << (u_input.b % 32u);
    let var_2 = var_0;
    var var_3 = var_1.a.c.x;
    return Struct_1(var_0.a.a, _wgslsmith_f_op_vec4_f32(round(var_0.a.b)), vec2<bool>(_wgslsmith_add_u32(abs(u_input.b), u_input.b) > ~(u_input.b | u_input.d.x), any(vec4<bool>(false, var_1.c.c.x, !var_1.a.c.x, var_2.b < 159f))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = vec3<i32>(-9757i, 1i, _wgslsmith_mult_i32(arg_0.a.x, ~(~_wgslsmith_mult_i32(19775i, -1i))));
    var var_1 = any(!vec3<bool>(false, (true && arg_0.c.x) & (u_input.d.x == u_input.b), !(!arg_0.c.x)));
    let var_2 = _wgslsmith_f_op_vec3_f32(arg_0.b.www * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, arg_0.b.x, _wgslsmith_f_op_f32(-func_2().b.x))));
    var_1 = arg_0.c.x;
    let var_3 = global2[_wgslsmith_index_u32(~reverseBits(_wgslsmith_sub_u32(~max(u_input.b, 0u), ~u_input.b)), 18u)];
    return 122f;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>) -> f32 {
    let var_0 = -1061f;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-389f * var_0))) + 684f);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(countOneBits(vec3<u32>(abs(u_input.b), arg_1.x, countOneBits(arg_1.x)))), vec3<u32>(38587u, ~(~(arg_1.x & arg_1.x)), _wgslsmith_dot_vec2_u32(u_input.d, ~firstLeadingBit(arg_1)))), 18u)];
    global0 = ~16953i;
    global2 = array<Struct_2, 18>();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.b.x - _wgslsmith_f_op_f32(-arg_0)))))));
}

fn func_1() -> Struct_3 {
    let var_0 = max(abs(0i), u_input.c.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)));
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(func_2())), u_input.d)));
    return Struct_3(Struct_1(~vec2<i32>(-1i, u_input.c.x) & u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) * vec4<f32>(var_1.x, var_1.x, var_1.x, -444f)))), vec2<bool>(true, !any(vec2<bool>(false, true)))), _wgslsmith_f_op_f32(round(-678f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1570f))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(689f + -1000f), 1173f, 1f);
    var var_2 = -474f;
    var var_3 = func_1();
    global3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), var_1.x)), var_3.a.b.x));
    var_0 = -227f;
    global0 = min(-1i, firstTrailingBit(countOneBits(u_input.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x << (~78551u % 32u), ~vec3<i32>(0i, firstTrailingBit(countOneBits(-2147483647i)), -firstLeadingBit(-1i)), vec3<i32>(_wgslsmith_dot_vec2_i32((vec2<i32>(var_3.a.a.x, u_input.c.x) | u_input.a.zy) << (vec2<u32>(13521u, 0u) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(u_input.a.zw, _wgslsmith_div_vec2_i32(vec2<i32>(29934i, var_3.a.a.x), vec2<i32>(-2147483647i, -1i)))), -37005i, _wgslsmith_sub_i32(_wgslsmith_add_i32(47925i, 1i), u_input.c.x)), 0i);
}

