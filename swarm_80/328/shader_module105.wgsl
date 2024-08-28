struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 20>;

var<private> global1: array<bool, 3> = array<bool, 3>(false, false, false);

var<private> global2: array<Struct_2, 30>;

var<private> global3: f32 = -510f;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_3 {
    global0 = array<Struct_3, 20>();
    return global0[_wgslsmith_index_u32(38701u, 20u)];
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = u_input.d.x;
    var_0 = -46098i;
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
    let var_1 = Struct_1(~arg_0.a, 1u != arg_0.a.x, !global1[_wgslsmith_index_u32(arg_0.a.x, 3u)], arg_0.c);
    return u_input.d;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec4<bool>, arg_3: i32) -> StorageBuffer {
    let var_0 = min(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~select(vec4<i32>(29295i, 2147483647i, 1i, -2147483647i), vec4<i32>(0i, -18952i, arg_3, arg_3), false), select(reverseBits(vec4<i32>(-1i, -12399i, 11545i, 3690i)), -vec4<i32>(arg_3, arg_3, arg_3, u_input.c), 15689i != u_input.d.x), ~vec4<i32>(u_input.d.x, u_input.d.x, 6743i, arg_3)), firstLeadingBit(max(vec4<i32>(30114i, -68939i, arg_3, u_input.d.x), vec4<i32>(1i, 2147483647i, -28691i, -1217i) >> (u_input.b % vec4<u32>(32u))))), -vec4<i32>(-37119i, u_input.d.x, arg_3 & arg_3, ~(-21621i) ^ _wgslsmith_div_i32(u_input.d.x, 21458i)));
    var var_1 = Struct_2(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, -1i, -54559i & _wgslsmith_clamp_i32(u_input.c, u_input.c, 33145i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_3, arg_3, -16334i, u_input.c), max(var_0, var_0))), var_0), all(!arg_2));
    let var_2 = arg_1.xx;
    global2 = array<Struct_2, 30>();
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(699f))));
    return StorageBuffer(_wgslsmith_mod_vec3_i32(var_0.ywz, ~func_3(Struct_1(vec3<u32>(var_2.x, u_input.a, arg_1.x), var_1.b, global1[_wgslsmith_index_u32(7292u, 3u)], var_1.b))), abs(~vec3<u32>(1u, 47217u, 20366u)), vec2<u32>(_wgslsmith_div_u32(55982u, _wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.x, u_input.b.x), ~arg_0.a.x)), ~_wgslsmith_div_u32(abs(0u), _wgslsmith_add_u32(arg_1.x, var_2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 2147483647i;
    let var_1 = func_1(var_0, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-135f + 1585f)), _wgslsmith_div_f32(-295f, _wgslsmith_f_op_f32(f32(-1f) * -1246f))))));
    let x = u_input.a;
    s_output = func_2(func_1(abs(var_0), vec3<f32>(247f, var_1.a, _wgslsmith_f_op_f32(390f + _wgslsmith_f_op_f32(674f + 1000f)))).b, _wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.b.a.xy, vec2<u32>(var_1.b.a.x, u_input.a)), var_1.b.a.x ^ 16665u, ~4294967295u), var_1.b.a), _wgslsmith_clamp_vec3_u32(~vec3<u32>(22280u, var_1.b.a.x, u_input.b.x), ~vec3<u32>(var_1.b.a.x, 1u, u_input.b.x), vec3<u32>(0u, 0u, 1u)) & ~vec3<u32>(44216u, var_1.b.a.x, u_input.a)), !vec4<bool>(!any(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 3u)], var_1.b.c, true)), any(select(vec2<bool>(global1[_wgslsmith_index_u32(267u, 3u)], global1[_wgslsmith_index_u32(u_input.b.x, 3u)]), vec2<bool>(global1[_wgslsmith_index_u32(92564u, 3u)], var_1.b.d), vec2<bool>(var_1.b.d, global1[_wgslsmith_index_u32(4294967295u, 3u)]))), !var_1.b.d, !(false || var_1.b.d)), min(u_input.d.x, abs(_wgslsmith_add_i32(var_0, -1i))));
}

