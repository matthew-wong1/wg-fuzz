struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec4<u32>,
    d: vec4<bool>,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: Struct_2;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<bool>) -> vec3<u32> {
    let var_0 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, firstLeadingBit(arg_1.b.a.x)), global1.b.c.wx));
    global1 = Struct_2(arg_0.b.d.x, global1.b, global1.c);
    let var_1 = arg_0.b.a;
    let var_2 = select(~(~(arg_1.b.c.x | u_input.d)), 9050u, global1.a) >> (1u % 32u);
    return _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.b.c.x, ~55161u, 0u ^ arg_0.b.c.x), ~u_input.e), ~(select(arg_0.b.a >> (vec3<u32>(var_2, var_0.x, 98982u) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(12484u, arg_1.b.c.x, 66107u)), vec3<bool>(arg_2.x, arg_1.a, false)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.b.c.xxz, arg_0.b.c.zww), ~vec3<u32>(global1.b.a.x, global0[_wgslsmith_index_u32(8406u, 24u)], 9297u)) % vec3<u32>(32u))));
}

fn func_2(arg_0: f32, arg_1: u32) -> i32 {
    var var_0 = -_wgslsmith_sub_vec3_i32(vec3<i32>(1i, -u_input.a.x, u_input.c), min(vec3<i32>(u_input.a.x, u_input.c, 1i), vec3<i32>(u_input.a.x, u_input.c, u_input.a.x)) ^ firstTrailingBit(vec3<i32>(u_input.c, u_input.c, u_input.a.x))) >> (func_3(Struct_2(global1.a, Struct_1(~u_input.e, _wgslsmith_f_op_f32(-372f + -3067f), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, global1.b.c.x, 70720u, global1.b.a.x), global1.b.c), !vec4<bool>(global1.a, true, global1.a, global1.b.d.x), _wgslsmith_f_op_f32(-global1.b.e)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.b, global1.b.e, -378f)) + _wgslsmith_f_op_vec3_f32(max(global1.c, global1.c)))), Struct_2(global1.b.d.x, global1.b, global1.c), !(!select(global1.b.d.yyx, vec3<bool>(global1.b.d.x, true, true), true))) % vec3<u32>(32u));
    let var_1 = global1.b;
    var_0 = max(-(_wgslsmith_add_vec3_i32(vec3<i32>(1805i, var_0.x, 2147483647i) ^ vec3<i32>(66182i, var_0.x, u_input.c), ~vec3<i32>(var_0.x, 31563i, -35992i)) << (vec3<u32>(min(var_1.a.x, 0u), ~4294967295u, max(4294967295u, global0[_wgslsmith_index_u32(u_input.e.x, 24u)])) % vec3<u32>(32u))), abs(vec3<i32>(u_input.a.x, -73215i << (arg_1 % 32u), u_input.a.x & u_input.a.x) & vec3<i32>(-37996i, 2147483647i, -1i << (global0[_wgslsmith_index_u32(14194u, 24u)] % 32u))));
    let var_2 = Struct_2(any(global1.b.d.zx), global1.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(global1.b.e - -424f)), -688f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.e, var_1.b, true)) + _wgslsmith_div_f32(-792f, arg_0))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.b.b), _wgslsmith_f_op_f32(max(310f, global1.b.b)), _wgslsmith_f_op_f32(max(global1.c.x, global1.c.x))) - vec3<f32>(520f, _wgslsmith_f_op_f32(ceil(global1.b.e)), arg_0))));
    var var_3 = ~firstTrailingBit(_wgslsmith_div_vec3_u32(select(var_2.b.a, firstTrailingBit(vec3<u32>(var_1.a.x, global0[_wgslsmith_index_u32(1u, 24u)], 4294967295u)), !vec3<bool>(var_1.d.x, var_2.a, global1.a)), global1.b.c.zyz));
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(max(vec2<i32>(var_0.x, u_input.c), var_0.zx)), vec2<i32>(firstLeadingBit(-u_input.c & -var_0.x), i32(-1i) * -22033i));
}

fn func_4(arg_0: i32, arg_1: bool) -> Struct_2 {
    global0 = array<u32, 24>();
    let var_0 = global1.b.d.xw;
    let var_1 = vec2<bool>(!((2214f < _wgslsmith_f_op_f32(global1.b.e - -1032f)) || false), any(global1.b.d.wwx));
    return Struct_2(all(vec2<bool>(global1.b.b >= 1119f, true)) != false, global1.b, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1662f, global1.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(590f - global1.b.e) + global1.b.b))));
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> Struct_2 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    global1 = func_4(firstTrailingBit(-min(arg_3, 23948i) | _wgslsmith_div_i32(func_2(593f, 30920u), 1i)), true);
    var var_0 = global1.b;
    var var_1 = global1.c.xy;
    return Struct_2(true, func_4(min(~(i32(-1i) * -1i), u_input.c), true).b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -827f), 922f)), arg_0, -130f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec3<bool>(false, false, any(global1.b.d.zwz));
    var_0 = global1.b.d.zzz;
    global0 = array<u32, 24>();
    var var_1 = func_1(124f, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-780f + 1179f), global1.b.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -502f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + global1.b.b) * _wgslsmith_f_op_f32(-global1.c.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, global1.b.b, 1095f, global1.c.x))))), -1854f, (_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a, u_input.a), vec2<i32>(u_input.c, -2147483647i) | vec2<i32>(u_input.c, u_input.c)) << (~(~0u) % 32u)) & firstTrailingBit(-20173i));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(-global1.c.x), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    var_2 = vec3<f32>(func_4(-(~0i), all(func_4(~(-30581i), true).b.d)).c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.c.x))) - _wgslsmith_f_op_f32(exp2(var_2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-338f * -582f))) + _wgslsmith_f_op_f32(round(global1.c.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1638f)) + 485f)));
    let var_3 = 0u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~global1.b.c.x, 55393u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global1.c.x, _wgslsmith_f_op_f32(-var_1.b.b), global1.b.e), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, -404f, -1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.e, global1.c.x, 215f) * var_1.c)))));
}

