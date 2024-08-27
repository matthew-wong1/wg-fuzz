struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec2<i32>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_4;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: vec2<f32>) -> vec2<u32> {
    var var_0 = Struct_3(1u, ~_wgslsmith_add_vec3_u32(~vec3<u32>(716u, 4294967295u, arg_0.b.b.x), select(vec3<u32>(0u, 27949u, arg_2.a), vec3<u32>(arg_2.b.x, arg_0.b.a, 1u), false) & (arg_1 << (vec3<u32>(0u, 1u, arg_2.a) % vec3<u32>(32u)))));
    var var_1 = Struct_4(Struct_2(Struct_1(58547u, !arg_0.a.a.b, vec3<f32>(global3.a.c.x, arg_0.a.c.x, _wgslsmith_f_op_f32(-arg_0.a.a.c.x))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f * arg_3.x), -1033f)), vec3<f32>(_wgslsmith_f_op_f32(floor(-431f)), 1940f, _wgslsmith_f_op_f32(-global3.a.c.x))), arg_2, vec2<f32>(471f, 923f));
    let var_2 = abs(vec3<u32>(max(global3.a.a.a, arg_2.b.x & 1u), 1u, 4902u)) >> (arg_1 % vec3<u32>(32u));
    let var_3 = min(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(var_1.b.b.yz, _wgslsmith_add_vec2_u32(var_1.b.b.zx, vec2<u32>(arg_0.a.a.a, 0u))), 1u, _wgslsmith_div_u32(21816u, u_input.a << (var_0.b.x % 32u)))), ~global3.b.b);
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.c.x, arg_3.x, _wgslsmith_f_op_f32(step(global3.c.x, _wgslsmith_f_op_f32(sign(arg_0.a.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x * 937f))))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, 2032f, 720f, -817f)) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 1000f, -572f, arg_3.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(102f, -250f, arg_0.c.x, arg_3.x), vec4<f32>(arg_3.x, var_1.c.x, 1847f, arg_3.x))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(var_1.a.b - 1369f), -1092f, _wgslsmith_f_op_f32(select(-881f, -853f, true))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.a.c.x, global3.a.b, -114f, -104f) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.a.c.x, 1477f, global3.a.b, -494f))))))));
    return ~_wgslsmith_add_vec2_u32(reverseBits(~min(var_3.xx, vec2<u32>(var_1.a.a.a, arg_2.a))), var_2.yz);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_div_vec2_u32(~u_input.d.zz, func_3(arg_0, ~(~arg_0.b.b) & abs(firstLeadingBit(vec3<u32>(51015u, 1u, global3.a.a.a))), arg_2.b, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.c.x + 204f) + 1289f), _wgslsmith_div_f32(arg_1.c.x, _wgslsmith_f_op_f32(-global3.c.x)))));
    var var_1 = ~arg_1.a.a | _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(~4294967295u & (6470u ^ var_0.x), arg_1.a.a));
    global2 = select(vec2<bool>(true, all(arg_2.a.a.b)), select(select(vec2<bool>(global3.a.a.b.x || arg_3.b.x, arg_2.a.a.b.x), arg_3.b, !select(vec2<bool>(false, arg_1.a.b.x), vec2<bool>(true, global3.a.a.b.x), arg_2.a.a.b)), vec2<bool>(arg_3.b.x, true), arg_3.b), vec2<bool>(all(select(vec4<bool>(false, false, arg_2.a.a.b.x, true), select(vec4<bool>(global2.x, true, true, true), vec4<bool>(arg_3.b.x, global3.a.a.b.x, arg_1.a.b.x, arg_2.a.a.b.x), false), select(vec4<bool>(false, arg_1.a.b.x, false, arg_2.a.a.b.x), vec4<bool>(global3.a.a.b.x, true, true, false), true))), arg_2.a.a.b.x && all(arg_0.a.a.b)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c.x + _wgslsmith_f_op_f32(-857f + -722f))));
    var var_3 = firstTrailingBit(~vec4<u32>(arg_3.a, select(15985u, 0u, global2.x), _wgslsmith_div_u32(1u, 38316u), arg_2.a.a.a & 4294967295u) & ~vec4<u32>(~1u, 17239u, firstLeadingBit(arg_0.a.a.a), 1u | arg_2.a.a.a));
    return select(!select(vec2<bool>(true, false != arg_2.a.a.b.x), select(select(arg_0.a.a.b, global3.a.a.b, vec2<bool>(false, false)), vec2<bool>(false, global3.a.a.b.x), any(vec3<bool>(arg_1.a.b.x, global2.x, global2.x))), arg_1.a.b), arg_1.a.b, arg_2.a.a.b);
}

