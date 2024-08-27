struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    return !vec2<bool>(!(!any(vec4<bool>(false, true, false, true))), true);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    var var_0 = !func_3(arg_1.a.x);
    var_0 = vec2<bool>(func_3(-2147483647i).x, true);
    var var_1 = Struct_1(~u_input.c.x, _wgslsmith_f_op_f32(ceil(-570f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(max(max(2147483647i, -1i), -arg_0), -20242i), firstLeadingBit(-2147483647i), 1i) & arg_2.a.zxx;
    var_1 = global0[_wgslsmith_index_u32(~0u, 13u)];
    return 58352i >> (1u % 32u);
}

fn func_1(arg_0: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1053f, 1211f) + vec2<f32>(970f, -908f))))));
    let var_1 = ~86228u >= countOneBits(~_wgslsmith_mod_u32(~u_input.b.x, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)));
    let var_2 = u_input.c.x;
    var var_3 = ~countOneBits(-(~func_2(0i, Struct_2(vec4<i32>(-75234i, arg_0, u_input.a.x, -1i)), Struct_2(vec4<i32>(u_input.a.x, 16284i, u_input.a.x, arg_0)), Struct_2(vec4<i32>(48865i, -62704i, 0i, 45766i)))));
    let var_4 = vec3<i32>(reverseBits(max(min(u_input.a.x, 0i), arg_0)), arg_0, firstTrailingBit(-(arg_0 << (1u % 32u))));
    return 14489u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~(~func_1(-32566i)) << (~u_input.b.x % 32u), 13u)];
    let var_1 = u_input.b.x;
    var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.c.x, 0u << (var_1 % 32u)), 1u, var_0.a, var_1), ~vec4<u32>(min(var_1, var_1), 1u, abs(81691u), 11088u) >> (((~vec4<u32>(4294967295u, var_1, u_input.c.x, var_1) >> (vec4<u32>(var_0.a, var_0.a, u_input.c.x, var_0.a) % vec4<u32>(32u))) & vec4<u32>(0u, var_0.a >> (17068u % 32u), var_0.a, var_0.a << (var_1 % 32u))) % vec4<u32>(32u))), 13u)];
    var var_2 = global0[_wgslsmith_index_u32(31637u, 13u)];
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 0u, _wgslsmith_sub_u32(var_1, u_input.c.x), ~(~var_0.a >> (~19177u % 32u))), ~vec4<u32>(_wgslsmith_div_u32(var_1, 4294967295u), reverseBits(var_1), var_0.a, _wgslsmith_mod_u32(76459u, select(47981u, 1817u, false))));
    let var_4 = reverseBits(~var_3.yzx << (vec3<u32>(1u, ~(~u_input.c.x), 19082u) % vec3<u32>(32u)));
    var var_5 = !select(func_3(_wgslsmith_div_i32(1i, select(21620i, 32267i, false))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), false), true), !((var_0.a >> (38725u % 32u)) >= _wgslsmith_mod_u32(var_0.a, 97649u)));
    let var_6 = Struct_2(select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1434i, 1i, 1i, 0i), -vec4<i32>(-12000i, u_input.a.x, 85554i, u_input.a.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -40729i, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 26568i))) ^ -select(vec4<i32>(u_input.a.x, 2147483647i, 2147483647i, 0i), vec4<i32>(-57771i, -7950i, -18289i, -2147483647i), var_5.x), select(_wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -1i), vec4<i32>(-14502i, u_input.a.x, 7972i, u_input.a.x) << (vec4<u32>(4294967295u, var_3.x, 0u, var_0.a) % vec4<u32>(32u))), select(vec4<i32>(1i, -1i, u_input.a.x, u_input.a.x) << (vec4<u32>(4294967295u, var_4.x, var_1, 16151u) % vec4<u32>(32u)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), vec4<bool>(false, false, false, true)), vec4<bool>(!var_5.x, false, false, all(vec2<bool>(var_5.x, true)))), vec4<bool>(var_5.x, !(false & var_5.x), any(!vec4<bool>(false, var_5.x, true, false)), true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_f32(-var_0.b), ~var_6.a.xxy);
}

