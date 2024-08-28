struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<f32, 15> = array<f32, 15>(494f, 712f, 1000f, -497f, -714f, 325f, -1284f, -1682f, 714f, -1237f, -894f, 864f, -1510f, -310f, 1726f);

var<private> global2: vec4<u32>;

var<private> global3: Struct_1 = Struct_1(true, vec3<bool>(true, true, true));

var<private> global4: array<vec3<u32>, 22>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec3_u32(global2.xxw, ~vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, global2.x), 1u, ~u_input.a.x)) ^ global4[_wgslsmith_index_u32(0u, 22u)];
    let var_1 = vec3<i32>(arg_0, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-arg_0, 20563i, _wgslsmith_clamp_i32(2147483647i, -15441i, arg_0)), firstTrailingBit(vec3<i32>(arg_0, arg_0, -6517i) & vec3<i32>(-2147483647i, 12934i, 23089i))), min(-1i, -_wgslsmith_mult_i32(1i, -33926i)));
    let var_2 = firstTrailingBit(-select(vec4<i32>(-9971i, -2147483647i, var_1.x, -10519i), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 2147483647i, 26818i, var_1.x), vec4<i32>(15317i, var_1.x, 47958i, 2147483647i)), vec4<bool>(global3.b.x, true, true, true)) << (_wgslsmith_sub_vec4_u32(u_input.a, ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, global2.x, u_input.a.x, global2.x), vec4<u32>(global2.x, 1u, u_input.a.x, 1u))) % vec4<u32>(32u)));
    let var_3 = Struct_1(global0.b.x == false, global3.b);
    var var_4 = Struct_1(any(!(!(!vec4<bool>(global3.b.x, var_3.a, true, global3.b.x)))), var_3.b);
    return Struct_1(all(!select(!global3.b, vec3<bool>(true, var_3.a, global3.b.x), false)), vec3<bool>(true || global3.a, global0.b.x, var_4.b.x));
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(_wgslsmith_add_i32(select(44510i, 1i, true), -(~_wgslsmith_add_i32(32554i, -1i))));
    global1 = array<f32, 15>();
    let var_1 = u_input.a.x;
    let var_2 = u_input.a;
    let var_3 = abs(-firstTrailingBit(~0i << (firstTrailingBit(global2.x) % 32u)));
    return Struct_1(global0.b.x, !(!global0.b));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32) -> u32 {
    global0 = Struct_1(true, func_1().b);
    let var_0 = Struct_1(~reverseBits(firstLeadingBit(arg_0.x)) == _wgslsmith_div_u32(arg_0.x, u_input.a.x), !func_1().b);
    let var_1 = vec3<bool>(var_0.b.x && any(select(func_1().b.zx, !var_0.b.xx, true)), global3.a | all(!select(vec2<bool>(var_0.a, false), vec2<bool>(false, false), true)), func_1().a & global3.b.x);
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, -1i, _wgslsmith_div_i32(2147483647i, -78784i), countOneBits(2147483647i)), min(-vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(-2147483647i, 36080i, 1i, -22635i), abs(vec4<i32>(1i, 2147483647i, -2147483647i, 38698i)), ~vec4<i32>(-32782i, 25460i, 30253i, -1i)), -vec4<i32>(2147483647i, 18043i, -30250i, 1390i))), -(~select(~vec4<i32>(25409i, -12882i, -25227i, 1i), vec4<i32>(0i, -1i, 5737i, -10623i), !vec4<bool>(global0.a, true, global3.a, false))));
    var var_3 = _wgslsmith_add_u32(select(u_input.a.x, _wgslsmith_dot_vec2_u32(countOneBits(~arg_0.yx), firstLeadingBit(firstLeadingBit(vec2<u32>(u_input.a.x, 36044u)))), false), _wgslsmith_sub_u32(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, arg_1), vec2<u32>(u_input.a.x, arg_1))), ~(~(~0u))));
    return global2.x;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<u32>, 22>();
    global0 = func_1();
    var var_0 = func_3(u_input.a.yyx, global2.x);
    var var_1 = all(global0.b.zz);
    var var_2 = func_2(-1i);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(232f, _wgslsmith_f_op_f32(-130f - _wgslsmith_f_op_f32(-1119f * global1[_wgslsmith_index_u32(global2.x, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(global2.x, 15u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(select(1370u, global2.x, true), 36762u));
}

