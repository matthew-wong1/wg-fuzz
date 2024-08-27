struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 3> = array<i32, 3>(-1i, 1i, -1i);

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), 24188i, 41923i, 2147483647i);

var<private> global2: Struct_2;

var<private> global3: Struct_1;

var<private> global4: vec4<u32>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2) -> vec4<i32> {
    var var_0 = Struct_2(arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-arg_0.b))) + vec2<f32>(365f, global2.b.x))), global2.a, global2.c);
    var var_1 = arg_0;
    let var_2 = 772i;
    var var_3 = Struct_3(!(!vec4<bool>(var_0.a.d, true, var_1.d.d, any(vec4<bool>(arg_0.a.d, true, var_1.d.b, var_0.a.d)))), arg_0, vec4<bool>(!any(vec2<bool>(true, global3.d)), false, var_0.a.d, _wgslsmith_f_op_f32(-1223f + _wgslsmith_f_op_f32(sign(arg_0.b.x))) < _wgslsmith_f_op_f32(exp2(var_1.b.x))));
    var var_4 = countOneBits(1i);
    return -_wgslsmith_div_vec4_i32(-vec4<i32>(_wgslsmith_dot_vec2_i32(var_3.b.a.a.xz, var_3.b.a.c), u_input.b.x, _wgslsmith_sub_i32(global2.a.c.x, 8859i), -var_0.d.c.x), _wgslsmith_mod_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(62775i, 56564i, global2.c.c.x, u_input.b.x), vec4<i32>(var_3.b.c.a.x, var_0.a.c.x, 8592i, 1i)), (vec4<i32>(arg_0.d.c.x, -64004i, global1.x, 26387i) << (vec4<u32>(55603u, global4.x, global4.x, 4294967295u) % vec4<u32>(32u))) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-7937i, 37926i, 0i, global1.x), vec4<i32>(1i, 4490i, u_input.a, 2147483647i), vec4<i32>(global2.c.a.x, 25525i, 57562i, -12835i))));
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    var var_0 = global2.a;
    global1 = ~firstLeadingBit(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, 24395i, u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(arg_1, 3u)], var_0.c.x, -2147483647i, -1i)) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_1, 0u, arg_1), vec4<u32>(1u, arg_1, global4.x, 2308u), vec4<u32>(22760u, 1u, 1u, 0u)) % vec4<u32>(32u)), func_3(Struct_2(Struct_1(vec3<i32>(1i, 2147483647i, global2.d.a.x), var_0.d, vec2<i32>(global1.x, -1i), true), global2.b, global2.a, global2.a))));
    let var_1 = _wgslsmith_dot_vec4_i32(vec4<i32>(-9104i, -3041i ^ countOneBits(_wgslsmith_dot_vec2_i32(global2.c.c, vec2<i32>(global3.a.x, global1.x))), 1i, abs(u_input.a)), abs(vec4<i32>(1i, global2.c.a.x, global1.x, ~(-u_input.a))));
    global0 = array<i32, 3>();
    let var_2 = global1.x;
    return Struct_1(var_0.a, true, select(vec2<i32>(-1i) * -vec2<i32>(-32634i, global3.a.x), vec2<i32>(u_input.a, -36988i), false), any(!(!vec2<bool>(false, var_0.b))));
}

fn func_1(arg_0: i32) -> u32 {
    global0 = array<i32, 3>();
    let var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x * -1435f))) - global2.b.x), 1u);
    var var_1 = u_input.b;
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(~_wgslsmith_sub_vec3_i32(global1.xyz & var_0.a, _wgslsmith_mult_vec3_i32(vec3<i32>(global3.c.x, u_input.a, -1i), global3.a)), vec3<i32>(global1.x, _wgslsmith_add_i32(-1i, -1i) | func_3(Struct_2(global2.a, global2.b, var_0, global2.a)).x, var_0.a.x)), var_0.d, ~global1.xy ^ -global1.xw, (global3.d && !func_2(global2.b.x, global4.x).d) && all(vec4<bool>(true, all(vec2<bool>(global3.b, var_0.d)), all(vec2<bool>(global3.d, true)), u_input.c <= global0[_wgslsmith_index_u32(global4.x, 3u)])));
    global0 = array<i32, 3>();
    return firstTrailingBit(min(~_wgslsmith_mult_u32(1u, abs(1u)), _wgslsmith_sub_u32(_wgslsmith_div_u32(global4.x, ~31331u), ~global4.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -reverseBits((_wgslsmith_mult_i32(global3.c.x, global0[_wgslsmith_index_u32(global4.x, 3u)]) ^ ~(-1i)) & -2147483647i);
    global1 = ~(~vec4<i32>(-_wgslsmith_mod_i32(-68171i, -25380i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(func_1(global2.a.c.x), 15159u >> (1u % 32u)), 3u)], _wgslsmith_mod_i32(50997i << (global4.x % 32u), abs(global2.d.a.x)), ~2147483647i));
    let var_1 = !all(!select(!vec4<bool>(global3.d, global2.d.d, global3.b, true), select(vec4<bool>(true, false, global3.d, global3.b), vec4<bool>(global3.b, false, global2.d.b, global3.b), vec4<bool>(global2.a.b, global3.d, true, false)), false));
    var var_2 = ~abs(global4.x);
    var var_3 = global2.b.x;
    var var_4 = func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-163f, global2.b.x), _wgslsmith_f_op_f32(step(global2.b.x, 681f)), any(vec3<bool>(false, var_1, true)))))))), 4294967295u);
    var_4 = Struct_1(vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(-917i), -global3.a.x), var_4.c.x, firstLeadingBit(0i | -global0[_wgslsmith_index_u32(17540u, 3u)])), _wgslsmith_f_op_f32(sign(global2.b.x)) < _wgslsmith_f_op_f32(sign(763f)), -reverseBits(func_2(_wgslsmith_f_op_f32(-global2.b.x), 34109u).c), true);
    global3 = func_2(_wgslsmith_f_op_f32(sign(global2.b.x)), ~7481u);
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-abs(~select(vec4<i32>(34743i, global2.d.a.x, 2147483647i, global0[_wgslsmith_index_u32(global4.x, 3u)]), vec4<i32>(global1.x, global0[_wgslsmith_index_u32(global4.x, 3u)], 0i, u_input.c), false)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(sign(global2.b.x))))), select(vec4<i32>(global0[_wgslsmith_index_u32(global4.x, 3u)], 0i, _wgslsmith_dot_vec2_i32(func_3(Struct_2(global2.d, global2.b, Struct_1(vec3<i32>(32805i, 895i, var_4.c.x), true, vec2<i32>(global3.a.x, 36738i), global3.b), global2.c)).zy, _wgslsmith_add_vec2_i32(global3.c, u_input.b.zz)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_4.a.x, -16527i, global2.a.a.x, global1.x), vec4<i32>(12665i, 6635i, global0[_wgslsmith_index_u32(28034u, 3u)], global2.a.c.x)) | func_2(global2.b.x, global4.x).c.x), countOneBits(reverseBits(~vec4<i32>(-12576i, u_input.b.x, -1i, global1.x))), any(vec3<bool>(true, true, true))));
}

