struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: f32,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(false, false, true, true, false, false, false, true, false, true, true, false, false, true, true, true, false, true, false, false, true, false, true, true);

var<private> global1: Struct_3;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~0u, 24u)];
    var var_1 = _wgslsmith_clamp_i32(35255i, _wgslsmith_sub_i32(countOneBits(u_input.a.x >> (1u % 32u)), global1.b.a.x), global1.b.a.x);
    let var_2 = firstLeadingBit(u_input.c.x);
    global1 = Struct_3(global1.a, Struct_1(u_input.c), global1.a);
    var var_3 = 27633i;
    return ~1u;
}

fn func_2() -> vec4<bool> {
    global1 = Struct_3(Struct_2(select(~_wgslsmith_mult_vec2_u32(vec2<u32>(95426u, u_input.b), global1.c.a), ~vec2<u32>(27528u, u_input.b), !select(vec2<bool>(true, global0[_wgslsmith_index_u32(39864u, 24u)]), vec2<bool>(global0[_wgslsmith_index_u32(7855u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), global0[_wgslsmith_index_u32(5327u, 24u)])), _wgslsmith_clamp_u32(19577u, 0u, func_3(vec4<bool>(true, false, true, true)))), global1.b, Struct_2(vec2<u32>(~(~global1.a.a.x), _wgslsmith_div_u32(_wgslsmith_clamp_u32(global1.a.b, global1.c.a.x, u_input.b), 1874u)), ~8831u));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -982f);
    let var_1 = _wgslsmith_add_i32(0i, global1.b.a.x);
    return !(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 24u)], false, true, global0[_wgslsmith_index_u32(func_3(select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(138840u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec4<bool>(true, global0[_wgslsmith_index_u32(global1.c.b, 24u)], true, global0[_wgslsmith_index_u32(1u, 24u)]), vec4<bool>(true, false, global0[_wgslsmith_index_u32(global1.c.b, 24u)], global0[_wgslsmith_index_u32(global1.c.a.x, 24u)]))), 24u)]));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> bool {
    var var_0 = func_2();
    var_0 = vec4<bool>(var_0.x && !(!global0[_wgslsmith_index_u32(1u, 24u)]), _wgslsmith_f_op_f32(-arg_0) >= _wgslsmith_div_f32(-847f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1000f)))), true, true);
    let var_1 = (global1.a.b | global1.c.b) << (global1.a.a.x % 32u);
    var var_2 = Struct_2(vec2<u32>(~(~108386u), global1.a.a.x), (global1.c.a.x & _wgslsmith_clamp_u32(25360u, abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(26011u, global1.c.b, var_1, u_input.b), vec4<u32>(global1.c.b, 6864u, 14645u, 1u)))) & 88851u);
    var var_3 = global1.b.a.x ^ max(~(-16986i), _wgslsmith_mult_i32(-6949i, -global1.b.a.x) & (select(u_input.a.x, -15163i, false) | global1.b.a.x));
    return true;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec3<bool>) -> Struct_4 {
    var var_0 = ~(~(~vec3<u32>(36534u, u_input.b, ~0u)));
    var var_1 = vec3<bool>(func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.x)) * arg_0.x) - arg_0.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0 - _wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-807f, arg_0.x, -1000f, arg_0.x))), false))), u_input.a.x == global1.b.a.x, true);
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xz));
    let var_3 = select(vec4<bool>(all(vec3<bool>(true, true, true)), arg_2, any(!func_2().yyw), global0[_wgslsmith_index_u32(1u, 24u)]), !(!select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], false, global0[_wgslsmith_index_u32(83289u, 24u)], var_1.x), !vec4<bool>(arg_3.x, false, global0[_wgslsmith_index_u32(4294967295u, 24u)], arg_2), false)), _wgslsmith_f_op_f32(-arg_0.x) <= 449f);
    var var_4 = Struct_5(1u, select(~(var_0.x ^ select(u_input.b, 45242u, false)), _wgslsmith_div_u32(~global1.a.a.x, min(min(global1.a.b, u_input.b), ~global1.a.b)), !arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(679f)), arg_0.x) - -229f)), vec2<i32>(global1.b.a.x, -select(reverseBits(32774i), ~global1.b.a.x, global0[_wgslsmith_index_u32(~u_input.b, 24u)])));
    return Struct_4(_wgslsmith_mod_u32(firstTrailingBit(u_input.b), firstLeadingBit(36852u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-491f, -197f, 2199f, 1469f)))))), !(!select(select(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 24u)], false), vec3<bool>(global0[_wgslsmith_index_u32(17694u, 24u)], global0[_wgslsmith_index_u32(8299u, 24u)], global0[_wgslsmith_index_u32(48141u, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], true, global0[_wgslsmith_index_u32(41342u, 24u)])), select(vec3<bool>(global0[_wgslsmith_index_u32(15047u, 24u)], global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(25028u, 24u)]), vec3<bool>(false, false, global0[_wgslsmith_index_u32(38455u, 24u)]), true), !vec3<bool>(true, global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(global1.c.a.x, 24u)]))), !func_1(_wgslsmith_f_op_f32(924f * _wgslsmith_f_op_f32(step(-308f, 136f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(609f, -1165f, 559f, -263f) - vec4<f32>(-427f, -541f, -1312f, 282f)))), select(select(vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(1u, 24u)], false, true)), false, global0[_wgslsmith_index_u32(~1u, 24u)]), func_2().wyy, !func_2().x), !(!func_2().xyw), !(!func_2().zzw)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-311f, 229f)) * _wgslsmith_f_op_f32(round(1266f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-753f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-718f, 1000f) + vec2<f32>(-1819f, -1333f)))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -491f), _wgslsmith_f_op_f32(-273f - -234f)))) * vec2<f32>(1f, 1f));
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(842f + var_1.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 817f)))));
    var var_3 = Struct_4(var_0.a);
    var_3 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, 519f, -1572f, 616f) - vec4<f32>(var_2.x, -1075f, var_1.x, var_2.x)))))), !func_2().www, global0[_wgslsmith_index_u32(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-716f, -2344f, -828f, -1560f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_2.x, 743f, 222f) - vec4<f32>(1751f, var_1.x, var_1.x, 699f))))), vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(global1.a.b, var_3.a, 38342u)), _wgslsmith_div_vec3_u32(vec3<u32>(94472u, var_3.a, 0u), vec3<u32>(4294967295u, 4294967295u, global1.c.a.x))), 24u)], any(select(vec2<bool>(global0[_wgslsmith_index_u32(64401u, 24u)], global0[_wgslsmith_index_u32(46543u, 24u)]), vec2<bool>(false, false), vec2<bool>(global0[_wgslsmith_index_u32(0u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]))), false), false, !func_2().zxy).a, 24u)], !vec3<bool>(false, var_2.x == var_1.x, func_1(-1000f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-320f, var_2.x, -1459f, var_1.x)))));
    global1 = Struct_3(global1.c, global1.b, Struct_2(~global1.a.a, (~var_0.a << (_wgslsmith_mod_u32(45772u, var_3.a) % 32u)) & _wgslsmith_mod_u32(~u_input.b, 4294967295u)));
    global0 = array<bool, 24>();
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-880f)))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(abs(324f))), var_2.x, _wgslsmith_f_op_f32(sign(384f))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b.a.x, _wgslsmith_sub_vec2_i32(abs(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 1i), u_input.a, global1.b.a.yx))), _wgslsmith_sub_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, 2147483647i) ^ ~global1.b.a.yz)));
}

