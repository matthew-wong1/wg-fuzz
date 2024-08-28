struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: Struct_1;

var<private> global2: vec4<u32>;

var<private> global3: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    global1 = global0[_wgslsmith_index_u32((28693u << ((firstLeadingBit(global3.b.x ^ 1u) & _wgslsmith_div_u32(4294967295u, countOneBits(u_input.a))) % 32u)) & _wgslsmith_mult_u32(abs(countOneBits(abs(global1.b.x))), global2.x), 1u)];
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-124f * arg_1.d.x));
    global1 = global0[_wgslsmith_index_u32(1u, 1u)];
    return vec3<bool>(false, (-(arg_2 & 56222i) & 2147483647i) == arg_2, true && all(vec2<bool>(true, true)));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = vec4<bool>(!global3.a, true && global3.a, global3.a, any(vec4<bool>(true, global1.a, all(vec4<bool>(global1.a, true, global1.a, false)), all(vec4<bool>(global3.a, true, global1.a, global1.a)))));
    let var_1 = global0[_wgslsmith_index_u32(~4294967295u, 1u)];
    var var_2 = global0[_wgslsmith_index_u32(1665u, 1u)];
    let var_3 = true;
    global1 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(firstLeadingBit(1u), arg_0.x), global1.b.x), 1u)];
    return global0[_wgslsmith_index_u32(u_input.a, 1u)];
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = Struct_1(!(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, 0u) ^ vec2<u32>(5094u, 7775u), min(vec2<u32>(global1.c.x, 17458u), arg_0.a)) > ~(~13069u)), global3.b, global1.c, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global3.d))), vec4<f32>(_wgslsmith_f_op_f32(trunc(-524f)), global1.d.x, -926f, 249f), !select(!vec4<bool>(global1.a, global3.a, false, true), select(vec4<bool>(false, global3.a, false, global3.a), vec4<bool>(global1.a, global1.a, global3.a, false), false), global3.d.x < global3.d.x))));
    let var_1 = global0[_wgslsmith_index_u32(~(~1u), 1u)];
    global0 = array<Struct_1, 1>();
    var var_2 = func_2(abs(_wgslsmith_div_vec4_u32(vec4<u32>(59105u, _wgslsmith_add_u32(13420u, global1.c.x), 10720u, ~arg_0.a.x), var_1.c | global3.c)));
    let var_3 = vec4<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(29171i, -21952i, -2147483647i), vec3<i32>(-14411i, 32695i, 16124i), vec3<bool>(true, var_0.a, true)), vec3<i32>(1i, 1i, 1i)) | ~(~(-28754i)), -30i, 1i | abs(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -31137i))), max(1i, _wgslsmith_add_i32(-41609i, _wgslsmith_mult_i32(-1846i, -1i)))) ^ max(vec4<i32>(~1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-46142i, -86796i), firstTrailingBit(-35983i)), 0i, 58842i), ~countOneBits(~vec4<i32>(-3479i, 3291i, 57766i, -2147483647i)));
    return countOneBits(firstTrailingBit(~(~vec2<u32>(51294u, 27490u) & var_0.b.zy)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec2<u32> {
    let var_0 = false;
    global2 = global1.c;
    let var_1 = _wgslsmith_f_op_vec3_f32(ceil(global3.d.wwx));
    var var_2 = _wgslsmith_sub_vec2_i32(firstLeadingBit(vec2<i32>(-14374i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -24188i, -44940i, -4140i) >> (vec4<u32>(global3.b.x, 1u, arg_0.a.x, u_input.a) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(0i, -21638i, -1i, 95442i))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(42157i, reverseBits(~(-2147483647i))), reverseBits(abs(vec2<i32>(0i, 0i) << (global3.c.zy % vec2<u32>(32u)))), vec2<i32>(1i, ~(-1i))));
    var_2 = vec2<i32>(_wgslsmith_mult_i32(~min(var_2.x, var_2.x) | ((var_2.x >> (arg_0.a.x % 32u)) & _wgslsmith_clamp_i32(-23629i, -2147483647i, var_2.x)), 8751i), -1i);
    return ~arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !func_1(firstTrailingBit(global3.c.x), global0[_wgslsmith_index_u32(global1.b.x, 1u)], i32(-1i) * -_wgslsmith_add_i32(14756i, 1026i));
    var var_1 = !vec4<bool>(true, var_0.x, any(vec2<bool>(true, true)), false);
    global3 = global0[_wgslsmith_index_u32(5786u, 1u)];
    global2 = vec4<u32>(8753u, _wgslsmith_add_u32(0u, global2.x), global2.x, ~global1.b.x);
    global2 = global3.c;
    let var_2 = global3.d.x;
    global1 = func_2(~select(vec4<u32>(~u_input.c, countOneBits(41045u), global1.b.x, ~29154u), global3.c, any(vec4<bool>(false, global1.a, global1.a, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~(-35349i), func_4(Struct_2(func_3(Struct_2(vec2<u32>(global1.b.x, global3.c.x)), _wgslsmith_sub_u32(u_input.c, 8520u), Struct_2(global2.xz))), Struct_2(~vec2<u32>(global3.c.x, 18935u))), 1i, -872f, ~4294967295u);
}

