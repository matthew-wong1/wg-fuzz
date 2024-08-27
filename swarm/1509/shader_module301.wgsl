struct Struct_1 {
    a: vec4<f32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(vec4<f32>(-1000f, 1242f, 1998f, 1000f), vec2<u32>(18817u, 1u)), Struct_1(vec4<f32>(997f, 1000f, 335f, 1229f), vec2<u32>(14878u, 84980u)), Struct_1(vec4<f32>(955f, 391f, 248f, 1000f), vec2<u32>(4294967295u, 43932u)), Struct_1(vec4<f32>(-400f, 213f, 1737f, -180f), vec2<u32>(0u, 67536u)), Struct_1(vec4<f32>(-968f, 1489f, -2301f, 1688f), vec2<u32>(49085u, 0u)), Struct_1(vec4<f32>(566f, -1000f, 441f, -1498f), vec2<u32>(0u, 37195u)));

var<private> global1: array<f32, 16> = array<f32, 16>(-1464f, 195f, 1224f, -215f, 182f, -1457f, 373f, 1343f, -1753f, -1583f, 1000f, 1000f, 550f, -766f, 540f, 339f);

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<vec4<f32>, 19>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec4<f32>(328f, 1000f, -1759f, -365f), vec2<u32>(4294967295u, 1u)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: u32) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(arg_1, 10u)];
    let var_1 = true;
    let var_2 = var_0.a;
    let var_3 = _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(_wgslsmith_sub_i32(-arg_0, -13935i), -2147483647i, arg_0 | reverseBits(u_input.b)), u_input.b);
    let var_4 = global2[_wgslsmith_index_u32(~arg_2, 10u)];
    return arg_2;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1) -> vec2<i32> {
    global2 = array<Struct_2, 10>();
    global4 = Struct_2(Struct_1(global4.a.a, vec2<u32>(_wgslsmith_add_u32(countOneBits(arg_0.a.b.x), arg_2.b.x), _wgslsmith_div_u32(arg_2.b.x, arg_2.b.x) >> (arg_2.b.x % 32u))));
    global1 = array<f32, 16>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-525f, 1000f)), 447f)) * global1[_wgslsmith_index_u32(countOneBits(~(arg_0.a.b.x >> (~arg_2.b.x % 32u))), 16u)]);
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_0.a.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global4.a.a.x), _wgslsmith_f_op_f32(-232f - -474f), true))), global1[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x))));
    return vec2<i32>(u_input.b, min(u_input.a, -(abs(-2147483647i) ^ _wgslsmith_div_i32(3238i, u_input.b))));
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 6>();
    global1 = array<f32, 16>();
    var var_0 = func_4(global2[_wgslsmith_index_u32(0u, 10u)], _wgslsmith_div_vec3_u32(vec3<u32>(global4.a.b.x >> (60216u % 32u), func_3(u_input.a, 1237u, global4.a.b.x), reverseBits(4294967295u)), reverseBits(abs(vec3<u32>(global4.a.b.x, 21732u, 4624u)))) & ~(~(~vec3<u32>(37744u, global4.a.b.x, 60451u))), global0[_wgslsmith_index_u32(0u, 6u)]);
    global4 = Struct_2(global4.a);
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~(~(~_wgslsmith_add_u32(global4.a.b.x, 18323u)))), 10u)];
    return global2[_wgslsmith_index_u32(8360u, 10u)];
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> i32 {
    var var_0 = func_2();
    global0 = array<Struct_1, 6>();
    return _wgslsmith_add_i32(~u_input.b, -2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.a.a.xy * _wgslsmith_f_op_vec2_f32(-vec2<f32>(745f, _wgslsmith_f_op_f32(trunc(global4.a.a.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(728f, 1947f) - global4.a.a.xz) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1132f, 311f))))))));
    var var_1 = (~min(vec2<i32>(19757i, -41263i), vec2<i32>(u_input.a, u_input.b)) & _wgslsmith_mult_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(-65756i, 2147483647i), vec2<i32>(u_input.b, u_input.a)), ~vec2<i32>(u_input.a, 0i))) & ~(~max(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(38971i, 1i)), select(vec2<i32>(u_input.b, -7733i), vec2<i32>(-16540i, u_input.a), vec2<bool>(false, true))));
    var var_2 = func_1(global2[_wgslsmith_index_u32(~1u, 10u)], vec2<bool>(!all(vec2<bool>(true, false)), true)) | func_1(Struct_2(Struct_1(vec4<f32>(-789f, 797f, global1[_wgslsmith_index_u32(0u, 16u)], global1[_wgslsmith_index_u32(global4.a.b.x, 16u)]), global4.a.b ^ global4.a.b)), select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(true, false, true)), true), vec2<bool>(true, true)));
    let var_3 = var_1.x;
    var_2 = reverseBits(abs(u_input.b)) >> (_wgslsmith_dot_vec3_u32((~vec3<u32>(global4.a.b.x, global4.a.b.x, global4.a.b.x) | min(vec3<u32>(27855u, 1u, 0u), vec3<u32>(4294967295u, 1u, 1u))) ^ _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(55652u, global4.a.b.x, global4.a.b.x)), max(max(vec3<u32>(global4.a.b.x, global4.a.b.x, global4.a.b.x), vec3<u32>(global4.a.b.x, 10096u, 49958u)) >> (vec3<u32>(67427u, 4294967295u, global4.a.b.x) % vec3<u32>(32u)), vec3<u32>(~4294967295u, ~66107u, global4.a.b.x << (4294967295u % 32u)))) % 32u);
    let var_4 = func_2().a;
    var var_5 = global2[_wgslsmith_index_u32(~global4.a.b.x, 10u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1159f)))));
}

