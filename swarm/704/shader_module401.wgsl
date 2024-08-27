struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 4>;

var<private> global1: vec2<f32> = vec2<f32>(199f, -1000f);

var<private> global2: vec3<i32> = vec3<i32>(67479i, -32502i, 1i);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: vec2<f32>) -> Struct_2 {
    global0 = array<bool, 4>();
    let var_0 = 404f;
    global1 = arg_0.zy;
    let var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.wyy);
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_2(vec2<u32>(u_input.b, ~(~_wgslsmith_div_u32(14519u, u_input.a))), true, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.zx) * arg_2)), arg_0.yww), ~_wgslsmith_add_i32(~(arg_1.x & global2.x), -2147483647i));
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    let var_0 = !(!(!(!select(vec3<bool>(global0[_wgslsmith_index_u32(0u, 4u)], false, global0[_wgslsmith_index_u32(1u, 4u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(arg_0.b.x, 4u)], global0[_wgslsmith_index_u32(80586u, 4u)]), global0[_wgslsmith_index_u32(arg_0.b.x, 4u)]))));
    global2 = vec3<i32>(global2.x, -global2.x, abs(-2147483647i));
    global2 = -(~vec3<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global2.x, -1i)), arg_0.a), arg_0.a.x, arg_0.a.x));
    let var_1 = -37588i;
    var var_2 = 1i;
    return reverseBits(abs(~arg_0.b.wzw) & ~(~max(arg_0.b.xww, vec3<u32>(arg_0.b.x, 80592u, u_input.a))));
}

fn func_2(arg_0: Struct_2) -> vec3<i32> {
    global1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.c.a)));
    let var_0 = func_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 145f, arg_0.c.a.x, 274f) - vec4<f32>(-1002f, global1.x, -791f, 1200f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, global1.x, 1367f)))))), select(_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(arg_0.d, -1i)), vec2<i32>(-2147483647i, 2147483647i)) >> (vec2<u32>(arg_0.a.x | u_input.a, ~83015u) % vec2<u32>(32u)), global2.xx, any(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(63837u, 4u)])))), arg_0.c.a).c;
    var var_1 = 1u;
    let var_2 = true;
    global2 = ((vec3<i32>(-1i) * -vec3<i32>(global2.x, -2147483647i, global2.x)) ^ -(~(vec3<i32>(11045i, arg_0.d, arg_0.d) & vec3<i32>(arg_0.d, -10677i, 2147483647i)))) << (func_3(Struct_4(vec2<i32>(-2514i, global2.x) << (~arg_0.a % vec2<u32>(32u)), ~(vec4<u32>(22453u, 12731u, u_input.a, 31670u) >> (vec4<u32>(arg_0.a.x, 27522u, 4294967295u, arg_0.a.x) % vec4<u32>(32u))))) % vec3<u32>(32u));
    return vec3<i32>(_wgslsmith_sub_i32(arg_0.d, -40069i), ~_wgslsmith_clamp_i32(-(arg_0.d ^ global2.x), abs(-1i) & _wgslsmith_mult_i32(global2.x, 72821i), _wgslsmith_dot_vec2_i32(vec2<i32>(-644i, arg_0.d) ^ global2.xz, abs(vec2<i32>(arg_0.d, -13915i)))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global2.x, ~(-15618i)), firstLeadingBit(func_2(func_1(vec4<f32>(global1.x, 1554f, -619f, global1.x), vec2<i32>(5273i, global2.x), vec2<f32>(global1.x, global1.x)))));
    var var_1 = -13366i;
    var_0 = (vec3<i32>(-1i) * -(vec3<i32>(9307i, var_0.x, 50029i) ^ -vec3<i32>(-2147483647i, var_0.x, 0i))) & func_2(Struct_2(vec2<u32>(func_1(vec4<f32>(global1.x, -729f, 1519f, global1.x), vec2<i32>(global2.x, global2.x), vec2<f32>(-1137f, -164f)).a.x, ~0u), true, Struct_1(vec2<f32>(global1.x, -426f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(529f, -614f, 631f))), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(47349i, global2.x, var_0.x, var_0.x), vec4<i32>(7290i, var_0.x, var_0.x, -1i)), _wgslsmith_mult_i32(var_0.x, var_0.x))));
    var var_2 = Struct_3(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1638f, global1.x)) + vec2<f32>(-1093f, 1178f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.x)) * global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.x + 1405f))), 860f)));
    let var_3 = vec3<u32>(~(func_3(Struct_4(vec2<i32>(var_0.x, -1i), vec4<u32>(0u, u_input.a, u_input.a, u_input.a))).x ^ max(~u_input.a, select(u_input.a, 0u, true))), ~47117u, ~1u);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.a.a.x + var_2.a.b.x) - 1668f);
    var var_5 = !select(vec3<bool>(true, global0[_wgslsmith_index_u32(~(~u_input.a), 4u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(0u, u_input.b), 4294967295u), 4u)]), !select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 4u)], global0[_wgslsmith_index_u32(4294967295u, 4u)], global0[_wgslsmith_index_u32(0u, 4u)]), !vec3<bool>(false, true, global0[_wgslsmith_index_u32(u_input.b, 4u)]), true), global0[_wgslsmith_index_u32(firstLeadingBit(~u_input.a) ^ _wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 0u), var_3)), 4u)]);
    var var_6 = _wgslsmith_div_vec4_i32(firstTrailingBit(firstTrailingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, -1i, var_0.x, -1i) & vec4<i32>(2147483647i, var_0.x, global2.x, -1i), vec4<i32>(11016i, global2.x, var_0.x, -1i)))), abs(reverseBits(vec4<i32>(abs(20702i), _wgslsmith_dot_vec4_i32(vec4<i32>(-13641i, var_0.x, -1893i, 0i), vec4<i32>(var_0.x, global2.x, -1i, -22701i)), 0i, 1258i))));
    var var_7 = -_wgslsmith_sub_i32(countOneBits(~min(var_0.x, global2.x)), global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, vec4<i32>(var_6.x, -1i, global2.x, var_0.x), var_3.x, vec4<f32>(global1.x, _wgslsmith_f_op_f32(floor(func_1(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -1653f, 1000f, -820f))), vec2<i32>(1i, -1i), vec2<f32>(var_2.a.b.x, 1113f)).c.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(133f + _wgslsmith_f_op_f32(f32(-1f) * -438f))), 1102f), _wgslsmith_mod_u32(1u, 35800u));
}

