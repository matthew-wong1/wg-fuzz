struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: vec2<i32>;

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<f32>(1951f, 404f, -219f), vec3<f32>(111f, 111f, -2151f), vec2<f32>(666f, 139f), i32(-2147483648), 1062f), Struct_1(vec3<f32>(-2516f, -811f, 1162f), vec3<f32>(560f, 546f, 498f), vec2<f32>(-1618f, -1466f), 4018i, -1362f), Struct_1(vec3<f32>(131f, -1048f, 1008f), vec3<f32>(473f, 203f, 1002f), vec2<f32>(2147f, 1193f), -30154i, -138f), Struct_1(vec3<f32>(1269f, 517f, -1000f), vec3<f32>(1108f, -979f, -290f), vec2<f32>(-1483f, 1000f), 19247i, 1067f));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
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

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(arg_2.e))));
    global0 = array<Struct_1, 15>();
    global2 = array<Struct_1, 4>();
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-520f - _wgslsmith_f_op_f32(min(-615f, -1000f))), 351f)) != 178f, all(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    global2 = array<Struct_1, 4>();
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, 243f, arg_2.e, -819f)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -933f, arg_0, arg_2.c.x))))))));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2.c.x + arg_2.b.x), arg_2.a.x), u_input.b.x & ~u_input.d, global0[_wgslsmith_index_u32(~4294967295u, 15u)]))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.b.x), _wgslsmith_f_op_f32(round(arg_2.c.x)), _wgslsmith_f_op_f32(-644f + 1704f), arg_2.e) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.b.x, 286f, 410f, 1000f), vec4<f32>(475f, -171f, arg_2.b.x, arg_2.c.x)))))));
    var var_1 = Struct_1(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(-var_0.x))), -739f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2.a) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 891f, 1000f))), _wgslsmith_f_op_vec2_f32(select(arg_2.b.yy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.yy))), vec2<bool>(-arg_1 < firstTrailingBit(global1.x), arg_0))), -u_input.c, arg_2.b.x);
    global1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(reverseBits(var_1.d), u_input.c), firstTrailingBit(reverseBits(~vec2<i32>(u_input.c, var_1.d)) | select(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, var_1.d), vec2<i32>(global1.x, arg_2.d)), ~vec2<i32>(var_1.d, var_1.d), vec2<bool>(true, true))), vec2<i32>(_wgslsmith_mod_i32(u_input.c, abs(-1i)), arg_1));
    var var_2 = vec3<i32>(2901i, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 25136i, arg_2.d, arg_2.d), vec4<i32>(arg_1, -39808i, -2147483647i, -39085i)) ^ (global1.x | global1.x), var_1.d) << (21231u % 32u), _wgslsmith_mod_i32(2147483647i, 1i));
    let var_3 = arg_2;
    return vec3<bool>(arg_0, arg_0, select(!(true & arg_0), true, all(vec3<bool>(any(vec3<bool>(arg_0, true, arg_0)), true, arg_0))));
}

fn func_1(arg_0: vec2<bool>) -> vec2<bool> {
    var var_0 = u_input.b;
    let var_1 = min(vec3<u32>(u_input.b.x, u_input.b.x, firstTrailingBit(_wgslsmith_clamp_u32(var_0.x, 1u, var_0.x)) & 34832u), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u | var_0.x, ~16024u), u_input.b.x, u_input.d), select(firstTrailingBit(~vec3<u32>(30965u, 0u, 4294967295u)), _wgslsmith_sub_vec3_u32(min(vec3<u32>(1u, u_input.b.x, 4294967295u), vec3<u32>(59532u, var_0.x, 1u)), ~vec3<u32>(u_input.b.x, u_input.d, 49259u)), !func_2(arg_0.x, global1.x, Struct_1(vec3<f32>(858f, -490f, 1974f), vec3<f32>(-1200f, -273f, 102f), vec2<f32>(-1375f, -1918f), global1.x, 1306f)))));
    return vec2<bool>(true, all(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(24317i, -1i, global1.x, u_input.c);
    var var_1 = !any(select(func_1(vec2<bool>(true, true)), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), vec2<bool>(false, false)), func_2(false, _wgslsmith_sub_i32(var_0.x, var_0.x), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.d), 4u)]).yx));
    global0 = array<Struct_1, 15>();
    global1 = var_0.yy;
    var var_2 = global0[_wgslsmith_index_u32(u_input.b.x, 15u)];
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1388f);
    var var_4 = 2294u;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c);
}

