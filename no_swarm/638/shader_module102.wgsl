struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(-16766i, -21893i, i32(-2147483648));

var<private> global1: i32 = 2147483647i;

var<private> global2: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(1176f, 659f, 192f, 856f), vec4<f32>(256f, 422f, -1168f, -457f), vec4<f32>(-887f, -911f, -870f, -738f), vec4<f32>(-1000f, 2140f, -754f, -540f), vec4<f32>(915f, -137f, 842f, -725f), vec4<f32>(-102f, -2019f, 306f, -189f), vec4<f32>(2143f, 265f, 1120f, 349f), vec4<f32>(151f, -1324f, -972f, -701f), vec4<f32>(-359f, -1081f, 203f, -735f), vec4<f32>(104f, 191f, -851f, 1341f), vec4<f32>(-1722f, 1000f, 670f, -465f));

var<private> global3: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = 1580f;
    var var_1 = arg_0;
    global1 = i32(-1i) * -1i;
    global2 = array<vec4<f32>, 11>();
    global2 = array<vec4<f32>, 11>();
    return arg_0.b;
}

fn func_3(arg_0: vec4<f32>) -> f32 {
    global2 = array<vec4<f32>, 11>();
    var var_0 = global3.b.x;
    global0 = vec3<i32>(countOneBits(abs(~(-2147483647i) >> (1u % 32u))), -abs(_wgslsmith_dot_vec2_i32(u_input.a.zz >> (global3.a.yy % vec2<u32>(32u)), ~global0.yy)), u_input.a.x);
    var var_1 = Struct_1(~vec3<u32>(1u, 0u, _wgslsmith_dot_vec2_u32(global3.a.yy, abs(vec2<u32>(global3.a.x, global3.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.b.x - arg_0.x), -480f, _wgslsmith_f_op_f32(arg_0.x - global3.b.x), _wgslsmith_f_op_f32(116f - global3.b.x)) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, global3.b.x, arg_0.x, 1038f) + arg_0)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(global3.b.x)), 849f, _wgslsmith_f_op_f32(min(-634f, -137f)), -783f))));
    let var_2 = Struct_1(select(var_1.a, _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(48560u, 23109u, 25075u), vec3<u32>(global3.a.x, var_1.a.x, 0u)) << (vec3<u32>(global3.a.x, 38420u, var_1.a.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(global3.a.x, 0u, var_1.a.x))), false), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_0.x, var_1.b.x, global3.b.x)))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-998f)) - _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) + _wgslsmith_f_op_f32(-2988f + -1000f))))) * 127f);
}

fn func_1(arg_0: vec3<bool>) -> vec4<f32> {
    var var_0 = Struct_1(abs(_wgslsmith_sub_vec3_u32(global3.a, vec3<u32>(global3.a.x >> (18029u % 32u), _wgslsmith_div_u32(33173u, global3.a.x), firstTrailingBit(global3.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(Struct_1(~vec3<u32>(4294967295u, global3.a.x, global3.a.x), vec4<f32>(global3.b.x, -675f, global3.b.x, global3.b.x)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(381f, 823f, global3.b.x, global3.b.x), global2[_wgslsmith_index_u32(4294967295u, 11u)], false)))));
    let var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(func_3(vec4<f32>(-1348f, -581f, -1146f, var_0.b.x))), global3.b.x)))), vec2<f32>(-775f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)))));
    global0 = countOneBits(vec3<i32>(global0.x, -1i, _wgslsmith_add_i32(global0.x, 52892i)));
    var var_2 = 334f;
    let var_3 = Struct_1(~abs(max(var_0.a, ~global3.a)), var_0.b);
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.b.x;
    let var_1 = Struct_1(global3.a | vec3<u32>(~(~24364u), ~51403u, abs(global3.a.x)), _wgslsmith_f_op_vec4_f32(func_1(!select(vec3<bool>(true, true, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), false), false))));
    global3 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, var_1.a.x, 43809u), vec3<u32>(var_1.a.x, 0u, var_1.a.x), select(false, false, true)), vec3<u32>(~var_1.a.x, ~var_1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.a.x, 24981u, 4758u), vec4<u32>(25222u, var_1.a.x, global3.a.x, global3.a.x))), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(global3.a, vec3<u32>(global3.a.x, global3.a.x, global3.a.x)), ~var_1.a, ~vec3<u32>(65791u, 0u, 4294967295u))), reverseBits(global3.a) >> (global3.a % vec3<u32>(32u))), global3.b);
    global0 = u_input.a << (vec3<u32>(var_1.a.x, global3.a.x, global3.a.x) % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_1(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 1u <= var_1.a.x))).zx));
    global3 = var_1;
    let var_3 = var_1;
    var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_1.b.wz, global3.b.zx)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(var_3.b.xx)), _wgslsmith_f_op_vec2_f32(-var_3.b.zz))));
    global3 = Struct_1(min(vec3<u32>(~36786u ^ ~global3.a.x, abs(1u), _wgslsmith_mod_u32(var_3.a.x << (1u % 32u), global3.a.x)), ~(vec3<u32>(var_3.a.x, var_3.a.x, var_3.a.x) >> (var_1.a % vec3<u32>(32u)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global3.b.x, _wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_vec4_f32(-global3.b)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.x, u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-280f)))) - global3.b.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -758f))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2251f, _wgslsmith_f_op_f32(f32(-1f) * -435f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_3.b.x))))), var_2.x, ~vec4<u32>(max(_wgslsmith_mult_u32(var_1.a.x, var_1.a.x), ~var_1.a.x), ~_wgslsmith_mult_u32(var_3.a.x, 4294967295u), ~_wgslsmith_div_u32(global3.a.x, var_3.a.x), abs(1u)));
}

