struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26> = array<bool, 26>(true, false, true, false, false, false, false, true, true, true, true, true, false, true, true, true, true, true, true, false, false, false, false, true, true, false);

var<private> global1: array<Struct_3, 17>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec2<f32>(-1648f, -407f)), false, Struct_1(vec2<f32>(608f, -794f)));

var<private> global3: Struct_4 = Struct_4(Struct_1(vec2<f32>(711f, -574f)), true, Struct_3(Struct_2(Struct_1(vec2<f32>(-963f, 919f)), true, Struct_1(vec2<f32>(-367f, 1069f))), 30647u, -1403f, vec2<u32>(1u, 0u), vec2<i32>(26393i, i32(-2147483648))));

var<private> global4: vec4<u32> = vec4<u32>(0u, 0u, 1u, 43087u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: vec4<f32>, arg_3: f32) -> u32 {
    var var_0 = global2.a;
    global1 = array<Struct_3, 17>();
    var var_1 = select(vec2<bool>(true, global2.b), !select(select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 26u)], global2.b), vec2<bool>(true, true), global3.b && true), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(global4.x, 26u)])), select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(global3.c.b, 26u)]), vec2<bool>(true, true), vec2<bool>(global3.b, false)), !vec2<bool>(global2.b, true), vec2<bool>(true, true))), select(!vec2<bool>(true & global0[_wgslsmith_index_u32(global3.c.d.x, 26u)], global2.b), select(select(vec2<bool>(true, false), !vec2<bool>(global0[_wgslsmith_index_u32(global4.x, 26u)], global2.b), global2.b), vec2<bool>(select(global2.b, global3.b, true), false), any(select(vec2<bool>(true, global0[_wgslsmith_index_u32(0u, 26u)]), vec2<bool>(global0[_wgslsmith_index_u32(arg_0, 26u)], global0[_wgslsmith_index_u32(4294967295u, 26u)]), false))), 31037u <= arg_0));
    var var_2 = global3.c;
    global3 = Struct_4(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(arg_2.x + global2.c.a.x)), var_2.a.a.a.x)), !global3.b, Struct_3(global3.c.a, ~(~69547u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_3, arg_2.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-336f, -760f))))), firstLeadingBit(abs(~vec2<u32>(var_2.d.x, 0u))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, var_2.e.x) & vec2<i32>(global3.c.e.x, global3.c.e.x), vec2<i32>(-1i, -2147483647i) | u_input.a)));
    return _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0, global3.c.d.x), min(17321u, var_2.b)), 1u, ~select(9763u, 1u, true), min(global4.x << (global3.c.d.x % 32u), ~44254u)), firstTrailingBit(vec4<u32>(abs(_wgslsmith_clamp_u32(var_2.d.x, global4.x, 1u)), min(var_2.d.x | 67818u, max(global4.x, 26094u)), 1u, global3.c.d.x)));
}

fn func_2() -> bool {
    var var_0 = global1[_wgslsmith_index_u32(min(firstLeadingBit(_wgslsmith_dot_vec3_u32(~global4.xxw, global4.wwy)) & func_3(30131u, -158f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.a.x, global2.c.a.x, 219f, global2.a.a.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.a.x, global3.a.a.x, global2.a.a.x, global3.a.a.x) - vec4<f32>(-1268f, global2.a.a.x, global3.c.c, 1234f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a.x) - global2.c.a.x)), ~global4.x), 17u)];
    var var_1 = global3.c;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(ceil(var_1.a.c.a.x)), _wgslsmith_f_op_f32(round(global3.a.a.x)));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1000f))))), -1000f));
    let var_4 = var_0.e.x;
    return any(select(vec4<bool>(true, true, all(select(vec2<bool>(true, true), vec2<bool>(var_1.a.b, global0[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(false, true))), global3.c.a.b), select(vec4<bool>(true | var_0.a.b, true, true, var_1.e.x > 27197i), vec4<bool>(global2.b, !global0[_wgslsmith_index_u32(4294967295u, 26u)], var_0.a.b, global3.b), vec4<bool>(any(vec2<bool>(global2.b, false)), !global0[_wgslsmith_index_u32(0u, 26u)], global4.x >= 25996u, true)), vec4<bool>(all(vec2<bool>(true, true)), select(false, !var_1.a.b, true), var_1.b >= ~33797u, global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(global4.zwx, global4.wwy), 26u)])));
}