fn func_1(arg_0: bool, arg_1: vec2<u32>) -> Struct_2 {
    global2 = !global3.a.a.b;
    var var_0 = global3.b.b;
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.a.c.x, global3.a.a.c.x)), _wgslsmith_f_op_vec2_f32(-global3.c), !global3.a.a.b)) - global3.a.c.zy) - _wgslsmith_f_op_vec2_f32(select(global3.c, _wgslsmith_f_op_vec2_f32(global3.c + _wgslsmith_f_op_vec2_f32(global3.c + global3.a.c.zz)), !func_2(Struct_4(global3.a, global3.b, vec2<f32>(global3.a.c.x, global3.a.c.x)), Struct_2(global3.a.a, 834f, vec3<f32>(-1000f, 1152f, 203f)), Struct_4(Struct_2(global3.a.a, -1992f, global3.a.a.c), global3.b, vec2<f32>(global3.a.a.c.x, 1094f)), global3.a.a))))));
    var var_2 = _wgslsmith_f_op_f32(sign(-669f));
    global1 = vec2<i32>(-2147483647i, global1.x);
    return Struct_2(Struct_1(min(u_input.a, 1u), global3.a.a.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a.a.c.x, var_1.x, 698f) + vec3<f32>(-837f, var_1.x, -419f)))), _wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global3.c.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, 1242f, var_1.x), _wgslsmith_f_op_vec3_f32(-global3.a.a.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(590f, var_1.x, var_1.x))), vec3<f32>(global3.a.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2642f, var_1.x))), global3.c.x)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2, arg_3: Struct_2) -> Struct_2 {
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_div_u32(18646u, u_input.c);
    var var_2 = u_input.d;
    var var_3 = _wgslsmith_f_op_f32(-arg_3.b);
    var var_4 = arg_2.a;
    return Struct_2(func_1(func_2(Struct_4(arg_3, global3.b, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1144f, global3.c.x), vec2<f32>(-506f, -566f)))), arg_3, Struct_4(arg_2, Struct_3(4294967295u, vec3<u32>(arg_2.a.a, 0u, 4294967295u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-653f, -389f)))), func_1(true, u_input.d.zz).a).x, abs(_wgslsmith_add_vec2_u32(var_2.yx, var_2.xy & vec2<u32>(37011u, arg_2.a.a)))).a, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_2.b)) + arg_2.a.c.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-645f, global3.c.x), _wgslsmith_f_op_f32(-607f - func_1(true, u_input.d.yy).b), arg_3.b) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.c + arg_3.a.c) - _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(var_4.c + var_4.c), _wgslsmith_f_op_vec3_f32(-arg_2.c))))));
}

