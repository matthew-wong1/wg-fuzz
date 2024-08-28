struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24>;

var<private> global1: vec4<u32>;

var<private> global2: Struct_1 = Struct_1(4294967295u, 1i);

var<private> global3: array<i32, 26>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    return Struct_1(66424u, u_input.d);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    global3 = array<i32, 26>();
    let var_0 = abs(~global1.xy);
    var var_1 = _wgslsmith_mult_vec2_u32(abs(vec2<u32>(max(~0u, 26749u >> (var_0.x % 32u)), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.b.x, global1.x, 0u)), vec3<u32>(35822u, 1u, u_input.b.x)))), abs(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(global2.a, 70426u), u_input.a) & _wgslsmith_div_vec2_u32(global1.yz, vec2<u32>(global1.x, global2.a)))));
    let var_2 = arg_1;
    var var_3 = -u_input.c.zz;
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) - 697f) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x))), _wgslsmith_f_op_f32(1078f + 878f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -646f))))));
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    let var_0 = func_1(vec4<u32>(~2734u, _wgslsmith_add_u32(func_1(vec4<u32>(1u, global2.a, 4294967295u, 68067u), 38485i, vec2<i32>(0i, global0[_wgslsmith_index_u32(71030u, 24u)])).a | func_1(vec4<u32>(global1.x, 0u, 55003u, global1.x), global2.b, vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -1i)).a, reverseBits(4294967295u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(global1.x, _wgslsmith_sub_u32(global2.a, 4294967295u))), u_input.b.x), -2147483647i, ~_wgslsmith_sub_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global2.b) ^ -u_input.c.xz, -vec2<i32>(global3[_wgslsmith_index_u32(global2.a, 26u)], -29448i)));
    let var_1 = Struct_3(-1000f, var_0, Struct_2(arg_0.a), var_0, vec4<bool>(all(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), false), true)), all(vec2<bool>(false, true)), any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), vec3<bool>(true, true, true), true)), all(vec3<bool>(true, true, true))));
    var var_2 = vec2<bool>(var_1.e.x, var_1.e.x);
    let var_3 = false;
    global0 = array<i32, 24>();
    return Struct_1(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.b, ~u_input.a), 22557u)), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(func_2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(497f, _wgslsmith_f_op_f32(round(-438f)), -933f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(618f, 277f, 183f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-211f, -826f, -721f)))))), func_1(firstTrailingBit(~vec4<u32>(u_input.b.x, global1.x, u_input.b.x, global1.x)), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(min(global2.a, 4294967295u), reverseBits(global1.x)), 26u)], _wgslsmith_clamp_vec2_i32(u_input.c.yy, _wgslsmith_div_vec2_i32(vec2<i32>(global2.b, u_input.c.x), vec2<i32>(global2.b, 30615i)), u_input.c.xx))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(534f, 143f, 1225f) - vec3<f32>(981f, 1314f, -1074f)))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(789f)), _wgslsmith_f_op_f32(trunc(219f)))), -1988f, _wgslsmith_f_op_f32(abs(825f)))));
    global1 = ~firstTrailingBit(select(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, global1.x, 1u, 18555u), vec4<u32>(var_0.a, global1.x, 1208u, global1.x)), ~vec4<u32>(28246u, global1.x, 1u, 51673u)), firstTrailingBit(firstLeadingBit(vec4<u32>(global2.a, var_0.a, 1u, u_input.b.x))), vec4<bool>(true, true, true, true)));
    global0 = array<i32, 24>();
    var var_2 = Struct_1(firstTrailingBit(74239u), reverseBits((global2.b | 1i) ^ 2147483647i));
    global2 = func_3(var_1);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-39218i, ~global3[_wgslsmith_index_u32(u_input.b.x, 26u)]), -15246i);
}

