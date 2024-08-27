struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6>;

var<private> global1: Struct_3 = Struct_3(Struct_1(vec3<bool>(false, false, false), 136f, false, vec2<u32>(53771u, 34477u)), Struct_1(vec3<bool>(true, false, true), 898f, false, vec2<u32>(50286u, 4294967295u)));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> u32 {
    var var_0 = min(~vec3<i32>(arg_1.x, arg_1.x, countOneBits(_wgslsmith_dot_vec4_i32(arg_1, arg_1))), arg_3);
    var var_1 = global1.a.a;
    var var_2 = 1i;
    let var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(~(abs(arg_3.x) << (select(global1.a.d.x, global1.a.d.x, var_1.x) % 32u)), arg_1.x, reverseBits(-30326i) & (var_0.x ^ 47328i), arg_3.x), arg_1);
    var_1 = global1.b.a;
    return global1.b.d.x;
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(global1.a.d.x >> (func_3(global1.b.b, vec4<i32>(u_input.b.x, arg_0.x, 37116i, -2147483647i), vec3<f32>(global1.a.b, global1.b.b, -428f), arg_0.zyy) % 32u)), abs(reverseBits(_wgslsmith_add_u32(global1.b.d.x, 0u))), _wgslsmith_dot_vec4_u32(min(_wgslsmith_sub_vec4_u32(vec4<u32>(global1.b.d.x, global1.b.d.x, global1.a.d.x, 40442u), vec4<u32>(global1.a.d.x, global1.b.d.x, 23555u, global1.b.d.x)), min(vec4<u32>(4294967295u, 62602u, global1.b.d.x, 4294967295u), vec4<u32>(global1.a.d.x, global1.a.d.x, 0u, 85153u))), vec4<u32>(min(32109u, global1.b.d.x), global1.a.d.x, _wgslsmith_add_u32(global1.b.d.x, global1.b.d.x), _wgslsmith_clamp_u32(0u, 25198u, 0u)))), _wgslsmith_sub_vec4_u32(abs(min(abs(vec4<u32>(4294967295u, global1.b.d.x, global1.b.d.x, 36754u)), ~vec4<u32>(0u, global1.a.d.x, global1.a.d.x, 56334u))), ~(vec4<u32>(global1.b.d.x, 1u, 15456u, 1u) & vec4<u32>(global1.b.d.x, 1u, global1.b.d.x, 4294967295u)) >> (abs(max(vec4<u32>(global1.a.d.x, global1.a.d.x, global1.b.d.x, global1.a.d.x), vec4<u32>(0u, 4294967295u, 1u, 57104u))) % vec4<u32>(32u))));
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-47285i, -1i >> (var_0 % 32u), ~1i >> (_wgslsmith_add_u32(9458u, var_0) % 32u)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_sub_i32(24043i, u_input.b.x), 1i, 0i), min(u_input.a.x, -26126i), -14448i)), -vec3<i32>(u_input.a.x, u_input.b.x, -1i) ^ _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, 20054i, arg_0.x) | arg_0.xxy, abs(arg_0.xwy)), vec3<i32>(_wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x), -arg_0.x, min(-13907i, u_input.a.x))));
    let var_2 = Struct_1(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.a.b - 1267f), 1710f)))), global1.b.a.x, vec2<u32>(firstLeadingBit(63194u), 35516u));
    global1 = Struct_3(Struct_1(select(select(!global1.a.a, select(var_2.a, vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), false), var_2.a.x & true), !vec3<bool>(var_2.a.x, false, false), all(!vec3<bool>(var_2.c, var_2.a.x, global1.a.c))), -662f, true, vec2<u32>(_wgslsmith_dot_vec2_u32(reverseBits(global1.a.d), firstTrailingBit(var_2.d)), firstTrailingBit(16158u))), global1.b);
    global0 = array<Struct_2, 6>();
    return ~(~_wgslsmith_clamp_u32(4294967295u, 33944u, global1.b.d.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: vec3<bool>, arg_3: u32) -> bool {
    var var_0 = (-(~vec4<i32>(u_input.a.x, arg_1.x, u_input.b.x, u_input.b.x)) | firstTrailingBit(abs(countOneBits(vec4<i32>(10427i, u_input.a.x, arg_1.x, 18166i))))) << (abs(vec4<u32>(~arg_0.d.x, _wgslsmith_mod_u32(40978u, 25824u), func_2(vec4<i32>(37692i, -2147483647i, u_input.a.x, -2147483647i)), global1.b.d.x) & reverseBits(select(vec4<u32>(1u, 1u, arg_0.d.x, 4294967295u), vec4<u32>(1u, 1u, 1u, arg_3), false))) % vec4<u32>(32u));
    let var_1 = -_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(var_0.yyy, var_0.zyw), var_0.zzx);
    let var_2 = any(!select(vec4<bool>(true, arg_2.x, global1.b.a.x, false), vec4<bool>(true, arg_2.x, false, arg_0.a.x), !vec4<bool>(arg_0.a.x, true, true, arg_0.c))) && arg_2.x;
    var var_3 = arg_0.d.x;
    global0 = array<Struct_2, 6>();
    return !(_wgslsmith_f_op_f32(-global1.b.b) == arg_0.b) && global1.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(!(!global1.b.c), all(select(!vec4<bool>(false, global1.b.a.x, true, global1.b.c), vec4<bool>(func_1(Struct_1(vec3<bool>(false, global1.b.c, global1.b.a.x), 184f, true, global1.a.d), u_input.b, vec3<bool>(true, global1.b.a.x, false), 1605u), all(vec3<bool>(false, false, true)), global1.a.a.x, true), select(!vec4<bool>(global1.a.c, false, true, global1.a.c), vec4<bool>(global1.b.a.x, true, false, false), true != global1.b.a.x))), _wgslsmith_mult_u32(~global1.a.d.x, _wgslsmith_mult_u32(func_2(vec4<i32>(1i, -11311i, 3688i, -10468i)), firstLeadingBit(global1.a.d.x))) != global1.b.d.x, all(vec2<bool>(true, !(false && global1.b.a.x))));
    global1 = Struct_3(global1.a, global1.b);
    global0 = array<Struct_2, 6>();
    var var_1 = select(vec3<bool>(!var_0.x, var_0.x, false), select(select(vec3<bool>(all(vec4<bool>(global1.a.c, var_0.x, false, true)), global1.a.a.x, u_input.b.x <= 0i), !select(vec3<bool>(false, global1.b.a.x, false), var_0.ywy, true), _wgslsmith_f_op_f32(step(1115f, 451f)) > _wgslsmith_div_f32(-2212f, global1.b.b)), vec3<bool>(!any(var_0.wxz), false, true), vec3<bool>(any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, false), var_0, true)), false, all(var_0.xw))), var_0.x && ((~5024u <= global1.b.d.x) | all(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(global1.b.b)), _wgslsmith_f_op_f32(select(1581f, -1660f, true)), _wgslsmith_f_op_f32(-global1.a.b)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.b.b, -1162f, global1.b.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b, -1000f, 1000f)), global1.b.a)))), ~(~(~vec4<u32>(61077u, 64446u, global1.a.d.x, global1.b.d.x))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-321f, 202f, global1.a.b)))))), ~(_wgslsmith_div_u32(~global1.a.d.x, 49161u | global1.b.d.x) >> (~4294967295u % 32u)));
}

