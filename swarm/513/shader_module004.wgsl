struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<i32>,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: array<Struct_2, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 13>();
    global1 = array<Struct_2, 13>();
    let var_0 = firstTrailingBit(_wgslsmith_sub_u32(1u, 1u)) | u_input.b;
    var var_1 = !select(!vec4<bool>(false, true, all(vec3<bool>(global0.x, true, global0.x)), true), select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, false, false, false)), !select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(global0.x, true, global0.x, false)), select(true, any(vec2<bool>(false, global0.x)), false)), select(vec4<bool>(global0.x, any(vec2<bool>(true, true)), !global0.x, any(vec4<bool>(false, true, global0.x, global0.x))), vec4<bool>(any(vec3<bool>(false, global0.x, false)), true, !global0.x, any(vec4<bool>(global0.x, global0.x, true, global0.x))), !vec4<bool>(global0.x, global0.x, global0.x, false)));
    let var_2 = 941f;
    return _wgslsmith_mod_i32(u_input.a, u_input.a);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: Struct_1) -> vec4<i32> {
    return vec4<i32>(~_wgslsmith_add_i32(countOneBits(-arg_2.a.x), -arg_2.a.x ^ _wgslsmith_mult_i32(10168i, arg_2.a.x)), -26242i, ~_wgslsmith_sub_i32(func_3(), countOneBits(-33045i)), 13634i);
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    let var_0 = vec2<bool>(true, !(!global0.x));
    let var_1 = abs(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(arg_1.c, arg_1.c), func_2(!(!vec2<bool>(var_0.x, global0.x)), arg_1, Struct_1(~arg_2.a))));
    global0 = var_0;
    let var_2 = Struct_3(Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(2746u, u_input.b, 35435u), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, 110707u, 19183u), vec3<u32>(0u, arg_0.x, u_input.b))), ~arg_0), arg_1.b, vec4<i32>(-1i) * -var_1), Struct_2(reverseBits(select(reverseBits(arg_0), ~vec3<u32>(arg_0.x, arg_0.x, u_input.b), vec3<bool>(var_0.x, true, var_0.x))), -740f, vec4<i32>(~arg_2.a.x, countOneBits(arg_1.c.x), -1i, u_input.a)));
    let var_3 = arg_2;
    return var_2;
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1776f, -763f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3.a.b, arg_3.b.b))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.a.b, 211f))))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.b.b, arg_3.b.b) + vec2<f32>(arg_3.a.b, -1128f)))))))));
    global1 = array<Struct_2, 13>();
    var var_1 = _wgslsmith_mod_vec3_i32(countOneBits(arg_3.b.c.yxy), ~_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, arg_1 | -52672i, arg_2), -firstLeadingBit(vec3<i32>(arg_3.a.c.x, 47742i, arg_1))));
    var var_2 = u_input.b;
    var var_3 = global0.x && global0.x;
    return Struct_3(func_1(vec3<u32>(_wgslsmith_mult_u32(1u, ~arg_0), 4294967295u, ~abs(0u)), func_1(abs(vec3<u32>(65953u, 18027u, 4506u)) ^ abs(vec3<u32>(4294967295u, u_input.b, arg_0)), func_1(arg_3.b.a, func_1(arg_3.b.a, Struct_2(arg_3.b.a, var_0.x, arg_3.a.c), Struct_1(var_1.zz)).b, Struct_1(vec2<i32>(-29427i, -44370i))).a, Struct_1(~arg_3.b.c.ww)).a, Struct_1(_wgslsmith_mod_vec2_i32(-vec2<i32>(arg_2, arg_3.b.c.x), var_1.xx))).a, Struct_2(~abs(_wgslsmith_add_vec3_u32(arg_3.b.a, vec3<u32>(0u, 4294967295u, 0u))), _wgslsmith_f_op_f32(1589f - 127f), (-vec4<i32>(arg_1, arg_2, arg_2, arg_2) << (firstTrailingBit(vec4<u32>(82499u, 1u, 6919u, u_input.b)) % vec4<u32>(32u))) >> (~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, arg_3.a.a.x, u_input.b), vec4<u32>(arg_0, arg_0, u_input.b, arg_3.b.a.x)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(4294967295u, u_input.a, -(~(-3239i)), func_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.b, 0u, 8944u)) << (~(~vec3<u32>(u_input.b, 41812u, u_input.b)) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(abs(1u), 13u)], Struct_1(~vec2<i32>(u_input.a, u_input.a))));
    let var_1 = -1000f;
    var var_2 = vec3<i32>(-u_input.a, -14913i, _wgslsmith_sub_i32(reverseBits(_wgslsmith_sub_i32(-1i, _wgslsmith_clamp_i32(u_input.a, 2147483647i, 19889i))), _wgslsmith_mod_i32(u_input.a, _wgslsmith_div_i32(-3218i, _wgslsmith_add_i32(var_0.a.c.x, -26563i)))));
    let var_3 = !vec4<bool>(!global0.x, reverseBits(_wgslsmith_mult_u32(u_input.b, 1u)) <= _wgslsmith_add_u32(u_input.b, u_input.b), true, true);
    let var_4 = ~(~(func_1(~vec3<u32>(85313u, 9467u, 4294967295u), Struct_2(var_0.b.a, -187f, vec4<i32>(1i, u_input.a, u_input.a, -2147483647i)), Struct_1(vec2<i32>(u_input.a, var_0.a.c.x))).b.c.zy & vec2<i32>(16952i, var_0.b.c.x)));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1166f, var_1)) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a.b, -873f), vec2<f32>(var_0.a.b, var_1), var_3.wz))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, -927f)))));
    var_0 = Struct_3(Struct_2(vec3<u32>(44339u, reverseBits(1u & var_0.b.a.x), _wgslsmith_mult_u32(1u, 1u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_5.x, var_0.b.b)))), 505f), var_0.b.c), global1[_wgslsmith_index_u32(u_input.b, 13u)]);
    var var_6 = Struct_1(_wgslsmith_clamp_vec2_i32(abs(var_2.yy), select(min(vec2<i32>(7207i, 46292i), var_4) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(16335i, -2147483647i), var_0.b.c.xx), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, u_input.a), var_2.yz), global0.x), var_2.yx));
    let x = u_input.a;
    s_output = StorageBuffer(var_1, 2147483647i, ~_wgslsmith_div_u32(~var_0.a.a.x, 1u));
}

