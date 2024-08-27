struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: array<f32, 27> = array<f32, 27>(-301f, -198f, 798f, -1707f, 213f, 725f, 742f, 924f, -162f, 1000f, 651f, 515f, 1000f, 515f, -743f, -1083f, -117f, 1401f, 1639f, 1259f, 820f, -1361f, -353f, 1000f, 379f, -1021f, 1000f);

var<private> global2: u32 = 0u;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = true;
    var var_1 = ~u_input.a;
    let var_2 = ~vec2<u32>(_wgslsmith_add_u32(0u, u_input.c.x) << (42395u % 32u), ~14547u) ^ u_input.c.wy;
    var var_3 = vec3<bool>(true, global0.x, false);
    var_3 = vec3<bool>(global0.x, true, (0i ^ u_input.a) == -12935i);
    return -455f;
}

fn func_3(arg_0: vec2<bool>) -> f32 {
    let var_0 = Struct_1(arg_0, ~u_input.c.yz, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 27u)]), global0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(491f, global1[_wgslsmith_index_u32(34119u, 27u)], false)) + global1[_wgslsmith_index_u32(4294967295u, 27u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 19967u, 59343u), u_input.c.xxz), 27u)]) + 1005f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -980f))), _wgslsmith_f_op_f32(-2104f - _wgslsmith_f_op_f32(func_1(u_input.c.x)))));
    let var_1 = var_0;
    var var_2 = min(_wgslsmith_sub_vec4_i32((vec4<i32>(u_input.a, u_input.a, 0i, 0i) & vec4<i32>(u_input.b.x, u_input.b.x, 23940i, -1i)) << ((u_input.c >> (vec4<u32>(15101u, 1u, u_input.c.x, u_input.c.x) % vec4<u32>(32u))) % vec4<u32>(32u)), select(vec4<i32>(-1i, 31796i, u_input.a, 1i), vec4<i32>(u_input.b.x, u_input.b.x, -1i, 37883i) | vec4<i32>(10175i, u_input.b.x, 1i, u_input.a), true)), firstTrailingBit(min(vec4<i32>(-46153i, u_input.b.x, u_input.a, 43679i) >> (u_input.c % vec4<u32>(32u)), vec4<i32>(u_input.b.x, 85673i, u_input.b.x, u_input.a)))) ^ firstLeadingBit(vec4<i32>(2147483647i, u_input.a, u_input.a, abs(_wgslsmith_dot_vec2_i32(u_input.b.yy, vec2<i32>(43077i, -11400i)))));
    var var_3 = any(select(vec3<bool>(global0.x, var_2.x == 1i, _wgslsmith_div_f32(-320f, var_0.c.x) > -448f), vec3<bool>(all(!var_0.a), !global0.x, var_1.a.x), vec3<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(global0.x, var_1.a.x, var_0.a.x), var_1.a.x)), global0.x, var_1.a.x)));
    var var_4 = var_0;
    return _wgslsmith_f_op_f32(-656f * global1[_wgslsmith_index_u32(~u_input.c.x, 27u)]);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_2.a, vec2<u32>(arg_2.b.x, _wgslsmith_dot_vec4_u32(max(firstLeadingBit(u_input.c), vec4<u32>(arg_1.b.x, arg_2.b.x, u_input.c.x, 95284u)), ~(~vec4<u32>(1u, arg_2.b.x, u_input.c.x, arg_1.b.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(arg_2.c, arg_1.c)))));
    global2 = ~countOneBits(min(_wgslsmith_dot_vec2_u32(vec2<u32>(30235u, u_input.c.x), arg_1.b) | ~var_0.b.x, 126628u));
    return Struct_1(arg_1.a, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.b.x, u_input.c.x, arg_1.b.x), reverseBits(vec3<u32>(var_0.b.x, arg_0.b.x, 1u))), ~_wgslsmith_sub_u32(u_input.c.x, 0u)) | vec2<u32>(arg_1.b.x, reverseBits(~u_input.c.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, true))), _wgslsmith_f_op_f32(arg_1.c.x - arg_2.c.x))) * -173f), arg_2.c.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(-492f, _wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(var_0.b.x, 27u)], var_0.c.x, var_0.a.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -189f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(u_input.c.www);
    let var_1 = func_2(Struct_1(!select(select(vec2<bool>(true, false), vec2<bool>(false, global0.x), vec2<bool>(true, global0.x)), !vec2<bool>(global0.x, true), false), firstLeadingBit(~(~var_0.yz)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(973f + -221f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 27u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(29698u, 27u)] - global1[_wgslsmith_index_u32(var_0.x, 27u)]), -1599f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(221f, global1[_wgslsmith_index_u32(30529u, 27u)], -807f, -411f), vec4<f32>(global1[_wgslsmith_index_u32(var_0.x, 27u)], -1911f, global1[_wgslsmith_index_u32(50923u, 27u)], 746f), vec4<bool>(global0.x, global0.x, false, false)))))), Struct_1(!select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(true, global0.x), vec2<bool>(false, true), vec2<bool>(false, global0.x)), false), var_0.xx, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(func_1(1u)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(var_0.x, 27u)] - -112f), _wgslsmith_f_op_f32(func_1(var_0.x)), _wgslsmith_f_op_f32(-1839f * -1053f))))), Struct_1(!select(vec2<bool>(false, false), vec2<bool>(true, false), !vec2<bool>(global0.x, true)), u_input.c.yy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2391f, 465f, -179f, global1[_wgslsmith_index_u32(4294967295u, 27u)]) - vec4<f32>(-361f, global1[_wgslsmith_index_u32(1u, 27u)], global1[_wgslsmith_index_u32(u_input.c.x, 27u)], -508f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 27u)], 523f, global1[_wgslsmith_index_u32(u_input.c.x, 27u)], global1[_wgslsmith_index_u32(var_0.x, 27u)]) + vec4<f32>(1262f, global1[_wgslsmith_index_u32(var_0.x, 27u)], global1[_wgslsmith_index_u32(u_input.c.x, 27u)], global1[_wgslsmith_index_u32(0u, 27u)]))))));
    global1 = array<f32, 27>();
    var var_2 = firstLeadingBit(~(_wgslsmith_mult_u32(~0u, var_0.x >> (var_0.x % 32u)) << ((_wgslsmith_clamp_u32(u_input.c.x, 1u, 1u) & _wgslsmith_mod_u32(19938u, 44763u)) % 32u)));
    let var_3 = _wgslsmith_dot_vec2_i32(u_input.b.yy, _wgslsmith_mult_vec2_i32(~(~u_input.b.yz) << (u_input.c.ww % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32((vec2<i32>(u_input.a, -32570i) >> (var_0.zx % vec2<u32>(32u))) << (u_input.c.wx % vec2<u32>(32u)), select(u_input.b.yx, vec2<i32>(u_input.b.x, u_input.b.x), false) << (~vec2<u32>(46843u, 0u) % vec2<u32>(32u)))));
    global1 = array<f32, 27>();
    var var_4 = vec4<u32>(min(~abs(reverseBits(1u)), var_1.b.x), ~abs(4294967295u), _wgslsmith_mod_u32(~(countOneBits(u_input.c.x) & ~var_1.b.x), var_1.b.x), _wgslsmith_mod_u32(countOneBits(~reverseBits(55476u)), ~(~max(var_0.x, 46417u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.c) - var_1.c), vec4<f32>(global1[_wgslsmith_index_u32(~19599u, 27u)], 360f, global1[_wgslsmith_index_u32(~var_1.b.x << (26046u % 32u), 27u)], _wgslsmith_f_op_f32(func_3(var_1.a))), ~(~u_input.a) >= -27563i)), global1[_wgslsmith_index_u32(1u & var_0.x, 27u)]);
}

