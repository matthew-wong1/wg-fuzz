struct Struct_1 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(false, true, false, false), vec3<u32>(90352u, 65054u, 7250u), vec3<bool>(true, false, true));

var<private> global1: array<i32, 9> = array<i32, 9>(2147483647i, 0i, -25324i, 0i, 8471i, 1i, i32(-2147483648), -44663i, -18866i);

var<private> global2: vec3<i32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec4<f32>) -> vec3<u32> {
    global0 = arg_0;
    global2 = vec3<i32>(global2.x, u_input.e, countOneBits(arg_1));
    global0 = arg_0;
    let var_0 = -(~(-_wgslsmith_div_i32(_wgslsmith_add_i32(arg_1, -45344i), firstLeadingBit(-9394i))));
    var var_1 = _wgslsmith_mult_i32(~(-1i), _wgslsmith_clamp_i32(~(-global2.x) >> (93236u % 32u), 1i, -11983i));
    return ~global0.b;
}

fn func_2(arg_0: vec2<f32>) -> vec4<f32> {
    let var_0 = Struct_1(select(global0.a, !(!global0.a), select(select(!vec4<bool>(true, global0.c.x, true, false), !global0.a, true), vec4<bool>(global0.b.x >= 0u, global0.a.x, global0.c.x && global0.c.x, true), global0.a.x)), ~func_3(Struct_1(select(vec4<bool>(true, true, true, false), global0.a, global0.a), _wgslsmith_sub_vec3_u32(global0.b, vec3<u32>(4294967295u, 28817u, 0u)), vec3<bool>(global0.a.x, false, global0.a.x)), global1[_wgslsmith_index_u32(~abs(global0.b.x), 9u)], vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.x, -668f, true)), _wgslsmith_f_op_f32(select(695f, 860f, true)), -1605f, arg_0.x)), global0.a.xwy);
    var var_1 = var_0;
    let var_2 = _wgslsmith_mod_i32(global2.x, ~44350i);
    global2 = firstLeadingBit(u_input.c);
    let var_3 = Struct_1(var_0.a, _wgslsmith_sub_vec3_u32(vec3<u32>(0u | _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_1.b.x, 9821u)), var_0.b.x, 1u), (abs(vec3<u32>(4294967295u, 56846u, 86842u)) ^ func_3(Struct_1(global0.a, vec3<u32>(1u, global0.b.x, 58956u), var_0.c), -2147483647i, vec4<f32>(1000f, 255f, 1599f, arg_0.x))) | var_0.b), !vec3<bool>(all(global0.a.zyw) & true, true, true));
    return _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(216f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))) + arg_0.x), arg_0.x, _wgslsmith_f_op_f32(ceil(-1590f)))));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(640f, -2159f, 2361f, -1000f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, 560f, 416f, -1577f)))) * vec4<f32>(_wgslsmith_f_op_f32(round(1000f)), -284f, _wgslsmith_f_op_f32(-1303f * -1231f), _wgslsmith_f_op_f32(f32(-1f) * -721f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(vec2<f32>(211f, -395f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-818f, -601f, 1000f, -1342f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(922f, 1099f, -317f, -1320f) + vec4<f32>(531f, -1202f, 258f, -1247f))))));
    return Struct_1(vec4<bool>(all(select(vec3<bool>(global0.a.x, global0.a.x, true), select(global0.c, vec3<bool>(global0.c.x, global0.a.x, true), global0.c), global0.a.x)), global0.a.x, false, global0.c.x), global0.b, global0.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = Struct_1(vec4<bool>(true, !global0.c.x, false, any(vec2<bool>(true, func_1().a.x))), var_0.b, global0.c);
    var var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-902f + 1526f)), -250f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(197f + 282f), _wgslsmith_f_op_f32(f32(-1f) * -219f)), _wgslsmith_f_op_f32(round(1022f)))))));
    global2 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

