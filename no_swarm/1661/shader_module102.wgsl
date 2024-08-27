struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: bool,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec4<i32>,
    b: bool,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 21>;

var<private> global1: vec4<bool>;

var<private> global2: array<i32, 6> = array<i32, 6>(1i, 2465i, 0i, 2147483647i, i32(-2147483648), 3988i);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: Struct_2) -> bool {
    let var_0 = Struct_5(vec4<i32>(_wgslsmith_mod_i32(u_input.d.x, firstLeadingBit(17885i)), _wgslsmith_div_i32(arg_0.a, global2[_wgslsmith_index_u32(u_input.a, 6u)]) << (~38651u % 32u), _wgslsmith_clamp_i32(abs(-1i), ~arg_1.x, abs(2147483647i)), arg_1.x) >> (vec4<u32>(_wgslsmith_add_u32(min(u_input.c, u_input.e.x), min(u_input.c, 0u)), max(~u_input.e.x, u_input.a), min(1u, u_input.a), u_input.a) % vec4<u32>(32u)), false, Struct_2(global1.x), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(706f * 765f) - -815f))))));
    global1 = select(select(select(!vec4<bool>(true, false, arg_0.b, var_0.b), select(select(vec4<bool>(arg_2.a, false, true, var_0.c.a), vec4<bool>(true, arg_2.a, true, true), true), vec4<bool>(false, false, true, global1.x), vec4<bool>(arg_0.c, true, true, false)), false), vec4<bool>(true, !(19437i != arg_1.x), !arg_0.c, _wgslsmith_add_u32(u_input.c, 2781u) > max(u_input.e.x, u_input.e.x)), select(select(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_2.a, arg_2.a, false, global1.x), vec4<bool>(false, true, arg_0.c, false)), vec4<bool>(false, true, true, arg_0.c), select(vec4<bool>(global1.x, false, false, true), vec4<bool>(true, true, false, var_0.b), vec4<bool>(var_0.c.a, true, true, false))), vec4<bool>(true, any(vec3<bool>(arg_0.b, true, false)), true, false), arg_0.b)), !vec4<bool>(true, true, !all(global1.xxy), all(vec4<bool>(false, arg_0.c, arg_2.a, arg_0.b))), select(vec4<bool>(true, arg_2.a, arg_2.a, true || var_0.c.a), vec4<bool>(arg_0.b, arg_2.a, true, true), !select(select(vec4<bool>(global1.x, var_0.c.a, false, true), vec4<bool>(arg_0.b, true, arg_2.a, false), true), vec4<bool>(arg_0.b, false, arg_0.c, false), !vec4<bool>(true, true, true, var_0.c.a))));
    var var_1 = u_input.d.x;
    var var_2 = !vec2<bool>(true, arg_2.a);
    global0 = array<Struct_2, 21>();
    return global1.x;
}

fn func_2(arg_0: Struct_3) -> bool {
    global1 = !select(vec4<bool>(all(vec3<bool>(arg_0.a, true, arg_0.a)), arg_0.c.x < _wgslsmith_f_op_f32(arg_0.c.x * -660f), true, func_3(Struct_1(u_input.b, false, true), u_input.d, Struct_2(true))), select(select(select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(arg_0.a, true, false, true), vec4<bool>(arg_0.a, arg_0.a, true, arg_0.a)), vec4<bool>(false, false, true, global1.x), true), select(!vec4<bool>(arg_0.a, arg_0.a, true, false), !vec4<bool>(false, false, arg_0.a, global1.x), select(vec4<bool>(true, false, global1.x, global1.x), vec4<bool>(arg_0.a, false, arg_0.a, false), global1.x)), !select(vec4<bool>(true, true, global1.x, false), vec4<bool>(false, true, global1.x, false), true)), !(!vec4<bool>(false, global1.x, true, false)));
    let var_0 = all(select(select(global1.xwx, global1.yyz, global1.wxy), !vec3<bool>(true, true, all(vec3<bool>(global1.x, false, global1.x))), u_input.c <= ~1u));
    let var_1 = u_input.e;
    global0 = array<Struct_2, 21>();
    let var_2 = Struct_5(select(-vec4<i32>(_wgslsmith_mod_i32(u_input.b, -40283i), 2147483647i, ~u_input.d.x, ~u_input.d.x), reverseBits(~vec4<i32>(1i, u_input.b, u_input.d.x, -30371i)) ^ ~(vec4<i32>(global2[_wgslsmith_index_u32(var_1.x, 6u)], -13371i, 5089i, u_input.d.x) | vec4<i32>(global2[_wgslsmith_index_u32(u_input.c, 6u)], u_input.d.x, 2940i, 1i)), _wgslsmith_mult_i32(-1i, _wgslsmith_clamp_i32(28633i, 1i, global2[_wgslsmith_index_u32(u_input.a, 6u)])) != -1i), !(global2[_wgslsmith_index_u32(arg_0.b.x, 6u)] >= 109542i), Struct_2(false), _wgslsmith_div_f32(arg_0.c.x, -719f));
    return !select(all(vec4<bool>(any(vec2<bool>(var_2.b, arg_0.a)), all(global1.yz), var_0, true)), func_3(Struct_1(var_2.a.x, var_0, arg_0.a), _wgslsmith_sub_vec3_i32(u_input.d, ~u_input.d), Struct_2(var_0)), true);
}

