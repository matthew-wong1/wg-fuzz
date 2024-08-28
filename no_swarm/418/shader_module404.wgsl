struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(-1i, -21769i, -1i, 4579i), vec4<i32>(-1i, 1i, i32(-2147483648), 13894i), vec4<i32>(43351i, 0i, -16764i, -1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_2(~firstTrailingBit(1u), Struct_1(-225f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1410f, 545f, 638f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-101f, -2347f, -166f)))), u_input.b.x));
    var var_1 = !vec3<bool>((_wgslsmith_sub_u32(4294967295u, u_input.c) ^ firstTrailingBit(u_input.d.x)) != abs(_wgslsmith_sub_u32(var_0.a, var_0.a)), false, !(_wgslsmith_f_op_f32(-var_0.b.b.x) <= -804f));
    var_1 = !(!vec3<bool>(var_1.x, any(vec3<bool>(true, var_1.x, var_1.x)) & any(vec4<bool>(false, var_1.x, true, false)), true));
    global1 = array<vec4<i32>, 3>();
    var var_2 = Struct_2(40334u, var_0.b);
    return !vec3<bool>(var_1.x, any(vec3<bool>(all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), any(vec3<bool>(false, var_1.x, true)), -1i >= var_0.b.c)), false);
}

fn func_2() -> i32 {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1049f, 935f), 188f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -744f, 1612f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1015f, 191f, 3161f) * vec3<f32>(1848f, -404f, -100f)))), 35571i), vec2<i32>(abs(0i), -u_input.b.x), select(vec3<bool>(select(true, true, all(vec3<bool>(true, true, true))), (13770i == u_input.b.x) == true, true), func_3(), !(!func_3())), Struct_2(u_input.a, Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(f32(-1f) * -269f), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-458f, 957f, -822f))), 0i)), Struct_2(74901u, Struct_1(_wgslsmith_f_op_f32(max(1016f, _wgslsmith_f_op_f32(max(231f, 579f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-154f, -504f, 1017f)))), ~(u_input.b.x & 2147483647i))));
    let var_1 = ~(~countOneBits(vec4<u32>(u_input.d.x, 6662u, u_input.d.x, 20642u) & vec4<u32>(6341u, var_0.d.a, 20218u, 4294967295u)));
    let var_2 = vec4<bool>(all(var_0.c), select(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, -12206i, u_input.b.x)), vec3<i32>(u_input.b.x, u_input.b.x, 5392i)), 2147483647i, !var_0.c.x) == _wgslsmith_add_i32(_wgslsmith_mod_i32(47126i, 57381i) >> (_wgslsmith_sub_u32(var_0.d.a, u_input.a) % 32u), u_input.b.x), all(!vec4<bool>(var_0.c.x | false, false, var_0.c.x & var_0.c.x, true)), !(!((var_0.c.x & var_0.c.x) != true)));
    let var_3 = -(-var_0.b.x ^ abs(-5609i)) ^ u_input.b.x;
    var var_4 = Struct_3(Struct_1(-1045f, vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.d.b.b.x)), -2199f, var_0.a.b.x), -abs(reverseBits(var_0.d.b.c))), vec2<i32>(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.x, 8431i), vec2<i32>(2147483647i, -1i))), firstLeadingBit(firstTrailingBit(_wgslsmith_mod_i32(2147483647i, -2147483647i)))), select(var_0.c, select(vec3<bool>(all(var_2.xzy), var_2.x, var_2.x), !(!vec3<bool>(var_2.x, false, var_2.x)), !(!var_0.c.x)), var_0.c), Struct_2(var_1.x, Struct_1(558f, var_0.a.b, _wgslsmith_mod_i32(var_0.d.b.c & -2147483647i, 18744i))), var_0.d);
    return ~var_0.e.b.c;
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<f32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = abs(vec3<i32>(u_input.b.x, u_input.b.x, func_2()) ^ (abs(-vec3<i32>(-1i, -17381i, u_input.b.x)) | select(vec3<i32>(u_input.b.x, 0i, u_input.b.x) & vec3<i32>(u_input.b.x, 13191i, u_input.b.x), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) & vec3<i32>(0i, u_input.b.x, u_input.b.x), vec3<bool>(arg_1, false, arg_1))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 3u)];
    let var_2 = !arg_1;
    let var_3 = any(select(func_3().xx, vec2<bool>(true, true), any(vec4<bool>(6777u != u_input.c, true, true, all(vec3<bool>(arg_1, true, false))))));
    var var_4 = var_1.x;
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_1(_wgslsmith_mod_u32(1u, ~reverseBits(u_input.a)), false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, -1000f, 157f, -311f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1239f, -1419f, -1051f, 2235f), vec4<f32>(732f, -2403f, -406f, -194f)))), vec4<u32>(_wgslsmith_add_u32(4294967295u, _wgslsmith_clamp_u32(u_input.c, 0u, 22253u)), abs(~1u), ~countOneBits(57336u), ~1u)), Struct_1(-385f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1498f, 116f, 307f) + vec3<f32>(870f, 148f, -890f))))), -20087i << (_wgslsmith_dot_vec3_u32(~u_input.d, abs(u_input.d)) % 32u)));
    global1 = array<vec4<i32>, 3>();
    let var_1 = _wgslsmith_f_op_f32(ceil(-1000f));
    var var_2 = ~(~(~firstTrailingBit(vec3<i32>(u_input.b.x, 33982i, var_0.b.c))));
    let var_3 = Struct_2(1u, Struct_1(-430f, vec3<f32>(var_0.b.a, _wgslsmith_f_op_f32(round(610f)), var_1), i32(-1i) * -1i));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.b.x)))))) * _wgslsmith_f_op_f32(-958f + var_3.b.a));
    let x = u_input.a;
    s_output = StorageBuffer(1u, var_2.x, var_0.a >> (var_3.a % 32u), vec2<i32>(min(_wgslsmith_add_i32(var_3.b.c, ~var_2.x), 27502i), -2147483647i));
}

