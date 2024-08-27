struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_3,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: u32 = 4294967295u;

var<private> global2: vec2<i32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    let var_0 = Struct_3(vec4<bool>(global0[_wgslsmith_index_u32(~53783u, 14u)], global0[_wgslsmith_index_u32(u_input.b, 14u)], arg_0.a.x, global0[_wgslsmith_index_u32(reverseBits(countOneBits(1u)), 14u)]), vec2<f32>(-135f, arg_0.b.x));
    var var_1 = 25247i;
    global1 = max(select(2912u, _wgslsmith_mod_u32(~21526u, u_input.b), select(-39126i <= global2.x, arg_0.a.x, false) & all(var_0.a.xzz)), firstTrailingBit(u_input.b));
    var_1 = global2.x;
    var var_2 = Struct_3(!vec4<bool>(any(arg_0.a.xwx), (global0[_wgslsmith_index_u32(26772u, 14u)] | false) && var_0.a.x, true, all(vec3<bool>(true, true, true))), var_0.b);
    return vec2<f32>(-483f, -219f);
}

fn func_2(arg_0: bool) -> vec3<i32> {
    global0 = array<bool, 14>();
    let var_0 = ~_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, -u_input.a ^ u_input.a, -1126i, 44708i), firstTrailingBit(min(vec4<i32>(0i, 1i, u_input.a, u_input.a) << (vec4<u32>(u_input.b, u_input.b, 23363u, 80725u) % vec4<u32>(32u)), countOneBits(vec4<i32>(-28079i, 17751i, -2147483647i, -2147483647i)))));
    let var_1 = Struct_1(1i, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(498f, -146f)))), _wgslsmith_f_op_f32(ceil(689f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(vec4<bool>(true, false, arg_0, arg_0), vec2<f32>(506f, -439f)))) - vec2<f32>(_wgslsmith_f_op_f32(-200f * 2239f), -699f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-176f, _wgslsmith_f_op_f32(211f + -242f), _wgslsmith_f_op_f32(1515f - -569f), _wgslsmith_f_op_f32(f32(-1f) * -1234f)))));
    let var_2 = select(!select(vec3<bool>(arg_0, !arg_0, all(vec3<bool>(arg_0, arg_0, true))), select(!vec3<bool>(global0[_wgslsmith_index_u32(22441u, 14u)], arg_0, arg_0), !vec3<bool>(arg_0, false, global0[_wgslsmith_index_u32(u_input.b, 14u)]), arg_0), true), select(vec3<bool>(true | any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 14u)], false)), global0[_wgslsmith_index_u32(~4294967295u, 14u)] != arg_0, global0[_wgslsmith_index_u32(select(u_input.b, u_input.b, false), 14u)]), select(vec3<bool>(true, true, true), vec3<bool>(false, !arg_0, arg_0), select(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.b, 14u)], arg_0), vec3<bool>(global0[_wgslsmith_index_u32(1u, 14u)], arg_0, false), select(vec3<bool>(arg_0, global0[_wgslsmith_index_u32(u_input.b, 14u)], arg_0), vec3<bool>(false, arg_0, false), vec3<bool>(true, true, arg_0)))), !(!all(vec3<bool>(global0[_wgslsmith_index_u32(74138u, 14u)], false, arg_0)))), 331f > _wgslsmith_f_op_f32(var_1.c.x + _wgslsmith_f_op_f32(sign(var_1.b.x))));
    global2 = vec2<i32>(var_0.x, _wgslsmith_dot_vec3_i32(var_0.zzw, -var_0.yyx));
    return abs(var_0.yzx);
}

fn func_1() -> f32 {
    var var_0 = ~func_2(false);
    var var_1 = u_input.a;
    var_1 = 2147483647i;
    var_0 = min(vec3<i32>(-1i) * -select(vec3<i32>(29187i, 19008i, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, 0i, global2.x), vec3<i32>(var_0.x, global2.x, -2147483647i)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), global0[_wgslsmith_index_u32(u_input.b, 14u)])), min(firstLeadingBit(firstLeadingBit(select(vec3<i32>(global2.x, 30042i, global2.x), vec3<i32>(22396i, global2.x, global2.x), vec3<bool>(true, false, false)))), vec3<i32>(_wgslsmith_div_i32(-2147483647i, max(0i, 1i)), min(470i, u_input.a), (global2.x << (u_input.b % 32u)) | -global2.x)));
    var_1 = _wgslsmith_clamp_i32(1i, -2147483647i, -78612i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1f))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<f32>, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_3 {
    global0 = array<bool, 14>();
    global1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(min(0u, firstTrailingBit(arg_2.x)), abs(~_wgslsmith_add_u32(4610u, u_input.b))), u_input.b);
    let var_0 = Struct_3(select(arg_3.b.a, !(!(!vec4<bool>(false, true, arg_3.b.a.x, false))), select(!arg_3.b.a, select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), !vec4<bool>(false, global0[_wgslsmith_index_u32(arg_2.x, 14u)], global0[_wgslsmith_index_u32(arg_2.x, 14u)], arg_3.b.a.x)), vec4<bool>(global0[_wgslsmith_index_u32(1u, 14u)] && false, all(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.x, 14u)], false)), arg_3.b.a.x, all(arg_3.b.a)))), _wgslsmith_f_op_vec2_f32(-arg_3.b.b));
    var var_1 = all(var_0.a.yzx);
    var var_2 = 24419u;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(vec2<i32>(-1i) * -vec2<i32>(u_input.a, 44070i));
    let var_0 = func_4(Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-308f, -1635f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(895f + 1020f)), -2230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), _wgslsmith_f_op_f32(func_1()))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(1118f, 1000f, false)), -113f)))), select(vec2<u32>(u_input.b, _wgslsmith_add_u32(~4294967295u, u_input.b ^ u_input.b)), ~_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.b, 0u)), vec2<u32>(u_input.b, u_input.b) >> (vec2<u32>(93382u, u_input.b) % vec2<u32>(32u))), global0[_wgslsmith_index_u32(u_input.b, 14u)]), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(-750f)), 1f, _wgslsmith_f_op_f32(f32(-1f) * -1239f), _wgslsmith_f_op_f32(sign(-494f)))), Struct_3(vec4<bool>(true, u_input.b < 9765u, true, u_input.a != u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(719f, 207f))))), vec4<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-2934f * -1224f)), _wgslsmith_f_op_f32(1000f + -1839f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(589f, -104f)), -515f, !global0[_wgslsmith_index_u32(u_input.b, 14u)])), 1187f)));
    global0 = array<bool, 14>();
    global1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(reverseBits(reverseBits(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b))), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 57430u)), 56626u, ~8036u, 32018u)), u_input.b >> (~(~u_input.b) % 32u)), u_input.b, ~24935u);
    var var_1 = countOneBits(vec2<i32>(2147483647i, global2.x));
    let var_2 = Struct_2(Struct_1(_wgslsmith_sub_i32(1i, 15958i), _wgslsmith_f_op_vec2_f32(-var_0.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-317f, 254f, var_0.b.x, var_0.b.x), vec4<f32>(var_0.b.x, var_0.b.x, -1036f, var_0.b.x)), _wgslsmith_div_vec4_f32(vec4<f32>(990f, 674f, var_0.b.x, var_0.b.x), vec4<f32>(var_0.b.x, -982f, 2053f, var_0.b.x)), var_0.a.x))))));
    var var_3 = _wgslsmith_f_op_f32(floor(var_0.b.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c);
}