fn func_1(arg_0: vec2<u32>) -> Struct_3 {
    let var_0 = arg_0.x;
    global1 = select(vec4<bool>(true, true, global1.x, global1.x), select(vec4<bool>(select(any(vec4<bool>(global1.x, false, true, false)), all(vec4<bool>(global1.x, global1.x, true, false)), true), all(global1.wx), any(vec4<bool>(global1.x, true, true, global1.x)), global1.x), select(select(vec4<bool>(global1.x, true, false, false), !vec4<bool>(false, true, false, global1.x), func_2(Struct_3(true, vec3<u32>(4294967295u, 64763u, 56855u), vec2<f32>(710f, 348f)))), vec4<bool>(global2[_wgslsmith_index_u32(u_input.c, 6u)] <= -2147483647i, global1.x, true, all(global1.zy)), !(11818u == arg_0.x)), !all(!vec4<bool>(true, global1.x, global1.x, global1.x))), vec4<bool>(global1.x, !select(global1.x || true, global1.x, global1.x), true, !(!global1.x)));
    let var_1 = 1u;
    let var_2 = var_0;
    global0 = array<Struct_2, 21>();
    return Struct_3(true, u_input.e, vec2<f32>(_wgslsmith_f_op_f32(-634f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(738f, 559f)) + 819f)), -274f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(max(firstLeadingBit(max(vec2<u32>(u_input.a, 0u), u_input.e.yy)) & _wgslsmith_add_vec2_u32(u_input.e.xy, vec2<u32>(17026u, 58695u)), ~_wgslsmith_clamp_vec2_u32(select(u_input.e.xy, u_input.e.zx, vec2<bool>(false, global1.x)), ~vec2<u32>(u_input.c, 0u), reverseBits(vec2<u32>(u_input.c, u_input.c)))));
    var var_1 = -1775f;
    let var_2 = func_2(func_1(vec2<u32>(46674u & var_0.b.x, var_0.b.x)));
    global1 = select(select(select(select(vec4<bool>(false, var_2, var_0.a, false), vec4<bool>(false, true, true, var_0.a), var_2), select(!vec4<bool>(var_2, false, true, var_2), !vec4<bool>(global1.x, var_2, false, var_0.a), select(vec4<bool>(false, true, false, false), vec4<bool>(var_2, true, global1.x, var_2), false)), global1.x), !select(vec4<bool>(true, true, var_2, true), !vec4<bool>(false, global1.x, global1.x, true), !vec4<bool>(global1.x, global1.x, var_0.a, true)), vec4<bool>(all(global1.zw) | all(global1.wy), global1.x, any(global1.yz), ~86619u < _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b.x, u_input.a, u_input.a, var_0.b.x), vec4<u32>(u_input.c, 45754u, 1u, 4294967295u)))), select(vec4<bool>(func_1(firstLeadingBit(var_0.b.yy)).a, any(!global1.wyw), any(global1.wyx), var_2), !(!select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(true, global1.x, var_0.a, var_0.a))), !vec4<bool>(true == var_2, var_2, global1.x, true & var_2)), !vec4<bool>((var_0.a | var_2) & all(vec3<bool>(true, var_2, true)), false, !any(vec4<bool>(false, false, var_2, global1.x)), global1.x & false));
    let var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(85062u, ~var_0.b.x, u_input.e.x, u_input.e.x));
}

