struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-1i, -1793i, 1i, -17490i), vec4<i32>(1i, i32(-2147483648), -60012i, -54110i), vec4<i32>(1i, i32(-2147483648), 2147483647i, 0i));

var<private> global1: Struct_5 = Struct_5(true, vec3<f32>(-498f, -735f, 1235f));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_2) -> vec4<i32> {
    global0 = array<vec4<i32>, 3>();
    global0 = array<vec4<i32>, 3>();
    let var_0 = Struct_5(!all(vec3<bool>(!global1.a, true, all(vec2<bool>(global1.a, true)))), vec3<f32>(_wgslsmith_f_op_f32(global1.b.x + -1774f), -1000f, arg_1.b));
    let var_1 = select(select(vec2<bool>(!var_0.a, !(!var_0.a)), vec2<bool>(global1.a, true), select(select(select(vec2<bool>(true, true), vec2<bool>(global1.a, true), vec2<bool>(var_0.a, false)), !vec2<bool>(global1.a, global1.a), select(vec2<bool>(false, var_0.a), vec2<bool>(false, global1.a), global1.a)), !(!vec2<bool>(var_0.a, true)), !(!var_0.a))), select(!(!(!vec2<bool>(true, var_0.a))), vec2<bool>(firstTrailingBit(arg_0) >= _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, arg_0), vec2<u32>(17194u, 0u)), !(var_0.a & var_0.a)), !global1.a), true);
    global0 = array<vec4<i32>, 3>();
    return ~(~(~vec4<i32>(-2147483647i, -4415i, ~1i, _wgslsmith_add_i32(1i, u_input.d.x))));
}

fn func_2() -> Struct_4 {
    var var_0 = u_input.b.x;
    var_0 = 4294967295u;
    let var_1 = _wgslsmith_add_vec4_u32(~vec4<u32>(reverseBits(4294967295u), 34157u, _wgslsmith_dot_vec3_u32(u_input.b.xww, u_input.b.xyy | vec3<u32>(u_input.b.x, 31774u, 27853u)), ~u_input.b.x), vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x));
    let var_2 = Struct_4(-_wgslsmith_clamp_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), ~vec3<i32>(u_input.d.x, u_input.d.x, -1i)) ^ -((vec3<i32>(u_input.c, u_input.a.x, u_input.c) << (vec3<u32>(u_input.b.x, var_1.x, var_1.x) % vec3<u32>(32u))) << (vec3<u32>(u_input.b.x, u_input.b.x, 0u) % vec3<u32>(32u))));
    var var_3 = _wgslsmith_sub_vec4_i32(reverseBits(abs(global0[_wgslsmith_index_u32(u_input.b.x, 3u)])), _wgslsmith_add_vec4_i32(~func_3(4294967295u, Struct_2(vec4<f32>(global1.b.x, global1.b.x, 742f, global1.b.x), global1.b.x)), _wgslsmith_mult_vec4_i32(~(global0[_wgslsmith_index_u32(63507u, 3u)] & vec4<i32>(u_input.d.x, var_2.a.x, -2147483647i, u_input.a.x)), vec4<i32>(var_2.a.x, 0i, -2147483647i, u_input.c) << (u_input.b % vec4<u32>(32u)))));
    return Struct_4(vec3<i32>(func_3(~1u, Struct_2(vec4<f32>(global1.b.x, 808f, -583f, 897f), -1012f)).x, -var_3.x, -(~(-2147483647i))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_4, arg_3: vec4<f32>) -> vec3<i32> {
    let var_0 = Struct_5(global1.a, arg_3.zzz);
    var var_1 = func_2();
    var_1 = arg_2;
    let var_2 = all(!vec4<bool>(arg_0.x, any(!vec4<bool>(false, arg_0.x, arg_0.x, false)), true, any(vec4<bool>(false, true, arg_0.x, false))));
    var var_3 = countOneBits(~39557i);
    return ~((vec3<i32>(~u_input.d.x, _wgslsmith_div_i32(14986i, 1i), -23432i) >> (_wgslsmith_mult_vec3_u32(~u_input.b.www, u_input.b.zzy | vec3<u32>(4294967295u, u_input.b.x, 0u)) % vec3<u32>(32u))) << (vec3<u32>(1u, 1u, u_input.b.x) % vec3<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 3>();
    var var_0 = Struct_4(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(_wgslsmith_sub_i32(27614i, 1i), _wgslsmith_dot_vec4_i32(vec4<i32>(15607i, -45840i, u_input.c, u_input.a.x), global0[_wgslsmith_index_u32(0u, 3u)]), _wgslsmith_mod_i32(u_input.d.x, u_input.c))) | func_1(!select(vec3<bool>(true, global1.a, false), vec3<bool>(false, global1.a, global1.a), global1.a), global1.b.yz, Struct_4(firstTrailingBit(u_input.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-401f, global1.b.x, -349f, global1.b.x) * vec4<f32>(-937f, global1.b.x, -974f, -877f))));
    let var_1 = u_input.b;
    var_0 = func_2();
    var var_2 = reverseBits(select(select(vec4<u32>(var_1.x, 12695u, 18297u, u_input.b.x), ~(u_input.b | var_1), vec4<bool>(global1.b.x < global1.b.x, global1.a, true, global1.a)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.x, var_1.x, u_input.b.x, 4294967295u) >> (var_1 % vec4<u32>(32u)), ~u_input.b) ^ ~abs(vec4<u32>(19979u, u_input.b.x, 1u, u_input.b.x)), any(select(vec4<bool>(true, false, global1.a, global1.a), vec4<bool>(true, true, true, false), vec4<bool>(false, false, global1.a, true)))));
    let var_3 = Struct_1(global0[_wgslsmith_index_u32(44315u & ~(~var_1.x), 3u)], _wgslsmith_mult_u32(0u, select(0u, 21145u | ~var_1.x, !(u_input.d.x < var_0.a.x))), _wgslsmith_mult_u32(firstTrailingBit(~_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, var_1.x, 43211u, 0u))), reverseBits(min(1u, _wgslsmith_sub_u32(4294967295u, var_2.x)))), global1.b.x);
    var var_4 = var_1.zz;
    global0 = array<vec4<i32>, 3>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b.x, 0u, ~var_4.x), _wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global1.b.x, -274f, 1240f), global1.b)), _wgslsmith_div_vec3_f32(global1.b, vec3<f32>(190f, -205f, -817f))))))), global1.b.xz, ~(reverseBits(vec2<i32>(-1i, u_input.a.x)) ^ _wgslsmith_clamp_vec2_i32(var_0.a.yy, ~vec2<i32>(0i, u_input.a.x), abs(vec2<i32>(var_3.a.x, 1i)))));
}

