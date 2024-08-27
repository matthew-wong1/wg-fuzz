struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(35473u, 4294967295u);

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec2<bool>) -> vec4<bool> {
    var var_0 = ~max(_wgslsmith_mod_vec2_u32(~vec2<u32>(44182u, global0.x) << ((vec2<u32>(global0.x, 0u) | vec2<u32>(7071u, global0.x)) % vec2<u32>(32u)), vec2<u32>(1u, 1u) << (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))), min(firstLeadingBit(firstTrailingBit(vec2<u32>(global0.x, global0.x))), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(global0.x, 0u))));
    var var_1 = Struct_1(vec3<f32>(-1111f, 389f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))), global1.b);
    var_0 = ~vec2<u32>(0u, reverseBits(1u));
    var var_2 = !any(!(!vec4<bool>(arg_0.x, false, true, arg_0.x))) | (!(_wgslsmith_add_i32(u_input.a.x, global1.b.x) < var_1.b.x) || (_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, 35761u, 22733u, global0.x), vec4<u32>(0u, global0.x, 0u, var_0.x) ^ vec4<u32>(var_0.x, 4294967295u, 0u, 14683u)) != ~_wgslsmith_mult_u32(var_0.x, global0.x)));
    let var_3 = 59483u;
    return select(select(select(select(!vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(true, true, arg_0.x, arg_0.x), !vec4<bool>(arg_0.x, false, arg_0.x, false)), !vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), !any(vec2<bool>(arg_0.x, arg_0.x))), vec4<bool>(!arg_0.x, select(true, true, arg_0.x), true, !any(vec2<bool>(arg_0.x, false))), !arg_0.x), select(!(!select(vec4<bool>(true, true, false, arg_0.x), vec4<bool>(false, false, arg_0.x, true), vec4<bool>(false, true, false, false))), !select(vec4<bool>(arg_0.x, false, true, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, false)), select(select(vec4<bool>(true, true, true, true), !vec4<bool>(true, arg_0.x, false, arg_0.x), !vec4<bool>(arg_0.x, true, arg_0.x, false)), select(select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(false, false, arg_0.x, true), vec4<bool>(true, true, arg_0.x, arg_0.x)), select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), arg_0.x), select(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x)), !vec4<bool>(arg_0.x, arg_0.x, true, false), arg_0.x || true))), arg_0.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: f32, arg_2: Struct_1, arg_3: vec3<bool>) -> vec4<u32> {
    var var_0 = arg_1;
    var var_1 = !(!any(select(vec4<bool>(false, false, arg_3.x, arg_3.x), vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x), vec4<bool>(arg_3.x, false, arg_3.x, arg_3.x)))) || (arg_3.x && true);
    let var_2 = arg_1;
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_2.a.x))), 1f, _wgslsmith_f_op_f32(var_2 + arg_1)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -1000f, arg_1) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-493f, -1000f, -141f) * arg_2.a), _wgslsmith_f_op_vec3_f32(-arg_2.a))))), vec4<i32>(~(_wgslsmith_dot_vec3_i32(vec3<i32>(-51750i, arg_2.b.x, arg_2.b.x), u_input.a) | global1.b.x), _wgslsmith_dot_vec4_i32(arg_0, global1.b), arg_0.x, global1.b.x));
    let var_3 = select(vec4<bool>(all(func_3(select(arg_3.yy, vec2<bool>(arg_3.x, true), arg_3.x))), all(vec3<bool>(1536f != global1.a.x, true, true)), arg_3.x | arg_3.x, !arg_3.x), !(!vec4<bool>(false, !arg_3.x, func_3(arg_3.yy).x, global0.x <= 0u)), vec4<bool>(false, all(!vec3<bool>(arg_3.x, true, arg_3.x)) && arg_3.x, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(arg_3.x, arg_3.x, false))), arg_3.x));
    return _wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 1u, global0.x << (global0.x % 32u), abs(global0.x)) << (abs(firstLeadingBit(vec4<u32>(0u, 35374u, global0.x, global0.x))) % vec4<u32>(32u)), firstLeadingBit(_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, global0.x, global0.x, global0.x), vec4<u32>(global0.x, 1u, 4294967295u, global0.x)), ~vec4<u32>(global0.x, global0.x, 0u, global0.x)))) & countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global0.x, global0.x), reverseBits(0u), global0.x, 4294967295u ^ global0.x), max(~vec4<u32>(global0.x, global0.x, global0.x, 2131u), ~vec4<u32>(1u, 36368u, global0.x, global0.x))));
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(global1.a)), global1.a, !(!arg_0))) - vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1730f + global1.a.x), -702f), -1003f)), global1.b);
    let var_0 = select(-23323i, u_input.c, arg_0);
    let var_1 = true || all(!vec3<bool>(false, true, global1.b.x <= -1i));
    global2 = -200f;
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(-490f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -260f))) + global1.a.x), _wgslsmith_f_op_f32(abs(1f))), countOneBits(_wgslsmith_mult_vec4_i32((vec4<i32>(var_0, -1i, -2147483647i, u_input.b) >> (vec4<u32>(53798u, 7777u, 4294967295u, global0.x) % vec4<u32>(32u))) << (func_2(vec4<i32>(u_input.b, 2147483647i, var_0, global1.b.x), global1.a.x, Struct_1(vec3<f32>(-214f, global1.a.x, global1.a.x), global1.b), vec3<bool>(true, true, var_1)) % vec4<u32>(32u)), min(global1.b, global1.b) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, global0.x, global0.x, global0.x), vec4<u32>(1u, 105055u, global0.x, global0.x), vec4<u32>(1u, 4294967295u, 1u, global0.x)) % vec4<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a.x, 1295f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1466f))));
    let var_1 = ~vec3<u32>(~_wgslsmith_mod_u32(global0.x, ~global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(66795u >> (global0.x % 32u), ~global0.x, ~1u), vec3<u32>(countOneBits(global0.x), ~global0.x, ~76358u)), ~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, global0.x, global0.x, global0.x)), vec4<u32>(0u, global0.x, 1u, 3657u) & vec4<u32>(global0.x, global0.x, 101796u, global0.x)));
    var var_2 = func_1(true);
    let var_3 = global1.a.x;
    let var_4 = (_wgslsmith_add_vec4_u32(~(~vec4<u32>(17918u, 4294967295u, global0.x, 1u)), countOneBits(vec4<u32>(3118u, global0.x, 33646u, 59654u))) | ~_wgslsmith_clamp_vec4_u32(vec4<u32>(11632u, var_1.x, global0.x, 0u), vec4<u32>(global0.x, 0u, var_1.x, 82690u), ~vec4<u32>(53517u, global0.x, 4294967295u, 58708u))) ^ max(_wgslsmith_sub_vec4_u32(vec4<u32>(~global0.x, abs(var_1.x), ~global0.x, 0u), ~(~vec4<u32>(34757u, var_1.x, 14359u, var_1.x))), _wgslsmith_mult_vec4_u32(min(func_2(var_2.b, var_2.a.x, Struct_1(vec3<f32>(-1052f, 4112f, var_0.a.x), vec4<i32>(var_2.b.x, -2147483647i, 2147483647i, global1.b.x)), vec3<bool>(false, false, false)), vec4<u32>(31766u, 6747u, 26750u, 4294967295u)), vec4<u32>(~0u, countOneBits(var_1.x), var_1.x, 84507u)));
    var var_5 = u_input.a.x == ((global1.b.x >> (~_wgslsmith_mod_u32(global0.x, var_4.x) % 32u)) & -_wgslsmith_sub_i32(~global1.b.x, -2147483647i >> (var_4.x % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(1u ^ ~(global0.x << (62048u % 32u)), 4377u), -_wgslsmith_mod_vec4_i32(~var_0.b ^ (vec4<i32>(0i, -2147483647i, u_input.c, var_2.b.x) << (var_4 % vec4<u32>(32u))), var_0.b ^ vec4<i32>(var_0.b.x, 4874i, -2147483647i, -2147483647i)), ~var_4.x);
}

