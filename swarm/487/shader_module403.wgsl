struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<f32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: Struct_1;

var<private> global2: Struct_2 = Struct_2(2147483647i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: bool, arg_3: i32) -> vec3<f32> {
    global1 = Struct_1(!global1.a, ~(global1.b << (~abs(vec4<u32>(147342u, u_input.c, 1u, 51860u)) % vec4<u32>(32u))));
    global0 = array<Struct_4, 26>();
    global2 = Struct_2(0i);
    global2 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(arg_1.b.x & -15481i, _wgslsmith_dot_vec2_i32(arg_1.b.yx, arg_1.b.xy)), reverseBits(-arg_1.b.x), 57616i), arg_1.b));
    global2 = Struct_2(0i >> (firstTrailingBit(countOneBits(_wgslsmith_add_u32(1u, global1.b.x))) % 32u));
    return _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1154f, 1712f, global1.a.x)) + 768f) - 646f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1027f))), 1f)))));
}

fn func_2(arg_0: vec2<i32>) -> Struct_5 {
    let var_0 = global0[_wgslsmith_index_u32(abs(u_input.a.x << (global1.b.x % 32u)), 26u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(false, Struct_4(global1.b.x, var_0.b), true, 1i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(550f, 220f, 1140f) - vec3<f32>(828f, 1821f, 323f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1149f, 3016f, 158f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-202f, 1073f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.zx)))))));
    let var_3 = global0[_wgslsmith_index_u32(max(_wgslsmith_mod_u32(36036u, ~0u), 4294967295u), 26u)];
    global0 = array<Struct_4, 26>();
    return Struct_5(Struct_2(~(-28123i)), Struct_2(global2.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xy - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(var_1.zy)), _wgslsmith_f_op_vec2_f32(min(var_1.xz, var_1.zy)))))), countOneBits(vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(4294967295u, 4294967295u, 39940u))), Struct_2(-_wgslsmith_dot_vec3_i32(var_3.b, -vec3<i32>(-9098i, var_3.b.x, global2.a))));
}

fn func_1() -> Struct_2 {
    let var_0 = func_2(vec2<i32>(max(-(~global2.a), min(firstLeadingBit(-34989i), firstTrailingBit(-1i))), u_input.b));
    global1 = Struct_1(select(!global1.a, !global1.a, vec3<bool>(global1.a.x, select(true, any(vec4<bool>(true, false, global1.a.x, false)), all(vec2<bool>(true, true))), any(global1.a))), global1.b);
    global1 = Struct_1(!global1.a, vec4<u32>(_wgslsmith_div_u32(~(global1.b.x ^ var_0.d.x), 33242u << ((global1.b.x >> (4294967295u % 32u)) % 32u)), 45474u, ~0u, 42424u));
    let var_1 = Struct_4(func_2(vec2<i32>(~global2.a, 1i)).d.x, _wgslsmith_mod_vec3_i32(vec3<i32>(47550i >> (min(global1.b.x, u_input.c) % 32u), 1i, ~(-15753i)), select(max(-vec3<i32>(-2147483647i, global2.a, 20187i), vec3<i32>(u_input.b, -1i, u_input.b)), -vec3<i32>(u_input.b, var_0.e.a, -21399i) & ~vec3<i32>(-2147483647i, -27945i, 0i), select(true, global1.a.x & false, any(global1.a.yy)))));
    global0 = array<Struct_4, 26>();
    return func_2(var_1.b.yy | vec2<i32>(abs(i32(-1i) * -38215i), _wgslsmith_dot_vec3_i32(vec3<i32>(30945i, 2147483647i, global2.a), var_1.b))).b;
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<i32>) -> Struct_1 {
    global1 = Struct_1(global1.a, vec4<u32>(global1.b.x, min(u_input.a.x, global1.b.x) >> (reverseBits(global1.b.x) % 32u), 0u, ~global1.b.x));
    return Struct_1(!vec3<bool>(global1.a.x, arg_2.x < -22169i, any(global1.a)), abs(vec4<u32>((u_input.a.x >> (2097u % 32u)) & _wgslsmith_clamp_u32(global1.b.x, 91790u, 1u), 0u, global1.b.x, u_input.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(~(~select(vec2<u32>(1u, u_input.a.x), vec2<u32>(0u, global1.b.x), global1.a.x) & vec2<u32>(global1.b.x, _wgslsmith_clamp_u32(u_input.c, 40273u, 0u))), select(select(select(global1.a, select(vec3<bool>(false, global1.a.x, false), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, true)), vec3<bool>(false, global1.a.x, global1.a.x)), global1.a, !(!global1.a)), !vec3<bool>(global1.a.x, true, !global1.a.x), !vec3<bool>(all(vec4<bool>(false, global1.a.x, global1.a.x, global1.a.x)), global1.a.x, global1.a.x)), func_4(any(!select(vec4<bool>(true, true, false, global1.a.x), vec4<bool>(true, global1.a.x, global1.a.x, true), vec4<bool>(global1.a.x, false, false, true))), func_1(), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, global2.a, -6192i), vec3<i32>(global2.a, -12100i, 0i))));
    let var_1 = var_0.b.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-554f + -866f), _wgslsmith_f_op_f32(f32(-1f) * -1519f), 1086f), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(156f, 814f, -1062f), vec3<f32>(168f, 234f, 264f), false)))), global1.a))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-814f, -337f, 349f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-448f + 1000f), 1510f, _wgslsmith_div_f32(906f, -457f)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -1836f));
    var var_4 = Struct_3(countOneBits(vec2<u32>(_wgslsmith_add_u32(countOneBits(var_0.c.b.x), 0u), _wgslsmith_sub_u32(~0u, 1u))), !func_4(true, Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -1i, global2.a), vec3<i32>(global2.a, global2.a, u_input.b))), ~(~vec3<i32>(u_input.b, 0i, 25317i))).a, var_0.c);
    var var_5 = _wgslsmith_dot_vec4_i32(-(~vec4<i32>(0i, -1i, global2.a, global2.a)) | vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -30791i, global2.a, 0i), vec4<i32>(u_input.b, 53282i, -1i, global2.a)), ~global2.a, 45742i, 1i), min(firstLeadingBit(select(vec4<i32>(0i, -1i, -34304i, 55415i), vec4<i32>(0i, 22485i, global2.a, global2.a), global1.a.x)), vec4<i32>(-2147483647i, countOneBits(13028i), -1i, _wgslsmith_mod_i32(global2.a, u_input.b)))) << (~(~(~u_input.c)) % 32u);
    let var_6 = min(~(~_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global2.a), vec2<i32>(u_input.b, 7055i)), abs(vec2<i32>(0i, u_input.b)))), vec2<i32>(_wgslsmith_div_i32(-2147483647i, reverseBits(u_input.b << (57036u % 32u))), 19790i));
    let x = u_input.a;
    s_output = StorageBuffer(func_2(max(var_6, var_6)).b.a);
}

