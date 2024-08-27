struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: f32,
    d: Struct_2,
    e: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_3 = Struct_3(-1227f, vec2<bool>(true, true), -394f, Struct_2(vec3<i32>(-1i, 0i, 2147483647i), 209f), -1i);

var<private> global2: array<Struct_1, 27>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: vec4<bool>) -> u32 {
    var var_0 = ~(~(~(~_wgslsmith_div_vec4_u32(vec4<u32>(32465u, 38050u, u_input.a.x, global0.x), u_input.a))));
    let var_1 = i32(-1i) * -1i;
    return ~reverseBits(~31750u);
}

fn func_3(arg_0: f32, arg_1: vec3<f32>) -> i32 {
    var var_0 = vec4<bool>(false, global1.b.x, all(vec2<bool>(global1.b.x, all(global1.b))), global1.b.x | true);
    return min(u_input.b, -29060i);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_4(vec2<u32>(_wgslsmith_sub_u32(u_input.c | 0u, ~13962u), _wgslsmith_add_u32(~0u | _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(0u, global0.x, 56812u, 28268u)), global0.x)), true, Struct_2(_wgslsmith_div_vec3_i32(arg_0, ~global1.d.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.c) + _wgslsmith_f_op_f32(abs(global1.d.b))))));
    let var_1 = Struct_4(u_input.a.wx, true, global1.d);
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-423f * _wgslsmith_f_op_f32(-var_1.c.b)), global1.a), _wgslsmith_f_op_f32(-var_1.c.b)));
    var var_3 = var_0.c.a;
    let var_4 = vec3<i32>(reverseBits(-min(countOneBits(var_3.x), abs(arg_1.x))), -arg_0.x, u_input.b << (~min(~1u, 4294967295u << (0u % 32u)) % 32u));
    return Struct_3(-739f, select(select(!vec2<bool>(false, var_0.b), global1.b, all(vec3<bool>(global1.b.x, true, true))), select(select(vec2<bool>(global1.b.x, false), !vec2<bool>(var_0.b, false), global0.x >= u_input.a.x), global1.b, var_0.b), global1.b), var_1.c.b, Struct_2(vec3<i32>(-u_input.b, max(-2147483647i, func_3(var_2.x, vec3<f32>(-302f, var_1.c.b, -874f))), arg_0.x), -929f), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 27>();
    var var_0 = func_1(!vec4<bool>(true, global1.b.x, true, global1.b.x));
    global1 = func_2(countOneBits(vec3<i32>(-4253i, ~0i, global1.d.a.x)), -(~_wgslsmith_sub_vec4_i32(vec4<i32>(3407i, 0i, 23731i, global1.d.a.x) >> (vec4<u32>(u_input.c, 37737u, 4294967295u, global0.x) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, global1.e, 2173i, 11176i))));
    var_0 = firstTrailingBit(firstTrailingBit(23797u));
    var var_1 = global2[_wgslsmith_index_u32(~(global0.x ^ 6896u), 27u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.a)))), -1664f) - vec2<f32>(func_2(global1.d.a, vec4<i32>(-35548i >> (global0.x % 32u), i32(-1i) * -2147483647i, 1i, global1.e)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1522f))));
    global0 = abs(select(vec4<u32>(13250u, ~(~u_input.c), _wgslsmith_dot_vec2_u32(~global0.wz, vec2<u32>(u_input.c, global0.x) >> (global0.yx % vec2<u32>(32u))), ~min(10768u, global0.x)), max(_wgslsmith_sub_vec4_u32(select(u_input.a, u_input.a, vec4<bool>(false, global1.b.x, global1.b.x, true)), vec4<u32>(u_input.c, 1u, 33754u, global0.x)), ~(vec4<u32>(7887u, 48016u, 36721u, u_input.a.x) ^ u_input.a)), global1.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(vec2<i32>(~(-2147483647i), firstTrailingBit(_wgslsmith_div_i32(-62157i, -1i))), _wgslsmith_mod_vec2_i32(global1.d.a.xx, global1.d.a.zz)), firstTrailingBit(u_input.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(645f, -1123f, 634f, 343f) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, var_2.x, var_1.a, var_2.x), vec4<f32>(var_1.a, 284f, 1444f, 398f), global1.b.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(-var_2.x), _wgslsmith_f_op_f32(step(785f, -1010f)), _wgslsmith_f_op_f32(ceil(-148f)), _wgslsmith_f_op_f32(ceil(400f))), vec4<f32>(var_2.x, var_2.x, _wgslsmith_f_op_f32(-var_1.a), var_2.x), false))));
}

