struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: f32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_3;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(-2013f, vec2<f32>(798f, 865f), 25418u), Struct_1(-419f, vec2<f32>(1000f, 1373f), 4294967295u), Struct_1(511f, vec2<f32>(783f, 2391f), 63519u), Struct_1(155f, vec2<f32>(788f, 458f), 45483u), Struct_1(1000f, vec2<f32>(202f, 1479f), 4294967295u), Struct_1(428f, vec2<f32>(382f, 666f), 1u), Struct_1(-810f, vec2<f32>(292f, -1000f), 4294967295u));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = Struct_3(select(global1.a, firstTrailingBit(vec3<u32>(_wgslsmith_mod_u32(global1.a.x, 31049u), 1u, global1.a.x)), !vec3<bool>(all(vec2<bool>(global0.b, false)), true, global1.b)), any(!select(vec3<bool>(global0.b, global0.b, true), !vec3<bool>(true, global0.b, global0.b), all(vec4<bool>(global0.b, global1.b, false, false)))), 1i & firstTrailingBit(_wgslsmith_div_i32(1i, 2147483647i & u_input.b.x)), global0.d);
    global0 = Struct_3(var_0.a, global0.b, _wgslsmith_dot_vec2_i32(var_0.d.a.wy, vec2<i32>(firstTrailingBit(arg_0.a.x), abs(-1i))), arg_0);
    global1 = Struct_3(vec3<u32>(1u, 27605u, ~global1.a.x), false, -2147483647i, var_0.d);
    var var_1 = vec2<bool>(!(true | global1.b), false);
    let var_2 = 75348u >> (_wgslsmith_div_u32(u_input.a.x, ~(~min(70249u, global0.a.x))) % 32u);
    return 32426u;
}

fn func_2() -> vec2<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2160f, global1.d.b, global1.d.b)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1849f, global0.d.c, global1.d.b))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1.d.b, global1.d.c))))), Struct_1(1231f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(2161f)), _wgslsmith_div_f32(-170f, global1.d.b))), select(global1.a.x, global1.a.x, global1.b)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(999f, global0.d.c))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.b, global1.d.c))))));
    global0 = Struct_3(vec3<u32>(~1u ^ _wgslsmith_sub_u32(var_0.b.c, _wgslsmith_div_u32(60536u, 4294967295u)), func_3(global1.d), ~countOneBits(~var_0.b.c)), true & (~u_input.b.x == 2147483647i), -1i, Struct_2(-(vec4<i32>(global0.d.a.x, global1.d.a.x, u_input.b.x, global1.d.a.x) | vec4<i32>(global0.c, 48836i, -23636i, u_input.b.x)) ^ -vec4<i32>(u_input.b.x, 4940i, 1i, 31824i), -417f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2197f + 926f))));
    global1 = Struct_3(global0.a, !(!(_wgslsmith_f_op_f32(f32(-1f) * -644f) >= _wgslsmith_div_f32(global1.d.c, -2543f))), i32(-1i) * -1i, Struct_2(min(global1.d.a, global1.d.a), -284f, -431f));
    global2 = array<Struct_1, 7>();
    global1 = Struct_3(firstLeadingBit(vec3<u32>(firstLeadingBit(var_0.b.c << (23159u % 32u)), _wgslsmith_div_u32(reverseBits(1539u), ~0u), var_0.b.c)), !(!(global1.d.c != _wgslsmith_f_op_f32(global1.d.c * global1.d.b))), global0.c, Struct_2(vec4<i32>(global1.c, -global0.d.a.x, ~_wgslsmith_dot_vec2_i32(global1.d.a.xz, vec2<i32>(global1.d.a.x, 53992i)), global1.c), global0.d.c, 325f));
    return vec2<i32>(0i, -1014i);
}

fn func_1(arg_0: u32, arg_1: Struct_4, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = -_wgslsmith_mod_vec2_i32(func_2(), vec2<i32>(select(11891i, arg_2, false) >> (arg_1.b.c % 32u), global0.c));
    global2 = array<Struct_1, 7>();
    let var_1 = global1.d;
    let var_2 = _wgslsmith_f_op_f32(exp2(global1.d.b));
    let var_3 = arg_1.a.x;
    return global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.d.a.x;
    let var_1 = global0.d.a.x;
    global2 = array<Struct_1, 7>();
    global0 = Struct_3(global0.a, true, abs(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(-19438i, global0.c), global0.c ^ -1i), ~2147483647i)), func_1(abs(global0.a.x), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global1.d.c, -601f, global1.d.c))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-350f, 1543f, global0.d.b) * vec3<f32>(global1.d.b, -294f, -1816f))), global2[_wgslsmith_index_u32(global0.a.x, 7u)], _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-454f, -269f) * vec2<f32>(global1.d.c, -1011f)))), global1.c ^ (~global0.d.a.x | -11119i), !(~global0.a.x < _wgslsmith_dot_vec2_u32(global1.a.xx, global1.a.zz))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, global1.d.b), vec2<f32>(global1.d.c, global0.d.b)))), vec2<f32>(_wgslsmith_div_f32(402f, -1614f), global1.d.c)))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -140f) - vec2<f32>(global0.d.b, global0.d.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1263f, 1377f))))))));
    let var_3 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.c, global1.d.c, var_2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.d.c, -931f, 1361f), vec3<f32>(var_2.x, var_2.x, global1.d.b))))) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -333f, global1.d.c)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2111f, -857f, -938f))))), Struct_1(global0.d.c, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(-807f, -316f)), global0.d.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, -1961f)) + vec2<f32>(-356f, 1000f)), select(vec2<bool>(global0.b, global0.b), !vec2<bool>(global1.b, global1.b), select(vec2<bool>(global0.b, false), vec2<bool>(false, global1.b), vec2<bool>(global1.b, global1.b))))), ~1u << (_wgslsmith_mod_u32(~global1.a.x, 47249u) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, -668f) - vec2<f32>(1000f, -1877f))));
    global1 = Struct_3(_wgslsmith_mod_vec3_u32(vec3<u32>(40846u, _wgslsmith_mod_u32(var_3.b.c, global0.a.x) | 0u, ~var_3.b.c), select(~(~vec3<u32>(1u, 0u, global0.a.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 52272u, 47163u), ~vec3<u32>(var_3.b.c, 27646u, 45196u), global1.a >> (vec3<u32>(u_input.a.x, 1u, 6768u) % vec3<u32>(32u))), vec3<bool>(global1.b & false, global1.b, true))), global0.b, reverseBits(firstTrailingBit(firstTrailingBit(-1i))), Struct_2(abs(vec4<i32>(firstLeadingBit(21757i), 1i, countOneBits(global0.d.a.x), global1.c << (0u % 32u))), global1.d.b, global0.d.b));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, global0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global0.d.b)))))));
}

