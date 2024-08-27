struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 15>;

var<private> global1: u32;

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-30000i, -22668i, 24416i), i32(-2147483648), vec4<i32>(-54016i, -573i, 519i, 1i));

var<private> global3: i32;

var<private> global4: vec4<bool> = vec4<bool>(false, false, true, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = vec2<u32>(u_input.b, 0u);
    global1 = 0u ^ u_input.b;
    var var_1 = vec4<u32>(~var_0.x, abs(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.b, ~1u), ~(~u_input.a.x), ~12685u)), firstTrailingBit(abs(_wgslsmith_mult_u32(u_input.a.x, 53623u))), 28731u);
    var var_2 = -1000f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-167f, -1036f, !(var_0.x <= (var_1.x << (5429u % 32u))))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -134f))));
    return _wgslsmith_mult_i32(arg_0, -1i ^ -(global2.b | _wgslsmith_add_i32(arg_0, arg_0)));
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>) -> Struct_1 {
    var var_0 = global4.x;
    global3 = 12710i;
    var var_1 = Struct_1(vec3<i32>(-67840i, _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mult_i32(0i, 1i), global2.c.x), _wgslsmith_mult_i32(abs(min(0i, global2.c.x)), _wgslsmith_add_i32(-16969i, func_3(global2.b)))), _wgslsmith_sub_i32(global2.c.x, global2.b), -global2.c);
    global0 = array<vec3<u32>, 15>();
    global1 = ~(~u_input.a.x);
    return Struct_1(var_1.c.ywy, -11676i, vec4<i32>(-26830i, -1i, reverseBits(-6509i), ~global2.b >> (~45115u % 32u)) & var_1.c);
}

fn func_1() -> Struct_1 {
    let var_0 = -904f;
    let var_1 = func_2(vec2<f32>(-1632f, 655f), global4.xzw);
    var var_2 = global4.x;
    var var_3 = -2147483647i;
    var var_4 = _wgslsmith_add_vec4_i32(vec4<i32>(global2.b, var_1.c.x, global2.b, -(~var_1.b & 1i)), vec4<i32>(~2147483647i, max(reverseBits(var_1.a.x), global2.a.x), ~((-23269i & global2.a.x) & 32169i), 31452i));
    return func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1742f, 113f) + vec2<f32>(var_0, var_0)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-782f, var_0)))))), vec3<bool>(false, (true && global4.x) & true, true));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> i32 {
    var var_0 = arg_0;
    var var_1 = -func_1().b;
    let var_2 = ~3598u;
    global0 = array<vec3<u32>, 15>();
    let var_3 = ~select(~4294967295u, var_2, global4.x);
    return -_wgslsmith_dot_vec2_i32(global2.a.xz, -vec2<i32>(~var_0.a.x, i32(-1i) * -61810i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global2.a, -2147483647i, vec4<i32>(func_4(func_1(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(201f, -1127f)), -759f))), global2.b, _wgslsmith_sub_i32(global2.b, reverseBits(~35942i)), global2.b));
    let var_1 = !global4.wxx;
    let var_2 = ~var_0.a.x;
    var var_3 = var_0.a.xz;
    let var_4 = !all(!(!(!vec2<bool>(false, var_1.x))));
    global2 = Struct_1(~max(abs(min(global2.a, var_0.a)), var_0.a), -1i, firstLeadingBit(_wgslsmith_div_vec4_i32(global2.c, vec4<i32>(_wgslsmith_mult_i32(-1i, -58954i), 45807i, abs(-1709i), func_1().c.x))));
    global0 = array<vec3<u32>, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(~(-(~var_3.x) ^ var_3.x), global2.c.xw, global2.b, ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(28473u, 4294967295u, u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~4294967295u, 20872u, u_input.b), 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_div_i32(~(-12561i), ~var_2));
}

