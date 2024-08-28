struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 18>;

var<private> global1: array<i32, 4>;

var<private> global2: array<Struct_1, 16>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = Struct_1(25472i);
    var var_1 = global0[_wgslsmith_index_u32(~max(~0u, 1u), 18u)];
    global0 = array<Struct_1, 18>();
    global0 = array<Struct_1, 18>();
    let var_2 = Struct_1(arg_1.a);
    return vec4<i32>(-1i) * -abs(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a, -58595i, var_2.a, var_1.a), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, var_0.a)) ^ vec4<i32>(-1i, var_0.a, -208i, var_1.a));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec2<i32>) -> Struct_1 {
    global2 = array<Struct_1, 16>();
    global2 = array<Struct_1, 16>();
    let var_0 = -u_input.a.x;
    let var_1 = _wgslsmith_dot_vec4_i32(~(~abs(-vec4<i32>(-2147483647i, global1[_wgslsmith_index_u32(4294967295u, 4u)], var_0, arg_3.x))), min(-max(~vec4<i32>(50820i, -2147483647i, -1i, var_0), ~vec4<i32>(-44019i, arg_0.x, -193i, 2147483647i)), vec4<i32>(-arg_0.x, ~(~(-2147483647i)), _wgslsmith_dot_vec4_i32(func_2(120722u, global2[_wgslsmith_index_u32(50946u, 16u)]), vec4<i32>(u_input.a.x, 5506i, u_input.a.x, global1[_wgslsmith_index_u32(14028u, 4u)]) >> (vec4<u32>(0u, 14821u, 0u, 4294967295u) % vec4<u32>(32u))), ~global1[_wgslsmith_index_u32(~1u, 4u)])));
    global1 = array<i32, 4>();
    return Struct_1(firstLeadingBit(~(-13792i)));
}

fn func_3(arg_0: vec4<u32>) -> f32 {
    global1 = array<i32, 4>();
    let var_0 = Struct_1(-2147483647i);
    global2 = array<Struct_1, 16>();
    global0 = array<Struct_1, 18>();
    global1 = array<i32, 4>();
    return 164f;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    global2 = array<Struct_1, 16>();
    let var_0 = -_wgslsmith_div_i32(~(i32(-1i) * -u_input.a.x), u_input.a.x);
    let var_1 = arg_0;
    var var_2 = global1[_wgslsmith_index_u32(firstTrailingBit(~1u), 4u)];
    let var_3 = ~select(~_wgslsmith_div_vec4_u32(vec4<u32>(93805u, 0u, 0u, 1u), vec4<u32>(1u, 4294967295u, 1u, 23098u)), vec4<u32>(~4294967295u, max(49967u, 93441u), ~4294967295u, abs(1u)), -1571f <= arg_2) << (~vec4<u32>(1u, ~(~40824u), _wgslsmith_dot_vec3_u32(select(vec3<u32>(19717u, 0u, 4294967295u), vec3<u32>(397u, 1u, 1u), vec3<bool>(false, false, false)), abs(vec3<u32>(10002u, 0u, 34082u))), _wgslsmith_div_u32(0u, 666u)) % vec4<u32>(32u));
    return func_1(countOneBits(min(u_input.a, -firstTrailingBit(vec3<i32>(u_input.a.x, -36111i, var_0)))), arg_0, vec4<f32>(arg_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1126f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1359f + arg_2) * _wgslsmith_f_op_f32(-1432f * 643f))), arg_1, arg_1), min(u_input.a.zx, select(vec2<i32>(var_0, -26717i) << (vec2<u32>(var_3.x, var_3.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(~u_input.a.zy, select(vec2<i32>(0i, var_0), vec2<i32>(0i, 1i), vec2<bool>(false, false))), vec2<bool>(true, true))));
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    global1 = array<i32, 4>();
    let var_0 = arg_3.x;
    global1 = array<i32, 4>();
    var var_1 = select(~(~vec4<u32>(33383u, var_0, 95756u, 24643u) << (~vec4<u32>(arg_3.x, 0u, 12386u, var_0) % vec4<u32>(32u))), ~(~abs(vec4<u32>(1u, var_0, 4294967295u, var_0))), !vec4<bool>(-10675i <= ~arg_2.a, select(true, false, false) && any(vec2<bool>(arg_0, true)), 588f >= _wgslsmith_f_op_f32(-arg_1), arg_0));
    var_1 = firstTrailingBit(vec4<u32>(26922u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_3.x << (var_1.x % 32u)), select(vec2<u32>(var_1.x, var_0), _wgslsmith_clamp_vec2_u32(arg_3.xx, vec2<u32>(0u, 95535u), vec2<u32>(45103u, var_1.x)), vec2<bool>(arg_0, arg_0))), 6166u, countOneBits(59110u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -859f), -408f, all(vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_f32(f32(-1f) * -397f), _wgslsmith_f_op_f32(f32(-1f) * -277f), -1599f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1124f, 1317f, 2072f, -1351f), vec4<f32>(428f, -1573f, -1004f, 1005f), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2058f, 123f, 1613f, 697f))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(653f, -173f, 798f, -1075f), vec4<f32>(-273f, 424f, -338f, 238f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1193f, 638f, -1140f)))));
    let var_1 = vec4<u32>(1u, 1u, 1u, 1u);
    let var_2 = func_5(select(any(vec2<bool>(true, true)), true, true && !all(vec4<bool>(false, true, false, true))), var_0.x, func_4(func_1(u_input.a, global2[_wgslsmith_index_u32(0u, 16u)], var_0, vec2<i32>(-1i) * -vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 4u)], global1[_wgslsmith_index_u32(0u, 4u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(reverseBits(var_1))) * _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_f32(select(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 117f)), false))), countOneBits(var_1.wwz));
    var var_3 = var_1;
    var_3 = firstLeadingBit(vec4<u32>(26453u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(49478u, abs(var_3.x)), _wgslsmith_mult_u32(1u, 1u)), var_3.x, countOneBits((1u >> (var_1.x % 32u)) ^ reverseBits(9130u))));
    var var_4 = true;
    var var_5 = ~(1i | -func_5(all(vec2<bool>(false, true)), -1526f, var_2, ~vec3<u32>(18282u, 11499u, 68653u)).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - var_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_0.x)))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_0.x, 1542f))), _wgslsmith_f_op_f32(-516f + -544f), _wgslsmith_f_op_f32(-310f + -925f)))), 0i);
}

