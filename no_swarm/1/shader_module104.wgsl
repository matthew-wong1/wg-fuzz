struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(-1259f, Struct_1(vec3<f32>(-1430f, 869f, 1069f), true, vec3<i32>(1i, -1i, -4939i)), vec4<f32>(801f, 1135f, -510f, 346f), vec3<f32>(2326f, -553f, 2533f));

var<private> global1: array<Struct_2, 32>;

var<private> global2: array<vec4<i32>, 23>;

var<private> global3: bool = true;

var<private> global4: array<vec2<u32>, 19>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_2 {
    global2 = array<vec4<i32>, 23>();
    let var_0 = abs(vec3<u32>(32233u, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e), 0u));
    let var_1 = arg_0.a;
    return global1[_wgslsmith_index_u32(~95177u, 32u)];
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> i32 {
    let var_0 = vec4<f32>(933f, _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(sign(-380f))), _wgslsmith_f_op_f32(-global0.c.x), global0.a);
    global2 = array<vec4<i32>, 23>();
    global2 = array<vec4<i32>, 23>();
    global2 = array<vec4<i32>, 23>();
    var var_1 = arg_1;
    return -u_input.d;
}

fn func_1() -> vec4<f32> {
    var var_0 = ~_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(reverseBits(u_input.e.x), ~1u), select(u_input.b.x, abs(15955u), true)), ~_wgslsmith_div_vec2_u32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, u_input.b.x), 19u)], select(global4[_wgslsmith_index_u32(41670u, 19u)], u_input.e.zx, vec2<bool>(false, false))));
    var var_1 = vec3<bool>(global0.b.b, false, global0.b.b);
    global3 = any(vec3<bool>(func_3(func_2(Struct_3(global0.b, 44591u), u_input.c, vec4<bool>(global0.b.b, var_1.x, false, true), vec3<u32>(0u, var_0.x, u_input.b.x)), _wgslsmith_mult_u32(41141u, 63315u)) != -1i, all(vec3<bool>(!var_1.x, true, func_2(Struct_3(global0.b, 1u), -6548i, vec4<bool>(true, global0.b.b, global0.b.b, var_1.x), u_input.b).b.b)), true));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-408f, _wgslsmith_f_op_f32(-global0.d.x)))));
    var_1 = vec3<bool>(!func_2(Struct_3(global0.b, u_input.b.x), (global0.b.c.x & 42890i) | ~u_input.d, select(!vec4<bool>(true, true, false, global0.b.b), select(vec4<bool>(true, false, false, var_1.x), vec4<bool>(false, var_1.x, var_1.x, global0.b.b), vec4<bool>(var_1.x, true, false, true)), any(vec2<bool>(global0.b.b, true))), ~select(u_input.e.xyz, u_input.b, vec3<bool>(global0.b.b, false, true))).b.b, true, select(false, false, any(select(!vec3<bool>(global0.b.b, global0.b.b, false), vec3<bool>(global0.b.b, false, global0.b.b), 463f != global0.d.x))));
    return func_2(Struct_3(global0.b, abs(_wgslsmith_mult_u32(u_input.b.x, u_input.e.x) & ~var_0.x)), _wgslsmith_div_i32(u_input.a.x, global0.b.c.x), !(!vec4<bool>(2147483647i < u_input.c, select(false, true, true), all(vec2<bool>(global0.b.b, var_1.x)), var_1.x)), vec3<u32>(6002u, ~countOneBits(var_0.x), firstTrailingBit(~u_input.b.x))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.b.c;
    let var_1 = var_0.x;
    let var_2 = global0.b.c.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(func_1());
    let var_4 = -_wgslsmith_mod_vec4_i32(abs(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.e.x, ~u_input.b.x), 23u)]), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a.x, -1i, -1i) & vec4<i32>(global0.b.c.x, 2147483647i, global0.b.c.x, global0.b.c.x), vec4<i32>(var_0.x, 18902i, 35457i, var_0.x))));
    global2 = array<vec4<i32>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(u_input.b), u_input.d);
}

