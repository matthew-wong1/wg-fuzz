struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec4<u32>,
    d: vec2<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32>;

var<private> global1: array<vec2<i32>, 14>;

var<private> global2: array<vec2<u32>, 11>;

var<private> global3: u32;

var<private> global4: Struct_5;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: u32, arg_3: Struct_5) -> f32 {
    global3 = arg_2;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-619f, _wgslsmith_f_op_f32(global4.a.a.x - _wgslsmith_f_op_f32(round(arg_3.a.a.x))))) + -963f) - 755f);
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = Struct_3(-arg_0.a.a);
    let var_1 = Struct_5(global4.b, global4.a, global4.c, global4.d, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-902f, global4.e.x) - 852f), _wgslsmith_f_op_f32(global4.a.a.x * -1172f))));
    var var_2 = 19579i;
    var var_3 = 0i;
    var var_4 = _wgslsmith_f_op_f32(-613f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global4.a.a.x)))));
    return select(_wgslsmith_mod_i32(select(abs(-70455i), var_0.a, true), firstLeadingBit(var_1.a.b.a)), 1i, !global4.d.x);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = arg_0.c;
    let var_1 = Struct_2(var_0, 2147483647i, Struct_1(max(var_0.a, -_wgslsmith_mod_i32(2147483647i, 2473i))));
    let var_2 = Struct_5(Struct_4(_wgslsmith_f_op_vec3_f32(round(global4.a.a)), Struct_1(1i)), Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(global4.b.a.x, global4.b.a.x, global4.e.x), global4.a.a)) - _wgslsmith_div_vec3_f32(vec3<f32>(188f, 1121f, -1247f), vec3<f32>(global4.e.x, 265f, -2089f))))), var_1.a), ~vec4<u32>(~84578u, global0[_wgslsmith_index_u32(u_input.c, 32u)], 0u, u_input.c) & ~(~vec4<u32>(global4.c.x, 1u, global0[_wgslsmith_index_u32(72929u, 32u)], 6325u)), !vec2<bool>(false, global4.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global4.b.a.yy))));
    let var_3 = Struct_3(reverseBits(var_0.a) | -2147483647i);
    global4 = Struct_5(global4.b, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(global4.e.x, var_2.e.x, -1000f), vec3<f32>(281f, -650f, 427f))))), Struct_1(countOneBits(var_0.a))), global4.c, !select(select(vec2<bool>(false, true), !var_2.d, vec2<bool>(var_2.d.x, true)), select(!vec2<bool>(global4.d.x, var_2.d.x), vec2<bool>(global4.d.x, var_2.d.x), !var_2.d), select(global4.d, var_2.d, vec2<bool>(global4.d.x, true))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-599f))) - 255f), _wgslsmith_f_op_f32(step(617f, global4.a.a.x))));
    return -var_3.a;
}

fn func_1(arg_0: f32, arg_1: vec4<i32>, arg_2: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1355f)) - 672f)), _wgslsmith_f_op_f32(175f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1464f)) * global4.e.x), _wgslsmith_f_op_f32(func_2(~u_input.a.xx, 1i, global0[_wgslsmith_index_u32(1u, 32u)] & 0u, Struct_5(Struct_4(vec3<f32>(2459f, global4.a.a.x, arg_0), global4.a.b), global4.a, global4.c, vec2<bool>(true, arg_2), global4.b.a.xx)))))));
    global3 = ~0u;
    var var_1 = func_4(Struct_2(Struct_1(abs(i32(-1i) * -36092i)), _wgslsmith_mult_i32(u_input.a.x, func_3(Struct_2(Struct_1(38130i), arg_1.x, Struct_1(global4.b.b.a))) >> (~global4.c.x % 32u)), Struct_1(-2147483647i)), Struct_3(u_input.a.x << (1u % 32u)));
    var var_2 = abs(_wgslsmith_div_vec3_i32(u_input.a, u_input.a));
    var var_3 = global4.a;
    return var_0;
}

fn func_5(arg_0: vec4<f32>, arg_1: vec2<i32>) -> vec2<i32> {
    global2 = array<vec2<u32>, 11>();
    let var_0 = Struct_3(_wgslsmith_add_i32(arg_1.x, ~(~45195i)));
    global4 = Struct_5(global4.b, global4.a, vec4<u32>(firstTrailingBit(max(u_input.c, global4.c.x) << (_wgslsmith_sub_u32(1u, global4.c.x) % 32u)), _wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.c.zz >> (global2[_wgslsmith_index_u32(u_input.c, 11u)] % vec2<u32>(32u)), vec2<u32>(u_input.b, 0u)), 11u)], _wgslsmith_sub_vec2_u32(~global4.c.xz, abs(global2[_wgslsmith_index_u32(1u, 11u)]))), (4186u << (~global0[_wgslsmith_index_u32(14469u, 32u)] % 32u)) | 4294967295u, ~(~(~u_input.c))), select(vec2<bool>(true, true), select(global4.d, !select(global4.d, global4.d, false), false), true != global4.d.x), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-278f, global4.b.a.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -579f)))) + vec2<f32>(_wgslsmith_f_op_f32(1850f - -1913f), -783f)))));
    var var_1 = firstLeadingBit(_wgslsmith_div_vec4_i32(firstLeadingBit(max(firstLeadingBit(vec4<i32>(var_0.a, -32210i, var_0.a, 2147483647i)), firstTrailingBit(vec4<i32>(global4.b.b.a, global4.b.b.a, -2036i, global4.b.b.a)))), vec4<i32>(abs(-17950i), reverseBits(~(-36393i)), -13548i, max(arg_1.x, global4.a.b.a))));
    var var_2 = -firstLeadingBit(~var_1.x);
    return _wgslsmith_clamp_vec2_i32(countOneBits(~(~max(vec2<i32>(var_1.x, 21774i), vec2<i32>(var_0.a, arg_1.x)))), ~(vec2<i32>(-1i) * -vec2<i32>(32017i, -1i)), ~u_input.a.yy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(_wgslsmith_div_vec2_i32(u_input.a.xy, global1[_wgslsmith_index_u32(66751u, 14u)]), func_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_1(369f, vec4<i32>(u_input.a.x, 9591i, global4.b.b.a, -34718i), global4.d.x)), _wgslsmith_f_op_f32(-global4.b.a.x), global4.e.x, _wgslsmith_f_op_f32(max(-1000f, -1325f))) - vec4<f32>(1192f, _wgslsmith_f_op_f32(min(1114f, -439f)), _wgslsmith_f_op_f32(ceil(901f)), _wgslsmith_f_op_f32(-global4.b.a.x))), -min(vec2<i32>(57014i, global4.b.b.a), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, global4.b.b.a), global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 32u)], 14u)]))));
    var var_1 = Struct_2(Struct_1(global4.a.b.a), 9137i, global4.a.b);
    let var_2 = select(!(global4.d.x && true), false, false);
    let var_3 = global4.c.xwx;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(global4.b.a.x)), _wgslsmith_f_op_f32(-global4.a.a.x), -2015f);
    global0 = array<u32, 32>();
    let var_5 = ~u_input.a.x;
    var var_6 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.a.a.x)) * _wgslsmith_f_op_f32(f32(-1f) * -744f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(global4.c.xxw, global4.c.xxw), global4.c.www), ~(~_wgslsmith_sub_u32(u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_3.x, 32u)], 32u)])), 1u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(36890u, ~global0[_wgslsmith_index_u32(global4.c.x, 32u)]), 32u)], global0[_wgslsmith_index_u32(var_3.x, 32u)])), vec2<f32>(1172f, global4.e.x));
}

