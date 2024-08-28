struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: u32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 5>;

var<private> global1: array<u32, 29> = array<u32, 29>(19406u, 1u, 4294967295u, 2870u, 71175u, 1u, 4153u, 95591u, 0u, 0u, 69712u, 1u, 0u, 17102u, 1u, 0u, 95344u, 1u, 30488u, 172u, 66327u, 47064u, 4294967295u, 4294967295u, 49804u, 37941u, 16429u, 0u, 34567u);

var<private> global2: array<vec4<i32>, 27>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: u32) -> f32 {
    let var_0 = vec2<u32>(~(_wgslsmith_dot_vec2_u32(countOneBits(arg_2.b.xx), firstTrailingBit(vec2<u32>(arg_0.c, 26982u))) | _wgslsmith_dot_vec2_u32(arg_2.b.yz, _wgslsmith_div_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 29u)], arg_0.c), arg_2.d.xx))), _wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(0u, global1[_wgslsmith_index_u32(u_input.a, 29u)]) << (vec2<u32>(26600u, 46933u) % vec2<u32>(32u)))), abs(firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 4294967295u), arg_2.b.xz)))));
    let var_1 = Struct_2(_wgslsmith_f_op_f32(min(arg_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -743f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.x, -1593f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2310f, arg_1.x), vec2<f32>(arg_0.d.x, arg_0.d.x), vec2<bool>(false, false))))) * vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - arg_0.d.x), -1089f)))), -2220f, ~u_input.b, !(!vec3<bool>(true, false, arg_2.e)));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-774f))))));
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_3(false, arg_0.x, u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1126f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1265f, -203f) - _wgslsmith_f_op_f32(func_3(Struct_3(false, 1i, 21080u, vec3<f32>(-1017f, 1099f, 1538f)), global0[_wgslsmith_index_u32(u_input.a, 5u)], Struct_1(2147483647i, vec3<u32>(34599u, global1[_wgslsmith_index_u32(18270u, 29u)], 33115u), vec4<u32>(global1[_wgslsmith_index_u32(1u, 29u)], 4010u, u_input.a, u_input.a), vec3<u32>(u_input.a, global1[_wgslsmith_index_u32(70293u, 29u)], u_input.a), true), 0u))), _wgslsmith_f_op_f32(abs(-608f)))));
    let var_1 = !vec4<bool>(false, var_0.a, true, false);
    let var_2 = var_0;
    let var_3 = vec3<u32>(global1[_wgslsmith_index_u32(51569u, 29u)], _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~min(vec4<u32>(38143u, var_2.c, var_2.c, 21522u), vec4<u32>(var_2.c, 4294967295u, 0u, var_0.c)), abs(reverseBits(vec4<u32>(30757u, u_input.a, 10997u, u_input.a)))), reverseBits(4294967295u)), var_2.c);
    global0 = array<vec3<f32>, 5>();
    return _wgslsmith_div_i32(reverseBits(2147483647i) & u_input.c.x, _wgslsmith_dot_vec3_i32(arg_0, ~arg_0));
}

fn func_1(arg_0: bool) -> i32 {
    let var_0 = func_2(-vec3<i32>(select(u_input.c.x, -33707i, arg_0), _wgslsmith_mult_i32(19476i & u_input.b.x, ~u_input.c.x), u_input.c.x ^ u_input.c.x));
    var var_1 = Struct_3(true, -40174i, u_input.a, vec3<f32>(850f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-365f + 1478f), _wgslsmith_f_op_f32(min(-274f, 1000f))))), _wgslsmith_f_op_f32(1025f * -867f)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_1.d.x, -1514f), var_1.d.x));
    global0 = array<vec3<f32>, 5>();
    let var_3 = !vec3<bool>(arg_0, false, var_1.a);
    return 10055i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    let var_1 = ~u_input.b;
    var_0 = ~(-1i) | select(_wgslsmith_div_i32(-2147483647i, func_1(true)), 48911i, true);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -270f))), _wgslsmith_f_op_f32(-764f - _wgslsmith_f_op_f32(f32(-1f) * -1339f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1213f, 1f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(621f, 1397f))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-809f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1857f + 236f) + _wgslsmith_f_op_f32(f32(-1f) * -1239f))))), countOneBits(-_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(7429i, u_input.c.x, var_1.x)), vec3<i32>(u_input.b.x, var_1.x, 2147483647i), _wgslsmith_clamp_vec3_i32(var_1, vec3<i32>(u_input.b.x, 1i, -60158i), var_1))), vec3<bool>(true, !select(true, any(vec2<bool>(false, false)), true), false));
    let var_3 = Struct_1(-select(~(0i ^ var_2.d.x), abs(20116i), !all(vec4<bool>(false, false, var_2.e.x, var_2.e.x))), ~vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(0u, 29u)], 52003u) << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~70373u, 29u)], 29u)] % 32u), 29u)], _wgslsmith_div_u32(abs(global1[_wgslsmith_index_u32(16730u, 29u)]), ~1u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(0u, 29u)] & 0u, 4294967295u, ~38748u)), vec4<u32>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1[_wgslsmith_index_u32(u_input.a, 29u)]), _wgslsmith_mod_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(1u, 29u)], 0u), vec2<u32>(1u, u_input.a))), 29u)], _wgslsmith_clamp_u32(0u, u_input.a, ~4856u), global1[_wgslsmith_index_u32(~reverseBits(u_input.a), 29u)], u_input.a), vec3<u32>(4294967295u ^ global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(abs(min(u_input.a, 4294967295u)), 29u)], 29u)], 1u, 1u), var_2.e.x);
    global2 = array<vec4<i32>, 27>();
    let var_4 = var_3;
    let var_5 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, var_2.b.x)) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), ~_wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(var_4.d.x, 27u)], global2[_wgslsmith_index_u32(reverseBits(var_4.c.x), 27u)]), ~u_input.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(-354f, -261f, 1000f) + global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(21968u, 29u)], 5u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_5.d.x * 1826f), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.c) - var_2.a), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_5.d.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b.x, var_2.b.x)), false))), 469f);
}

