struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<i32, 29>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: u32) -> u32 {
    global1 = array<i32, 29>();
    global0 = array<Struct_2, 12>();
    let var_0 = ~vec4<i32>(~(global1[_wgslsmith_index_u32(countOneBits(arg_1.a), 29u)] & 24661i), global1[_wgslsmith_index_u32(arg_1.a, 29u)], -22035i, 36084i);
    global1 = array<i32, 29>();
    let var_1 = vec3<u32>(arg_2, _wgslsmith_div_u32(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_2), vec2<u32>(7727u, arg_2))), ~0u), firstLeadingBit(1u)) << (~(~(~firstLeadingBit(vec3<u32>(arg_2, 4294967295u, 5157u)))) % vec3<u32>(32u));
    return arg_1.b;
}

fn func_2(arg_0: Struct_4, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> u32 {
    global1 = array<i32, 29>();
    let var_0 = ~min(~vec4<u32>(1u, 1u, 1u, 1u), ~(~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = -(arg_3.a.xy & min(arg_0.a.yx, vec2<i32>(arg_0.a.x, global1[_wgslsmith_index_u32(43802u, 29u)]))) << (var_0.xw % vec2<u32>(32u));
    global1 = array<i32, 29>();
    global0 = array<Struct_2, 12>();
    return func_3(_wgslsmith_div_vec2_i32(arg_0.a.zz, arg_0.a.xy), Struct_1(var_0.x, countOneBits(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.x, 10370u), ~var_0.x))), var_0.x);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> Struct_3 {
    global0 = array<Struct_2, 12>();
    var var_0 = min(~(~(-1i)), countOneBits(~(_wgslsmith_dot_vec3_i32(arg_1.a, vec3<i32>(global1[_wgslsmith_index_u32(28888u, 29u)], u_input.b, -2147483647i)) | ~u_input.b)));
    var_0 = countOneBits(_wgslsmith_mod_i32(~(i32(-1i) * -2147483647i), ~u_input.a));
    return Struct_3(arg_1.a);
}

fn func_1(arg_0: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1445f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(638f - 510f) + 604f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(224f)), 946f)) + 1619f)));
    var var_1 = func_4(func_2(Struct_4(select(vec3<i32>(0i, u_input.a, 47526i), vec3<i32>(u_input.b, 0i, 2147483647i), arg_0) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, u_input.b, global1[_wgslsmith_index_u32(1u, 29u)]), vec3<i32>(-2147483647i, u_input.b, 80782i))), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1061f, -1966f))), _wgslsmith_f_op_f32(f32(-1f) * -276f)), Struct_3(abs(vec3<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(85317u, 29u)]) << (vec3<u32>(4294967295u, 25201u, 10494u) % vec3<u32>(32u))))), Struct_4(max(-vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 29u)], 67837i, global1[_wgslsmith_index_u32(1u, 29u)]) >> (~vec3<u32>(43176u, 32482u, 19077u) % vec3<u32>(32u)), abs(vec3<i32>(-64345i, global1[_wgslsmith_index_u32(73588u, 29u)], global1[_wgslsmith_index_u32(0u, 29u)]) & vec3<i32>(1i, global1[_wgslsmith_index_u32(4294967295u, 29u)], global1[_wgslsmith_index_u32(98707u, 29u)])))));
    var var_2 = Struct_4(var_1.a);
    global0 = array<Struct_2, 12>();
    var var_3 = ~(-_wgslsmith_div_i32(select(-32957i, var_1.a.x, all(vec3<bool>(arg_0, arg_0, arg_0))), _wgslsmith_clamp_i32(0i & u_input.b, 1i, u_input.b)));
    return -var_2.a;
}

fn func_5(arg_0: Struct_4, arg_1: f32) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1, arg_1, arg_1, -273f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1)), -1502f, arg_1, arg_1)));
    let var_1 = Struct_4(arg_0.a);
    var var_2 = Struct_3(max(vec3<i32>(firstLeadingBit(-arg_0.a.x), 0i, _wgslsmith_mult_i32(firstTrailingBit(-1i), func_4(4294967295u, var_1).a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(~4294967295u, 29u)], ~var_1.a.x, _wgslsmith_mult_i32(var_1.a.x, var_1.a.x)), countOneBits(vec3<i32>(-58186i, 1155i, -1i)))));
    let var_3 = vec2<i32>(-u_input.b, ~(_wgslsmith_sub_i32(14828i, arg_0.a.x) | (func_1(true).x >> (~19969u % 32u))));
    var var_4 = select(select(vec2<bool>(all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), false), vec2<bool>(all(vec2<bool>(true, false)) && any(vec2<bool>(false, false)), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), true)), select(vec2<bool>(true, true || (245f != arg_1)), !vec2<bool>(-490f <= arg_1, true), vec2<bool>(true, true)), !(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), vec2<bool>(true, true), vec2<bool>(false, false))));
    return global0[_wgslsmith_index_u32(1u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_4(~func_1(true)), _wgslsmith_f_op_f32(1f + -588f));
    let var_1 = func_5(Struct_4(~vec3<i32>(32546i, 18191i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -213f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1710f - -441f)))).c ^ (4294967295u & (_wgslsmith_mod_u32(~var_0.c, 1u) & ~2482u));
    let var_2 = !vec4<bool>(var_0.a, select(true, !all(vec4<bool>(var_0.a, var_0.a, true, var_0.a)), !var_0.a && !var_0.a), true, all(vec3<bool>(false, true, any(vec3<bool>(var_0.a, false, true)))));
    var var_3 = select(vec4<bool>(var_2.x, false, var_2.x, var_0.a), vec4<bool>(var_2.x || any(var_2.zwx), true, !any(var_2), any(vec2<bool>(var_2.x && false, !var_2.x))), !select(!vec4<bool>(true, false, true, var_0.a), vec4<bool>(true || var_2.x, any(vec3<bool>(var_2.x, var_0.a, false)), all(vec2<bool>(true, var_0.a)), all(var_2.zx)), !(var_0.a | var_2.x)));
    global0 = array<Struct_2, 12>();
    let var_4 = vec3<bool>(true, all(!vec4<bool>(var_2.x, true, false, !var_3.x)), func_5(Struct_4(-(~vec3<i32>(1i, -5600i, -39135i))), -413f).a);
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(var_1, var_1, var_1, 4294967295u), vec4<u32>(0u, 41484u, var_0.c, 57891u) ^ vec4<u32>(4294967295u, 1u, 4294967295u, 23278u), true) | vec4<u32>(~_wgslsmith_div_u32(8531u, 30393u), var_0.c, var_1, _wgslsmith_sub_u32(min(var_1, 1u), func_2(Struct_4(vec3<i32>(u_input.b, u_input.b, 28194i)), -58940i, 1101f, Struct_3(vec3<i32>(u_input.b, -7868i, 1191i))))), ~abs(reverseBits(vec2<u32>(var_1, 0u))), vec2<u32>(var_0.c, var_1), 22308u);
}

