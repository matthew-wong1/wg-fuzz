struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(27485u, 0u, 1u), vec3<u32>(0u, 27611u, 65897u), vec3<u32>(74116u, 54060u, 9890u), vec3<u32>(18046u, 32336u, 1u), vec3<u32>(70133u, 4294967295u, 5853u), vec3<u32>(16377u, 59136u, 34845u), vec3<u32>(1u, 1u, 2154u), vec3<u32>(1u, 30397u, 14078u));

var<private> global1: Struct_4;

var<private> global2: vec4<f32>;

var<private> global3: Struct_2 = Struct_2(240f);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> bool {
    let var_0 = reverseBits(-u_input.d);
    let var_1 = select(vec3<bool>(any(vec2<bool>(true, true)), true, select(false, true, true)), vec3<bool>(true, true, select(-42648i > u_input.a, true, false)), !(!select(select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), true)));
    let var_2 = Struct_3(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1000f))))));
    global3 = Struct_2(global3.a);
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1532f, _wgslsmith_f_op_f32(trunc(global2.x)), _wgslsmith_f_op_f32(-global3.a)) + _wgslsmith_f_op_vec3_f32(global2.yzw + _wgslsmith_f_op_vec3_f32(-global2.yyy))))), global2.zyx));
    return true;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_3) -> vec2<u32> {
    global1 = Struct_4(vec3<u32>(u_input.b, 0u, ~countOneBits(~1u)));
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a, global2.x, _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(f32(-1f) * -1439f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a))) - vec4<f32>(arg_2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-511f + 1558f)), arg_2.a.a))));
    global1 = Struct_4(vec3<u32>(1u, 0u, 0u));
    let var_0 = Struct_1(-187f);
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-741f, 1004f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a - global2.x), _wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(floor(1000f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1068f, -821f, global2.x, global3.a) * vec4<f32>(var_0.a, arg_2.a.a, -513f, global2.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global3.a, var_0.a, global2.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a.a, arg_2.a.a, var_0.a, var_0.a) + vec4<f32>(var_0.a, -272f, 248f, global3.a))), !(!vec4<bool>(false, true, arg_1, arg_1))))));
    return _wgslsmith_div_vec2_u32(vec2<u32>(global1.a.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a.x), global1.a.yy)), max(global1.a.x, ~46506u), 18340u)), vec2<u32>(62378u, u_input.b));
}

fn func_2() -> vec4<f32> {
    let var_0 = _wgslsmith_mult_vec2_u32(~firstTrailingBit(u_input.c.wy), _wgslsmith_sub_vec2_u32(abs(vec2<u32>(1u, 68687u)), firstLeadingBit(global1.a.zy) ^ ~vec2<u32>(u_input.b, 1u))) << (func_4(countOneBits(abs(u_input.a)), !(func_3() & true), Struct_3(Struct_1(_wgslsmith_f_op_f32(ceil(global3.a))))) % vec2<u32>(32u));
    let var_1 = Struct_2(978f);
    let var_2 = u_input.c.xzx;
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), global3.a)));
    global1 = Struct_4(~(~abs(max(var_2, vec3<u32>(var_0.x, 21036u, 11677u)))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1675f, -1063f, var_3.a, 990f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1838f, 889f, 1000f, -566f), vec4<f32>(global3.a, global3.a, global3.a, 1482f), false)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a, -786f, var_3.a, 231f) * vec4<f32>(-716f, global2.x, 2270f, global3.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, global3.a, -1000f, -1128f))))));
}

fn func_1() -> vec2<f32> {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(636f, global2.x, global3.a, 1251f))), vec4<f32>(-1797f, 497f, global3.a, -381f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2())))));
    var var_0 = -661f;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.yy - _wgslsmith_f_op_vec2_f32(-global2.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global2.x, global2.x)))))));
    global0 = array<vec3<u32>, 8>();
    global3 = Struct_2(680f);
    let var_0 = 21274i;
    var var_1 = vec2<f32>(-1278f, _wgslsmith_f_op_f32(f32(-1f) * -1416f));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(var_1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(global2.yz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1()) + vec2<f32>(_wgslsmith_f_op_f32(-784f - global3.a), _wgslsmith_f_op_vec4_f32(func_2()).x))), _wgslsmith_dot_vec3_u32(u_input.c.yzy, ~firstLeadingBit(global1.a) & vec3<u32>(u_input.b, 56996u, ~0u)), global2.zxy, _wgslsmith_add_i32(~var_0, -(~1i)), 433f);
}

