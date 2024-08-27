struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool;

var<private> global2: Struct_4 = Struct_4(vec4<u32>(814u, 1u, 9903u, 0u));

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-442f)), arg_0.c.d))))), -1012f, _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_0.c.d, 1841f)), arg_0.c.d, all(vec4<bool>(false, true, false, arg_0.a)))) - _wgslsmith_f_op_f32(506f - _wgslsmith_f_op_f32(round(163f))))));
    let var_1 = u_input.b;
    let var_2 = arg_0.c.d;
    global2 = Struct_4(~max(u_input.c, vec4<u32>(u_input.a.x, global2.a.x, arg_0.d.x, arg_0.d.x) ^ ~vec4<u32>(u_input.d.x, global2.a.x, 17331u, 1u)));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(var_2 - _wgslsmith_f_op_f32(step(var_0.x, var_2))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1608f + _wgslsmith_f_op_f32(f32(-1f) * -441f))), -846f)), -2376f);
    return max(arg_0.c.c.zw, vec2<i32>(i32(-1i) * -25368i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, var_1), -arg_0.c.c.zyy), firstTrailingBit(var_1 >> (arg_0.c.b.x % 32u)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_4) -> i32 {
    global1 = false;
    let var_0 = _wgslsmith_clamp_vec2_i32(~(~(~vec2<i32>(0i, u_input.b)) << (_wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(global2.a.zw, vec2<u32>(24020u, arg_1.a.x)), _wgslsmith_div_vec2_u32(global2.a.xz, global2.a.yz)) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(vec2<i32>(reverseBits(~u_input.b), -3745i), select(func_3(Struct_2(false, 371f, Struct_1(1i, global2.a, vec4<i32>(u_input.b, 11063i, u_input.b, u_input.b), arg_0.x), vec4<u32>(0u, arg_1.a.x, u_input.d.x, 51228u))), vec2<i32>(_wgslsmith_div_i32(u_input.b, u_input.b), 47846i), !all(vec3<bool>(false, true, false)))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, u_input.b), min(_wgslsmith_mod_vec2_i32(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), true), ~vec2<i32>(u_input.b, u_input.b)), vec2<i32>(u_input.b, u_input.b))));
    global1 = !(~(~arg_1.a.x >> (8260u % 32u)) == _wgslsmith_div_u32(select(u_input.c.x, u_input.d.x, false) ^ abs(global2.a.x), arg_1.a.x));
    let var_1 = 1u;
    global2 = arg_1;
    return u_input.b;
}

fn func_1(arg_0: vec3<bool>) -> f32 {
    let var_0 = ~((firstTrailingBit(countOneBits(vec4<u32>(global2.a.x, 79394u, u_input.a.x, u_input.c.x))) & u_input.c) & global2.a);
    let var_1 = vec3<i32>(firstLeadingBit(select(~56984i, ~(~u_input.b), true)), 1i, -2147483647i);
    var var_2 = select(select(vec4<bool>(any(select(vec4<bool>(arg_0.x, false, arg_0.x, false), vec4<bool>(false, arg_0.x, arg_0.x, false), false)), -29611i != func_2(vec4<f32>(-1632f, -1760f, 1048f, 316f), Struct_4(u_input.c)), !(var_1.x >= u_input.b), !any(vec2<bool>(true, arg_0.x))), vec4<bool>(all(arg_0), any(!vec4<bool>(true, arg_0.x, arg_0.x, true)), all(!vec4<bool>(true, arg_0.x, false, arg_0.x)), true), select(false, arg_0.x, (u_input.a.x != 43819u) && (true && arg_0.x))), !vec4<bool>(false != select(arg_0.x, arg_0.x, arg_0.x), false, any(select(vec4<bool>(arg_0.x, true, false, true), vec4<bool>(false, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(true, true, arg_0.x, arg_0.x))), true), all(vec2<bool>(false, select(!arg_0.x, 4294967295u > u_input.c.x, true))));
    var var_3 = Struct_4(global2.a);
    let var_4 = Struct_4(u_input.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -920f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_1(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(557f * -1561f), 1000f, true)), 1797f)), !any(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-748f - -377f) + _wgslsmith_f_op_f32(step(-1372f, _wgslsmith_f_op_f32(sign(-1510f))))), false)));
    var var_1 = Struct_4(min(~global2.a, vec4<u32>(_wgslsmith_add_u32(global2.a.x, max(global2.a.x, 0u)), abs(1u), global2.a.x, _wgslsmith_clamp_u32(0u, abs(19670u), u_input.c.x | 20234u))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(var_0.x, 349f)), -1467f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(767f, 2200f, false)) + 1000f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.x, 645f, 467f))))), vec3<f32>(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x, -1512f)))));
    var var_3 = firstLeadingBit(_wgslsmith_div_u32(~_wgslsmith_mult_u32(global2.a.x, 37218u), var_1.a.x) | global2.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_clamp_i32(1i, abs(-1i), reverseBits(u_input.b)) | _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.b, 1i), firstLeadingBit(u_input.b))), var_2.x, _wgslsmith_f_op_f32(-var_2.x), vec4<u32>(4294967295u, global2.a.x, 4294967295u, _wgslsmith_clamp_u32(~(~global2.a.x), global2.a.x, 35378u ^ countOneBits(var_1.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(max(180f, var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(677f * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(-var_2.x), -609f)));
}

