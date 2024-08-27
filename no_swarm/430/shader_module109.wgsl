struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec3<bool>,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(621f, true, vec3<bool>(false, true, false), true, vec2<bool>(false, false));

var<private> global1: f32 = 756f;

var<private> global2: bool = false;

var<private> global3: Struct_1 = Struct_1(false, vec2<u32>(13950u, 28060u));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1) -> vec3<bool> {
    global2 = arg_1.a;
    global0 = Struct_2(466f, any(vec4<bool>(!all(vec4<bool>(true, false, global0.e.x, true)), arg_0.x || !global0.d, true, all(vec3<bool>(true, true, arg_1.a)))), vec3<bool>(!all(!vec4<bool>(global0.b, arg_1.a, global0.e.x, global3.a)), all(!select(vec4<bool>(true, false, global3.a, true), vec4<bool>(global0.b, true, false, true), vec4<bool>(false, global0.b, global0.b, false))), true), any(arg_0), select(vec2<bool>(all(!arg_0), false), select(select(vec2<bool>(global0.c.x, global0.b), vec2<bool>(true, arg_1.a), global0.a <= global0.a), global0.e, vec2<bool>(any(vec4<bool>(arg_1.a, global0.e.x, global0.e.x, arg_0.x)), true || arg_1.a)), !select(select(vec2<bool>(false, arg_0.x), arg_0, global0.e.x), select(vec2<bool>(global3.a, true), arg_0, arg_0), global0.d)));
    var var_0 = Struct_3(Struct_1(false, global3.b), global0.a, !any(!vec4<bool>(arg_0.x, true, true, true)), Struct_1(!(!any(global0.c)), arg_1.b));
    global1 = _wgslsmith_f_op_f32(select(-1056f, var_0.b, var_0.c));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a))) * _wgslsmith_f_op_f32(global0.a * var_0.b)) <= _wgslsmith_div_f32(global0.a, _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(-961f + _wgslsmith_f_op_f32(abs(var_0.b)))));
    return select(!global0.c, select(global0.c, global0.c, true & any(select(global0.c, global0.c, global0.c))), vec3<bool>(arg_1.a, true & var_1, !var_1));
}

