struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_3,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-2445f, vec4<f32>(414f, 322f, -562f, -1385f), true, 1u, vec2<bool>(false, false)));

var<private> global1: bool = true;

var<private> global2: array<u32, 9> = array<u32, 9>(1041u, 36765u, 39591u, 0u, 70733u, 6766u, 1u, 39059u, 4294967295u);

var<private> global3: u32;

var<private> global4: array<f32, 13> = array<f32, 13>(-2224f, -2285f, 870f, 651f, -938f, 559f, 316f, 799f, 1103f, -1319f, 454f, 169f, -1606f);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32) -> i32 {
    let var_0 = select(vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(min(vec3<i32>(1i, u_input.a, u_input.d.x), vec3<i32>(u_input.d.x, 1i, u_input.d.x)), firstTrailingBit(vec3<i32>(u_input.a, -1i, u_input.d.x))), -(~(-vec3<i32>(u_input.d.x, 13135i, 1i))) ^ (-vec3<i32>(46339i, -8504i, 0i) ^ max(-vec3<i32>(-2147483647i, u_input.d.x, u_input.a), vec3<i32>(u_input.a, u_input.d.x, 22716i))), any(select(global0.a.e, global0.a.e, vec2<bool>(all(vec4<bool>(global0.a.e.x, global0.a.c, false, false)), false | global0.a.c))));
    var var_1 = global0.a;
    let var_2 = 4294967295u;
    let var_3 = global0.a;
    let var_4 = true | var_3.c;
    return _wgslsmith_mult_i32(_wgslsmith_add_i32(0i, i32(-1i) * -1i), var_0.x);
}

fn func_4(arg_0: vec2<bool>, arg_1: i32) -> f32 {
    global1 = false;
    let var_0 = ~1u;
    var var_1 = ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 9216u), vec2<u32>(0u, 4294967295u)), ~var_0, var_0, global0.a.d), vec4<u32>(select(1u, global2[_wgslsmith_index_u32(0u, 9u)], arg_0.x), reverseBits(u_input.b.x), 62191u, 5330u)));
    var var_2 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(countOneBits(4294967295u) & var_0, 13u)] * 1000f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(min(1u, 4465u), 13u)] - _wgslsmith_f_op_f32(f32(-1f) * -165f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a * -846f), _wgslsmith_f_op_f32(global0.a.b.x * global4[_wgslsmith_index_u32(global0.a.d, 13u)])))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(ceil(1600f)), global0.a.b.x, 1f, _wgslsmith_f_op_f32(min(371f, global0.a.a))))), -669f >= global0.a.b.x, ~_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(131080u, 0u, global2[_wgslsmith_index_u32(1u, 9u)], var_0) | vec4<u32>(56006u, global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.b.x, 13918u)), ~abs(vec4<u32>(var_0, u_input.c.x, u_input.b.x, var_0))), select(global0.a.e, arg_0, all(select(arg_0, select(vec2<bool>(global0.a.c, false), vec2<bool>(true, arg_0.x), arg_0), global0.a.e))));
    var var_3 = var_2.e;
    return var_2.b.x;
}

