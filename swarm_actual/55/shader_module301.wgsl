struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: vec3<u32>,
    d: f32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: bool;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(-reverseBits(vec3<i32>(u_input.a.x, -24029i, 0i)), vec3<i32>(u_input.a.x, ~(-u_input.a.x), ~32443i), select(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, -9704i), vec3<i32>(u_input.a.x, -7763i, u_input.a.x)), _wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 3553i)), true) >> (~(vec3<u32>(u_input.c, u_input.c, 28425u) >> (vec3<u32>(u_input.b, 19921u, u_input.b) % vec3<u32>(32u))) % vec3<u32>(32u))), _wgslsmith_f_op_f32(sign(-1000f)), global0.a.x, reverseBits(_wgslsmith_div_i32(~_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), u_input.a.x ^ u_input.a.x)), u_input.a.x);
    global2 = true;
    let var_1 = Struct_2(!select(false, true, (u_input.c | 5161u) > _wgslsmith_div_u32(4294967295u, 13037u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-278f, global0.a.x, 841f, var_0.b), vec4<f32>(var_0.c, -516f, var_0.b, -1040f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1357f, var_0.c, var_0.c, var_0.c), vec4<f32>(110f, 455f, -879f, global0.a.x), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, true, true))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, global0.a.x, global0.a.x, -947f) * vec4<f32>(global0.a.x, -377f, -2539f, 1249f))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.a.x, var_0.c, global0.a.x, -452f), vec4<f32>(1000f, 276f, -1029f, -961f), true)) - vec4<f32>(var_0.c, global0.a.x, -1382f, -1973f))))));
    let var_2 = ~(firstLeadingBit(~17654u) & ~_wgslsmith_clamp_u32(23565u, u_input.b, abs(u_input.b)));
    let var_3 = select(vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(var_1.a, var_1.a), vec2<bool>(var_1.a, var_1.a))) | false, false != var_1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1677f), _wgslsmith_f_op_f32(max(-410f, global0.a.x)))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c), var_1.b.x), any(select(vec3<bool>(false, false, false), vec3<bool>(false, var_1.a, var_1.a), vec3<bool>(var_1.a, var_1.a, var_1.a))) || (~u_input.c >= 1u)), !(!select(vec4<bool>(true, var_1.a, true, var_1.a), vec4<bool>(true, true, false, var_1.a), select(vec4<bool>(false, true, true, false), vec4<bool>(var_1.a, false, var_1.a, true), var_1.a))), !(!vec4<bool>(any(vec2<bool>(true, true)), var_1.a, false, false)));
    return -896f;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec2<u32>, arg_3: vec2<f32>) -> Struct_5 {
    global2 = true;
    var var_0 = arg_2 | ((select(vec2<u32>(arg_0, arg_0), min(vec2<u32>(arg_0, arg_0), vec2<u32>(81475u, arg_2.x)), false) ^ vec2<u32>(~arg_2.x, ~1u)) ^ vec2<u32>(20116u, u_input.b));
    var_0 = arg_2;
    var var_1 = arg_2.x;
    let var_2 = Struct_3(~(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(arg_0, 88197u, 23671u)), ~vec3<u32>(arg_0, arg_2.x, var_0.x), all(vec3<bool>(true, false, false)))), vec2<f32>(_wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(-1608f + _wgslsmith_f_op_f32(func_3()))), global0.a.x), Struct_2(true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1601f, 1547f, arg_3.x, -435f) + vec4<f32>(733f, arg_3.x, arg_3.x, global0.a.x))))), Struct_1(min(-vec3<i32>(62371i, u_input.a.x, 29526i), select(vec3<i32>(1i, -7837i, arg_1.x), vec3<i32>(11567i, 73982i, 0i), vec3<bool>(true, false, true))) << ((firstLeadingBit(vec3<u32>(arg_0, u_input.c, 15507u)) << (vec3<u32>(arg_2.x, 92306u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_3.x, 802f), _wgslsmith_f_op_f32(f32(-1f) * -643f))))), global0.a.x, 1i, firstTrailingBit(reverseBits(firstLeadingBit(4534i)))));
    return Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global0.a))));
}

fn func_1() -> Struct_4 {
    let var_0 = reverseBits(firstLeadingBit(firstTrailingBit(~vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c))));
    global2 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    global0 = func_2(var_0.x, _wgslsmith_sub_vec2_i32(~(~(u_input.a ^ vec2<i32>(u_input.a.x, -1i))), u_input.a | ((u_input.a & u_input.a) >> (vec2<u32>(u_input.b, u_input.c) % vec2<u32>(32u)))), abs(abs(var_0.xw)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(global0.a.x)), _wgslsmith_f_op_f32(-global0.a.x)) * _wgslsmith_f_op_vec2_f32(-global0.a.yx))));
    global0 = func_2(u_input.c | _wgslsmith_dot_vec3_u32(var_0.zwx, select(vec3<u32>(17643u, u_input.b, 15377u), vec3<u32>(u_input.c, 0u, 1u), true) & ~vec3<u32>(u_input.c, 28519u, u_input.c)), max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a), vec2<i32>(27509i, -3803i)), min(~select(vec2<u32>(1u, 76333u), abs(vec2<u32>(102065u, var_0.x)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), vec2<u32>(_wgslsmith_dot_vec3_u32(var_0.ywy, vec3<u32>(51793u, 0u, var_0.x)), 8564u)), vec2<f32>(-1166f, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1340f)))));
    let var_1 = var_0.x;
    return Struct_4(Struct_2(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, -280f, 875f, 170f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, -2345f, global0.a.x, global0.a.x) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, 1715f, -518f, global0.a.x)))))), Struct_3(var_0.ywx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, global0.a.x), vec2<f32>(454f, global0.a.x)), _wgslsmith_f_op_vec2_f32(global0.a.zz * vec2<f32>(-638f, global0.a.x)), vec2<bool>(true, false)))), Struct_2(true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, global0.a.x, global0.a.x, -1000f))))), Struct_1(vec3<i32>(_wgslsmith_mod_i32(16592i, 4282i), 1i, abs(8682i)), global0.a.x, _wgslsmith_f_op_f32(-global0.a.x), ~58098i, 0i)), ~var_0.ywy, -258f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = !(!(var_0.b.c.a || var_0.a.a)) & all(!(!vec3<bool>(true, var_0.a.a, true)));
    let var_1 = _wgslsmith_sub_u32(max(32164u, 52937u), u_input.b >> (_wgslsmith_div_u32(var_0.b.a.x, ~max(0u, 1u)) % 32u));
    var var_2 = vec4<u32>(~(7556u | _wgslsmith_mult_u32(~79077u, var_0.b.a.x)), abs(39542u), 4294967295u, ~var_1);
    global2 = all(vec2<bool>(any(vec3<bool>(false, false, var_0.a.a)) & var_0.b.c.a, var_0.b.c.a));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(var_1, ~abs(var_1) << (max(1u | var_0.b.a.x, 0u) % 32u)), ~(~vec2<u32>(firstLeadingBit(u_input.b), 1u)), var_0.b.d.a.x, -323f);
}

