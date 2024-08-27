struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 31>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_4) -> f32 {
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    var var_0 = ~select(countOneBits(min(vec3<i32>(1i, -111808i, -54873i), vec3<i32>(-40678i, arg_2.a.b.x, arg_2.a.b.x)) ^ vec3<i32>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x)), abs(firstLeadingBit(~vec3<i32>(arg_2.a.b.x, arg_2.a.b.x, arg_2.a.b.x))), !vec3<bool>(arg_2.a.c.a.x, arg_2.a.c.a.x, all(vec3<bool>(arg_2.a.c.a.x, arg_2.a.c.a.x, arg_0.a.a.x))));
    let var_1 = Struct_1(select(!arg_0.a.a, select(arg_2.a.c.a, !select(vec4<bool>(false, false, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, true, arg_2.a.c.a.x, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, arg_0.a.a.x, false, true)), true), true));
    global0 = array<vec4<bool>, 31>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1264f))), _wgslsmith_f_op_f32(min(arg_1.x, -1432f)))), 1f);
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_3 {
    let var_0 = ~u_input.a;
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(sign(-1116f));
    let var_3 = Struct_2(arg_1.a);
    var var_4 = true;
    return Struct_3(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_2(var_3.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, -798f, -874f, -241f) + vec4<f32>(var_2, var_2, 916f, 269f)), Struct_4(Struct_3(vec2<f32>(var_2, var_2), vec2<i32>(-17132i, 2147483647i), Struct_1(vec4<bool>(var_3.a.a.x, arg_1.a.a.x, true, false)))))) * _wgslsmith_f_op_f32(var_2 * _wgslsmith_f_op_f32(-var_2)))), vec2<i32>(~(~_wgslsmith_mult_i32(0i, 0i)), -1i), Struct_1(vec4<bool>(select(true, all(arg_0.yz), true | arg_0.x), var_3.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 7852u), vec2<u32>(0u, var_0)) < 21038u, false & arg_0.x)));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> i32 {
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    global0 = array<vec4<bool>, 31>();
    let var_0 = Struct_4(func_2(arg_2.a.xyx, Struct_2(arg_2)));
    global0 = array<vec4<bool>, 31>();
    return abs(var_0.a.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> i32 {
    global0 = array<vec4<bool>, 31>();
    var var_0 = func_2(vec3<bool>((_wgslsmith_f_op_f32(round(290f)) != _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<bool>(false, false, false, false))), vec4<f32>(-481f, -1382f, 1511f, 1542f), Struct_4(Struct_3(vec2<f32>(961f, 950f), arg_1, Struct_1(vec4<bool>(true, true, true, true))))))) || select(true, u_input.a <= 91933u, all(vec4<bool>(true, false, false, true))), false, true), Struct_2(Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 31u)])));
    var var_1 = 1u;
    let var_2 = select(u_input.b.wy, vec2<u32>(0u, u_input.a), !select(!var_0.c.a.wy, var_0.c.a.xz, var_0.c.a.zw));
    var var_3 = Struct_2(var_0.c);
    return _wgslsmith_clamp_i32(arg_2.x & ~_wgslsmith_div_i32(abs(arg_1.x), arg_2.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, select(arg_1.x & arg_0.x, firstTrailingBit(var_0.b.x), any(vec3<bool>(true, true, false)))), _wgslsmith_mult_i32(0i, -firstTrailingBit(arg_0.x))), _wgslsmith_add_i32(_wgslsmith_add_i32(~0i, ~(~(-16362i))), max(~abs(-2147483647i), max(30574i, firstTrailingBit(-10397i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -14762i, abs(func_1(343f, 0i, Struct_1(global0[_wgslsmith_index_u32(u_input.b.x, 31u)])))), abs(vec3<i32>(1i, 1i, 1i))), ~vec2<i32>(_wgslsmith_sub_i32(i32(-1i) * -9221i, max(1i, -27034i)), -44836i), min(firstTrailingBit(vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(34173i, -1i, 53591i, -24049i), vec4<i32>(87847i, 0i, 2147483647i, -10446i), vec4<i32>(5955i, -1i, -2147483647i, -2147483647i))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(-2119f, -203f), _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec4<bool>(true, true, true, false))), vec4<f32>(-252f, 876f, 825f, 1769f), Struct_4(Struct_3(vec2<f32>(-554f, -902f), vec2<i32>(-22639i, -31213i), Struct_1(global0[_wgslsmith_index_u32(53688u, 31u)]))))), 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1230f + -1844f)) - -1125f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1257f, -959f)))) - _wgslsmith_f_op_f32(trunc(624f)))), vec4<i32>(-16050i, 63539i, _wgslsmith_clamp_i32(func_4(-vec3<i32>(-1i, var_0, 0i), vec2<i32>(2147483647i, -1i), -vec4<i32>(1i, -2147483647i, -44967i, -27574i)), _wgslsmith_add_i32(var_0, 1i), var_0), _wgslsmith_mod_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(24100i, 0i)), 1i)));
}

