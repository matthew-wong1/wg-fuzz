struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<bool>,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(3824i, 4696i, i32(-2147483648), 0i);

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<i32>(21908i, -40673i, -1i), true, vec4<bool>(true, false, true, true), i32(-2147483648), vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(20343i, -1i, 2147483647i), false, vec4<bool>(false, false, true, true), 46153i, vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(2147483647i, 1i, 4303i), true, vec4<bool>(true, false, false, true), 60948i, vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(1i, 1i, 0i), true, vec4<bool>(true, false, true, false), -13884i, vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(14124i, i32(-2147483648), -7778i), true, vec4<bool>(true, false, true, true), i32(-2147483648), vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(-35836i, -1i, -1i), true, vec4<bool>(true, true, true, false), 41102i, vec4<bool>(true, true, true, false)), Struct_1(vec3<i32>(2147483647i, -1i, -43023i), true, vec4<bool>(false, true, true, false), -4873i, vec4<bool>(true, false, false, false)), Struct_1(vec3<i32>(12241i, i32(-2147483648), -64429i), true, vec4<bool>(false, false, false, true), 0i, vec4<bool>(false, false, true, true)), Struct_1(vec3<i32>(43359i, 14227i, 19395i), true, vec4<bool>(true, true, false, false), 1347i, vec4<bool>(true, false, false, false)), Struct_1(vec3<i32>(-12089i, -12649i, -4847i), true, vec4<bool>(false, true, false, true), -36982i, vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(1i, 0i, 2147483647i), true, vec4<bool>(true, false, false, true), 42115i, vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(-50343i, 2147483647i, 6458i), true, vec4<bool>(false, true, true, false), 33279i, vec4<bool>(true, false, true, false)), Struct_1(vec3<i32>(-1i, 1i, 1i), true, vec4<bool>(false, false, false, true), 0i, vec4<bool>(true, false, false, false)), Struct_1(vec3<i32>(-1i, 21149i, -9251i), false, vec4<bool>(false, false, false, true), 2147483647i, vec4<bool>(false, true, true, false)), Struct_1(vec3<i32>(-66548i, 1363i, 30619i), true, vec4<bool>(true, false, true, true), 0i, vec4<bool>(false, true, true, true)), Struct_1(vec3<i32>(19788i, -1i, -60763i), false, vec4<bool>(false, true, true, false), 0i, vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(-4545i, 13407i, 21276i), true, vec4<bool>(true, true, false, false), 1i, vec4<bool>(true, false, false, true)), Struct_1(vec3<i32>(39128i, 25672i, 2807i), false, vec4<bool>(false, true, true, false), -1i, vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(1i, 1i, 2147483647i), true, vec4<bool>(true, true, false, true), 43092i, vec4<bool>(false, false, false, false)), Struct_1(vec3<i32>(-1i, 1i, -8609i), true, vec4<bool>(false, true, false, false), i32(-2147483648), vec4<bool>(false, true, false, true)), Struct_1(vec3<i32>(2147483647i, i32(-2147483648), -5671i), false, vec4<bool>(true, true, false, false), 35916i, vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(2147483647i, 1i, 2147483647i), true, vec4<bool>(true, true, true, false), -11320i, vec4<bool>(true, true, true, true)), Struct_1(vec3<i32>(0i, 0i, 18277i), false, vec4<bool>(true, true, true, true), 2147483647i, vec4<bool>(true, true, false, false)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(-arg_1.a, true, vec4<bool>(arg_1.e.x, true, all(vec4<bool>(true, arg_0.x, arg_1.e.x, arg_1.b || true)), !(!(!arg_1.e.x))), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(-1i, arg_1.d, arg_1.d, arg_1.d) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 32564u, 46350u, 4294967295u), vec4<u32>(4294967295u, u_input.b.x, u_input.a, u_input.a)) % vec4<u32>(32u))), min(-(vec4<i32>(global0.x, arg_1.d, 2013i, arg_1.d) >> (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x) % vec4<u32>(32u))), ~(vec4<i32>(2398i, global0.x, global0.x, arg_1.a.x) | vec4<i32>(arg_1.d, arg_1.d, -2147483647i, global0.x)))), select(vec4<bool>(all(vec3<bool>(false, false, arg_0.x)), false, any(select(vec4<bool>(true, arg_0.x, true, arg_0.x), arg_1.c, arg_0.x)), 1u == u_input.a), !select(vec4<bool>(arg_0.x, false, false, false), select(arg_1.c, arg_1.c, arg_0.x), !arg_0), arg_1.c.x));
    var var_1 = 1579f;
    let var_2 = ~_wgslsmith_div_u32(1u, ~max(~11263u, u_input.a ^ 2022u));
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    return !arg_0.ww;
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_2.e.x;
    var var_1 = ~abs(firstTrailingBit(~21578u));
    let var_2 = !any(!select(vec4<bool>(arg_1.x, false, false, false), arg_2.e, false)) | false;
    let var_3 = !func_2(!vec4<bool>(var_2, true, false, true), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(~(u_input.b.x ^ u_input.b.x), u_input.a), 23u)]);
    var var_4 = _wgslsmith_f_op_f32(104f * 469f);
    return ~abs(vec2<u32>(abs(91659u), ~u_input.b.x)) ^ vec2<u32>(u_input.a, 14711u);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>) -> bool {
    global1 = array<Struct_1, 23>();
    var var_0 = 402f;
    global0 = vec4<i32>(-(max(countOneBits(0i), global0.x >> (4294967295u % 32u)) << (1u % 32u)), -1i, arg_0.d, arg_0.d);
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - arg_1) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -445f)) - 369f));
    global0 = arg_2;
    return (any(arg_0.e) && arg_0.c.x) || true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec2_u32(max(abs(~u_input.b), firstTrailingBit(func_1(0i, vec3<bool>(true, true, false), global1[_wgslsmith_index_u32(u_input.b.x, 23u)]))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(14717u, u_input.a >> (4294967295u % 32u)))) | vec2<u32>(~_wgslsmith_div_u32(~36456u, abs(u_input.b.x)), 8674u);
    global0 = select(~(-_wgslsmith_add_vec4_i32(vec4<i32>(-1i, global0.x, 22992i, -83486i), ~vec4<i32>(global0.x, -39185i, global0.x, global0.x))), ~(~((vec4<i32>(global0.x, -1i, global0.x, 1i) << (vec4<u32>(4015u, u_input.a, var_0.x, 0u) % vec4<u32>(32u))) & -vec4<i32>(-42105i, global0.x, global0.x, 4710i))), !select(vec4<bool>(func_3(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], 741f, vec4<i32>(-1i, -1i, 51441i, 33166i)), true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)));
    global0 = vec4<i32>(1i, global0.x, 0i, max(global0.x, -max(~global0.x, global0.x)));
    let var_1 = abs(global0.x);
    var var_2 = true;
    var var_3 = reverseBits(~17040u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-279f, 836f, 715f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1513f), _wgslsmith_f_op_f32(sign(608f)), -1079f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(616f, 1063f, 486f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 779f, 816f))))));
}

