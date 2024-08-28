struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = 486f;

var<private> global2: array<i32, 15>;

var<private> global3: u32 = 73870u;

var<private> global4: i32 = 21624i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.a * 519f), global0.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f))), global0.a);
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1357f * -693f)) + global0.a), _wgslsmith_f_op_f32(-var_0.x)), global0.b);
    let var_2 = Struct_3(u_input.e.xz, Struct_2(_wgslsmith_f_op_f32(var_1.a + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1188f), _wgslsmith_f_op_f32(f32(-1f) * -1454f))), var_1.b));
    let var_3 = global0.b.b.x;
    global4 = _wgslsmith_mod_i32(u_input.c, ~(~2147483647i));
    return ~(~countOneBits(-global0.b.d.x));
}

fn func_2(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = Struct_3(firstLeadingBit(vec2<u32>(_wgslsmith_sub_u32(~global0.b.a, ~29068u), u_input.e.x)), Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1543f), Struct_1(abs(1u), select(arg_0, select(arg_0, vec3<bool>(arg_0.x, global0.b.b.x, arg_0.x), arg_0), true), 21975i, vec3<i32>(_wgslsmith_sub_i32(global0.b.e, u_input.d), -2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(20872i, u_input.d), global0.b.d.xz)), -(~u_input.d))));
    global0 = var_0.b;
    var var_1 = Struct_1(u_input.e.x, vec3<bool>(any(vec2<bool>(true, all(vec3<bool>(false, false, false)))), var_0.b.b.b.x, all(!(!vec2<bool>(var_0.b.b.b.x, global0.b.b.x)))), ~(~19464i), _wgslsmith_sub_vec3_i32(vec3<i32>(func_3(), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(global0.b.d.x, u_input.a.x, u_input.c), vec3<i32>(u_input.d, u_input.b, global2[_wgslsmith_index_u32(31195u, 15u)]), vec3<i32>(global2[_wgslsmith_index_u32(global0.b.a, 15u)], -2147483647i, 2147483647i)), min(vec3<i32>(0i, var_0.b.b.c, global2[_wgslsmith_index_u32(0u, 15u)]), u_input.a.zzz)), -2147483647i), _wgslsmith_mult_vec3_i32(global0.b.d, global0.b.d)), -53663i);
    let var_2 = global0.b;
    global4 = countOneBits(abs(_wgslsmith_clamp_i32(1i, var_0.b.b.e, _wgslsmith_add_i32(-var_2.c, i32(-1i) * -1i))));
    return global0.b;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    let var_0 = func_2(!arg_0.b);
    global0 = Struct_2(_wgslsmith_f_op_f32(-arg_2), global0.b);
    global2 = array<i32, 15>();
    global4 = 35302i;
    let var_1 = !global0.b.b.x & ((false | var_0.b.x) & global0.b.b.x);
    return _wgslsmith_sub_u32(1u, global0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.a, select(_wgslsmith_sub_u32(u_input.e.x, 0u), 1u, select(false, global0.b.b.x, false)), u_input.e.x, ~u_input.e.x), ~vec4<u32>(_wgslsmith_clamp_u32(21823u, global0.b.a, 22733u) >> (25105u % 32u), min(1u, ~1u), func_1(global0.b, u_input.a.yx << (u_input.e.zz % vec2<u32>(32u)), 361f), global0.b.a));
    let var_1 = !(!vec4<bool>(global0.b.b.x, true, true, _wgslsmith_f_op_f32(max(-592f, global0.a)) >= _wgslsmith_f_op_f32(global0.a - -419f)));
    var var_2 = vec4<u32>(_wgslsmith_mult_u32(43919u, 1u), ~u_input.e.x, global0.b.a, max(u_input.e.x, 4294967295u));
    global0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1620f - 1164f)) - -565f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-509f, -709f)))))), func_2(func_2(select(var_1.wzx, select(vec3<bool>(false, var_1.x, false), global0.b.b, global0.b.b.x), false)).b));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(trunc(882f)), global0.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1803f))), global0.a, !var_1.x || var_3.b.b.x)), _wgslsmith_f_op_f32(trunc(global0.a)), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1446f) * _wgslsmith_f_op_f32(1457f - -1994f))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_clamp_u32(func_1(Struct_1(var_2.x, vec3<bool>(var_1.x, false, false), global0.b.c, vec3<i32>(7529i, global2[_wgslsmith_index_u32(global0.b.a, 15u)], u_input.b), global0.b.e), global0.b.d.yx, -979f), 0u, _wgslsmith_add_u32(var_2.x, var_2.x)), min(7553u, 1u)), 15u)], vec3<i32>(-60363i, global0.b.e, ~_wgslsmith_div_i32(3752i, global0.b.c)), _wgslsmith_add_vec2_i32(max(max(vec2<i32>(1i, 31393i), reverseBits(global0.b.d.zx)), _wgslsmith_sub_vec2_i32(var_3.b.d.xx, vec2<i32>(2147483647i, 0i)) >> ((var_2.zx | vec2<u32>(var_3.b.a, u_input.e.x)) % vec2<u32>(32u))), select(firstTrailingBit(var_3.b.d.xy), ~var_3.b.d.xx, vec2<bool>(global0.b.b.x, global0.b.b.x)) << (_wgslsmith_mult_vec2_u32(var_2.xy, u_input.e.xy) % vec2<u32>(32u))), ~_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b.c, ~(-33240i)), -u_input.a.wx));
}

