struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, false, true, true, true, false, true, true, true, true, false, true, false, false, true, true, true, false, false, false, true, false, true, false, true, false, false);

var<private> global1: f32 = -2105f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> f32 {
    global0 = array<bool, 27>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-961f - _wgslsmith_f_op_f32(ceil(359f))));
    global0 = array<bool, 27>();
    let var_0 = vec3<u32>(6207u, 4294967295u, 4043u) | ~vec3<u32>(min(4294967295u, ~4294967295u), firstTrailingBit(0u) & firstTrailingBit(57021u), _wgslsmith_sub_u32(47661u, 1u));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1237f))))), 512f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(425f)), 271f)));
    return _wgslsmith_f_op_f32(sign(-563f));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> f32 {
    var var_0 = Struct_3(_wgslsmith_mod_u32(firstTrailingBit(10911u), _wgslsmith_mult_u32(~1u, arg_0.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -369f), _wgslsmith_div_f32(1991f, -752f)))), all(!vec4<bool>(arg_1.x, arg_1.x, false, global0[_wgslsmith_index_u32(arg_0.x, 27u)])) != any(arg_1), 732f, -13791i));
    global0 = array<bool, 27>();
    var var_1 = Struct_2(vec2<bool>(arg_1.x, true), Struct_1(var_0.b.c, false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(628f, -455f)) * _wgslsmith_div_f32(var_0.b.c, var_0.b.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(abs(-156f))))), u_input.a.x), vec2<bool>(select(global0[_wgslsmith_index_u32(var_0.a, 27u)], false, all(vec2<bool>(var_0.b.b, arg_1.x))), false), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -767f), _wgslsmith_f_op_f32(-var_0.b.a)), var_0.b.a, arg_1.x)), global0[_wgslsmith_index_u32(1u, 27u)], var_0.b.c, u_input.a.x));
    var_1 = Struct_2(arg_1, Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(-441f, _wgslsmith_f_op_f32(var_1.d.c - 1147f))))), var_0.b.b, 1000f, max(1i, _wgslsmith_dot_vec2_i32(-u_input.a.zz, vec2<i32>(var_0.b.d, -26000i)))), arg_1, var_1.b);
    global1 = var_1.d.c;
    return _wgslsmith_f_op_f32(func_3());
}

fn func_1(arg_0: f32, arg_1: i32) -> Struct_2 {
    global1 = 106f;
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_f_op_f32(1281f - arg_0))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(floor(arg_0)))))) - arg_0), false));
    var var_1 = ~_wgslsmith_add_vec3_i32(u_input.a, -vec3<i32>(arg_1, _wgslsmith_clamp_i32(-8831i, u_input.b, 13253i), arg_1));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec4<u32>(4716u, 64458u, 10302u, 4294967295u), vec2<bool>(true, true)))), _wgslsmith_f_op_f32(func_2(~min(vec4<u32>(1u, 25912u, 4294967295u, 84066u), vec4<u32>(4294967295u, 0u, 36123u, 1u)), !(!vec2<bool>(global0[_wgslsmith_index_u32(17510u, 27u)], true)))), -1000f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, -720f, arg_0) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1584f, arg_0, arg_0, arg_0)))) + vec4<f32>(-524f, 1079f, _wgslsmith_f_op_f32(trunc(arg_0)), _wgslsmith_f_op_f32(-arg_0))));
    let var_3 = 1i;
    return Struct_2(select(vec2<bool>(true, all(vec2<bool>(false, global0[_wgslsmith_index_u32(60602u, 27u)]))), select(select(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(32066u, 27u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(94723u, 27u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 27u)])), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(19290u, 27u)]), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(false, global0[_wgslsmith_index_u32(7764u, 27u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(79116u, 27u)]), global0[_wgslsmith_index_u32(18773u, 27u)]), false), vec2<bool>(any(vec4<bool>(true, true, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(1u, 27u)])), true)), (0i & _wgslsmith_sub_i32(var_1.x, -59690i)) == -var_3), Struct_1(var_2.x, global0[_wgslsmith_index_u32(abs(~reverseBits(1u)), 27u)], -241f, -(~var_3) >> (~4294967295u % 32u)), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(~9881u, 27u)]), vec2<bool>(true, _wgslsmith_div_f32(-385f, 382f) == _wgslsmith_f_op_f32(-var_2.x)), !any(select(vec2<bool>(global0[_wgslsmith_index_u32(639u, 27u)], global0[_wgslsmith_index_u32(0u, 27u)]), vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 27u)]), vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false)))), Struct_1(_wgslsmith_f_op_f32(func_2(firstTrailingBit(select(vec4<u32>(12373u, 50712u, 77686u, 4294967295u), vec4<u32>(17812u, 4294967295u, 85307u, 1u), vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], global0[_wgslsmith_index_u32(10064u, 27u)], false, global0[_wgslsmith_index_u32(4294967295u, 27u)]))), select(!vec2<bool>(false, global0[_wgslsmith_index_u32(18569u, 27u)]), vec2<bool>(true, true), vec2<bool>(true, true)))), true, 1154f, ~(~_wgslsmith_div_i32(30677i, u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 27>();
    global1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(432f)), 159f) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(939f, -1031f) + _wgslsmith_div_f32(-1398f, -798f)), 233f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1047f - _wgslsmith_f_op_f32(f32(-1f) * -113f)))));
    var var_0 = select(select(!vec2<bool>(!global0[_wgslsmith_index_u32(46592u, 27u)], false), select(select(vec2<bool>(false, false), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false), vec2<bool>(global0[_wgslsmith_index_u32(44679u, 27u)], true), global0[_wgslsmith_index_u32(65958u, 27u)]), false), !select(vec2<bool>(global0[_wgslsmith_index_u32(25508u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]), vec2<bool>(false, true), true), any(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 27u)], false, false, false))), true), !vec2<bool>(select(51835u, 78581u, true) == ~74469u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~0u, 160130u), 27u)]), (u_input.a.x ^ 0i) == u_input.a.x);
    var var_1 = func_1(-1979f, 1i >> (min(1u, _wgslsmith_clamp_u32(countOneBits(1u), 0u, _wgslsmith_add_u32(18289u, 53954u))) % 32u));
    global1 = var_1.b.a;
    let var_2 = ~max(2951u, ~12654u);
    let var_3 = func_1(_wgslsmith_f_op_f32(func_3()), 1i).b;
    let var_4 = Struct_2(!var_1.c, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.c) + _wgslsmith_div_f32(1815f, 782f))), !global0[_wgslsmith_index_u32(var_2, 27u)], _wgslsmith_f_op_f32(222f * var_3.a), var_3.d), !func_1(var_3.a, -34536i).c, func_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-200f))), var_3.a), 1i).d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))) + var_3.c), -var_1.d.d);
}

