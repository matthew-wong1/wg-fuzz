struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2526i);

var<private> global1: array<Struct_1, 24>;

var<private> global2: array<i32, 24> = array<i32, 24>(0i, -31507i, 2147483647i, -2270i, -11926i, 1i, 3177i, 913i, i32(-2147483648), 13617i, 0i, 1i, i32(-2147483648), -1i, 1i, -57959i, -39253i, 51282i, 1i, -1i, 0i, -5078i, i32(-2147483648), 74534i);

var<private> global3: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(704f, 342f, -354f), vec3<f32>(-261f, 153f, 956f));

var<private> global4: array<f32, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> bool {
    let var_0 = vec3<u32>(arg_1.x, min(_wgslsmith_div_u32(arg_1.x, 19303u), _wgslsmith_sub_u32(u_input.d, arg_1.x)) | _wgslsmith_sub_u32(56143u, firstTrailingBit(u_input.c)), max(reverseBits(1u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 5296u, 53309u), vec3<u32>(u_input.a, 4294967295u, 14787u)))) | firstTrailingBit(firstTrailingBit((arg_1.xzx ^ arg_1.zxy) | _wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.x, 4294967295u, 1u), arg_1.yzz)));
    global3 = array<vec3<f32>, 2>();
    global4 = array<f32, 10>();
    let var_1 = vec4<u32>(~u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(var_0.x), _wgslsmith_mult_u32(0u, 47305u), abs(0u)) & max(_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.x, 109381u, 33677u), var_0), ~vec3<u32>(4294967295u, u_input.d, u_input.c)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.xyy, var_0) ^ arg_1.xzy, _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 36962u, 1u), vec3<u32>(var_0.x, u_input.d, 49553u), var_0 ^ var_0), ~(var_0 << (vec3<u32>(var_0.x, 73984u, arg_1.x) % vec3<u32>(32u))))), 24259u ^ countOneBits(~(~var_0.x)), _wgslsmith_clamp_u32(0u, var_0.x << (~(~u_input.a) % 32u), countOneBits(~4294967295u)));
    global1 = array<Struct_1, 24>();
    return false;
}

fn func_2() -> bool {
    var var_0 = Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_3(global1[_wgslsmith_index_u32(u_input.c, 24u)], ~vec4<u32>(u_input.a, 4294967295u, u_input.a, 0u), global1[_wgslsmith_index_u32(max(u_input.d, 4294967295u), 24u)]), true, u_input.d <= 10958u), vec4<bool>(true, true, true, true)), -(~u_input.b.x));
    var var_1 = var_0.a.x;
    global1 = array<Struct_1, 24>();
    global3 = array<vec3<f32>, 2>();
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.b, u_input.b);
    return false;
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(!(!vec4<bool>(true, true, true, func_2())), -4752i);
    var var_1 = Struct_2(!(!(!vec4<bool>(false, true, false, var_0.a.x))), _wgslsmith_clamp_i32(~var_0.b, 1i << (~u_input.d % 32u), global2[_wgslsmith_index_u32(~1u, 24u)]) >> (~(~15100u) % 32u));
    let var_2 = Struct_2(var_0.a, 0i);
    return Struct_1(_wgslsmith_div_i32(~(arg_0.a << (1u % 32u)), abs(min(_wgslsmith_div_i32(18824i, global2[_wgslsmith_index_u32(82293u, 24u)]), _wgslsmith_clamp_i32(var_0.b, -20406i, global0.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 24>();
    let var_0 = Struct_1(global2[_wgslsmith_index_u32(~firstTrailingBit(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 4294967295u), vec2<u32>(0u, u_input.d)))), 24u)]);
    global0 = func_1(Struct_1(countOneBits(~global0.a)));
    var var_1 = Struct_2(!select(vec4<bool>(true, all(vec3<bool>(true, false, false)), false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false)), false), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 24u)], global0.a, min(16737i, 2147483647i), firstTrailingBit(u_input.b.x << (u_input.d % 32u))), select(_wgslsmith_add_vec4_i32(vec4<i32>(var_0.a, u_input.b.x, global0.a, u_input.b.x), vec4<i32>(u_input.b.x, global0.a, 1i, 76881i)) & (vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 24u)], var_0.a, global0.a, -19153i) << (vec4<u32>(u_input.a, 0u, 0u, 52815u) % vec4<u32>(32u))), (vec4<i32>(global0.a, -2147483647i, u_input.b.x, global0.a) | vec4<i32>(global0.a, 0i, var_0.a, 1i)) << (~vec4<u32>(u_input.a, 25451u, 35537u, u_input.c) % vec4<u32>(32u)), func_1(global1[_wgslsmith_index_u32(28610u, 24u)]).a > -1i)));
    let var_2 = false;
    global1 = array<Struct_1, 24>();
    global4 = array<f32, 10>();
    global0 = func_1(Struct_1(global2[_wgslsmith_index_u32(select(~(~u_input.c), 1u, true), 24u)]));
    var_1 = Struct_2(vec4<bool>(global0.a <= var_0.a, all(var_1.a), var_2 == true, !(false | var_2)), _wgslsmith_add_i32(-1572i, var_1.b));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(~1u, 22361u, u_input.c), ~vec3<u32>(0u, 0u, u_input.c)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a, _wgslsmith_div_u32(101363u, u_input.a), select(4294967295u, 10361u, var_2)), ~select(vec3<u32>(u_input.c, 39486u, u_input.c), vec3<u32>(u_input.a, 4294967295u, 10862u), true)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(692f, -273f)) + vec2<f32>(1f, 1f)))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global4[_wgslsmith_index_u32(~u_input.a, 10u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 10u)], -2268f)))), select(select(select(vec2<bool>(var_2, var_2), var_1.a.zz, vec2<bool>(var_2, false)), select(vec2<bool>(var_1.a.x, false), var_1.a.wz, var_1.a.yw), !var_1.a.x), select(vec2<bool>(false, var_1.a.x), var_1.a.zy, !vec2<bool>(var_2, true)), var_1.a.zw))), reverseBits(_wgslsmith_mult_vec3_i32(max(vec3<i32>(-30097i, global0.a, 2147483647i), vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x)) | (vec3<i32>(var_0.a, global0.a, global2[_wgslsmith_index_u32(0u, 24u)]) ^ vec3<i32>(-1i, var_1.b, 23594i)), vec3<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(12610u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 1u, u_input.d)), 24u)], 0i, _wgslsmith_mod_i32(-17515i, global0.a)))));
}

