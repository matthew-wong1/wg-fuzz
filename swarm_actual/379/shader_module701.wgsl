struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false));

var<private> global1: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(0u), Struct_1(0u), Struct_1(1u), Struct_1(12621u), Struct_1(1u), Struct_1(102564u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(42537u), Struct_1(29638u), Struct_1(29459u), Struct_1(0u), Struct_1(1u), Struct_1(118570u));

var<private> global2: vec2<f32> = vec2<f32>(3021f, -1823f);

var<private> global3: bool;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_1) -> vec3<f32> {
    let var_0 = all(!(!vec2<bool>(all(global0[_wgslsmith_index_u32(u_input.b.x, 32u)]), 15919i >= arg_0.x)));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-220f - global2.x))) * -916f);
    let var_2 = !select(true, !var_0, var_0);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * -211f) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global2.x)), global2.x))))) != -2493f;
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(581f * 1164f), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), global2.x), -1270f)));
    return vec3<f32>(-836f, 879f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1404f - global2.x)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(func_3(u_input.a, Struct_1(arg_1))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(arg_0.x, global2.x, global2.x))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 750f, arg_0.x) * vec3<f32>(935f, global2.x, global2.x)) - _wgslsmith_div_vec3_f32(vec3<f32>(-1681f, 1101f, arg_0.x), vec3<f32>(arg_0.x, arg_0.x, 680f)))))) - vec3<f32>(1099f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-286f))))));
    let var_1 = abs(~_wgslsmith_mult_i32(select(min(u_input.a.x, 0i), abs(u_input.e), all(global0[_wgslsmith_index_u32(4294967295u, 32u)])), -1i));
    var var_2 = ~9826u;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global2.x);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -171f) + 2202f), 1299f) * arg_0.x);
    return _wgslsmith_f_op_f32(ceil(arg_0.x)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-551f + -120f), _wgslsmith_f_op_f32(f32(-1f) * -863f))), 210f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_3, -564f)) - 1282f));
}

fn func_1() -> u32 {
    var var_0 = select(!(!vec3<bool>(all(vec2<bool>(true, false)), u_input.b.x >= 0u, u_input.a.x >= -2147483647i)), vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), true))), select(1u > u_input.d.x, !func_2(vec2<f32>(global2.x, global2.x), u_input.c), (u_input.c & u_input.c) <= 108556u), u_input.d.x > reverseBits(~4294967295u)), all(select(vec3<bool>(true, true, any(vec3<bool>(false, true, false))), !select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false)))));
    var var_1 = !var_0.x;
    global0 = array<vec4<bool>, 32>();
    let var_2 = vec2<bool>(select(var_0.x, true, true) & var_0.x, var_0.x && !var_0.x);
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(1196f, global2.x) - vec2<f32>(global2.x, 1060f)))) + vec2<f32>(_wgslsmith_f_op_f32(332f + 978f), _wgslsmith_f_op_f32(sign(global2.x)))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global2.x) + vec2<f32>(-1000f, 1555f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, global2.x) * vec2<f32>(global2.x, 1332f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.x, global2.x)))), ~4294967295u != _wgslsmith_sub_u32(u_input.c, u_input.b.x))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-303f, global2.x), vec2<f32>(global2.x, global2.x))))))));
    return u_input.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: u32) -> vec2<bool> {
    let var_0 = vec4<bool>(true, u_input.a.x < u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x - 1546f), _wgslsmith_f_op_f32(global2.x - 1291f)))) == -115f, true);
    let var_1 = select(u_input.b, ~vec4<u32>(firstLeadingBit(arg_2.a), ~23529u, ~1u << (u_input.d.x % 32u), arg_2.a), !var_0);
    var var_2 = countOneBits(-_wgslsmith_mult_i32(i32(-1i) * -u_input.e, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(4998i, u_input.e, 0i), vec3<i32>(u_input.a.x, u_input.e, u_input.e)), vec3<i32>(57361i, 27284i, -8919i) >> (var_1.wzx % vec3<u32>(32u)))));
    var var_3 = !var_0.x;
    var var_4 = all(vec4<bool>(false, 1u != select(1u, 54282u, any(var_0)), var_0.x, true));
    return var_0.xx;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(44467u, u_input.b.x), 15u)], vec4<u32>(15104u, _wgslsmith_add_u32(min(u_input.b.x, ~82027u), func_1()), _wgslsmith_div_u32(~abs(u_input.c), 31612u), u_input.c), global1[_wgslsmith_index_u32(~0u, 15u)], u_input.b.x);
    let var_1 = Struct_1(_wgslsmith_add_u32(u_input.c, firstTrailingBit(u_input.c)));
    let var_2 = var_0.x;
    var var_3 = var_1;
    let var_4 = select(all(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~1u, var_3.a), 32u)]) & true, all(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x, 49722u), 32u)]), true);
    let var_5 = var_1;
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.x, -237f, var_0.x)) + 635f)), -701f, global2.x, _wgslsmith_f_op_f32(trunc(global2.x)));
    var var_7 = Struct_1(1u);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a.x, 1i, u_input.a.x, u_input.e), select(reverseBits(vec4<i32>(u_input.a.x, -1i, u_input.a.x, 1i)), -vec4<i32>(u_input.a.x, 2147483647i, u_input.e, 14854i), global0[_wgslsmith_index_u32(~0u, 32u)])), abs(vec4<i32>(~(-31602i), ~firstLeadingBit(51391i), _wgslsmith_sub_i32(u_input.a.x & -2147483647i, -u_input.e), 22242i << (var_7.a % 32u))));
}

