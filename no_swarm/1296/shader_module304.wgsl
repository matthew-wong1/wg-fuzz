struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_4 {
    a: u32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<f32>(229f, 390f, -1235f), -116f, vec4<bool>(false, true, false, false)), Struct_3(vec3<f32>(190f, -1177f, 142f), -248f, vec4<bool>(false, true, true, true)), Struct_3(vec3<f32>(1835f, 301f, -1000f), -488f, vec4<bool>(true, false, true, true)), Struct_3(vec3<f32>(368f, -486f, 455f), 362f, vec4<bool>(false, true, false, true)), Struct_3(vec3<f32>(333f, 197f, 1000f), -1690f, vec4<bool>(true, false, true, false)), Struct_3(vec3<f32>(853f, -1281f, 1421f), -233f, vec4<bool>(true, false, false, false)), Struct_3(vec3<f32>(324f, -365f, 1278f), -426f, vec4<bool>(false, true, false, false)));

var<private> global1: Struct_1;

var<private> global2: vec2<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: i32) -> i32 {
    global2 = vec2<bool>(true, true);
    global2 = arg_2.xw;
    var var_0 = Struct_4(4294967295u, u_input.a);
    let var_1 = u_input.a;
    global2 = vec2<bool>(global2.x, any(vec4<bool>(false, global2.x, !global2.x, global1.c.x <= global1.c.x)));
    return abs(_wgslsmith_div_i32(arg_1.x, -26707i));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>) -> vec4<f32> {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(1722f + 439f), -1311f, -794f), _wgslsmith_f_op_vec3_f32(arg_1.xxz * _wgslsmith_f_op_vec3_f32(arg_1.www + vec3<f32>(-367f, -536f, -1002f))), global2.x & (global1.b.x >= global1.b.x))))), vec4<i32>(-16444i, -2147483647i, _wgslsmith_dot_vec2_i32(reverseBits(_wgslsmith_div_vec2_i32(vec2<i32>(global1.b.x, global1.b.x), vec2<i32>(90044i, -30856i))), vec2<i32>(-global1.b.x, ~global1.b.x)), -462i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global1.c))));
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_1.yzz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.zwx) - vec3<f32>(-1189f, 178f, -329f)))), -642f, vec4<bool>(true, !global2.x, arg_1.x >= 259f, !all(!vec3<bool>(global2.x, false, false))));
    let var_1 = !select(vec4<bool>(!var_0.c.x, var_0.c.x, var_0.c.x, any(var_0.c.wwx)), select(vec4<bool>(true, true, any(var_0.c.wx), any(vec3<bool>(var_0.c.x, true, global2.x))), var_0.c, !select(vec4<bool>(false, var_0.c.x, global2.x, false), var_0.c, var_0.c)), select(!var_0.c, var_0.c, select(global2.x, u_input.a.x >= u_input.a.x, false)));
    let var_2 = vec3<i32>(-global1.b.x, ~global1.b.x, countOneBits(global1.b.x));
    let var_3 = Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(min(-441f, -1000f)), -1740f), vec4<i32>(~abs(global1.b.x) ^ _wgslsmith_sub_i32(~(-2147483647i), var_2.x), _wgslsmith_sub_i32(i32(-1i) * -var_2.x, reverseBits(global1.b.x)), global1.b.x, _wgslsmith_add_i32(33244i, select(reverseBits(-43479i), _wgslsmith_mult_i32(-21252i, var_2.x), var_1.x || global2.x))), _wgslsmith_f_op_vec4_f32(max(global1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1875f), arg_1.x, 1411f, _wgslsmith_f_op_f32(min(global1.c.x, 699f)))))));
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: u32) -> vec4<f32> {
    global1 = Struct_1(global1.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(22858i, global1.b.x, -1i, ~51708i), global1.b, vec4<i32>(global1.b.x, 31640i, global1.b.x, ~global1.b.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(arg_0, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-913f, arg_0, -775f, global1.a.x), _wgslsmith_f_op_vec4_f32(global1.c + global1.c)))))));
    let var_0 = global2.x;
    let var_1 = _wgslsmith_add_u32(reverseBits(12214u), ~arg_1);
    let var_2 = abs(vec4<i32>(global1.b.x, -global1.b.x, global1.b.x, ~(-reverseBits(-1i))));
    global2 = select(select(!select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), global2.x), vec2<bool>(global2.x, global2.x)), !select(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, true), vec2<bool>(false, global2.x)), select(vec2<bool>(true, true), vec2<bool>(global2.x, global2.x), vec2<bool>(false, true)), global2.x == global2.x), arg_1 <= _wgslsmith_div_u32(0u, var_1 ^ arg_1)), !vec2<bool>(firstTrailingBit(u_input.b) > 42010u, global2.x), global2.x);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c.x, _wgslsmith_f_op_f32(f32(-1f) * -825f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.c))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(284f)), -1437f, _wgslsmith_f_op_f32(f32(-1f) * -717f), 1170f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_u32(1u, u_input.b);
    global1 = Struct_1(global1.a, vec4<i32>(-global1.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(func_1(Struct_4(u_input.a.x, vec4<u32>(u_input.a.x, u_input.b, u_input.a.x, u_input.a.x)), vec3<i32>(global1.b.x, global1.b.x, 14890i), vec4<bool>(false, global2.x, true, true), -2147483647i), global1.b.x), -100028i), _wgslsmith_mod_i32(-(~(-1i)), _wgslsmith_div_i32(countOneBits(2147483647i), -global1.b.x)), ~(~(-1i))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(888f, ~u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(global1.c.x, global1.c)) - vec4<f32>(-1000f, 629f, 845f, -382f)))));
    var var_1 = ~(~(u_input.a.x >> (u_input.a.x % 32u)));
    let var_2 = _wgslsmith_f_op_f32(trunc(-1087f));
    var var_3 = global0[_wgslsmith_index_u32(~u_input.a.x, 7u)];
    let var_4 = global0[_wgslsmith_index_u32(u_input.b, 7u)];
    var_3 = Struct_3(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(563f))), _wgslsmith_f_op_f32(select(-2222f, _wgslsmith_f_op_f32(-481f + _wgslsmith_f_op_f32(-var_2)), var_4.c.x))), 591f, !vec4<bool>(global2.x, select(false, var_3.c.x, true), !var_3.c.x, !(var_4.b <= -123f)));
    var var_5 = Struct_4(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 2797u, 63498u, 70546u), abs(vec4<u32>(1u, 0u, 31103u, u_input.b))), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 22631u, 143700u), abs(u_input.a))), ~firstLeadingBit(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u), vec4<u32>(36043u, 29238u, 22196u, u_input.b)))));
    let var_6 = -83099i;
    let x = u_input.a;
    s_output = StorageBuffer(min(select(-vec4<i32>(-3068i, global1.b.x, var_6, var_6), global1.b, true | (var_4.c.x || false)), global1.b << (u_input.a % vec4<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.a.x, _wgslsmith_div_f32(var_2, var_2))), 297f), _wgslsmith_sub_vec3_u32(vec3<u32>(~var_5.a & ~34823u, var_5.b.x, var_5.b.x), firstLeadingBit(u_input.a.wwx)), _wgslsmith_sub_u32(var_5.a, _wgslsmith_add_u32(select(select(var_5.b.x, u_input.a.x, true), 6526u, select(false, true, false)), abs(47990u))));
}

