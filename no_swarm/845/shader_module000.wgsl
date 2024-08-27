struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
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

var<private> global0: vec3<i32>;

var<private> global1: vec4<bool>;

var<private> global2: f32 = -1311f;

var<private> global3: array<vec4<bool>, 16>;

var<private> global4: array<vec3<bool>, 32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<bool>) -> vec2<u32> {
    global2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1011f)) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -225f))))))));
    return arg_0.a.wz;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> vec2<u32> {
    var var_0 = Struct_2(vec4<u32>(1u, ~_wgslsmith_mult_u32(1u, 18890u), 4239u, ~_wgslsmith_mult_u32(u_input.b, u_input.b)), Struct_1(4294967295u, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, u_input.b, u_input.b, 78813u)), ~u_input.b, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(18068u, 4294967295u, 87227u), vec3<u32>(23644u, 1u, 7870u))) | ~(vec4<u32>(0u, u_input.b, 12143u, u_input.b) & vec4<u32>(40549u, u_input.b, u_input.b, 43086u)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b | 0u, 21476u, 0u, _wgslsmith_mod_u32(u_input.b, u_input.b)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 7351u, 23278u), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), vec4<u32>(4294967295u, u_input.b, 4294967295u, u_input.b))), 16u)]), _wgslsmith_dot_vec2_u32(~(reverseBits(vec2<u32>(u_input.b, u_input.b)) << (~vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, 1u), ~func_3(Struct_2(vec4<u32>(4294967295u, u_input.b, u_input.b, u_input.b), Struct_1(u_input.b, vec4<u32>(4294967295u, 4294967295u, u_input.b, 4294967295u), vec4<bool>(global1.x, false, global1.x, true)), u_input.b), Struct_3(arg_0), vec2<bool>(global1.x, true)))));
    var var_1 = Struct_3(_wgslsmith_mod_i32(~(~1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, 0i, -31809i), vec3<i32>(arg_0, global0.x, 1i))), 0i));
    var var_2 = Struct_2(vec4<u32>(1u, ~(~(~u_input.b)), ~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_0.c, var_0.c), ~vec2<u32>(19562u, var_0.c)), func_3(Struct_2(vec4<u32>(u_input.b, 5002u, var_0.c, var_0.c), var_0.b, 4476u), Struct_3(2147483647i), vec2<bool>(var_0.b.c.x, false)).x), var_0.b, u_input.b);
    var var_3 = Struct_1(~_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_2.c, u_input.b) << (var_0.b.b.wy % vec2<u32>(32u))), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 1u), var_2.a.xx) | firstTrailingBit(var_2.a.zy)), var_2.b.b, select(select(!vec4<bool>(true, global1.x, global1.x, var_0.b.c.x), vec4<bool>(any(var_2.b.c), var_2.b.c.x, !var_2.b.c.x, var_0.b.c.x), select(select(var_2.b.c, var_2.b.c, vec4<bool>(false, true, global1.x, var_2.b.c.x)), select(global3[_wgslsmith_index_u32(1u, 16u)], vec4<bool>(true, var_0.b.c.x, false, var_0.b.c.x), true), true)), select(select(vec4<bool>(var_0.b.c.x, true, global1.x, true), vec4<bool>(var_0.b.c.x, true, var_0.b.c.x, global1.x), select(var_2.b.c.x, false, true)), vec4<bool>(any(vec4<bool>(var_0.b.c.x, var_2.b.c.x, var_2.b.c.x, false)), var_2.b.c.x, !var_2.b.c.x, !var_0.b.c.x), vec4<bool>(true, false, 4294967295u <= u_input.b, false)), false));
    let var_4 = Struct_3(-2407i);
    return firstTrailingBit(firstLeadingBit(~min(var_0.a.xx, ~vec2<u32>(var_3.a, var_3.b.x))));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: bool) -> vec2<f32> {
    var var_0 = Struct_1(~_wgslsmith_dot_vec2_u32(~vec2<u32>(65339u, 24677u), ~func_2(global0.x, vec3<f32>(1838f, 1221f, 1263f), vec4<i32>(arg_1.a, arg_1.a, u_input.a.x, 2147483647i))), min((~vec4<u32>(4294967295u, 36030u, u_input.b, u_input.b) << (_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 43894u, 46290u, u_input.b), vec4<u32>(u_input.b, 52182u, 10818u, u_input.b), vec4<u32>(4294967295u, u_input.b, 0u, u_input.b)) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_div_u32(14229u, 21653u), u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)), ~vec4<u32>(~u_input.b, ~u_input.b, u_input.b, _wgslsmith_div_u32(u_input.b, u_input.b))), vec4<bool>(~u_input.b <= ~min(0u, u_input.b), true, !global1.x, any(!vec3<bool>(false, arg_0, false))));
    var var_1 = Struct_2(~(~select(~vec4<u32>(48585u, var_0.a, 4294967295u, var_0.b.x), vec4<u32>(20139u, 1u, 43210u, 19744u), var_0.c.x)), Struct_1(var_0.a, _wgslsmith_mult_vec4_u32(vec4<u32>(~0u, ~1u, _wgslsmith_div_u32(u_input.b, u_input.b), u_input.b >> (72350u % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, var_0.b.x, var_0.b.x, u_input.b), var_0.b, var_0.b) ^ ~var_0.b), select(vec4<bool>(true, !arg_2.x, all(arg_2.xx), true), select(select(arg_2, vec4<bool>(true, false, true, true), arg_3), arg_2, u_input.a.x <= 1i), !(u_input.a.x != global0.x))), ~(~_wgslsmith_clamp_u32(0u, reverseBits(u_input.b), ~4294967295u)));
    let var_2 = ~global0.x | (19952i >> ((22721u << (var_1.b.a % 32u)) % 32u));
    global3 = array<vec4<bool>, 16>();
    let var_3 = true;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(707f, 163f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1686f, 134f))))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(-366f, -1023f) - vec2<f32>(-561f, 3008f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(929f, -2378f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(31516i);
    let var_1 = true;
    global1 = global3[_wgslsmith_index_u32(firstLeadingBit(u_input.b), 16u)];
    var var_2 = _wgslsmith_f_op_f32(abs(-1711f));
    var_0 = Struct_3(_wgslsmith_clamp_i32(-var_0.a, 70730i, _wgslsmith_clamp_i32(~(-1i) & u_input.a.x, global0.x, var_0.a)));
    var var_3 = Struct_3(-firstLeadingBit(_wgslsmith_clamp_i32(-22555i, global0.x, -11080i) << (_wgslsmith_clamp_u32(u_input.b, u_input.b, u_input.b) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(753f, 844f) * _wgslsmith_f_op_vec2_f32(func_1(var_1, Struct_3(18669i), global3[_wgslsmith_index_u32(1u, 16u)], global1.x))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2201f, 388f) - vec2<f32>(-207f, -1282f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(376f, 226f) + vec2<f32>(164f, -945f))))));
}

