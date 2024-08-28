struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec4<i32>, 31>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<i32> {
    global0 = vec2<i32>(1i, _wgslsmith_mult_i32(i32(-1i) * -u_input.b, global0.x)) & max(vec2<i32>(-u_input.a, max(15428i, i32(-1i) * -25170i)), min(abs(vec2<i32>(u_input.a, 1i) | vec2<i32>(-2147483647i, -34483i)), vec2<i32>(firstLeadingBit(-44962i), u_input.a)));
    global0 = vec2<i32>(~(~(-firstLeadingBit(u_input.a))), firstTrailingBit(~(~u_input.a)));
    global1 = array<vec4<i32>, 31>();
    let var_0 = 1i;
    var var_1 = Struct_1(!(!vec4<bool>(!arg_0, any(vec2<bool>(arg_0, arg_0)), true, select(true, false, true))));
    return global1[_wgslsmith_index_u32(~8109u, 31u)];
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec2<i32> {
    return abs(countOneBits(func_3(true, u_input.b == firstTrailingBit(u_input.a)).wx));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(vec4<bool>(true, true, false, !any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    global0 = func_4(~(~u_input.c) ^ 36438u, var_0, ~(~vec3<u32>(~u_input.c, 123014u, u_input.c)), select(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -26946i, global0.x, -1017i), vec4<i32>(u_input.a, 17382i, 125i, u_input.a)), u_input.b, u_input.b) & ~_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(u_input.c, 31u)], global1[_wgslsmith_index_u32(50728u, 31u)]), func_3(var_0.a.x, var_0.a.x), var_0.a));
    global1 = array<vec4<i32>, 31>();
    let var_1 = ~vec2<u32>(~_wgslsmith_sub_u32(u_input.c, ~4294967295u), ~15203u);
    global0 = countOneBits((select(select(vec2<i32>(u_input.a, 1i), vec2<i32>(global0.x, global0.x), var_0.a.x), vec2<i32>(global0.x, -621i), var_0.a.x) | func_4(firstLeadingBit(0u), Struct_1(vec4<bool>(true, false, true, var_0.a.x)), ~vec3<u32>(4294967295u, u_input.c, 0u), ~global1[_wgslsmith_index_u32(var_1.x, 31u)])) & select(vec2<i32>(-4861i, -18862i ^ u_input.a), -vec2<i32>(-37744i, 31021i) ^ vec2<i32>(-12389i, u_input.a), any(var_0.a.ywx)));
    return var_0;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> Struct_1 {
    let var_0 = func_2();
    global1 = array<vec4<i32>, 31>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1074f - -540f))), _wgslsmith_f_op_f32(f32(-1f) * -302f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1007f)), _wgslsmith_f_op_f32(747f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -819f), -211f, arg_1.a.x))))));
    global1 = array<vec4<i32>, 31>();
    var var_2 = arg_1;
    return var_0;
}

fn func_1() -> vec2<i32> {
    let var_0 = func_5(~u_input.c, func_2(), abs(vec4<i32>(-1i, -1i, -23444i, u_input.a)));
    return -vec2<i32>(u_input.a, ~countOneBits(-1i) & u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(~_wgslsmith_div_vec2_i32(firstTrailingBit(vec2<i32>(44005i, global0.x)), ~vec2<i32>(u_input.a, global0.x)), -func_1()), firstTrailingBit(~func_4(u_input.c, Struct_1(vec4<bool>(true, false, false, true)), vec3<u32>(u_input.c, u_input.c, 4294967295u), vec4<i32>(u_input.b, -22728i, 1i, global0.x))) ^ func_1(), firstLeadingBit(vec2<i32>(_wgslsmith_div_i32(u_input.a, -23225i), global0.x)) ^ _wgslsmith_sub_vec2_i32((vec2<i32>(global0.x, global0.x) ^ vec2<i32>(-38056i, global0.x)) | func_3(true, false).zx, firstTrailingBit(vec2<i32>(5803i, -36530i)) & reverseBits(vec2<i32>(u_input.a, u_input.b))));
    global0 = _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~countOneBits(vec2<i32>(global0.x, 3233i)), -select(max(vec2<i32>(-1i, -4539i), vec2<i32>(global0.x, u_input.b)), ~vec2<i32>(-1i, global0.x), true)), -select(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 35983i), ~vec2<i32>(global0.x, 1i)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(global0.x, u_input.a)), u_input.a), func_5(~u_input.c, func_2(), vec4<i32>(0i, 2147483647i, -1637i, global0.x)).a.zy));
    let var_0 = Struct_1(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)), true, true), _wgslsmith_add_u32(u_input.c, u_input.c) == u_input.c));
    let var_1 = Struct_1(vec4<bool>(reverseBits(u_input.c) <= firstLeadingBit(abs(u_input.c)), !(true || any(var_0.a)), -25420i <= func_1().x, func_5(~u_input.c, Struct_1(var_0.a), ~vec4<i32>(18622i, global0.x, -55015i, 2147483647i)).a.x));
    global0 = -vec2<i32>(-func_3(var_0.a.x, false).x ^ 0i, firstTrailingBit(_wgslsmith_sub_i32(firstTrailingBit(global0.x), u_input.b)));
    let x = u_input.a;
    s_output = StorageBuffer(1u, vec3<u32>(u_input.c, u_input.c, ~select(u_input.c, ~u_input.c, false)), ~(-2147483647i), -(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -12266i, 2147483647i), vec3<i32>(u_input.a, -8799i, global0.x)), reverseBits(vec3<i32>(33485i, -25405i, -44753i)))), -450f);
}

