struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(19944u, 0u, 0u, 1u), vec4<u32>(114909u, 22884u, 70140u, 0u), vec4<u32>(15334u, 6933u, 5364u, 4294967295u), vec4<u32>(1u, 37350u, 0u, 32299u), vec4<u32>(4294967295u, 23096u, 37016u, 1u), vec4<u32>(32293u, 1u, 4294967295u, 18560u), vec4<u32>(4294967295u, 1u, 20917u, 1u), vec4<u32>(1u, 0u, 25413u, 0u), vec4<u32>(77947u, 1u, 5890u, 66029u), vec4<u32>(31498u, 56051u, 4294967295u, 1472u), vec4<u32>(4294967295u, 32510u, 0u, 4294967295u), vec4<u32>(0u, 15361u, 64982u, 15067u), vec4<u32>(4294967295u, 107193u, 14096u, 24545u), vec4<u32>(3979u, 19142u, 51259u, 0u), vec4<u32>(36297u, 0u, 38856u, 4294967295u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec3<i32> {
    let var_0 = min(-9182i, global2.a.x);
    let var_1 = global2.b;
    var var_2 = vec3<i32>(global2.a.x, ~var_0, 31482i);
    let var_3 = ~abs(~reverseBits(global2.a.zx));
    let var_4 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1144f, global2.d, global2.c.x, -1083f))))), vec4<f32>(-669f, global2.c.x, _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-global2.d)))), vec4<f32>(-322f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global2.c.x, -345f))), 1f, global2.d)));
    return vec3<i32>(-(-1i << (max(~97443u, u_input.b) % 32u)), -30174i, abs(var_0));
}

fn func_2(arg_0: u32) -> i32 {
    var var_0 = Struct_1(func_3() & global2.a, abs(~(global2.b | 1u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(423f, global2.c.x) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global2.d, -1116f), vec2<f32>(global2.d, global2.c.x), vec2<bool>(false, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(global2.c))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.c)) - global2.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -249f)) * -754f), global2.a.x);
    var_0 = Struct_1(vec3<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.e, 1i, global2.e), _wgslsmith_div_vec3_i32(vec3<i32>(var_0.a.x, global2.a.x, var_0.a.x), vec3<i32>(global2.e, var_0.a.x, var_0.a.x))), -3955i, -28998i), _wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.b ^ 1u, countOneBits(~1u), abs(u_input.a.x), firstTrailingBit(abs(global2.b))), _wgslsmith_mod_vec4_u32(~global3[_wgslsmith_index_u32(arg_0, 15u)], _wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, u_input.a.x), vec4<u32>(1u, 4294967295u, global2.b, var_0.b)) >> ((u_input.a << (vec4<u32>(u_input.a.x, 0u, 0u, 1u) % vec4<u32>(32u))) % vec4<u32>(32u)))), global2.c, global2.d, reverseBits(~(~(var_0.e ^ global2.e))));
    let var_1 = -463f;
    let var_2 = !vec4<bool>(true, all(select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), (var_0.e ^ (global2.e ^ 92303i)) >= _wgslsmith_sub_i32(-global2.a.x, ~0i), all(select(select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true), vec2<bool>(false, false))));
    return _wgslsmith_clamp_i32(var_0.a.x, ~_wgslsmith_dot_vec2_i32(vec2<i32>(~1i, ~1i), -_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 20263i), global2.a.xx)), 57433i);
}

fn func_1() -> Struct_1 {
    global0 = func_2(global2.b);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.c.x * global2.c.x)))))));
    var var_1 = global2.b;
    var var_2 = Struct_1(reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, abs(global2.e), i32(-1i) * -3285i), vec3<i32>(_wgslsmith_dot_vec2_i32(global2.a.zx, global2.a.zz), ~global2.e, _wgslsmith_mod_i32(global2.a.x, -1i)), global2.a)), 13915u, _wgslsmith_f_op_vec2_f32(-global2.c), _wgslsmith_f_op_f32(-global2.c.x), global2.e);
    var var_3 = _wgslsmith_mult_i32(var_2.e, func_3().x) | -11321i;
    return Struct_1(-func_3(), ~global2.b, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.d, var_2.d))))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-424f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(var_0)))))), 1f)), _wgslsmith_add_i32(-(~_wgslsmith_dot_vec2_i32(var_2.a.xy, vec2<i32>(2147483647i, var_2.a.x))), _wgslsmith_mod_i32(~0i, countOneBits(global2.a.x)) ^ 34868i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = 4441i;
    let var_2 = all(vec2<bool>(true, any(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), false), all(vec3<bool>(false, false, false))))));
    let var_3 = abs(u_input.a.x);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-278f + _wgslsmith_div_f32(-402f, global2.d)) - global2.d))) * _wgslsmith_f_op_f32(min(var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-429f - -327f) * _wgslsmith_f_op_f32(f32(-1f) * -1030f)))));
    let var_5 = var_0;
    var var_6 = vec3<f32>(-453f, var_4, _wgslsmith_f_op_f32(_wgslsmith_div_f32(750f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-462f, -1000f)))) * _wgslsmith_f_op_f32(var_4 * -1123f)));
    let var_7 = var_0;
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(select(vec3<u32>(39089u, 0u, abs(4294967295u)), vec3<u32>(var_3 & u_input.a.x, _wgslsmith_mult_u32(var_0.b, 1u), _wgslsmith_sub_u32(u_input.a.x, var_3)), var_2) ^ ~vec3<u32>(var_5.b, _wgslsmith_dot_vec2_u32(u_input.a.wz, u_input.a.yy), 0u), _wgslsmith_sub_u32(var_3, var_7.b), 1958f, global3[_wgslsmith_index_u32(global2.b, 15u)]);
}

