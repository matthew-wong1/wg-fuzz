struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(-1000f), Struct_2(205f), Struct_2(1069f), Struct_2(-846f), Struct_2(-519f));

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> f32 {
    global0 = array<Struct_2, 5>();
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(arg_0, vec2<f32>(2231f, arg_0.x))) + arg_0), arg_0);
    global0 = array<Struct_2, 5>();
    var var_1 = _wgslsmith_f_op_f32(-arg_0.x);
    var_1 = arg_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -279f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(ceil(arg_0.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x)))) - _wgslsmith_f_op_f32(-168f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> vec2<u32> {
    global2 = arg_1.b.a;
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(0u, select(global2.b, countOneBits(0u), true)), u_input.a, arg_1.b.a.b, ~arg_1.b.a.b);
    var var_1 = arg_1.b;
    let var_2 = !(!vec4<bool>(true, !(0i > arg_0), !(!var_1.d), !(arg_1.b.d || var_1.d)));
    global1 = !(~_wgslsmith_dot_vec2_u32(vec2<u32>(25029u, 4294967295u), abs(var_0.xx)) >= countOneBits(firstTrailingBit(var_0.x) ^ ~4294967295u));
    return vec2<u32>(max(~(~28113u), abs(global2.b) >> (0u % 32u)), 10310u) >> (~var_0.yz % vec2<u32>(32u));
}

fn func_2() -> f32 {
    global1 = true;
    var var_0 = u_input.d.wx << (func_4(~global2.a.x, Struct_4(Struct_2(_wgslsmith_f_op_f32(2527f * -382f)), Struct_3(Struct_1(global2.a, 25053u), _wgslsmith_f_op_f32(round(-515f)), vec2<bool>(false, true), true, global0[_wgslsmith_index_u32(global2.b, 5u)]), _wgslsmith_f_op_f32(-1139f + _wgslsmith_f_op_f32(func_3(vec2<f32>(-511f, 520f), Struct_1(vec3<i32>(global2.a.x, global2.a.x, -20296i), global2.b), vec3<u32>(u_input.a, 0u, global2.b), false))))) % vec2<u32>(32u));
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_1 = ~select(countOneBits(vec3<u32>(global2.b, abs(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(32124u, 21728u), vec2<u32>(18109u, u_input.a)))), min(reverseBits(vec3<u32>(u_input.a, 80316u, u_input.a)), vec3<u32>(4294967295u, u_input.a, u_input.a)) & (min(vec3<u32>(u_input.a, global2.b, 1u), vec3<u32>(u_input.a, global2.b, u_input.a)) >> (vec3<u32>(7314u, u_input.a, u_input.a) % vec3<u32>(32u))), false);
    return _wgslsmith_f_op_f32(step(262f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + 1f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(164f, _wgslsmith_f_op_f32(-2066f * -193f)))))));
}

fn func_1(arg_0: bool) -> f32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-2540f, 819f), Struct_1(global2.a, 0u), vec3<u32>(34753u, global2.b, u_input.a), arg_0)) + -1109f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1984f * -435f) + _wgslsmith_f_op_f32(f32(-1f) * -1019f)))));
    let var_1 = Struct_2(var_0);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.a, var_1.a, 1733f, 750f), vec4<f32>(-528f, -269f, 1263f, var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -694f, -191f, var_0))) + _wgslsmith_div_vec4_f32(vec4<f32>(var_0, var_0, 1152f, 1097f), vec4<f32>(-1000f, var_1.a, -1094f, var_1.a)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.a, var_0, var_1.a, var_0))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.a, var_1.a, var_0, -330f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1353f, -1672f, var_0, 276f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1537f, var_1.a, var_0, 386f))) - vec4<f32>(2027f, _wgslsmith_f_op_f32(-var_0), var_1.a, _wgslsmith_f_op_f32(-var_1.a)))));
    global1 = arg_0;
    global0 = array<Struct_2, 5>();
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.x), var_2.x, !arg_0));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: vec2<u32>) -> Struct_4 {
    global1 = true;
    var var_0 = vec4<i32>(max(_wgslsmith_sub_i32(~_wgslsmith_div_i32(u_input.d.x, global2.a.x), 0i), _wgslsmith_mult_i32(-1i, global2.a.x)), u_input.b, ~u_input.c.x, firstLeadingBit(~_wgslsmith_clamp_i32(~u_input.c.x, u_input.d.x ^ global2.a.x, u_input.c.x)));
    let var_1 = _wgslsmith_f_op_vec2_f32(arg_1 + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) - vec2<f32>(1477f, arg_1.x)))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-860f, _wgslsmith_f_op_f32(arg_1.x - 195f))))));
    global0 = array<Struct_2, 5>();
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(848f, 1125f, arg_1.x), vec3<f32>(102f, arg_1.x, var_1.x)), vec3<f32>(var_1.x, 1000f, 919f))) * vec3<f32>(_wgslsmith_f_op_f32(-1000f - 1754f), -218f, -307f)))), vec3<f32>(var_1.x, 789f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_div_f32(-262f, _wgslsmith_f_op_f32(-arg_1.x))))));
    return Struct_4(global0[_wgslsmith_index_u32(func_4(var_0.x, Struct_4(Struct_2(_wgslsmith_f_op_f32(trunc(-1184f))), Struct_3(Struct_1(var_0.wxw, 1u), _wgslsmith_f_op_f32(920f - var_1.x), vec2<bool>(true, false), global2.b > 48540u, Struct_2(-122f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))).x, 5u)], Struct_3(Struct_1((u_input.d.zwz ^ vec3<i32>(2147483647i, var_0.x, -1i)) ^ vec3<i32>(10295i, 2147483647i, -24078i), max(~1u, ~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(func_2())), !(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), false, Struct_2(_wgslsmith_f_op_f32(func_1(true)))), _wgslsmith_f_op_f32(round(arg_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(!vec4<bool>(false, all(vec2<bool>(true, false)) & true, true, true));
    var var_1 = func_5(~(~min(1u, 0u)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1184f - -155f))) * -1158f), _wgslsmith_f_op_f32(func_1(select(var_0, any(vec3<bool>(var_0, true, var_0)), var_0)))), vec2<u32>(min(global2.b, ~u_input.a), u_input.a));
    global0 = array<Struct_2, 5>();
    global0 = array<Struct_2, 5>();
    var var_2 = vec2<u32>(~var_1.b.a.b, 101558u);
    let var_3 = !var_0;
    global2 = Struct_1(-vec3<i32>(global2.a.x, global2.a.x, u_input.c.x), firstLeadingBit(var_1.b.a.b));
    let var_4 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 0i), global2.a.zx) | _wgslsmith_mult_vec2_i32(var_4.a.a.xx, ~global2.a.xy), abs(vec2<i32>(2147483647i, global2.a.x) << ((vec2<u32>(var_2.x, var_1.b.a.b) | vec2<u32>(4294967295u, 0u)) % vec2<u32>(32u))), var_4.c), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.a), 261f) - _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.b, 707f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(443f, var_1.a.a))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.a, var_4.e.a), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_4.e.a, -614f), vec2<f32>(-1913f, -426f))), all(var_1.b.c))))))));
}

