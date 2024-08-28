struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19>;

var<private> global1: array<vec3<u32>, 23> = array<vec3<u32>, 23>(vec3<u32>(1u, 11845u, 1u), vec3<u32>(1u, 1u, 42514u), vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(67109u, 4294967295u, 49678u), vec3<u32>(17772u, 34106u, 1u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(1u, 0u, 7231u), vec3<u32>(1u, 4294967295u, 63266u), vec3<u32>(39693u, 18078u, 0u), vec3<u32>(1u, 20993u, 0u), vec3<u32>(48918u, 1u, 33075u), vec3<u32>(55842u, 40708u, 11174u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 5607u, 984u), vec3<u32>(4294967295u, 29299u, 82653u), vec3<u32>(4294967295u, 1u, 58124u), vec3<u32>(0u, 4294967295u, 35989u), vec3<u32>(4294967295u, 29847u, 4294967295u), vec3<u32>(1u, 89939u, 4294967295u), vec3<u32>(0u, 0u, 4294967295u), vec3<u32>(4294967295u, 0u, 18953u), vec3<u32>(0u, 57490u, 46515u), vec3<u32>(53515u, 92409u, 1u));

var<private> global2: vec4<f32> = vec4<f32>(-1000f, 1320f, -1207f, 1118f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: u32) -> u32 {
    global1 = array<vec3<u32>, 23>();
    global0 = array<Struct_1, 19>();
    global2 = vec4<f32>(arg_1, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x - -149f), _wgslsmith_f_op_f32(-258f - global2.x))), global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-893f + global2.x), _wgslsmith_f_op_f32(arg_1 + 1261f))))) * _wgslsmith_f_op_f32(ceil(246f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1026f)))));
    let var_0 = 28352i;
    global1 = array<vec3<u32>, 23>();
    return ~1u;
}

fn func_2(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(1053f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1089f)) - _wgslsmith_f_op_f32(step(global2.x, global2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-128f + global2.x)))), -136f, _wgslsmith_f_op_f32(f32(-1f) * -1604f))));
    var_0 = Struct_1(!vec2<bool>(arg_0.x, !arg_0.x), _wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(arg_2.b, ~vec4<u32>(var_0.b.x, u_input.a.x, 24242u, 4294967295u) << (arg_2.b % vec4<u32>(32u))), var_0.b));
    let var_2 = global0[_wgslsmith_index_u32(~51277u, 19u)];
    let var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(max(~0u, ~arg_2.b.x), 1u, select(var_2.b.x, 1u, all(arg_0.yy))), vec3<u32>(~var_2.b.x, _wgslsmith_dot_vec2_u32(min(vec2<u32>(1u, u_input.a.x), var_0.b.xz), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.b.x, u_input.b), vec2<u32>(arg_2.b.x, u_input.b))), arg_2.b.x), ~_wgslsmith_mult_vec3_u32(reverseBits(var_2.b.wzw), var_0.b.yzx >> (var_2.b.zzz % vec3<u32>(32u)))), countOneBits(vec3<u32>(u_input.a.x, 0u, func_3(var_2.a.x, _wgslsmith_div_f32(global2.x, 1235f), ~4294967295u))));
    return _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, i32(-1i) * -arg_1, abs(arg_1), arg_1), vec4<i32>(arg_1, ~arg_1, arg_1, arg_1)), reverseBits(-(vec4<i32>(arg_1, arg_1, arg_1, 8555i) & (vec4<i32>(arg_1, arg_1, -51783i, -1i) & vec4<i32>(-1i, 18580i, arg_1, arg_1)))));
}

fn func_1() -> i32 {
    global1 = array<vec3<u32>, 23>();
    let var_0 = func_2(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), !vec3<bool>(true, any(vec3<bool>(true, false, true)), true)), 68422i, Struct_1(vec2<bool>(any(vec2<bool>(false, false)) & true, true), ~vec4<u32>(0u << (1u % 32u), abs(u_input.b), u_input.b, u_input.a.x)));
    let var_1 = var_0;
    global1 = array<vec3<u32>, 23>();
    var var_2 = Struct_1(select(vec2<bool>(!select(true, true, true), false), vec2<bool>(any(vec4<bool>(false, true, false, true)), select(global2.x != global2.x, global2.x >= global2.x, all(vec2<bool>(false, true)))), vec2<bool>(true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true))))), vec4<u32>(~_wgslsmith_sub_u32(0u, u_input.b), u_input.b, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], vec3<u32>(u_input.a.x, u_input.b, 0u)), 0u), u_input.b) | vec4<u32>(u_input.b, abs(u_input.a.x ^ u_input.a.x), u_input.b, u_input.a.x));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -vec4<i32>(-2147483647i, firstLeadingBit(-6163i), _wgslsmith_dot_vec4_i32(vec4<i32>(-57855i, -19119i, 0i, 13368i), min(vec4<i32>(19931i, -14983i, 1836i, 6294i), vec4<i32>(2147483647i, 2020i, 952i, -49013i))), abs(func_1())) >> (~vec4<u32>(reverseBits(0u) ^ u_input.b, u_input.a.x, reverseBits(firstTrailingBit(1u)), _wgslsmith_mod_u32(~0u, 45366u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global2.xw, global2.yyy, var_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) + -481f))), _wgslsmith_f_op_f32(abs(global2.x))));
}

