struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-5554i, -71929i);

var<private> global1: f32;

var<private> global2: array<vec3<u32>, 28> = array<vec3<u32>, 28>(vec3<u32>(71341u, 41068u, 0u), vec3<u32>(24393u, 8342u, 39039u), vec3<u32>(0u, 4294967295u, 86013u), vec3<u32>(72181u, 4294967295u, 34865u), vec3<u32>(24471u, 14185u, 30339u), vec3<u32>(1u, 39170u, 12492u), vec3<u32>(65168u, 53525u, 8347u), vec3<u32>(83172u, 69077u, 0u), vec3<u32>(4294967295u, 6603u, 1u), vec3<u32>(1u, 116369u, 38600u), vec3<u32>(50631u, 4294967295u, 15848u), vec3<u32>(1u, 4294967295u, 0u), vec3<u32>(84578u, 74236u, 10464u), vec3<u32>(1u, 20370u, 111678u), vec3<u32>(1u, 61124u, 10715u), vec3<u32>(0u, 63576u, 4294967295u), vec3<u32>(82663u, 4294967295u, 60820u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(22899u, 4294967295u, 46235u), vec3<u32>(1u, 42629u, 0u), vec3<u32>(0u, 34724u, 0u), vec3<u32>(1u, 62911u, 42459u), vec3<u32>(45950u, 0u, 2427u), vec3<u32>(88761u, 1u, 18617u), vec3<u32>(1u, 28144u, 1u), vec3<u32>(4513u, 0u, 4294967295u), vec3<u32>(0u, 9625u, 48655u), vec3<u32>(13335u, 125157u, 49122u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, arg_0.x, arg_0.x, -355f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1392f, 309f, arg_0.x, arg_0.x), vec4<f32>(-889f, arg_0.x, arg_0.x, arg_0.x)))), arg_0.x > _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0, arg_0)))), !any(vec2<bool>(true, true)), select(_wgslsmith_dot_vec4_u32(reverseBits(u_input.a), ~vec4<u32>(u_input.b, 16935u, u_input.d, u_input.b)) >> (4294967295u % 32u), ~127031u, false), select(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(true, true)), true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), true), true)), vec4<bool>(true, true, true, true), vec4<bool>(true, any(vec3<bool>(true, false, true)) | true, true, ~arg_1.a.a > (arg_1.a.b ^ 0u))));
    var var_1 = true;
    var_1 = all(var_0.e.zwy);
    let var_2 = ~((arg_2.xx & u_input.e) & (select(arg_2.yx, vec2<i32>(15291i, global0.x), var_0.e.x) << (~u_input.a.yz % vec2<u32>(32u)))) >> (u_input.a.xz % vec2<u32>(32u));
    let var_3 = !vec2<bool>(!((var_0.c | var_0.c) || true), all(vec4<bool>(true, !var_0.c, false, true)));
    return all(!var_0.e.zwx);
}

fn func_2() -> i32 {
    global0 = u_input.e;
    let var_0 = ~(~u_input.e.x);
    var var_1 = var_0;
    let var_2 = Struct_5(!vec3<bool>(false, true, !func_3(vec3<f32>(1000f, 838f, 917f), Struct_3(Struct_2(u_input.a.x, u_input.a.x)), vec3<i32>(var_0, -58698i, u_input.e.x))), abs(u_input.c));
    return global0.x;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>) -> u32 {
    var var_0 = ~(~vec3<u32>(0u, _wgslsmith_mod_u32(1u, 12864u) | arg_0, ~arg_0));
    var var_1 = vec3<i32>(func_2(), -u_input.e.x, 1i);
    var_1 = firstTrailingBit(vec3<i32>(var_1.x, 16506i, countOneBits((global0.x >> (var_0.x % 32u)) ^ u_input.e.x)));
    var var_2 = !(!all(vec2<bool>(true, true)));
    global1 = -1057f;
    return 4294967295u;
}

fn func_4(arg_0: bool, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(166f)), _wgslsmith_div_f32(1418f, -1000f))))) == _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1857f)), -589f))));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -467f), -267f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -663f) * _wgslsmith_f_op_f32(max(1996f, -431f)))), -1125f), var_0));
    global0 = select(u_input.e, u_input.e, !(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0), select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), vec2<bool>(true, false)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1973f), _wgslsmith_f_op_f32(-139f + 1341f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-292f)))), 199f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1574f + -2185f) * _wgslsmith_f_op_f32(abs(-368f))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-940f)), 415f))), 194f, 281f), true, ~_wgslsmith_mod_u32(u_input.b, ~_wgslsmith_mult_u32(arg_1, 0u)), !select(!vec4<bool>(var_0, false, true, true), select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, var_0, true, false), true), vec4<bool>(false, arg_0, true, true)));
    let var_2 = i32(-1i) * -1i;
    return 1i << (~abs(_wgslsmith_mult_u32(1u, var_1.d) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(105136u, 13680u, arg_1), global2[_wgslsmith_index_u32(4294967295u, 28u)]) % 32u)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-250f, _wgslsmith_f_op_f32(step(1f, _wgslsmith_div_f32(-1000f, 994f))))) - 887f), -1528f);
    var var_0 = abs(abs(_wgslsmith_add_i32(2147483647i, func_4(true, func_1(u_input.a.x, u_input.a.zw)))));
    var var_1 = vec2<u32>(0u, _wgslsmith_sub_u32(max(select(1u, u_input.a.x, false), _wgslsmith_add_u32(1u, 46257u)), reverseBits(u_input.b) >> (u_input.c % 32u)) & ~_wgslsmith_mod_u32(49104u, abs(4294967295u)));
    var_0 = min(u_input.e.x << (1u % 32u), -1i);
    global0 = countOneBits(vec2<i32>(~_wgslsmith_clamp_i32(reverseBits(-17438i), -35887i, global0.x), ~(-1i)));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * -1562f), -191f, _wgslsmith_f_op_f32(f32(-1f) * -1039f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(128f * -813f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(869f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-185f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(621f, -722f))) * vec3<f32>(1f, 1f, 1f)), true, countOneBits(0u), !(!vec4<bool>(true, any(vec4<bool>(true, false, false, false)), true, any(vec3<bool>(false, true, false)))));
    let var_3 = ~_wgslsmith_clamp_u32(var_1.x, abs(~countOneBits(1u)), ~max(1u, _wgslsmith_sub_u32(var_2.d, u_input.d)));
    let var_4 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_2.b.x + 974f), _wgslsmith_f_op_vec4_f32(sign(var_4)), var_2.d);
}

