struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<f32>, 1>;

var<private> global3: vec3<i32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: vec4<u32>) -> i32 {
    global0 = Struct_1(!select(select(!global0.a, select(vec2<bool>(global0.a.x, false), vec2<bool>(global0.a.x, false), global0.a), global0.a), select(global0.a, select(global0.a, vec2<bool>(true, false), global0.a.x), global0.a), global0.a));
    let var_0 = Struct_1(vec2<bool>(!any(global0.a), any(vec3<bool>(!global0.a.x, global0.a.x, true))));
    global2 = array<vec4<f32>, 1>();
    global3 = abs(_wgslsmith_sub_vec3_i32(firstLeadingBit(abs(-vec3<i32>(global3.x, -24545i, -20157i))), vec3<i32>(_wgslsmith_mult_i32(-global3.x, 1i), _wgslsmith_sub_i32(0i, -53642i), abs(_wgslsmith_add_i32(2147483647i, -23784i)))));
    var var_1 = var_0;
    return 1i;
}

fn func_2() -> u32 {
    global2 = array<vec4<f32>, 1>();
    var var_0 = global1.zy;
    global3 = vec3<i32>(~(~1i), u_input.a.x, func_3(firstTrailingBit(~(~vec4<u32>(37297u, 77698u, 11244u, 1u)))));
    global1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2021f, -1559f, -998f, -251f))) + global2[_wgslsmith_index_u32(abs(_wgslsmith_mod_u32(1u, 4294967295u)), 1u)]), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(1u, 1u)])))));
    let var_1 = Struct_1(global0.a);
    return _wgslsmith_add_u32(60020u, _wgslsmith_div_u32(firstTrailingBit(abs(~59107u)), 1u));
}

fn func_1() -> vec2<bool> {
    let var_0 = Struct_1(global0.a);
    let var_1 = select(vec3<bool>(true, global0.a.x, true), !vec3<bool>(~1u == func_2(), any(global0.a), !(!global0.a.x)), !select(select(vec3<bool>(true, true, true), !vec3<bool>(global0.a.x, true, true), vec3<bool>(global0.a.x, global0.a.x, true)), select(!vec3<bool>(var_0.a.x, true, global0.a.x), vec3<bool>(var_0.a.x, true, var_0.a.x), !vec3<bool>(false, true, global0.a.x)), vec3<bool>(false, true, var_0.a.x & true)));
    var var_2 = Struct_1(!var_0.a);
    global3 = u_input.a;
    global2 = array<vec4<f32>, 1>();
    return var_1.xz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(select(func_1(), vec2<bool>(true, false), vec2<bool>(global0.a.x, global0.a.x)), global0.a, !global0.a), func_1(), vec2<bool>(true, global0.a.x)));
    var var_1 = false;
    var_0 = Struct_1(vec2<bool>(var_0.a.x, true));
    var var_2 = false;
    var_1 = global0.a.x;
    var var_3 = Struct_1(select(var_0.a, !select(vec2<bool>(true, global0.a.x), !vec2<bool>(global0.a.x, var_0.a.x), vec2<bool>(true, true)), global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~vec2<u32>(abs(5244u), 1u), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 6441u), _wgslsmith_mult_vec2_u32(vec2<u32>(31665u, 1u), vec2<u32>(0u, 0u)))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), 680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), global3.x, countOneBits(0u) ^ _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(32944u, 44490u), vec2<u32>(0u, 4294967295u)), 1u), _wgslsmith_mod_u32(select(4294967295u, 42291u, global0.a.x), 46120u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~4294967295u, 1u)]), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(1u, 1u)]))))));
}

