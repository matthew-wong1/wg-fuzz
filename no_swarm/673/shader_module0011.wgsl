struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec2<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<bool>,
    c: Struct_4,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: u32 = 13009u;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<i32> {
    let var_0 = false;
    let var_1 = _wgslsmith_add_i32(reverseBits(-1i), firstTrailingBit(abs(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(23583i, -34696i, global0.b.b.x), ~14203i))));
    global0 = Struct_4(false, Struct_1(select(!global0.b.a, vec3<bool>(any(global0.b.d), any(vec3<bool>(global0.a, true, global0.a)), all(vec4<bool>(false, global0.b.d.x, global0.b.d.x, true))), global0.b.a), global0.b.b | -firstLeadingBit(vec2<i32>(var_1, 0i)), _wgslsmith_div_f32(1247f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-389f, 734f, false)))), global0.b.a.xx, u_input.c));
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32((global0.b.e.zy | reverseBits(vec2<u32>(4294967295u, global0.b.e.x))) >> (vec2<u32>(countOneBits(global0.b.e.x), 4294967295u) % vec2<u32>(32u)), min(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.d, 74344u), vec2<u32>(u_input.c.x, global0.b.e.x)) >> (~vec2<u32>(u_input.b.x, 63771u) % vec2<u32>(32u)), global0.b.e.zw)), vec2<u32>(0u, firstTrailingBit(85291u)));
    global1 = max(abs(max(0u, 61227u) << (_wgslsmith_div_u32(global0.b.e.x, 4294967295u) % 32u)), _wgslsmith_sub_u32(4294967295u, _wgslsmith_sub_u32(u_input.e, 1u))) | ~12146u;
    return ~_wgslsmith_clamp_vec3_i32(~select(vec3<i32>(var_1, global0.b.b.x, global0.b.b.x) ^ vec3<i32>(global0.b.b.x, global0.b.b.x, 52973i), vec3<i32>(0i, var_1, 48611i) & vec3<i32>(-42183i, 2147483647i, var_1), var_0), -vec3<i32>(0i, i32(-1i) * -349i, ~var_1), vec3<i32>(_wgslsmith_dot_vec2_i32(global0.b.b, global0.b.b), i32(-1i) * -25692i, -23335i) << ((_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4294967295u, u_input.d), vec3<u32>(global0.b.e.x, 0u, 0u)) & global0.b.e.wwx) % vec3<u32>(32u)));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.b.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -198f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global0.b.c - global0.b.c), _wgslsmith_f_op_f32(global0.b.c + -773f), !global0.a)) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.b.c, global0.b.c)))))));
    let var_1 = firstTrailingBit(~min(~(u_input.c ^ vec4<u32>(4294967295u, global0.b.e.x, global0.b.e.x, global0.b.e.x)), ~global0.b.e));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-329f, global0.b.c, 905f));
    let var_2 = _wgslsmith_div_vec3_i32(func_3(), firstTrailingBit(~(~countOneBits(vec3<i32>(global0.b.b.x, -1i, -33121i)))));
    var var_3 = var_0.zx;
    return -2147483647i;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>, arg_2: vec3<u32>) -> vec4<bool> {
    var var_0 = -vec4<i32>(-2147483647i, _wgslsmith_div_i32(global0.b.b.x, -global0.b.b.x), 2147483647i >> (_wgslsmith_add_u32(global0.b.e.x, global0.b.e.x) % 32u), _wgslsmith_add_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, global0.b.b.x, global0.b.b.x, global0.b.b.x), vec4<i32>(global0.b.b.x, global0.b.b.x, global0.b.b.x, -15078i)))) >> (u_input.c % vec4<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-290f, -505f, _wgslsmith_f_op_f32(-global0.b.c), global0.b.c) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-912f, global0.b.c, global0.b.c, -498f), vec4<f32>(329f, 839f, -1990f, global0.b.c))))))));
    var_0 = vec4<i32>(func_2(), 2205i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, global0.b.b.x, -19094i) ^ vec4<i32>(0i, var_0.x, var_0.x, -14089i), vec4<i32>(0i, global0.b.b.x, -2147483647i, -12192i) & vec4<i32>(31681i, global0.b.b.x, -1i, 46934i)) >> (select(32397u, arg_2.x, any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x))) % 32u), 2147483647i) ^ vec4<i32>(_wgslsmith_div_i32(54040i, var_0.x), -1055i, ~(max(global0.b.b.x, 2147483647i) >> (4294967295u % 32u)), ~(var_0.x ^ _wgslsmith_mult_i32(global0.b.b.x, var_0.x)));
    var var_2 = Struct_2(-826f, 46163i);
    global0 = Struct_4(!(!arg_1.x), Struct_1(!(!global0.b.a), ~reverseBits(vec2<i32>(var_0.x, 2147483647i)) | firstLeadingBit(-var_0.yw), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global0.b.c) - _wgslsmith_f_op_f32(118f * var_1.x)), var_1.x)), !global0.b.d, vec4<u32>(_wgslsmith_mult_u32(arg_2.x, arg_2.x << (4294967295u % 32u)), _wgslsmith_sub_u32(arg_2.x, firstTrailingBit(global0.b.e.x)), 1u | global0.b.e.x, _wgslsmith_add_u32(firstLeadingBit(arg_2.x), 50190u))));
    return !(!(!select(!vec4<bool>(false, false, arg_0, global0.a), select(vec4<bool>(arg_1.x, false, arg_1.x, arg_0), vec4<bool>(false, true, true, arg_1.x), vec4<bool>(true, global0.b.a.x, arg_1.x, true)), vec4<bool>(true, arg_1.x, arg_1.x, false))));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_4) -> Struct_4 {
    global0 = arg_1;
    let var_0 = abs(global0.b.b.x);
    var var_1 = select(!(!vec4<bool>(!arg_1.b.a.x, any(vec3<bool>(arg_0.x, arg_1.a, arg_1.a)), arg_1.b.d.x, true)), vec4<bool>(arg_0.x, all(arg_0.xx), arg_1.a, !(_wgslsmith_mult_i32(1i, global0.b.b.x) < arg_1.b.b.x)), arg_0.x);
    global1 = abs(0u);
    var_1 = !vec4<bool>(true, false, !arg_0.x, arg_0.x);
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global0.b.e.x;
    let var_0 = func_4(select(global0.b.a, !select(!vec3<bool>(true, global0.a, global0.b.a.x), global0.b.a, select(global0.b.a, global0.b.a, false)), all(!func_1(global0.b.d.x, vec3<bool>(global0.b.a.x, global0.b.d.x, false), vec3<u32>(2616u, global0.b.e.x, 4294967295u)))), Struct_4(global0.a, Struct_1(vec3<bool>(global0.b.a.x, select(global0.a, global0.a, false), func_1(true, vec3<bool>(global0.a, true, global0.a), u_input.c.yxy).x), ~global0.b.b & (global0.b.b >> (vec2<u32>(4294967295u, 7912u) % vec2<u32>(32u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(global0.b.c, global0.b.c)), _wgslsmith_f_op_f32(1230f * global0.b.c), global0.a)), vec2<bool>(true, select(true, false, global0.b.d.x)), ~vec4<u32>(u_input.d, u_input.d, 4294967295u, global0.b.e.x))));
    var var_1 = var_0.b.b;
    var var_2 = vec2<bool>(var_0.a, false);
    global1 = ~(~abs(var_0.b.e.x) >> ((135942u ^ global0.b.e.x) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -602f) * global0.b.c), _wgslsmith_div_f32(1660f, _wgslsmith_f_op_f32(round(-732f)))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(124f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c) - _wgslsmith_f_op_f32(-839f * 174f)), global0.b.c), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(438f, -1000f, var_0.b.c), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.c, global0.b.c, global0.b.c) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.b.c, 880f, global0.b.c)))), var_0.b.a)))));
}

