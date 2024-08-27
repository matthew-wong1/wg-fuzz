struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 3>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<i32>) -> u32 {
    let var_0 = Struct_5(vec2<f32>(2987f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1500f) - -1000f)), ~48496u, Struct_2(_wgslsmith_add_i32(arg_1.x, u_input.b.x) != arg_1.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1000f)), _wgslsmith_f_op_f32(-341f + 446f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1482f, -123f) - vec2<f32>(1193f, -1162f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(802f, 282f)), vec2<bool>(true, true))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1277f, 1000f), vec2<f32>(1566f, 1000f))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, 228f)))))));
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    global0 = array<Struct_3, 3>();
    return ~var_0.b;
}

fn func_2() -> f32 {
    let var_0 = 19874i;
    let var_1 = -1296f;
    var var_2 = u_input.a;
    var var_3 = global0[_wgslsmith_index_u32(u_input.c.x, 3u)];
    var_3 = Struct_3(var_3.a, var_3.b);
    return _wgslsmith_div_f32(-1329f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-588f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.b.x - -1072f) + _wgslsmith_f_op_f32(step(var_3.a, var_1)))) + var_3.b.b.x));
}

fn func_3() -> i32 {
    let var_0 = max(countOneBits(-(~u_input.b) ^ -u_input.b), vec3<i32>(-(-u_input.b.x & ~u_input.b.x), _wgslsmith_mult_i32(1i, min(~u_input.b.x, u_input.b.x)), 44524i));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -679f), Struct_1(-2147483647i, vec3<f32>(_wgslsmith_f_op_f32(abs(760f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(func_2())), 760f), var_0.yy));
    var var_2 = Struct_4(Struct_2(any(vec2<bool>(true, true))), var_1.b.b.x, var_1, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.b.b.x * 319f)))), Struct_1(var_1.b.c.x, vec3<f32>(var_1.b.b.x, _wgslsmith_f_op_f32(-var_1.b.b.x), _wgslsmith_f_op_f32(trunc(var_1.b.b.x))), vec2<i32>(var_0.x, 0i))));
    var var_3 = _wgslsmith_add_u32(0u, ~min(0u, ~(u_input.c.x >> (u_input.c.x % 32u))));
    var_2 = Struct_4(Struct_2(!(-491f == _wgslsmith_f_op_f32(var_2.b + var_1.b.b.x))), 1049f, Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -985f), var_1.b), var_1);
    return var_1.b.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (_wgslsmith_mod_i32(~u_input.b.x ^ _wgslsmith_sub_i32(u_input.b.x, 0i), -44935i) & ~(~(-13889i))) < _wgslsmith_div_i32(abs(0i), -_wgslsmith_add_i32(-41279i, 2147483647i) & abs(u_input.b.x));
    global0 = array<Struct_3, 3>();
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-207f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-824f - 348f))), -1000f), func_1(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), false), true), ~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b.x, -1i, u_input.b.x, 35520i), vec4<i32>(21492i, -67223i, u_input.b.x, -1i)))), Struct_2(u_input.c.x != _wgslsmith_sub_u32(4294967295u, ~9894u)), vec2<f32>(_wgslsmith_f_op_f32(func_2()), -231f));
    var var_2 = 2147483647i;
    let var_3 = -min(_wgslsmith_dot_vec2_i32(-u_input.b.xz, vec2<i32>(7918i, 0i)), firstTrailingBit(u_input.b.x) ^ firstLeadingBit(-36303i)) >> (17430u % 32u);
    global0 = array<Struct_3, 3>();
    var_2 = -func_3();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, vec3<f32>(var_1.d.x, _wgslsmith_f_op_f32(-1000f * var_1.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(-1000f * var_1.d.x), true)), var_1.a.x)), 5285i | var_3, _wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(-1i, 8108i), func_3(), min(var_3, var_3), ~0i)), vec4<i32>(-62987i, -max(-18886i, -2147483647i), abs(u_input.b.x), _wgslsmith_sub_i32(0i, var_3) ^ (var_3 ^ 66947i)), max(select(vec4<i32>(2147483647i, var_3, 1i, var_3), vec4<i32>(var_3, 1223i, var_3, var_3), true), max(reverseBits(vec4<i32>(0i, 21146i, u_input.b.x, var_3)), ~vec4<i32>(u_input.b.x, -11601i, var_3, -2147483647i)))));
}

