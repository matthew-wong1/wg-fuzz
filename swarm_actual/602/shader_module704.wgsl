struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(48971u, 28298u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: vec4<i32> = vec4<i32>(-8434i, 1i, -45347i, 1i);

var<private> global3: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> vec3<bool> {
    global1 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~u_input.c), arg_3.x), 1u)];
    var var_0 = vec2<bool>(select(arg_0.x, all(!arg_2.b), arg_0.x), arg_0.x);
    let var_1 = ~_wgslsmith_div_u32(abs(~u_input.c), firstTrailingBit(4294967295u));
    var var_2 = Struct_1(!arg_1.b, arg_1.b, arg_0);
    global3 = array<Struct_1, 1>();
    return vec3<bool>(true, true, arg_0.x);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> f32 {
    let var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 25125u, u_input.c, 0u), abs(vec4<u32>(global0.x, 59468u, global0.x, global0.x))) << (~firstTrailingBit(~vec4<u32>(u_input.c, 1u, 4632u, u_input.c)) % vec4<u32>(32u)), ~abs(~countOneBits(vec4<u32>(u_input.c, 4294967295u, 44461u, global0.x))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-636f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_3.x)) - var_1), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1190f - -727f)), global1.c.x))));
    global0 = max(vec3<u32>(_wgslsmith_sub_u32(reverseBits(115726u) ^ _wgslsmith_clamp_u32(var_0.x, 14084u, global0.x), u_input.c), reverseBits(_wgslsmith_dot_vec3_u32(var_0.zyw << (vec3<u32>(global0.x, 0u, u_input.c) % vec3<u32>(32u)), ~var_0.xwx)), 71173u), vec3<u32>(u_input.c, global0.x, 16219u));
    global0 = ~(~_wgslsmith_mod_vec3_u32(countOneBits(var_0.wxy << (var_0.wzy % vec3<u32>(32u))), vec3<u32>(_wgslsmith_sub_u32(u_input.c, var_0.x), ~4294967295u, 1u & var_0.x)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(arg_3.x))));
}

fn func_2(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global1 = arg_1;
    var var_0 = vec4<f32>(-1071f, 378f, -1115f, _wgslsmith_f_op_f32(func_4(countOneBits(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, global2.x & arg_0)), Struct_1(!vec3<bool>(true, false, arg_1.b.x), func_3(!arg_1.c, global3[_wgslsmith_index_u32(u_input.c, 1u)], arg_1, abs(vec3<u32>(u_input.c, u_input.c, u_input.c))), !(!vec3<bool>(global1.a.x, true, arg_1.b.x))), min(~arg_0, ~(-2147483647i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(103f, 1102f, 635f, -1912f))) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1454f, -674f, -750f, -2303f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-472f, -635f, _wgslsmith_f_op_f32(-var_0.x), -2711f))));
    let var_1 = firstLeadingBit(_wgslsmith_div_i32(-global2.x, _wgslsmith_sub_i32(-6998i, _wgslsmith_add_i32(2147483647i, global2.x) ^ -15055i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(var_0.zxy + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(f32(-1f) * -262f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-268f)), 531f), _wgslsmith_f_op_f32(548f - var_0.x))));
    return !global1.c;
}

fn func_1(arg_0: i32) -> Struct_1 {
    global3 = array<Struct_1, 1>();
    var var_0 = Struct_1(!select(select(func_2(u_input.a.x, global3[_wgslsmith_index_u32(0u, 1u)]), func_2(u_input.a.x, global3[_wgslsmith_index_u32(u_input.c, 1u)]), true), select(!vec3<bool>(global1.c.x, global1.c.x, true), vec3<bool>(global1.c.x, global1.b.x, global1.c.x), !global1.b), global1.c), vec3<bool>(func_2(1i, global3[_wgslsmith_index_u32(43967u, 1u)]).x, false, any(!vec4<bool>(global1.b.x, true, true, global1.b.x))), !global1.b);
    var var_1 = ~(~reverseBits(vec3<u32>(1186u, 60946u, _wgslsmith_mod_u32(u_input.c, global0.x))));
    global2 = u_input.b;
    global1 = global3[_wgslsmith_index_u32(u_input.c ^ _wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(~var_1.x), min(~1u, min(global0.x, 4294967295u))), firstLeadingBit(var_1.x)), 1u)];
    return global3[_wgslsmith_index_u32(var_1.x, 1u)];
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    global2 = reverseBits(-(~((vec4<i32>(0i, 9125i, 1i, 0i) & u_input.a) ^ u_input.a)));
    var var_0 = global1.a.x;
    global3 = array<Struct_1, 1>();
    global0 = ~vec3<u32>(global0.x, _wgslsmith_sub_u32(~global0.x, 1u), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 4294967295u, u_input.c)), vec3<u32>(countOneBits(15387u), global0.x, countOneBits(0u))));
    let var_1 = global2.xzz;
    return global3[_wgslsmith_index_u32(u_input.c >> (16692u % 32u), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(-80448i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(28149i, u_input.a.x));
}

