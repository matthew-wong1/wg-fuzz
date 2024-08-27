struct Struct_1 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec2<bool>, 1>;

var<private> global1: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    var var_0 = vec3<bool>(any(arg_1) & arg_1.x, true, !any(select(vec2<bool>(arg_1.x, arg_1.x), global0[_wgslsmith_index_u32(min(global1.x, global1.x), 1u)], vec2<bool>(false, false))));
    var var_1 = Struct_1(arg_0.b, -1000f);
    let var_2 = arg_0;
    var var_3 = u_input.a;
    let var_4 = select(vec2<bool>(var_0.x, true), vec2<bool>(false, true), select(vec2<bool>(arg_1.x, global1.x == global1.x), vec2<bool>(true, true), true));
    return !(!(~_wgslsmith_div_i32(-2147483647i, u_input.a) != 1i));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_div_f32(-1000f, arg_0.b), -1646f);
    let var_1 = _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.a ^ -1i, -65619i, u_input.a, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-25045i, -1i), vec2<i32>(u_input.a, u_input.a)))), -vec4<i32>(u_input.a, -(~(-2147483647i)), 32940i, countOneBits(-41510i)));
    var var_2 = func_3(arg_0, vec4<bool>(true, true, true, false));
    var var_3 = true;
    var var_4 = abs(_wgslsmith_mult_i32(firstLeadingBit(115611i), abs(_wgslsmith_add_i32(~1i, var_1.x >> (global1.x % 32u)))));
    return Struct_1(_wgslsmith_f_op_f32(abs(871f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a), var_0.b)), -771f)))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> vec4<u32> {
    global0 = array<vec2<bool>, 1>();
    var var_0 = func_3(func_2(Struct_1(1455f, arg_2.a)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)), vec4<bool>(false, true, true, true), true), vec4<bool>(true, select(false, true, false), select(true, true, false), true)), func_3(arg_1, vec4<bool>(any(vec2<bool>(true, true)), true, true, func_3(Struct_1(arg_1.a, -492f), vec4<bool>(false, true, true, false))))));
    global0 = array<vec2<bool>, 1>();
    var var_1 = func_2(arg_1);
    return vec4<u32>(global1.x >> (61472u % 32u), min(~(~(global1.x << (global1.x % 32u))), _wgslsmith_dot_vec3_u32(~(~global1.zwz), _wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(global1.x, global1.x, 24543u)), ~global1.ywx))), min(1u ^ global1.x, 47239u), global1.x);
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(func_4(u_input.a, func_2(arg_1), arg_1), firstTrailingBit(vec4<u32>(global1.x, 1u ^ global1.x, ~18456u, _wgslsmith_div_u32(global1.x, 81446u)))), abs(~((vec4<u32>(19860u, 4294967295u, global1.x, global1.x) & vec4<u32>(global1.x, 4294967295u, 4294967295u, global1.x)) ^ (vec4<u32>(global1.x, global1.x, global1.x, 45773u) >> (vec4<u32>(4294967295u, 7442u, 5219u, 4665u) % vec4<u32>(32u))))));
    let var_0 = global1.x > abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.x, 1u, global1.x) ^ vec4<u32>(global1.x, 1u, global1.x, 38520u), abs(vec4<u32>(global1.x, global1.x, global1.x, global1.x))));
    var var_1 = arg_1;
    var var_2 = arg_1;
    let var_3 = !(var_0 & all(vec2<bool>(global1.x >= global1.x, any(global0[_wgslsmith_index_u32(19356u, 1u)]))));
    return func_2(arg_1).a;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = ~0i;
    global0 = array<vec2<bool>, 1>();
    var var_1 = func_2(arg_0);
    var var_2 = func_2(arg_1);
    var_2 = arg_0;
    return ~_wgslsmith_add_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global1.x, 1u, 46872u), abs(vec4<u32>(global1.x, global1.x, 4294967295u, global1.x))), vec4<u32>(42717u << (global1.x % 32u), 0u, func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, var_0)), arg_0, func_2(arg_0)).x, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 1>();
    let var_0 = func_5(Struct_1(_wgslsmith_f_op_f32(abs(169f)), _wgslsmith_f_op_f32(1339f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) * _wgslsmith_f_op_f32(func_1(u_input.a, Struct_1(1222f, 1341f)))))), func_2(Struct_1(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f))))));
    global0 = array<vec2<bool>, 1>();
    global0 = array<vec2<bool>, 1>();
    global1 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(i32(-1i) * -17412i));
}