fn func_2(arg_0: f32) -> Struct_2 {
    return Struct_2(Struct_1(global0.a.b.x, vec4<f32>(713f, -1000f, _wgslsmith_f_op_f32(func_4(select(vec2<bool>(global0.a.c, true), global0.a.e, global0.a.e), func_3(4073u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1992f)) + _wgslsmith_f_op_f32(-arg_0))), global0.a.c, _wgslsmith_clamp_u32(_wgslsmith_add_u32(~u_input.b.x, abs(global0.a.d)), ~global2[_wgslsmith_index_u32(global0.a.d, 9u)] >> (~global0.a.d % 32u), select(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], global2[_wgslsmith_index_u32(3757u, 9u)], global0.a.d, 99317u), vec4<u32>(15832u, 91340u, 1u, 4226u)), ~22841u, true)), select(select(vec2<bool>(global0.a.c, true), select(vec2<bool>(false, global0.a.e.x), vec2<bool>(global0.a.c, global0.a.c), true), false), select(vec2<bool>(false, global0.a.c), vec2<bool>(true, true), true), !select(vec2<bool>(true, true), vec2<bool>(false, global0.a.c), global0.a.e))));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = arg_0.b;
    let var_1 = _wgslsmith_div_vec2_u32(u_input.b, arg_0.a);
    let var_2 = Struct_2(global0.a);
    global4 = array<f32, 13>();
    var var_3 = !global0.a.e;
    return func_2(_wgslsmith_f_op_f32(trunc(global0.a.a)));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2) -> bool {
    return arg_2.a.e.x;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = vec4<f32>(-1495f, global0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.x - -718f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)))), _wgslsmith_f_op_f32(-arg_1.a));
    var var_1 = func_2(_wgslsmith_f_op_f32(max(1f, global4[_wgslsmith_index_u32(global0.a.d, 13u)])));
    var var_2 = min(-51680i, -1i);
    let var_3 = Struct_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, global4[_wgslsmith_index_u32(0u, 13u)], false)) * _wgslsmith_f_op_f32(select(-2239f, 1164f, arg_0.a.e.x))) * 1347f), _wgslsmith_f_op_f32(select(func_1(Struct_4(arg_2.yw, Struct_3(vec2<f32>(var_1.a.b.x, 604f), vec3<i32>(u_input.a, 1i, -2147483647i), -973f), arg_1.b.wz)).a.a, 2999f, true))), arg_3.zwz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_1.a.d, 13u)]), -1000f)))))));
    global2 = array<u32, 9>();
    return func_2(_wgslsmith_f_op_f32(func_4(vec2<bool>(_wgslsmith_div_f32(var_3.c, 599f) <= -362f, global0.a.c), arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    global0 = Struct_2(global0.a);
    let var_1 = -1254f;
    global2 = array<u32, 9>();
    global4 = array<f32, 13>();
    let var_2 = func_6(Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.a.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(921f, var_1, -1406f, global0.a.a) * global0.a.b) * vec4<f32>(-949f, -743f, global4[_wgslsmith_index_u32(1u, 13u)], -368f)), func_5(_wgslsmith_f_op_f32(f32(-1f) * -528f), global2[_wgslsmith_index_u32(global0.a.d, 9u)] & u_input.c.x, func_1(Struct_4(u_input.c.xx, Struct_3(global0.a.b.wz, vec3<i32>(u_input.d.x, u_input.d.x, u_input.a), global0.a.b.x), global0.a.b.wy))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.yy, u_input.c.zy, u_input.b), u_input.b >> (u_input.c.xz % vec2<u32>(32u))), 9u)], !select(vec2<bool>(true, global0.a.c), global0.a.e, true))), func_2(global0.a.a).a, vec4<u32>(~max(global0.a.d, global0.a.d), global0.a.d, ~u_input.c.x, ~global0.a.d), ~abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(-43642i, u_input.d.x, u_input.d.x, u_input.a), vec4<i32>(u_input.d.x, 2147483647i, u_input.a, u_input.d.x), vec4<i32>(-2147483647i, u_input.a, -16771i, 1i))));
    global4 = array<f32, 13>();
    let var_3 = var_2;
    let var_4 = max(~_wgslsmith_add_vec2_i32(u_input.d, -abs(vec2<i32>(u_input.a, u_input.d.x))), -u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.a, _wgslsmith_mult_vec4_i32(~vec4<i32>(_wgslsmith_mod_i32(0i, u_input.d.x), -1i, abs(var_4.x), -26932i), vec4<i32>(~(~u_input.a), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(var_4.x, 13577i, var_4.x, u_input.a)), ~vec4<i32>(u_input.a, u_input.a, -11209i, var_4.x)), _wgslsmith_sub_i32(u_input.a, _wgslsmith_add_i32(-68556i, 1i)), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-12524i, 2147483647i, var_4.x), vec3<i32>(u_input.a, var_4.x, var_4.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a, var_2.a.b.x, -384f, global0.a.b.x)) * var_3.a.b)) - vec4<f32>(var_3.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(623f * global0.a.a) + _wgslsmith_f_op_f32(global0.a.a - 283f)), _wgslsmith_f_op_f32(-var_3.a.b.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global4[_wgslsmith_index_u32(global0.a.d, 13u)])), -1000f)))), var_4);
}

