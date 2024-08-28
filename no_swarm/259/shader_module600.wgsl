struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: bool;

var<private> global2: Struct_1;

var<private> global3: vec2<f32> = vec2<f32>(-1748f, -279f);

var<private> global4: vec2<f32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32, arg_2: i32) -> vec3<bool> {
    return !arg_0;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - global4.x)) * -202f);
    var var_1 = !select(vec3<bool>(true, true, any(!vec3<bool>(true, true, global2.d))), func_3(!(!global2.b.zyw), ~(~u_input.b), -63002i), true);
    let var_2 = Struct_5(_wgslsmith_add_vec2_u32(vec2<u32>(max(global2.c, 4294967295u), 63534u) >> (vec2<u32>(8694u << (u_input.a.x % 32u), ~72266u) % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(38369u, 0u)), ~u_input.a.yx, vec2<u32>(global2.c, 26571u) << (_wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, 4294967295u)) % vec2<u32>(32u)))), Struct_4(_wgslsmith_sub_u32(~u_input.a.x << (~u_input.a.x % 32u), 54635u), ~(~(~u_input.a.yz))), Struct_2(countOneBits(arg_0), Struct_1(_wgslsmith_f_op_f32(-global3.x), select(vec4<bool>(global2.d, global2.d, var_1.x, var_1.x), global2.b, select(vec4<bool>(true, var_1.x, false, global2.b.x), vec4<bool>(global2.b.x, true, true, var_1.x), false)), _wgslsmith_clamp_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, global2.c, u_input.a.x, 4294967295u), vec4<u32>(0u, 4294967295u, 61623u, 1u)), 1u), all(vec4<bool>(global2.b.x, false, global2.e, true)), select(global3.x <= -783f, any(vec3<bool>(var_1.x, true, false)), var_1.x)), u_input.a.x));
    global0 = _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0, -513f)), var_2.c.b.a) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f - global2.a))) - _wgslsmith_f_op_f32(exp2(global4.x))));
    global3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -163f), 764f), vec2<f32>(global2.a, -128f)));
    return _wgslsmith_div_vec2_f32(vec2<f32>(global3.x, global4.x), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, 170f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(179f, -926f))))))));
}

fn func_1(arg_0: Struct_4) -> vec4<bool> {
    var var_0 = -176f;
    global3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1397f - _wgslsmith_f_op_f32(-global3.x))))), -595f);
    global4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(1i)));
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1129f, 558f)))));
    global2 = Struct_1(320f, global2.b, ~(global2.c << (reverseBits(1u) % 32u)), any(global2.b.zx), false);
    return !global2.b;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: i32, arg_3: bool) -> Struct_2 {
    let var_0 = min(vec4<i32>(abs(-u_input.b), 1i, arg_2, ~arg_2), abs(_wgslsmith_add_vec4_i32(vec4<i32>(-31751i, u_input.b, _wgslsmith_mult_i32(arg_2, 2147483647i), _wgslsmith_mod_i32(38653i, arg_2)), firstTrailingBit(abs(vec4<i32>(u_input.b, u_input.b, arg_2, 703i))))));
    var var_1 = 9267u;
    let var_2 = ~arg_1;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1079f, global3.x, _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, u_input.a.x, 79788u), vec3<u32>(1u, 4294967295u, arg_1.x)) <= 51558u))));
    var var_3 = u_input.a.x ^ 1u;
    return Struct_2(u_input.b, Struct_1(355f, arg_0, abs(abs(arg_1.x)), !global2.e, select(true | select(true, global2.d, true), !global2.e && true, !(arg_0.x && global2.b.x))), select(firstTrailingBit(_wgslsmith_mod_u32(16859u, arg_1.x)), 4294967295u, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global3.x, _wgslsmith_f_op_f32(f32(-1f) * -627f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1193f, global3.x))))));
    var var_1 = func_4(func_1(Struct_4(~firstLeadingBit(1u), u_input.a.yx)), ~((select(vec4<u32>(18339u, u_input.a.x, 1u, 4294967295u), vec4<u32>(0u, 1u, u_input.a.x, global2.c), global2.b) & countOneBits(vec4<u32>(u_input.a.x, global2.c, 37111u, 1u))) << (abs(vec4<u32>(0u, 94073u, 0u, 73844u) ^ vec4<u32>(u_input.a.x, u_input.a.x, 1u, 34085u)) % vec4<u32>(32u))), _wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(35402i, -12490i, 27545i)), min(abs(vec3<i32>(u_input.b, u_input.b, u_input.b)), ~vec3<i32>(u_input.b, -2147483647i, u_input.b)) << (_wgslsmith_add_vec3_u32(~u_input.a, _wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(global2.c, 6269u, 687u))) % vec3<u32>(32u))), true);
    let var_2 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(-447f, u_input.a.xz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(397f, -1000f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.b.a, 443f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(803f, global4.x) - vec2<f32>(-1000f, var_0.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global3.x) + vec2<f32>(var_0.x, -875f)))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.b.a), var_1.b.a))), ~u_input.a.x, 1i);
}

