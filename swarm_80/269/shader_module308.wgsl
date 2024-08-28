struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 16659u;

var<private> global1: vec4<bool> = vec4<bool>(false, true, true, true);

var<private> global2: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: i32) -> bool {
    global1 = vec4<bool>(!any(!(!global1.zzx)), true, select(select(false, any(!vec2<bool>(global1.x, false)), !arg_0), all(vec2<bool>(true, global2.e)), select(any(vec2<bool>(global2.e, global2.e)), true, false)), global1.x);
    let var_0 = Struct_1(-_wgslsmith_sub_i32(_wgslsmith_mult_i32(-arg_1, -1i >> (0u % 32u)), global2.a), _wgslsmith_sub_vec4_i32(vec4<i32>(1i, global2.d, 1i, global2.b.x), global2.b), global2.c, ~((_wgslsmith_mod_i32(17139i, arg_1) ^ 1i) << (min(_wgslsmith_clamp_u32(global2.c.x, global2.c.x, 26423u), ~4294967295u) % 32u)), false);
    return !all(!(!global1.zyz));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: vec3<i32>) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-699f * 1f))))) + 1452f);
}

fn func_2(arg_0: u32) -> f32 {
    var var_0 = 59254i;
    return _wgslsmith_f_op_f32(func_4(!func_3(select(true, !global2.e, true), 2147483647i), u_input.a, _wgslsmith_sub_vec3_i32(~(-vec3<i32>(global2.b.x, u_input.b, -44722i)), global2.b.yxy)));
}

fn func_1(arg_0: i32) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~0u)) * _wgslsmith_f_op_f32(max(-1825f, -1643f))))));
    let var_1 = Struct_3(arg_0, Struct_2(select(any(global1.wy), true, any(vec4<bool>(true, global1.x, global1.x, global1.x))), Struct_1(1i, _wgslsmith_mult_vec4_i32(-global2.b, global2.b), _wgslsmith_clamp_vec3_u32(global2.c << (vec3<u32>(global2.c.x, global2.c.x, global2.c.x) % vec3<u32>(32u)), vec3<u32>(global2.c.x, global2.c.x, global2.c.x), vec3<u32>(56034u, global2.c.x, global2.c.x) << (global2.c % vec3<u32>(32u))), 32933i, true)));
    global1 = vec4<bool>(false, (34832i == u_input.b) | !global2.e, true, any(vec4<bool>(false, false, global2.e, false)));
    var var_2 = global2.c.x;
    var var_3 = func_3(_wgslsmith_mod_i32(-(~0i), firstLeadingBit(~global2.b.x)) <= -arg_0, arg_0);
    return !select(select(select(vec4<bool>(false, true, true, global1.x), !vec4<bool>(global2.e, var_1.b.b.e, false, true), select(vec4<bool>(true, true, global2.e, global2.e), vec4<bool>(true, global2.e, false, false), false)), vec4<bool>(true, all(vec2<bool>(global1.x, global1.x)), global1.x, global1.x), !func_3(false, 0i)), !(!vec4<bool>(true, true, global1.x, false)), vec4<bool>(true, true, ~global2.c.x > var_1.b.b.c.x, any(select(vec3<bool>(var_1.b.a, true, global1.x), global1.wwx, vec3<bool>(true, var_1.b.b.e, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !func_1(u_input.a);
    let var_0 = global2.b.xxx;
    var var_1 = -1000f;
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(40503u)) - _wgslsmith_f_op_f32(ceil(-249f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-629f, -202f)), _wgslsmith_f_op_f32(select(1130f, -785f, all(vec4<bool>(false, true, false, true))))) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(739f, -797f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -568f)));
    let var_3 = ~global2.c.x;
    let var_4 = Struct_3(var_0.x, Struct_2(func_1(u_input.a).x, Struct_1(global2.d, -(~global2.b), vec3<u32>(_wgslsmith_sub_u32(69064u, var_3), 1u, 1u), 2147483647i, global2.e)));
    global2 = var_4.b.b;
    var var_5 = _wgslsmith_mod_vec3_u32(~_wgslsmith_sub_vec3_u32(~_wgslsmith_div_vec3_u32(var_4.b.b.c, var_4.b.b.c), _wgslsmith_mod_vec3_u32(var_4.b.b.c, global2.c) << (global2.c % vec3<u32>(32u))), vec3<u32>(~var_4.b.b.c.x, global2.c.x, reverseBits(1u) >> (countOneBits(~var_3) % 32u)));
    var_1 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~var_3, ~(1u | max(40578u, global2.c.x))));
}

