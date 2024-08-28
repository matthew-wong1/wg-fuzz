struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1 = Struct_1(false, vec3<i32>(-1i, -25449i, 2147483647i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: bool) -> vec2<bool> {
    global0 = vec3<u32>(~select(90137u, 3640u, any(select(arg_1.zy, vec2<bool>(arg_1.x, global2.a), vec2<bool>(false, true)))), ~(firstTrailingBit(1u) & (_wgslsmith_sub_u32(u_input.b, global0.x) | ~6710u)), 1u);
    global2 = arg_0;
    global1 = _wgslsmith_mult_vec3_i32(-(global2.b | vec3<i32>(u_input.a.x, max(arg_0.b.x, -40795i), -1i >> (0u % 32u))), _wgslsmith_div_vec3_i32(vec3<i32>(max(global1.x, global2.b.x) ^ global1.x, _wgslsmith_clamp_i32(arg_0.b.x, global2.b.x, 1i), firstLeadingBit(reverseBits(arg_0.b.x))), vec3<i32>(i32(-1i) * -8536i, (global2.b.x ^ -1i) << ((0u >> (u_input.b % 32u)) % 32u), ~u_input.a.x)));
    global2 = Struct_1(!(!(!arg_0.a)), abs(vec3<i32>(~_wgslsmith_clamp_i32(5741i, global2.b.x, global1.x), reverseBits(u_input.a.x), u_input.a.x)));
    var var_0 = _wgslsmith_f_op_f32(241f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-829f, -432f, any(select(vec4<bool>(true, true, arg_1.x, global2.a), vec4<bool>(global2.a, false, true, true), true))))));
    return vec2<bool>(false, true);
}

fn func_4(arg_0: vec2<bool>, arg_1: f32, arg_2: vec3<bool>, arg_3: vec3<f32>) -> vec3<u32> {
    let var_0 = select(arg_2.xx, arg_2.xz, select(!func_3(Struct_1(global2.a, global2.b), arg_2, global1.x == u_input.a.x), select(!func_3(Struct_1(false, vec3<i32>(u_input.a.x, 2147483647i, -18708i)), vec3<bool>(global2.a, arg_0.x, arg_2.x), arg_0.x), vec2<bool>(global2.a, func_3(Struct_1(global2.a, vec3<i32>(-41039i, -13998i, -23749i)), vec3<bool>(global2.a, true, true), true).x), !all(vec2<bool>(false, true))), any(!select(vec3<bool>(arg_2.x, arg_2.x, false), arg_2, true))));
    global0 = ~(~firstTrailingBit(_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(3753u, 0u, u_input.b)), vec3<u32>(u_input.b, 1u, 4294967295u) << (vec3<u32>(u_input.b, 0u, global0.x) % vec3<u32>(32u)))));
    var var_1 = vec3<u32>(u_input.b, 1u, ~firstLeadingBit(0u));
    let var_2 = global2.b.x < ~global1.x;
    let var_3 = _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-361f, arg_1))));
    return ~abs(abs(~vec3<u32>(0u, 74275u, var_1.x) | vec3<u32>(var_1.x, 27126u, 0u)));
}

fn func_2() -> vec4<u32> {
    global0 = _wgslsmith_add_vec3_u32(func_4(func_3(Struct_1(true, vec3<i32>(9076i, 0i, 81199i)), vec3<bool>(global2.a, global2.a, false), global2.a), -193f, vec3<bool>(global2.a, global2.a, false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1143f, -809f, 1151f))) | _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(37145u, global0.x, u_input.b)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(0u, global0.x, global0.x))), ~vec3<u32>(1u, 1u, 1u) << (~(vec3<u32>(4294967295u, 0u, global0.x) >> (vec3<u32>(0u, 0u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))) << (reverseBits(select(_wgslsmith_mod_vec3_u32(~vec3<u32>(38660u, global0.x, global0.x), abs(vec3<u32>(u_input.b, u_input.b, 17168u))), vec3<u32>(global0.x, 5758u, global0.x) | vec3<u32>(global0.x, 0u, 1u), true)) % vec3<u32>(32u));
    global2 = Struct_1(func_3(Struct_1(false, vec3<i32>(-u_input.a.x, -11958i, global2.b.x)), select(!vec3<bool>(global2.a, global2.a, false), vec3<bool>(true, true, global2.a), !select(vec3<bool>(false, global2.a, global2.a), vec3<bool>(true, true, global2.a), vec3<bool>(global2.a, false, false))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1000f - -550f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(1305f)), _wgslsmith_f_op_f32(f32(-1f) * -1173f)))).x, -vec3<i32>(countOneBits(u_input.a.x) >> (~global0.x % 32u), -1i, firstTrailingBit(-22353i)));
    return vec4<u32>(~1u, ~u_input.b, 1u >> ((4294967295u & u_input.b) % 32u), ~25175u);
}

