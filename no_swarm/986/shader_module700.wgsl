struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8>;

var<private> global1: vec2<u32> = vec2<u32>(58232u, 4294967295u);

var<private> global2: vec3<f32> = vec3<f32>(-1373f, -1241f, 411f);

var<private> global3: array<f32, 5>;

var<private> global4: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_3) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-578f + 706f) != global4.x;
    global0 = array<vec3<u32>, 8>();
    let var_1 = global4.x < _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-524f, 1208f)) * global3[_wgslsmith_index_u32(select(1u, arg_0.x, true), 5u)]) - 477f)));
    let var_2 = global2.yz;
    var var_3 = ~(~27467u);
    return reverseBits(~(arg_0.x | 0u));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    let var_0 = Struct_4(firstTrailingBit(-23366i & arg_0.x));
    let var_1 = Struct_4(15620i);
    global3 = array<f32, 5>();
    global1 = u_input.b;
    let var_2 = u_input.a.yy;
    return ~reverseBits(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x >> (49193u % 32u), _wgslsmith_dot_vec3_u32(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(51832u, 8u)])), _wgslsmith_div_u32(global1.x, global1.x), func_3(select(global0[_wgslsmith_index_u32(54798u, 8u)], global0[_wgslsmith_index_u32(55859u, 8u)], true), Struct_3(vec3<bool>(true, false, false), Struct_1(-1i)))));
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_sub_u32(4294967295u, reverseBits(abs(_wgslsmith_mult_u32(1u, arg_1.x))) & firstTrailingBit(~20525u));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1768f, 255f, true)), -105f, _wgslsmith_f_op_f32(f32(-1f) * -437f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -1248f, global4.x))))) + vec3<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 1u), 5u)]), _wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(-1012f - global2.x)))));
    global0 = array<vec3<u32>, 8>();
    let var_1 = min(_wgslsmith_sub_i32(-32702i, abs(_wgslsmith_add_i32(arg_0.b.x, 0i) ^ firstLeadingBit(-12842i))), abs(abs(0i | (24421i ^ u_input.a.x))));
    let var_2 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, -121f > global3[_wgslsmith_index_u32(u_input.b.x, 5u)], true), vec4<bool>(true, true, true, true)), select(vec4<bool>(any(vec4<bool>(false, true, false, false)), true, true, ~global1.x >= 1u), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, all(vec3<bool>(true, true, false)), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true)))), vec4<bool>(true, true, true, false));
    return select(_wgslsmith_clamp_u32(~1u, 68536u, ~12435u), u_input.b.x, 0u != (func_3(arg_2, Struct_3(var_2.yzy, Struct_1(0i))) >> (u_input.b.x % 32u)));
}

fn func_1() -> vec4<i32> {
    var var_0 = vec3<u32>(4294967295u, 5992u, global1.x);
    let var_1 = global0[_wgslsmith_index_u32(0u, 8u)];
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b.x | ~global1.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.x, ~(~u_input.b.x), ~0u), ~func_4(Struct_2(u_input.c, vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x)), vec2<u32>(12370u, var_1.x) & vec2<u32>(0u, var_1.x), global0[_wgslsmith_index_u32(func_2(u_input.a), 8u)])), 17258u), 8u)];
    return vec4<i32>(max(min(_wgslsmith_div_i32(-12506i, -18476i ^ u_input.c.x), -2147483647i), u_input.a.x), -reverseBits(18628i) | u_input.a.x, 2147483647i, 35831i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~global1.x, global1.x, ~(~9561u));
    global1 = _wgslsmith_add_vec2_u32(~_wgslsmith_sub_vec2_u32(~firstLeadingBit(u_input.b), vec2<u32>(~50347u, ~4294967295u)), ~(~vec2<u32>(var_0.x, 37287u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(func_1(), vec4<i32>(37352i, -u_input.a.x, firstTrailingBit(i32(-1i) * -53278i), u_input.c.x)));
}

