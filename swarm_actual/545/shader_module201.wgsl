struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9> = array<bool, 9>(true, false, false, false, false, false, true, true, true);

var<private> global1: vec3<bool> = vec3<bool>(true, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> bool {
    global0 = array<bool, 9>();
    global0 = array<bool, 9>();
    var var_0 = Struct_2(true, -559f);
    global0 = array<bool, 9>();
    let var_1 = vec3<bool>(false, false, global0[_wgslsmith_index_u32(62477u, 9u)]);
    return abs(1u) < (~1u ^ ~u_input.a);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<bool>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_2 {
    return arg_3;
}

fn func_1() -> Struct_1 {
    let var_0 = func_3(max(max(abs(vec3<u32>(27753u, u_input.a, u_input.a)), vec3<u32>(23710u, 0u, u_input.a) ^ vec3<u32>(u_input.a, 0u, 6795u)) ^ ~vec3<u32>(u_input.a, u_input.a, 4294967295u), _wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, u_input.a, 13309u), vec3<u32>(0u, u_input.a, 0u)) << (select(max(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(20166u, u_input.a, 0u)), vec3<u32>(21581u, u_input.a, u_input.a) >> (vec3<u32>(u_input.a, 13458u, u_input.a) % vec3<u32>(32u)), global0[_wgslsmith_index_u32(~83704u, 9u)]) % vec3<u32>(32u))), select(select(!select(vec3<bool>(false, false, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)], global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<bool>(false, false, false)), !vec3<bool>(global1.x, false, true), func_2()), vec3<bool>(true, true, true), !any(vec3<bool>(false, global1.x, true))), reverseBits(vec3<i32>(~(~42696i), 2147483647i, ~(~13137i))), Struct_2(true, 1047f));
    var var_1 = func_3(~(~(~(vec3<u32>(u_input.a, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a)))), select(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 9u)] && global0[_wgslsmith_index_u32(u_input.a, 9u)], any(vec3<bool>(true, false, true)), global1.x), !vec3<bool>(global1.x, true, true), any(select(vec4<bool>(false, true, global0[_wgslsmith_index_u32(u_input.a, 9u)], var_0.a), select(vec4<bool>(true, true, var_0.a, global0[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(u_input.a, 9u)]), true), vec4<bool>(true, var_0.a, true, false)))), _wgslsmith_sub_vec3_i32(-(firstTrailingBit(vec3<i32>(-11520i, 0i, -41733i)) & vec3<i32>(-1i, -1i, -17549i)), ~vec3<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, -33003i), vec3<i32>(-2147483647i, 8063i, -1i)), -2147483647i)), var_0).b;
    var var_2 = 153f;
    global0 = array<bool, 9>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(414f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(583f)), 618f)), _wgslsmith_f_op_f32(-2481f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(102f + var_0.b)))))));
    return Struct_1(vec4<f32>(-392f, _wgslsmith_f_op_f32(-312f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -700f)))), var_0.b, _wgslsmith_f_op_f32(step(var_0.b, 627f))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = countOneBits(abs(-_wgslsmith_div_vec3_i32(vec3<i32>(-12387i, 8230i, -13523i), firstLeadingBit(vec3<i32>(1426i, -40025i, 1i)))));
    global0 = array<bool, 9>();
    var_0 = func_1();
    let var_2 = Struct_3(Struct_1(vec4<f32>(var_0.a.x, -643f, -1330f, _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(step(-1152f, var_0.a.x)), true)))), _wgslsmith_f_op_f32(sign(var_0.a.x)), min(_wgslsmith_add_vec2_i32(-vec2<i32>(66499i, 2147483647i), vec2<i32>(-1i, var_1.x)) ^ (reverseBits(var_1.yz) ^ vec2<i32>(-1i, -2147483647i)), _wgslsmith_clamp_vec2_i32(select(var_1.xy, vec2<i32>(15879i, 0i), vec2<bool>(global1.x, true)) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<i32>(min(var_1.x, var_1.x), countOneBits(var_1.x)), _wgslsmith_add_vec2_i32(var_1.xz & var_1.xz, abs(vec2<i32>(1i, var_1.x))))));
    let var_3 = vec4<bool>(any(!(!select(vec3<bool>(true, true, global0[_wgslsmith_index_u32(u_input.a, 9u)]), vec3<bool>(true, global1.x, false), false))), global1.x, false, 0u <= firstTrailingBit(~2067u));
    var_0 = Struct_1(vec4<f32>(-1112f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.b), var_0.a.x)))), var_0.a.x, 1371f));
    global0 = array<bool, 9>();
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_2.a.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~vec2<u32>(u_input.a, 1u), vec2<u32>(1u, u_input.a)), vec2<u32>(4294967295u | u_input.a, 22827u)), vec2<u32>(~(~(u_input.a >> (11699u % 32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, max(u_input.a, 1u)), ~(~vec2<u32>(u_input.a, 7725u)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a & (u_input.a ^ u_input.a), firstTrailingBit(u_input.a << (u_input.a % 32u)), select(firstLeadingBit(u_input.a), _wgslsmith_sub_u32(1u, u_input.a), u_input.a == u_input.a)), ~(~countOneBits(vec3<u32>(1u, 66939u, 4317u)))));
}

