struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global2: array<f32, 26>;

var<private> global3: f32;

var<private> global4: Struct_3 = Struct_3(false, vec3<bool>(false, false, false), Struct_2(-510f, vec2<u32>(18024u, 48012u), Struct_1(vec3<u32>(0u, 0u, 57139u)), 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<bool>) -> vec3<bool> {
    var var_0 = Struct_4(Struct_3(global4.b.x, vec3<bool>(true, true, true), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec2<u32>(~global1.x, 0u), Struct_1(global4.c.c.a & global4.c.c.a), arg_0.a.x)), global4.c.c, all(global4.b.yy), _wgslsmith_dot_vec2_u32(~vec2<u32>(36588u, arg_0.a.x), arg_0.a.yz));
    let var_1 = Struct_5(arg_3.x);
    var var_2 = var_1;
    var var_3 = ~(i32(-1i) * -1i);
    return select(select(!select(select(global4.b, vec3<bool>(var_0.c, false, true), false), select(global4.b, vec3<bool>(global0.x, true, global4.b.x), var_0.a.b), true), vec3<bool>(true, !(arg_2.x != arg_2.x), all(!vec3<bool>(false, true, var_2.a))), !all(vec3<bool>(true, false, false))), vec3<bool>((-1i >> (arg_0.a.x % 32u)) > u_input.c.x, !var_2.a, all(select(select(vec4<bool>(false, global0.x, var_1.a, false), vec4<bool>(var_2.a, var_1.a, arg_3.x, false), true), vec4<bool>(false, true, var_0.a.a, false), vec4<bool>(false, false, global4.b.x, arg_3.x)))), !(!select(arg_3.x, true, false & var_2.a)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<bool>, arg_2: i32, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(global4.c.d, 26u)], global4.c.a, global2[_wgslsmith_index_u32(arg_3.x, 26u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-297f, 336f, global2[_wgslsmith_index_u32(0u, 26u)])))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(-1541f)), _wgslsmith_f_op_f32(-global4.c.a), -611f))));
    var var_1 = global0.x;
    let var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))))), 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-250f, -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-366f, var_0.x) + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 26u)])), !all(arg_1.yz))), _wgslsmith_f_op_f32(-125f * 145f)));
    var var_3 = !(!(!vec4<bool>(false || global0.x, global4.b.x, global4.a, global1.x >= 0u)));
    let var_4 = func_3(global4.c.c, reverseBits(global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.xx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2))))), global4.b.zy).xy;
    return select(vec4<bool>(true, select(false, !(arg_3.x <= u_input.d), (i32(-1i) * -2147483647i) > _wgslsmith_add_i32(u_input.c.x, 37674i)), var_4.x, (-u_input.e.x & 0i) > reverseBits(~arg_2)), !select(vec4<bool>(true, var_4.x, any(vec2<bool>(var_4.x, false)), any(vec3<bool>(false, false, global4.a))), select(select(vec4<bool>(var_3.x, global4.a, global4.a, var_4.x), vec4<bool>(global0.x, false, false, arg_1.x), global4.b.x), select(vec4<bool>(true, true, var_3.x, false), vec4<bool>(false, false, global0.x, global0.x), vec4<bool>(true, true, true, global4.a)), select(vec4<bool>(false, false, true, var_4.x), vec4<bool>(true, false, arg_1.x, global0.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x))), any(vec4<bool>(arg_1.x, arg_1.x, var_4.x, true))), global0.x);
}

