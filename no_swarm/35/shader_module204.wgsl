struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-1i);

var<private> global1: bool;

var<private> global2: u32;

var<private> global3: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: f32) -> u32 {
    let var_0 = arg_1;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f) - arg_1))), global0.a, vec2<f32>(369f, 807f), Struct_1(23616i), Struct_1(~(~0i)));
    var var_2 = 1u;
    global2 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_div_u32(1u, 78138u), _wgslsmith_mod_u32(~0u, ~1u)), countOneBits(vec3<u32>(select(15956u, 21769u, true), ~71471u, reverseBits(0u)) | _wgslsmith_mod_vec3_u32(vec3<u32>(47332u, 0u, 4294967295u), select(vec3<u32>(0u, 4294967295u, 65016u), vec3<u32>(4294967295u, 1u, 18233u), vec3<bool>(false, false, false)))));
    global2 = 58727u;
    return _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 20961u, 1u), vec4<u32>(22148u, 4294967295u, 4294967295u, 42132u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(18142u, 1u, 57351u, 23880u))), 1u) | abs(~_wgslsmith_mod_u32(1u, reverseBits(1916u)));
}

fn func_4(arg_0: u32) -> bool {
    let var_0 = min(abs(arg_0), arg_0);
    let var_1 = var_0;
    global2 = var_1;
    let var_2 = vec3<i32>(_wgslsmith_mult_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(-1i, global0.a), select(vec2<i32>(u_input.a, global0.a), vec2<i32>(30905i, u_input.a), true))), 1i >> (select(countOneBits(41945u), var_0, false) % 32u)), i32(-1i) * -1i, _wgslsmith_div_i32(-39219i, ~_wgslsmith_add_i32(-21159i, 2147483647i)) << (firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, arg_0, var_1), vec3<u32>(6624u, var_0, var_1))) % 32u));
    global2 = 0u;
    return all(vec2<bool>(true, true));
}

fn func_2() -> Struct_3 {
    let var_0 = all(vec2<bool>(func_4(func_3(_wgslsmith_f_op_f32(f32(-1f) * -999f), -133f)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1413f, 1398f))) <= _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-934f - 1161f)))));
    global3 = array<vec3<bool>, 13>();
    global2 = ~1u;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1139f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1527f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_div_f32(-827f, _wgslsmith_f_op_f32(f32(-1f) * -477f)), _wgslsmith_f_op_f32(557f + _wgslsmith_f_op_f32(floor(462f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 1907f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1352f, 581f) - vec2<f32>(772f, -183f)) * vec2<f32>(-1750f, 1495f))))), false));
    global0 = Struct_1(_wgslsmith_mod_i32(-_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-45186i, 39927i, 0i), vec3<i32>(global0.a, 0i, global0.a), vec3<i32>(global0.a, 2147483647i, 1i)), vec3<i32>(-14413i, u_input.a, 0i) | vec3<i32>(u_input.a, global0.a, 0i)), _wgslsmith_clamp_i32(global0.a, i32(-1i) * -1i, global0.a)));
    return Struct_3(vec2<bool>(all(!(!global3[_wgslsmith_index_u32(4294967295u, 13u)])), !(!(!var_0))));
}

fn func_1(arg_0: vec2<i32>) -> vec2<bool> {
    let var_0 = true;
    var var_1 = func_2();
    var_1 = func_2();
    global0 = Struct_1(42349i & ~(~(-global0.a)));
    global2 = ~(~31596u) << (reverseBits(firstTrailingBit(countOneBits(~1u))) % 32u);
    return vec2<bool>(var_0 & true, _wgslsmith_add_i32(arg_0.x, arg_0.x) >= -1i);
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<f32>) -> Struct_1 {
    var var_0 = firstLeadingBit(global0.a);
    let var_1 = 67284u;
    global2 = var_1;
    let var_2 = any(vec3<bool>(arg_0.x, all(arg_0), true));
    var var_3 = Struct_1(u_input.a);
    return Struct_1(-global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec3<bool>, 13>();
    global1 = all(vec4<bool>(all(select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, false), true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))), true, false, any(select(global3[_wgslsmith_index_u32(countOneBits(1u), 13u)], vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    global0 = func_5(!(!func_1(vec2<i32>(-33663i, -1i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(1744f, 1000f)), _wgslsmith_f_op_f32(-1000f + 771f), _wgslsmith_f_op_f32(select(758f, -183f, true)))) - vec3<f32>(_wgslsmith_f_op_f32(trunc(-985f)), _wgslsmith_div_f32(-1220f, 735f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(529f + -1000f)))));
    global2 = func_3(_wgslsmith_f_op_f32(1000f - -2262f), 2117f);
    var var_0 = !select(global3[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(firstTrailingBit(9974u), ~61189u)), 13u)], global3[_wgslsmith_index_u32(1u, 13u)], global3[_wgslsmith_index_u32(8637u, 13u)]);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(327f))))), -714f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -353f))))) + _wgslsmith_f_op_f32(-642f - _wgslsmith_div_f32(-731f, 1616f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1135f - _wgslsmith_f_op_f32(f32(-1f) * -1747f))));
    var var_2 = select(select(var_0.x, global0.a < u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.a, 17478i, u_input.a), -vec4<i32>(global0.a, u_input.a, u_input.a, -1933i)) <= _wgslsmith_add_i32(u_input.a, global0.a)), true, !(!var_0.x));
    var var_3 = vec2<i32>(-1i) * -(-select(vec2<i32>(-12866i, u_input.a), vec2<i32>(u_input.a, 677i), var_0.x) >> (~vec2<u32>(15788u, 1u) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(_wgslsmith_add_u32(~1u, firstLeadingBit(4294967295u)), 1u, _wgslsmith_mod_u32(firstTrailingBit(4294967295u), ~4294967295u), ~1u), vec4<u32>(_wgslsmith_sub_u32(1u, 1u), ~32201u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 13497u), firstTrailingBit(vec3<u32>(1u, 18474u, 9363u)))), false), _wgslsmith_mult_i32(countOneBits(func_5(var_0.zy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1298f, 319f))).a), var_3.x), ~1u, countOneBits(9484u), -1189f);
}

