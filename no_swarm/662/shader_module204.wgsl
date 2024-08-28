struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, false, true, false, false, true, true, false, false, false, false, false, false, false, false, false, true, true, false, true, true, true, false, true, false);

var<private> global2: array<Struct_3, 26>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    let var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1200f - 338f)), global0.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, -1365f)))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 412f, -1638f) - _wgslsmith_div_vec3_f32(vec3<f32>(-450f, -1595f, -344f), vec3<f32>(-1025f, global0.x, global0.x))), vec3<f32>(_wgslsmith_f_op_f32(global0.x - global0.x), 729f, _wgslsmith_f_op_f32(max(103f, -539f)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)))) + global0.yz);
    global1 = array<bool, 25>();
    return global1[_wgslsmith_index_u32(~1u, 25u)];
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-20317i, 9267i), u_input.b, -2147483647i, ~(_wgslsmith_mod_i32(u_input.a.x, 61407i) ^ abs(u_input.c.x))), -(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.a.x, 0i, 23896i)) >> (vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, 23479u, arg_0.c), vec3<u32>(4294967295u, arg_0.c, arg_0.c)) ^ (arg_0.c & 0u), 1u, 42175u, 2615u) % vec4<u32>(32u)));
    global2 = array<Struct_3, 26>();
    let var_1 = Struct_2(Struct_1(func_3(), arg_0.b, ~min(0u, 14317u)), ~(~(-66624i << (~4294967295u % 32u))), _wgslsmith_mod_i32(~(_wgslsmith_mod_i32(var_0.x, var_0.x) << (_wgslsmith_sub_u32(0u, arg_0.c) % 32u)), -min(u_input.a.x, var_0.x)), arg_0);
    global2 = array<Struct_3, 26>();
    var var_2 = global1[_wgslsmith_index_u32(abs(arg_0.c), 25u)];
    return countOneBits(vec3<i32>(64635i, i32(-1i) * -28284i, var_0.x));
}

fn func_1() -> u32 {
    let var_0 = reverseBits(reverseBits(_wgslsmith_add_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(func_2(Struct_1(global1[_wgslsmith_index_u32(1u, 25u)], vec2<bool>(true, global1[_wgslsmith_index_u32(6394u, 25u)]), 1293u), global0.zz), vec3<i32>(u_input.a.x, u_input.b, -2147483647i)))));
    let var_1 = Struct_1(global1[_wgslsmith_index_u32(~(~_wgslsmith_sub_u32(~43765u, ~4294967295u)), 25u)], !select(select(select(vec2<bool>(global1[_wgslsmith_index_u32(49082u, 25u)], global1[_wgslsmith_index_u32(6134u, 25u)]), vec2<bool>(global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)]), global1[_wgslsmith_index_u32(77672u, 25u)]), vec2<bool>(true, true), vec2<bool>(false, true)), select(!vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 25u)]), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 25u)], false), global1[_wgslsmith_index_u32(4294967295u, 25u)]), global1[_wgslsmith_index_u32(62118u, 25u)]), 1u);
    let var_2 = Struct_2(var_1, u_input.a.x, 2147483647i, var_1);
    let var_3 = var_2;
    global2 = array<Struct_3, 26>();
    return ~_wgslsmith_div_u32(reverseBits(var_3.d.c), _wgslsmith_clamp_u32(0u, firstTrailingBit(27887u), 27431u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(select(true, global1[_wgslsmith_index_u32(1u, 25u)], global1[_wgslsmith_index_u32(~func_1() ^ firstLeadingBit(max(4294967295u, 31759u)), 25u)]), true);
    global1 = array<bool, 25>();
    global1 = array<bool, 25>();
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(u_input.a.x, abs(1i ^ u_input.b))), u_input.a.x, select(-(u_input.c.x & u_input.a.x), _wgslsmith_div_i32(1i, abs(2147483647i)), var_0.x) | 2147483647i);
    global2 = array<Struct_3, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_vec2_u32(~vec2<u32>(53889u, 39518u), vec2<u32>(1u, 4294967295u))));
}