fn func_5(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(226f, 766f), arg_0.c.x, _wgslsmith_f_op_f32(max(global3.c.x, arg_0.a.c.x)))))) * _wgslsmith_f_op_vec3_f32(global3.a.c + _wgslsmith_f_op_vec3_f32(func_1(any(vec3<bool>(global2.x, arg_0.a.b.x, true)), ~global3.b.b.yy).c * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.c.x, 858f, global3.a.c.x)) * vec3<f32>(arg_0.c.x, arg_0.a.c.x, -756f)))));
    var var_1 = Struct_4(arg_0, Struct_3(arg_0.a.a, countOneBits(~vec3<u32>(9531u, arg_0.a.a, 46154u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1602f + 472f))) + var_0.zy));
    global1 = ~(-vec2<i32>(u_input.e, u_input.e) ^ vec2<i32>(countOneBits(~11969i), countOneBits(_wgslsmith_mod_i32(-2147483647i, 6946i))));
    var_1 = Struct_4(Struct_2(arg_0.a, _wgslsmith_div_f32(var_0.x, _wgslsmith_div_f32(137f, 836f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c - _wgslsmith_f_op_vec3_f32(-global3.a.a.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1845f, var_1.a.c.x, -971f))))), Struct_3(~(~(~1u)), vec3<u32>(~firstTrailingBit(27697u), 32235u | (7285u ^ var_1.b.b.x), _wgslsmith_sub_u32(1u, u_input.d.x))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1334f, 203f) * global3.c))) * _wgslsmith_f_op_vec2_f32(min(var_0.yy, vec2<f32>(568f, arg_0.a.c.x))))));
    var var_2 = Struct_4(Struct_2(var_1.a.a, _wgslsmith_f_op_f32(min(var_0.x, var_0.x)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -859f)), func_4(_wgslsmith_clamp_vec2_i32(vec2<i32>(78084i, 1i), vec2<i32>(u_input.e, 2147483647i), vec2<i32>(global1.x, global1.x)), select(false, global3.a.a.b.x, var_1.a.a.b.x), Struct_2(Struct_1(4544u, vec2<bool>(false, var_1.a.a.b.x), vec3<f32>(global3.c.x, -1798f, -2359f)), var_1.c.x, vec3<f32>(-1000f, 274f, arg_0.b)), func_4(vec2<i32>(u_input.e, u_input.e), global3.a.a.b.x, Struct_2(Struct_1(arg_0.a.a, var_1.a.a.b, vec3<f32>(920f, global3.c.x, var_1.c.x)), global3.c.x, arg_0.c), Struct_2(arg_0.a, -894f, vec3<f32>(arg_0.c.x, global3.a.a.c.x, 1881f)))).a.c.x, _wgslsmith_f_op_f32(f32(-1f) * -1725f))), var_1.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c.x, var_1.a.a.c.x)) - var_0.yy)));
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(global3.a, func_5(func_4(vec2<i32>(-1i) * -vec2<i32>(2147483647i, -80680i), global3.a.a.b.x, global3.a, func_1(all(vec4<bool>(global3.a.a.b.x, true, global3.a.a.b.x, true)), u_input.d.xz >> (vec2<u32>(u_input.b, 39u) % vec2<u32>(32u))))), _wgslsmith_f_op_vec2_f32(trunc(func_1(global2.x, _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 32930u), global3.b.b.xy, u_input.d.xz), vec2<u32>(global3.a.a.a, 2577u))).c.zz)));
    let var_0 = 66094u;
    let var_1 = global1.x < -2147483647i;
    global2 = !(!(!global3.a.a.b));
    global0 = global3.c.x;
    let var_2 = all(vec4<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.b) * global3.c.x) == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-906f - 313f))), false && (_wgslsmith_f_op_f32(trunc(-197f)) < _wgslsmith_f_op_f32(floor(global3.a.b))), global2.x, (_wgslsmith_div_u32(59245u, var_0) << (~4294967295u % 32u)) == global3.a.a.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-global3.a.b), -429f, _wgslsmith_f_op_f32(504f - global3.a.c.x), _wgslsmith_f_op_f32(global3.c.x - global3.a.a.c.x)), _wgslsmith_f_op_f32(-449f + 1996f), (((vec3<u32>(26512u, global3.b.a, u_input.c) & global3.b.b) << (u_input.d % vec3<u32>(32u))) ^ reverseBits(vec3<u32>(43275u, u_input.c, var_0) >> (u_input.d % vec3<u32>(32u)))) ^ _wgslsmith_mod_vec3_u32(reverseBits(u_input.d), vec3<u32>(68892u, ~12002u, 33425u)), ~(~21696u));
}

