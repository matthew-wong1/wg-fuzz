struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-813f, 799f), -9860i, vec3<i32>(-14196i, -1i, -1i));

var<private> global1: array<Struct_1, 26>;

var<private> global2: bool = false;

var<private> global3: array<i32, 17> = array<i32, 17>(20253i, i32(-2147483648), 2147483647i, -68829i, -46727i, -5439i, 2147483647i, 31660i, -12866i, -1i, -25157i, 0i, 0i, 1i, 2147483647i, -1i, -12449i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>) -> vec2<f32> {
    global2 = (arg_0.c.x & (~(~arg_1.b) >> (_wgslsmith_mult_u32(~56806u, 1u) % 32u))) < _wgslsmith_clamp_i32(-9174i, 34860i, _wgslsmith_dot_vec2_i32(countOneBits(-arg_0.c.zy), vec2<i32>(firstLeadingBit(-1567i), 1i)));
    var var_0 = u_input.b >> (16751u % 32u);
    global1 = array<Struct_1, 26>();
    var var_1 = vec2<bool>(false, !(!all(vec3<bool>(true, false, true))));
    global1 = array<Struct_1, 26>();
    return _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a))) - _wgslsmith_f_op_vec2_f32(global0.a - arg_0.a))));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    global3 = array<i32, 17>();
    var var_0 = all(vec3<bool>((_wgslsmith_f_op_f32(step(arg_0, arg_1.x)) >= _wgslsmith_f_op_f32(1000f * global0.a.x)) || true, false, arg_2.x >= (~arg_3.c.x & 0i)));
    let var_1 = arg_3;
    let var_2 = arg_3;
    let var_3 = arg_3;
    return _wgslsmith_clamp_u32(~min(1u, _wgslsmith_mod_u32(~4321u, _wgslsmith_div_u32(95940u, 1u))), select(10547u, 11715u, !(var_3.c.x > -31305i)), ~46975u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_1 {
    global1 = array<Struct_1, 26>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1806f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(544f)) - -1461f))), firstLeadingBit(-30660i), min(firstLeadingBit(vec3<i32>(countOneBits(13202i), max(global3[_wgslsmith_index_u32(66675u, 17u)], 9324i), i32(-1i) * -15266i)), arg_1.c));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_3(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~func_2(_wgslsmith_f_op_f32(f32(-1f) * -997f), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(vec2<f32>(-655f, 1000f), 0i, u_input.d), global1[_wgslsmith_index_u32(65393u, 26u)], vec2<i32>(u_input.c, global0.b))), max(vec2<i32>(-2147483647i, -1i), global0.c.xz), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(19982u, 0u, 0u), 26u)]), 1u), 26u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, vec2<f32>(-409f, 1000f)))), global0.b, ~select(vec3<i32>(global0.b, 2147483647i, global0.b), global0.c, true) | vec3<i32>(~(-19206i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, u_input.c, global0.c.x), vec4<i32>(global0.c.x, -2254i, global0.b, u_input.d.x)), 19533i)), global0.a.x, global0.b);
    var var_1 = var_0;
    global1 = array<Struct_1, 26>();
    var var_2 = func_3(func_3(func_3(var_0, var_0, _wgslsmith_f_op_f32(round(var_0.a.x)), -(~var_0.c.x)), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1015f, global0.a.x) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(956f, var_0.a.x)))), firstLeadingBit(~global3[_wgslsmith_index_u32(29668u, 17u)]), var_1.c), -1031f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(min(1u, 0u), ~22037u, abs(18149u), ~35607u), countOneBits(firstLeadingBit(vec4<u32>(32673u, 8571u, 15890u, 11080u)))), 17u)]), var_0, -817f, i32(-1i) * -23009i);
    global1 = array<Struct_1, 26>();
    var_1 = func_3(func_3(Struct_1(var_2.a, ~3224i, ~u_input.a & vec3<i32>(578i, 0i, -30343i)), func_3(var_0, global1[_wgslsmith_index_u32(abs(abs(1958u)), 26u)], _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_2.a.x, -321f))), var_2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) + _wgslsmith_f_op_f32(step(609f, -622f)))), -var_1.b ^ 9321i), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(38217u, 4294967295u, 19929u, 16407u), vec4<u32>(1u, 0u, 0u, 0u)), ~max(vec4<u32>(0u, 10862u, 0u, 0u), vec4<u32>(4294967295u, 107647u, 0u, 1u))), 26u)], -203f, countOneBits(-(~_wgslsmith_mult_i32(var_2.c.x, var_1.b))));
    let var_3 = firstTrailingBit(_wgslsmith_clamp_u32(min(~(~2848u), ~1u), ~(~6870u), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(123870u, 49731u)))));
    var var_4 = select(!select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(any(vec4<bool>(true, false, true, true)), false), !any(vec2<bool>(true, false))), select(!select(vec2<bool>(false, false), vec2<bool>(true, true), true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), !(1i > (-2147483647i << (var_3 % 32u)))), select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), true), vec2<bool>(true, any(vec4<bool>(true, false, true, true))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, false), all(vec4<bool>(false, true, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))), vec2<bool>(true, true)));
    var var_5 = _wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~14626u, 1u) >> (var_3 % 32u), 1u), 17u)], firstTrailingBit(-_wgslsmith_sub_i32(countOneBits(var_1.c.x), func_3(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(0u, 26u)], 231f, var_1.b).c.x)), -global0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(var_1.b, -1i, -65575i)), min(_wgslsmith_sub_u32(var_3, var_3), func_2(var_0.a.x, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-var_2.a), _wgslsmith_div_vec2_f32(vec2<f32>(-806f, var_0.a.x), var_1.a))), firstLeadingBit(vec2<i32>(u_input.c, 1348i) << (vec2<u32>(var_3, 20999u) % vec2<u32>(32u))), func_3(func_3(global1[_wgslsmith_index_u32(4294967295u, 26u)], Struct_1(vec2<f32>(-1568f, var_2.a.x), global0.b, global0.c), 833f, var_1.b), func_3(var_0, Struct_1(vec2<f32>(-1198f, -1499f), 1i, global0.c), 594f, -54088i), _wgslsmith_f_op_f32(exp2(var_1.a.x)), 1i))));
}

