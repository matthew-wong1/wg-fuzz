struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: array<Struct_2, 27>;

var<private> global3: array<i32, 8> = array<i32, 8>(50937i, -38299i, -21453i, 0i, 0i, 1i, 1i, 0i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_4 {
    let var_0 = 30643u;
    let var_1 = Struct_3(arg_1.yz, false, Struct_2(7945u, ~_wgslsmith_dot_vec4_i32(-vec4<i32>(9216i, global0.a.x, global0.b, arg_2.b), vec4<i32>(global3[_wgslsmith_index_u32(0u, 8u)], 2147483647i, 0i, 43387i))), Struct_1(-_wgslsmith_div_vec3_i32(global0.a, global0.a ^ global0.a), -19603i << ((firstTrailingBit(arg_0) << (_wgslsmith_sub_u32(39748u, arg_2.a) % 32u)) % 32u)), Struct_2(908u, ~(~1i)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1160f);
    var var_3 = Struct_1(var_1.d.a, -2147483647i);
    let var_4 = select(vec2<bool>(true, true), vec2<bool>(false, true), false);
    return Struct_4(vec3<bool>(!all(vec3<bool>(var_1.b, false, var_1.b)) & true, var_4.x, var_4.x), var_1.d, select(select(select(select(vec4<bool>(false, var_1.b, var_4.x, var_4.x), vec4<bool>(false, true, var_1.b, var_4.x), var_1.b), select(vec4<bool>(true, true, var_4.x, var_1.b), vec4<bool>(var_4.x, var_1.b, var_4.x, false), true), !vec4<bool>(var_4.x, true, var_1.b, true)), select(!vec4<bool>(true, false, var_4.x, true), select(vec4<bool>(false, var_1.b, false, var_1.b), vec4<bool>(var_4.x, false, var_1.b, var_1.b), vec4<bool>(var_1.b, var_4.x, false, var_4.x)), !var_4.x), true), !select(vec4<bool>(false, false, true, var_4.x), !vec4<bool>(true, true, true, var_4.x), true), u_input.a == (var_1.c.b | var_3.b)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: u32) -> u32 {
    global1 = ~(~(~_wgslsmith_sub_u32(~0u, u_input.d.x)));
    let var_0 = _wgslsmith_div_u32(~_wgslsmith_mult_u32(15770u, arg_2), ~8613u);
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(floor(-1112f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1411f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f - 1000f) * -438f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-441f, -418f)), _wgslsmith_f_op_f32(-983f - -1000f))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(555f, 1071f, -1187f, -885f), vec4<f32>(-511f, -417f, -673f, -244f), arg_0.c)) * vec4<f32>(513f, 1101f, 702f, -2339f)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(759f, 766f, 299f, 359f), vec4<f32>(-172f, -2374f, -466f, 795f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1695f, 2036f, 398f, 1783f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(ceil(867f)), _wgslsmith_f_op_f32(-681f * 380f), _wgslsmith_f_op_f32(step(-957f, 2515f)), 1f), vec4<f32>(_wgslsmith_f_op_f32(abs(-735f)), -1328f, _wgslsmith_f_op_f32(sign(-144f)), _wgslsmith_f_op_f32(round(1689f)))))));
    global2 = array<Struct_2, 27>();
    var var_2 = ~(var_0 | _wgslsmith_sub_u32(~u_input.c.x, 4294967295u));
    return 1u;
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec2<u32>) -> bool {
    var var_0 = abs(-2147483647i);
    let var_1 = vec4<i32>((-2147483647i >> (func_3(func_2(1u, vec3<u32>(59197u, 105907u, 11169u), global2[_wgslsmith_index_u32(arg_1.x, 27u)]), abs(arg_1.x), u_input.b.x) % 32u)) ^ global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~u_input.b.x, ~4294967295u, arg_1.x) & (~arg_1.x & u_input.d.x), 8u)], 0i, 1909i, -22288i);
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(3287f, _wgslsmith_f_op_f32(f32(-1f) * -368f))))));
    let var_4 = func_2(1u << (~(~_wgslsmith_clamp_u32(1u, 6315u, arg_2.x)) % 32u), ((countOneBits(vec3<u32>(arg_2.x, 31454u, arg_1.x)) ^ (u_input.d << (vec3<u32>(arg_2.x, 4294967295u, 17639u) % vec3<u32>(32u)))) << (_wgslsmith_add_vec3_u32(abs(vec3<u32>(31263u, 4294967295u, 29333u)), arg_1.yxz >> (u_input.d % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<u32>(firstLeadingBit(arg_2.x), select(67175u, _wgslsmith_sub_u32(1u, u_input.c.x), arg_0), 22463u), Struct_2(arg_2.x, -global3[_wgslsmith_index_u32(~1u, 8u)]));
    return var_3.x < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1580f + _wgslsmith_f_op_f32(707f + var_3.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~1i;
    global2 = array<Struct_2, 27>();
    let var_1 = _wgslsmith_mult_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global3[_wgslsmith_index_u32(u_input.d.x, 8u)]) ^ vec2<i32>(-8667i, u_input.a), -global0.a.xz, -global0.a.yy) & select(min(min(global0.a.xz, global0.a.zy), global0.a.xz), global0.a.zz & vec2<i32>(u_input.a, -2147483647i), vec2<bool>(true, true)), -select(abs(~global0.a.xy), ~global0.a.yy, func_1(false, firstTrailingBit(u_input.c), vec2<u32>(u_input.c.x, u_input.c.x))));
    global0 = func_2(firstTrailingBit(func_3(Struct_4(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), func_2(u_input.b.x, vec3<u32>(u_input.b.x, u_input.c.x, u_input.b.x), Struct_2(u_input.b.x, global0.a.x)).b, vec4<bool>(true, true, true, true)), 4294967295u, 1u)), vec3<u32>(~u_input.d.x, 0u, firstLeadingBit(reverseBits(~1u))), global2[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_sub_u32(4294967295u, 30357u) >> ((u_input.c.x ^ u_input.d.x) % 32u), _wgslsmith_mult_u32(1u, ~u_input.b.x)), 27u)]).b;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-385f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3831f) * -1654f)))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(1f)), -512f, func_1(true, select(vec4<u32>(5581u, u_input.c.x, u_input.c.x, 0u), vec4<u32>(u_input.b.x, 52572u, 4294967295u, u_input.c.x), false), _wgslsmith_mult_vec2_u32(u_input.d.xz, u_input.d.yx)) & select(all(vec2<bool>(true, false)), false, true))), _wgslsmith_f_op_f32(1284f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-914f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, -global0.a >> (reverseBits(firstTrailingBit(u_input.d)) % vec3<u32>(32u)), u_input.c, _wgslsmith_f_op_vec4_f32(-var_2), var_2.x);
}

