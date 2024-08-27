struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12>;

var<private> global1: i32 = -10873i;

var<private> global2: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> vec3<bool> {
    let var_0 = u_input.e.zy;
    let var_1 = 2147483647i;
    global0 = array<vec4<bool>, 12>();
    let var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(countOneBits(~_wgslsmith_mult_vec3_i32(u_input.e, u_input.e)), vec3<i32>(-(51524i << (u_input.a.x % 32u)), select(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, -1i), vec2<i32>(var_1, u_input.d.x)), 1i, any(vec2<bool>(false, false))), 0i ^ var_0.x)), _wgslsmith_add_vec3_i32(vec3<i32>(44988i, 1i, (i32(-1i) * -24502i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 57074u, 13572u, 4294967295u), vec4<u32>(u_input.c.x, 0u, u_input.a.x, u_input.a.x)) % 32u)), ~vec3<i32>(var_0.x, u_input.e.x ^ 1i, -2147483647i)));
    global2 = array<vec3<bool>, 31>();
    return select(!(!select(global2[_wgslsmith_index_u32(0u, 31u)], !global2[_wgslsmith_index_u32(63790u, 31u)], true)), !select(global2[_wgslsmith_index_u32(u_input.c.x, 31u)], global2[_wgslsmith_index_u32(~u_input.a.x, 31u)], !global2[_wgslsmith_index_u32(u_input.a.x, 31u)]), false);
}

fn func_3() -> bool {
    var var_0 = _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(434f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f), _wgslsmith_f_op_f32(sign(1000f))))));
    var var_1 = Struct_1(u_input.c << ((vec3<u32>(29979u, u_input.a.x, firstLeadingBit(u_input.a.x)) | ~vec3<u32>(u_input.a.x, u_input.c.x, 0u)) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-418f, -616f, true)))), _wgslsmith_f_op_f32(max(-1286f, -1604f))), vec2<i32>(-2147483647i, 2147483647i), vec2<u32>(~9535u, 4294967295u));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.b.x)) + _wgslsmith_f_op_f32(-209f * var_1.b.x)), var_1.b.x))));
    var_0 = -388f;
    let var_3 = -731f;
    return select(func_1().x, true, any(vec3<bool>((925f == var_1.b.x) | (var_3 == var_1.b.x), any(global0[_wgslsmith_index_u32(~u_input.a.x, 12u)]), true)));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    var var_0 = vec2<bool>(func_3(), all(global0[_wgslsmith_index_u32(u_input.c.x, 12u)]));
    let var_1 = -2485f;
    global1 = arg_3.a;
    var var_2 = vec3<f32>(arg_3.e.b.x, _wgslsmith_f_op_f32(arg_3.e.b.x * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2319f - 1508f), -740f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(trunc(-200f)))))), 457f);
    global1 = min(2147483647i, firstTrailingBit(u_input.d.x));
    return Struct_1(vec3<u32>(_wgslsmith_add_u32(~4294967295u, ~arg_3.e.a.x), (24677u & arg_3.e.d.x) << (firstTrailingBit(31468u) % 32u), ~(~arg_0)) ^ arg_3.e.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.e.b + arg_1)))), u_input.e.yz, ~_wgslsmith_add_vec2_u32(arg_3.e.a.yx, vec2<u32>(arg_0, arg_0) << (vec2<u32>(arg_0, 41241u) % vec2<u32>(32u))) & u_input.a.xz);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(arg_0.b.x))))) == _wgslsmith_f_op_f32(ceil(-790f));
    return Struct_2(67238i, 0u, ~(arg_0.a.x & 32327u), abs(u_input.c.x ^ ~(~arg_0.d.x)), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(func_2(59384u, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(492f, 312f))))), !func_1(), Struct_2(17554i, 1u, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 4294967295u), ~u_input.c.x), firstLeadingBit(~6084u), Struct_1(vec3<u32>(u_input.a.x, 37912u, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(211f, 547f)), vec2<i32>(2147483647i, 33093i), select(u_input.a.yz, vec2<u32>(u_input.c.x, 0u), true)))));
    global2 = array<vec3<bool>, 31>();
    var var_1 = var_0;
    var var_2 = vec3<u32>(var_1.c >> (42568u % 32u), var_0.d, select(0u, var_0.d, !func_3()));
    var var_3 = select(vec3<bool>(true, !(_wgslsmith_f_op_f32(sign(748f)) < _wgslsmith_f_op_f32(sign(var_1.e.b.x))), !all(func_1().xy)), vec3<bool>(func_1().x, !(!select(true, false, true)), true | (all(vec3<bool>(true, true, true)) | true)), vec3<bool>(all(!(!global2[_wgslsmith_index_u32(var_2.x, 31u)])), !func_1().x, all(func_1())));
    var_2 = ~_wgslsmith_mult_vec3_u32(select(vec3<u32>(0u, var_2.x, var_0.d) ^ vec3<u32>(26655u, var_1.b, var_2.x), u_input.c, func_1()), vec3<u32>(var_2.x, _wgslsmith_div_u32(7842u, 15189u), 1u)) ^ vec3<u32>(~1u, 4294967295u & (~u_input.a.x >> (_wgslsmith_mod_u32(u_input.c.x, var_2.x) % 32u)), ~(~49386u));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.e.x, var_1.e.d.x, var_1.e.b.x, func_4(var_0.e).d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-273f, var_1.e.b.x)), var_0.e.b.x)))));
}

