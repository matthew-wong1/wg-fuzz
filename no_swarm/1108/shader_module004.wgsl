struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 3>;

var<private> global2: i32 = -7915i;

var<private> global3: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_0, -1954f), vec2<f32>(1561f, -1292f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global3.x, -1115f)))), vec2<bool>(true, arg_1.b.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1806f, -423f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-120f, arg_0) + vec2<f32>(1412f, global3.x)) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, arg_0))))) * vec2<f32>(367f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1734f, 2007f, true)) - _wgslsmith_f_op_f32(1581f * -535f)))), global0.b.zx));
}

fn func_2() -> u32 {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(abs(-2118f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-727f, -202f)))));
    global3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(424f, 1470f), vec2<f32>(global3.x, 415f), false)))), _wgslsmith_f_op_vec2_f32(func_3(-1988f, Struct_1(global0.b.x, global0.b), Struct_1(true, global0.b))), select(!select(global0.b.xw, vec2<bool>(false, true), vec2<bool>(true, true)), global0.b.wx, vec2<bool>(all(global0.b), global1[_wgslsmith_index_u32(min(29172u, u_input.b), 3u)])))), vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3(_wgslsmith_f_op_f32(sign(-1496f)), Struct_1(false, vec4<bool>(global0.a, false, true, false)), Struct_1(false, vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global0.b.x, global1[_wgslsmith_index_u32(u_input.b, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)])))).x)), _wgslsmith_f_op_f32(-global3.x))));
    global2 = 96015i;
    var var_0 = Struct_1(all(vec4<bool>(false, -399f == _wgslsmith_f_op_f32(-global3.x), true, false)), !vec4<bool>(global0.a, all(global0.b.zyz), true, global0.a));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global3.x), _wgslsmith_f_op_f32(abs(global3.x))), _wgslsmith_f_op_f32(-global3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) * _wgslsmith_f_op_f32(-global3.x))), global3.x);
    return abs(_wgslsmith_clamp_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, ~firstLeadingBit(0u)), countOneBits(~(~u_input.b))));
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_1.xw;
    var_0 = vec2<f32>(global3.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global3.x)), -771f));
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_mult_i32(u_input.a, u_input.c) != ((2147483647i | u_input.c) >> (~(~u_input.b) % 32u)), !select(vec4<bool>(var_0.x < arg_1.x, global0.a, global1[_wgslsmith_index_u32(arg_0.x, 3u)], global1[_wgslsmith_index_u32(~197u, 3u)]), !(!global0.b), all(global0.b)));
    let var_3 = u_input.b;
    return Struct_1(true, select(var_2.b, global0.b, select(global0.b, !(!var_2.b), true)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>, arg_2: vec3<f32>) -> i32 {
    var var_0 = func_4(~vec4<u32>(9599u, u_input.b, 1u, func_2()), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1248f)) - _wgslsmith_f_op_f32(arg_2.x * 1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(2134f + global3.x), 937f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))))));
    let var_1 = -2147483647i;
    let var_2 = Struct_1(true, var_0.b);
    let var_3 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(var_1, u_input.a, u_input.c, 1i) | ~vec4<i32>(var_1, -1i, u_input.a, var_1)), vec4<i32>(min(firstLeadingBit(-56078i), -21962i), 2147483647i, -var_1, ~(-34685i)), vec4<i32>(2147483647i, var_1 << (1u % 32u), reverseBits(-var_1), _wgslsmith_mult_i32(max(var_1, 0i), abs(-1i)))), countOneBits(-_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, 12280i, u_input.a, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(var_1, 45197i, -1i, 30078i), vec4<i32>(u_input.a, var_1, u_input.a, u_input.a)))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_f_op_f32(abs(-267f))) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2.x * _wgslsmith_f_op_f32(563f * 1577f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1242f))))), !func_4(vec4<u32>(~u_input.b, abs(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, 4294967295u), vec4<u32>(43086u, u_input.b, 79490u, 32676u)), 0u), vec4<f32>(_wgslsmith_f_op_f32(sign(445f)), -896f, _wgslsmith_f_op_f32(f32(-1f) * -1379f), arg_2.x)).b);
    return _wgslsmith_div_i32(-21764i, var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(global0.b.yxw);
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x * -918f), _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-588f * -128f))));
    var_1 = _wgslsmith_f_op_f32(-global3.x);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(0u), u_input.a, func_1(select(select(vec4<bool>(global1[_wgslsmith_index_u32(1u, 3u)], false, global1[_wgslsmith_index_u32(18690u, 3u)], global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<bool>(global0.a, false, true, global1[_wgslsmith_index_u32(u_input.b, 3u)]), vec4<bool>(true, true, false, false)), select(global0.b, vec4<bool>(global0.b.x, global0.b.x, true, true), true), global0.b), !select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b, 3u)], global0.a, true), global0.b.ywx, false), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.x, global3.x, 956f), _wgslsmith_f_op_vec3_f32(vec3<f32>(494f, -517f, global3.x) + vec3<f32>(1051f, global3.x, global3.x)), !global0.b.zzw))) >> (91108u % 32u), u_input.a);
}

