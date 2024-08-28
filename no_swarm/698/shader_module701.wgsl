struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 10>;

var<private> global1: f32;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> u32 {
    let var_0 = Struct_4(Struct_2(Struct_1(~(~40408u), abs(vec3<i32>(2147483647i, 59043i, u_input.c)), vec3<bool>(u_input.c == u_input.c, 6082i >= u_input.e, any(vec3<bool>(false, true, false)))), -61392i, u_input.d), 1577f, !(u_input.b <= ~_wgslsmith_dot_vec4_u32(vec4<u32>(8209u, 16438u, 4294967295u, 30263u), vec4<u32>(48095u, 0u, 104424u, u_input.b))), Struct_1(_wgslsmith_mod_u32(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(4294967295u, u_input.b)), _wgslsmith_add_u32(0u, ~u_input.b)), -vec3<i32>(u_input.d.x, 1i, 15837i) << (min(global0[_wgslsmith_index_u32(59928u, 10u)], ~global0[_wgslsmith_index_u32(u_input.a.x, 10u)]) % vec3<u32>(32u)), vec3<bool>(true, !any(vec4<bool>(true, true, true, true)), true)));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(sign(var_0.b))) * 1565f);
    let var_1 = var_0;
    global0 = array<vec3<u32>, 10>();
    var var_2 = select(vec2<u32>(abs(~(var_0.a.a.a >> (16026u % 32u))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.a, u_input.a.x, u_input.b, 0u), ~vec4<u32>(0u, u_input.b, 4294967295u, var_1.d.a)), firstTrailingBit(vec4<u32>(1u, 4294967295u, 1u, 36884u)))), _wgslsmith_div_vec2_u32(reverseBits(u_input.a), ~firstLeadingBit(vec2<u32>(u_input.b, 1u))), var_0.d.c.xy);
    return 1u;
}

fn func_2(arg_0: i32, arg_1: f32) -> Struct_1 {
    var var_0 = max(max(0u, u_input.a.x) << (firstLeadingBit(~u_input.b & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), global0[_wgslsmith_index_u32(0u, 10u)])) % 32u), 1u);
    let var_1 = Struct_4(Struct_2(Struct_1(98581u, u_input.d, vec3<bool>(true, true, false)), -28695i, ~(~(u_input.d & u_input.d))), arg_1, true, Struct_1(~_wgslsmith_div_u32(func_3(), select(0u, u_input.a.x, false)), max(_wgslsmith_sub_vec3_i32(u_input.d, firstLeadingBit(vec3<i32>(-51667i, arg_0, arg_0))), vec3<i32>(41804i, firstTrailingBit(arg_0), arg_0)), vec3<bool>(_wgslsmith_f_op_f32(-arg_1) >= _wgslsmith_f_op_f32(trunc(929f)), true, false)));
    var var_2 = Struct_3(abs(_wgslsmith_clamp_vec2_i32(u_input.d.zz, vec2<i32>(-2147483647i, 0i), -vec2<i32>(u_input.e, 23212i))), var_1.a.a, _wgslsmith_sub_i32(arg_0, firstLeadingBit(select(arg_0, 0i, var_1.d.c.x))), true, vec4<f32>(-584f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(arg_1)))), var_1.b, _wgslsmith_f_op_f32(-142f + var_1.b)));
    var var_3 = var_2.e.x > 1f;
    var_3 = false;
    return var_2.b;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    let var_0 = arg_3.b;
    let var_1 = func_2(reverseBits(~(-10237i)), 936f);
    global0 = array<vec3<u32>, 10>();
    global1 = 1f;
    global0 = array<vec3<u32>, 10>();
    return Struct_2(func_2(_wgslsmith_dot_vec4_i32(arg_1, _wgslsmith_clamp_vec4_i32(~arg_1, arg_1, abs(vec4<i32>(4501i, var_1.b.x, u_input.d.x, var_0.b.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_3.e.x)) + arg_3.e.x), 361f, true))), var_1.b.x, -(~_wgslsmith_div_vec3_i32(vec3<i32>(4482i, -32540i, -1i), select(var_1.b, vec3<i32>(31433i, 25314i, 22148i), arg_3.b.c))));
}

fn func_4(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: vec3<f32>, arg_3: vec4<f32>) -> u32 {
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.b)));
    global1 = -652f;
    global0 = array<vec3<u32>, 10>();
    let var_0 = arg_0.d;
    var var_1 = Struct_2(Struct_1(arg_0.a.a.a >> (~(~arg_1.x) % 32u), var_0.b, !vec3<bool>(!var_0.c.x, true, any(vec2<bool>(arg_0.c, var_0.c.x)))), -_wgslsmith_dot_vec2_i32(~vec2<i32>(arg_0.d.b.x, -2147483647i), ~var_0.b.yx), vec3<i32>(u_input.d.x, reverseBits(~_wgslsmith_mod_i32(-68662i, -12031i)), 25946i));
    return ~(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global0[_wgslsmith_index_u32(arg_1.x, 10u)], vec3<u32>(4846u, var_1.a.a, 1u)), ~countOneBits(global0[_wgslsmith_index_u32(var_0.a, 10u)])) | 28512u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(u_input.b, _wgslsmith_clamp_u32(u_input.b, select(~u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), ~vec3<u32>(u_input.b, 0u, 17634u)), !(u_input.b >= 4294967295u)), ~(~1u)), func_4(Struct_4(func_1(true, vec4<i32>(u_input.c, u_input.c, -9808i, u_input.d.x), true, Struct_3(vec2<i32>(u_input.d.x, u_input.c), Struct_1(1u, vec3<i32>(2147483647i, -1i, 1i), vec3<bool>(true, true, false)), u_input.c, true, vec4<f32>(-920f, -2276f, 1000f, 1240f))), -403f, true, func_1(true, vec4<i32>(0i, u_input.e, -26608i, 2147483647i), false, Struct_3(u_input.d.yy, Struct_1(u_input.a.x, u_input.d, vec3<bool>(true, false, true)), 0i, false, vec4<f32>(-1495f, -1024f, 532f, -140f))).a), ~u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-324f, -207f, 458f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(329f, 1925f, 512f, -278f))))) ^ 4294967295u);
    let var_1 = vec4<i32>(u_input.d.x, 0i, ~u_input.c, u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