fn func_5(arg_0: vec4<u32>) -> f32 {
    var var_0 = Struct_1(global2.a, _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -2147483647i, global1.x), global2.b), _wgslsmith_div_vec3_i32(global2.b, global2.b)), min(vec3<i32>(u_input.a.x, u_input.a.x, 1i) ^ vec3<i32>(global1.x, u_input.a.x, global2.b.x), ~vec3<i32>(global1.x, global1.x, 0i))), -(-global2.b & countOneBits(vec3<i32>(2147483647i, 12751i, u_input.a.x)))));
    let var_1 = ~_wgslsmith_sub_u32(1u, ~(~u_input.b));
    global1 = ~vec3<i32>(~(-1i), _wgslsmith_mod_i32(var_0.b.x, _wgslsmith_mod_i32(global2.b.x >> (global0.x % 32u), _wgslsmith_mult_i32(global2.b.x, u_input.a.x))), var_0.b.x);
    var var_2 = Struct_1(var_0.a, max(-(~vec3<i32>(global2.b.x, -1i, 8246i)), global2.b));
    let var_3 = ~global0.x;
    return -405f;
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_5(~func_2()))));
    var var_1 = _wgslsmith_div_u32(global0.x, u_input.b);
    var var_2 = global2.a;
    let var_3 = 873f;
    let var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(604f, 927f, _wgslsmith_f_op_f32(var_3 + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_3, var_3, arg_0.a)))), var_3) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1076f, -1000f, 1000f, var_3)))))));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(~global2.b, reverseBits(-vec3<i32>(global1.x, -1i, arg_0.b.x))), 1i, -max(max(global2.b.x, min(1i, u_input.a.x)), 20880i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.b;
    global2 = Struct_1(true, min(vec3<i32>(-1i, _wgslsmith_mod_i32(global1.x & global2.b.x, _wgslsmith_sub_i32(u_input.a.x, -1i)), -1i), -vec3<i32>(global1.x, 1i, 1i) << (abs(vec3<u32>(50110u, 1u, 15781u)) % vec3<u32>(32u))));
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-650f, 1645f));
    global1 = ~(~(~_wgslsmith_div_vec3_i32(vec3<i32>(global2.b.x, u_input.a.x, global2.b.x), func_1(Struct_1(true, vec3<i32>(u_input.a.x, -1i, global1.x))))));
    let var_2 = Struct_1(global2.a || (!global2.a == all(!vec4<bool>(true, global2.a, global2.a, global2.a))), global2.b);
    var var_3 = _wgslsmith_mult_vec2_i32(abs(vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(global1.x, 1i), -1i), ~(-74228i))), ~_wgslsmith_sub_vec2_i32(var_2.b.zy, u_input.a));
    var var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - var_1) - _wgslsmith_f_op_f32(f32(-1f) * -1102f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))), 1014f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * 244f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(780f)) + 1000f), _wgslsmith_mod_vec2_i32(~(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, var_2.b.x), vec2<i32>(var_3.x, var_2.b.x), vec2<i32>(global2.b.x, global2.b.x)) >> (global0.yy % vec2<u32>(32u))), var_2.b.xz), vec3<f32>(-377f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + -387f), _wgslsmith_f_op_f32(-var_1)), min(global2.b, _wgslsmith_sub_vec3_i32(firstTrailingBit(-var_2.b), min(~global2.b, _wgslsmith_mult_vec3_i32(var_2.b, global2.b)))));
}