fn func_2() -> Struct_4 {
    let var_0 = vec3<i32>(u_input.c.x, 0i, ~_wgslsmith_dot_vec3_i32(u_input.e, ~vec3<i32>(u_input.b, u_input.e.x, 1i)) ^ (-u_input.b << (~global1.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1634f), global2[_wgslsmith_index_u32(76925u << (u_input.d % 32u), 26u)], global2[_wgslsmith_index_u32(global4.c.b.x, 26u)])) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-483f, -353f, global2[_wgslsmith_index_u32(u_input.d, 26u)]), vec3<f32>(382f, global2[_wgslsmith_index_u32(global4.c.d, 26u)], global4.c.a)) + vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], global4.c.a, global4.c.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1056f, 203f, 359f) * vec3<f32>(330f, global2[_wgslsmith_index_u32(global1.x, 26u)], global2[_wgslsmith_index_u32(76195u, 26u)])) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.c.a, -140f, global4.c.a) * vec3<f32>(-1000f, -272f, 1407f))))))));
    global3 = _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(0u ^ global1.x, 26u)]));
    let var_2 = !(!func_4(vec2<u32>(global1.x, ~global1.x), select(func_3(Struct_1(global4.c.c.a), global4.c.d, var_1.yz, vec2<bool>(global4.a, global0.x)), global4.b, global4.a), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 0i, 2147483647i, var_0.x), vec4<i32>(65182i, var_0.x, -2147483647i, var_0.x)) & 20402i, firstLeadingBit(countOneBits(vec3<u32>(global1.x, 4294967295u, 0u)))));
    let var_3 = 47640i;
    return Struct_4(Struct_3(true, !(!select(vec3<bool>(global4.b.x, var_2.x, global4.a), vec3<bool>(var_2.x, global4.a, var_2.x), vec3<bool>(global4.a, false, global4.b.x))), global4.c), global4.c.c, false, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u >> (0u % 32u), firstTrailingBit(90444u)), ~_wgslsmith_mod_vec2_u32(global4.c.c.a.xz, vec2<u32>(u_input.d, 0u))));
}

fn func_1() -> Struct_3 {
    var var_0 = vec3<f32>(-664f, _wgslsmith_f_op_f32(ceil(106f)), global2[_wgslsmith_index_u32(min(abs(_wgslsmith_mult_u32(global4.c.b.x, 4294967295u ^ global4.c.b.x)), global4.c.c.a.x), 26u)]);
    var var_1 = var_0.x;
    let var_2 = func_2();
    return Struct_3(all(vec4<bool>(true, true, true, true)) || global0.x, !vec3<bool>(_wgslsmith_f_op_f32(abs(var_2.a.c.a)) < _wgslsmith_f_op_f32(1101f - var_2.a.c.a), ~32516u <= reverseBits(global1.x), all(vec3<bool>(var_2.c, false, true))), global4.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 26>();
    var var_0 = Struct_4(func_1(), func_1().c.c, true, 37198u);
    var var_1 = _wgslsmith_div_vec4_i32(min(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-65941i, 60002i, u_input.e.x, -1i), vec4<i32>(u_input.b, 1i, -2147483647i, -43739i)) ^ min(u_input.a, -2147483647i), -22239i, -(~u_input.a), u_input.e.x), _wgslsmith_add_vec4_i32(vec4<i32>(~(-1i), u_input.b & 33927i, 0i << (1u % 32u), u_input.e.x), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.b, 0i, -2147483647i, u_input.a), vec4<i32>(-6006i, u_input.e.x, 2147483647i, u_input.b) >> (vec4<u32>(u_input.d, 1u, 0u, u_input.d) % vec4<u32>(32u))))), vec4<i32>(abs(2147483647i), -((u_input.e.x & -45831i) & -1i), abs(u_input.b), abs(1i)));
    let var_2 = vec3<u32>(22971u, ~u_input.d, ~_wgslsmith_dot_vec2_u32(~vec2<u32>(global4.c.d, global4.c.c.a.x), global4.c.c.a.xx) >> (0u % 32u));
    var var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a.c.a, _wgslsmith_f_op_f32(func_2().a.c.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.a) + _wgslsmith_f_op_f32(max(1632f, -682f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(167f, -161f) + 880f))), ~vec4<u32>(22750u, _wgslsmith_div_u32(u_input.d, 13542u), _wgslsmith_dot_vec3_u32(func_1().c.c.a, _wgslsmith_div_vec3_u32(var_2, vec3<u32>(global4.c.b.x, 15309u, 0u))), ~(~715u)));
}