fn func_2(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = Struct_2(global0.a, true, func_3(vec2<bool>(true, true), Struct_1(arg_0.x, _wgslsmith_mult_vec2_u32(~vec2<u32>(global3.b.x, 0u), ~global3.b))), arg_0.x & true, global0.e);
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-542f - var_0.a)));
    global2 = any(vec2<bool>(func_3(func_3(!vec2<bool>(false, global3.a), Struct_1(false, vec2<u32>(0u, 13834u))).yz, Struct_1(global0.c.x, vec2<u32>(10736u, 3732u))).x, var_0.c.x));
    var var_2 = (max(vec2<i32>(-1i) * -vec2<i32>(u_input.a, u_input.a), min(-vec2<i32>(u_input.a, 28898i), -vec2<i32>(2147483647i, u_input.a))) >> (global3.b % vec2<u32>(32u))) & ((~vec2<i32>(17283i, u_input.a) ^ ~select(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, 7169i), vec2<bool>(false, var_0.d))) ^ -firstTrailingBit(vec2<i32>(u_input.a, 7308i)));
    let var_3 = ~(_wgslsmith_div_u32(_wgslsmith_add_u32(~global3.b.x, _wgslsmith_mult_u32(4294967295u, 0u)), ~(~global3.b.x)) | abs(countOneBits(~18185u)));
    return firstTrailingBit(_wgslsmith_add_vec4_i32(-countOneBits(-vec4<i32>(var_2.x, u_input.a, -38964i, 2147483647i)), vec4<i32>(19292i & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 16108i, var_2.x, u_input.a), vec4<i32>(u_input.a, 1i, var_2.x, 13938i)), countOneBits(53674i), 1i, u_input.a)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_1 {
    var var_0 = abs(-20120i);
    var var_1 = !(!select(vec4<bool>(any(vec3<bool>(arg_1.a.a, global3.a, false)), u_input.a == u_input.a, false, true), select(select(vec4<bool>(true, global0.c.x, global0.c.x, global0.d), vec4<bool>(arg_1.d.a, false, global0.c.x, global3.a), false), select(vec4<bool>(arg_1.c, global3.a, false, global0.e.x), vec4<bool>(global0.b, global3.a, false, true), false), select(vec4<bool>(arg_1.d.a, true, arg_1.d.a, true), vec4<bool>(arg_1.a.a, arg_1.c, arg_1.a.a, true), global3.a)), !vec4<bool>(arg_1.a.a, arg_1.c, global3.a, false)));
    var_1 = vec4<bool>(!any(!func_3(global0.e, arg_1.d).xy), !select((global3.b.x < arg_1.d.b.x) != false, any(select(vec3<bool>(global3.a, var_1.x, false), vec3<bool>(global0.b, arg_1.c, arg_1.c), global0.c)), !(!arg_1.d.a)), true, -661f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(arg_1.b + arg_1.b))));
    let var_2 = _wgslsmith_sub_vec2_u32(reverseBits(~arg_1.a.b), ~vec2<u32>(~1u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(63414u, 1u), 1u)));
    let var_3 = Struct_2(global0.a, true != any(!func_3(vec2<bool>(global0.e.x, global0.d), arg_1.a)), vec3<bool>(false, arg_1.a.a & (global3.b.x >= min(81250u, arg_2.x)), false), true, vec2<bool>(global3.a, 4294967295u != ((12502u ^ arg_1.d.b.x) ^ 33157u)));
    return Struct_1(func_3(select(vec2<bool>(false, 437f != global0.a), vec2<bool>(true, true), any(vec2<bool>(true, global3.a))), Struct_1(any(!vec4<bool>(var_3.e.x, true, var_3.d, var_3.c.x)), firstLeadingBit(~vec2<u32>(49642u, 33740u)))).x, ~arg_2.yy);
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(global0.a * global0.a);
    global3 = func_4(~func_2(select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, global3.a, false), vec4<bool>(true, global0.e.x, false, global0.d)), !vec4<bool>(true, global0.b, false, global0.e.x), vec4<bool>(false, false, false, true))), Struct_3(Struct_1(_wgslsmith_f_op_f32(-global0.a) <= _wgslsmith_f_op_f32(global0.a * 765f), abs(vec2<u32>(global3.b.x, global3.b.x) << (vec2<u32>(global3.b.x, global3.b.x) % vec2<u32>(32u)))), global0.a, true, Struct_1(all(select(vec4<bool>(global0.d, global0.b, global3.a, global0.c.x), vec4<bool>(true, global0.e.x, false, global0.c.x), true)), ~(~global3.b))), ~((vec3<u32>(global3.b.x, 0u, global3.b.x) & vec3<u32>(global3.b.x, 34181u, 0u)) & vec3<u32>(global3.b.x, global3.b.x, global3.b.x)) >> ((vec3<u32>(~70002u, max(62752u, 6236u), abs(global3.b.x)) & vec3<u32>(~39834u, 11670u, ~0u)) % vec3<u32>(32u)));
    let var_0 = ~(~(~53843u));
    var var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1000f)), -787f), u_input.a != u_input.a, global0.c, global3.a, vec2<bool>(true, global3.a));
    let var_2 = firstLeadingBit(abs(countOneBits(u_input.a)));
    return Struct_1(var_1.d, vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(3656u, var_0), global3.b), global3.b), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(712f, false, global0.c, true, !vec2<bool>(global3.a, global3.a));
    let var_1 = func_1();
    var var_2 = -select(vec2<i32>(_wgslsmith_mod_i32(u_input.a, -65912i), -1i), ~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-1i, u_input.a)), select(vec2<bool>(true, true), !var_0.c.xy, false || var_1.a)) | vec2<i32>(-1i, u_input.a);
    var_0 = Struct_2(var_0.a, true, !select(func_3(global0.e, func_1()), select(var_0.c, !vec3<bool>(global0.d, false, true), true && global0.d), !select(global0.c, global0.c, var_0.c)), true, !(!vec2<bool>(func_1().a, var_2.x <= u_input.a)));
    let var_3 = Struct_2(-294f, select(all(global0.c), var_1.a, !(global0.a >= _wgslsmith_f_op_f32(-var_0.a))), select(!vec3<bool>(var_1.a, true, true), !(!vec3<bool>(false, global3.a, true)), false), var_0.b, var_0.e);
    let x = u_input.a;
    s_output = StorageBuffer(-(~vec2<i32>(-15848i, -u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -996f)))) - var_0.a));
}