fn func_1(arg_0: bool) -> f32 {
    global2 = global3.c.a;
    var var_0 = select(vec4<bool>(!func_2(), ((global4.x << (global4.x % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 6832u, global3.c.b, global3.c.d.x), vec4<u32>(global4.x, 0u, 1207u, 4294967295u))) != ~_wgslsmith_dot_vec2_u32(vec2<u32>(83848u, 4160u), vec2<u32>(global4.x, 1u)), (_wgslsmith_f_op_f32(-global3.c.a.a.a.x) == _wgslsmith_f_op_f32(select(732f, global3.c.a.a.a.x, global3.b))) | true, true), vec4<bool>(!(_wgslsmith_f_op_f32(step(global2.c.a.x, global3.c.a.a.a.x)) > _wgslsmith_f_op_f32(select(-1015f, -146f, arg_0))), false, true, all(!(!vec2<bool>(false, global3.c.a.b)))), false);
    global1 = array<Struct_3, 17>();
    var_0 = vec4<bool>(all(vec2<bool>(true, true)) & global2.b, arg_0 & !(global3.a.a.x > _wgslsmith_f_op_f32(-global2.a.a.x)), global3.b, true);
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.a.x * -1773f)), global3.a.a.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1565f))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c.a.a.a.x, _wgslsmith_f_op_f32(floor(577f))))))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_4(global2.c, global3.b && (global3.c.a.b || (~20951u < _wgslsmith_add_u32(global4.x, 1u))), Struct_3(global3.c.a, ~_wgslsmith_dot_vec3_u32(~global4.xwx, ~vec3<u32>(0u, 33634u, 118549u)), _wgslsmith_f_op_f32(func_1(select(select(true, false, global0[_wgslsmith_index_u32(global3.c.d.x, 26u)]), true, true))), firstLeadingBit(global3.c.d), ~_wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(global3.c.e.x, u_input.a.x)), vec2<i32>(-6085i, 1i), vec2<i32>(-1i, global3.c.e.x))));
    var var_0 = Struct_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(global3.c.a.a.a.x)), -1270f))), _wgslsmith_sub_i32(global3.c.e.x, _wgslsmith_sub_i32(-u_input.b, global3.c.e.x)) > -9447i, Struct_3(Struct_2(global3.c.a.c, !global3.c.a.b, Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, global2.c.a.x))))), global4.x, _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global3.c.c, _wgslsmith_f_op_f32(-global3.c.c)))), ~vec2<u32>(0u, 1u) & ~_wgslsmith_mod_vec2_u32(global3.c.d, global3.c.d), ~vec2<i32>(_wgslsmith_sub_i32(2147483647i, 0i), -global3.c.e.x)));
    var_0 = Struct_4(var_0.c.a.a, _wgslsmith_sub_u32(global4.x, countOneBits(36813u) | min(global3.c.b, 3147u)) >= var_0.c.d.x, Struct_3(global3.c.a, ~reverseBits(var_0.c.d.x ^ global3.c.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.a.a.x)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f), var_0.c.c)), abs(~vec2<u32>(25072u, var_0.c.b)), u_input.a));
    let var_1 = (~firstTrailingBit(global4.x) == 4294967295u) | false;
    global2 = global3.c.a;
    var var_2 = ~(-6628i);
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(511u, ~(~var_0.c.d), -global3.c.e.x);
}

