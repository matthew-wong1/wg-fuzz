struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, true, true);

var<private> global1: array<vec2<bool>, 8>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<bool> {
    let var_0 = Struct_2(arg_0.b, arg_0.b);
    global0 = !vec4<bool>(global0.x, true, true, (-11480i ^ _wgslsmith_mult_i32(arg_0.a.b.x, 1i)) == -2676i);
    global0 = !(!(!vec4<bool>(u_input.a < 134459u, arg_0.a.a, true, true)));
    let var_1 = arg_0.b;
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(783f * 1514f)))), _wgslsmith_f_op_f32(f32(-1f) * -1367f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-791f, 961f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1737f, -275f), vec2<f32>(-296f, -255f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-366f, 594f))))));
    return select(!select(select(!vec4<bool>(arg_1.a.a, false, var_1.a, var_1.a), vec4<bool>(false, var_1.a, arg_1.b.a, arg_1.a.a), !vec4<bool>(true, global0.x, false, arg_1.b.a)), !(!vec4<bool>(var_0.a.a, true, global0.x, global0.x)), vec4<bool>(false, arg_1.b.a && true, u_input.a < u_input.a, all(vec3<bool>(true, arg_1.b.a, arg_1.a.a)))), select(vec4<bool>(~u_input.a > _wgslsmith_mult_u32(1u, 38913u), all(select(vec4<bool>(var_1.a, var_1.a, arg_0.b.a, true), vec4<bool>(false, arg_0.b.a, var_0.a.a, arg_0.b.a), vec4<bool>(arg_1.b.a, var_0.a.a, true, global0.x))), var_1.a, true), !select(vec4<bool>(true, var_1.a, var_1.a, true), vec4<bool>(var_1.a, var_1.a, false, true), true), vec4<bool>(arg_1.a.a, arg_0.b.a, global0.x, any(global0.zzy))), !(!var_1.a));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: u32) -> Struct_1 {
    global1 = array<vec2<bool>, 8>();
    let var_0 = Struct_1(!(true & any(vec2<bool>(true, false))), -(~(~vec3<i32>(-7008i, 8484i, -2147483647i))));
    global0 = vec4<bool>(any(!select(func_3(Struct_2(var_0, Struct_1(var_0.a, vec3<i32>(-74286i, arg_1, -28547i))), Struct_2(var_0, var_0)), !vec4<bool>(true, false, global0.x, global0.x), false)), true, select(var_0.a, !func_3(Struct_2(var_0, Struct_1(var_0.a, vec3<i32>(2147483647i, arg_1, var_0.b.x))), Struct_2(var_0, var_0)).x, true), !(!any(func_3(Struct_2(var_0, Struct_1(false, var_0.b)), Struct_2(Struct_1(var_0.a, var_0.b), var_0)).yy)));
    global0 = vec4<bool>(false | (_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1572f, -1498f), _wgslsmith_div_f32(466f, 1072f), any(vec3<bool>(global0.x, false, var_0.a)))) > -971f), (_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1993f + 1125f))) >= _wgslsmith_div_f32(-807f, -523f)) & var_0.a, all(vec4<bool>(all(!global0.yyx), true, !(true != global0.x), func_3(Struct_2(Struct_1(true, var_0.b), Struct_1(true, vec3<i32>(0i, arg_1, 2147483647i))), Struct_2(Struct_1(var_0.a, vec3<i32>(arg_1, arg_1, arg_1)), Struct_1(true, vec3<i32>(var_0.b.x, 1i, var_0.b.x)))).x)), global0.x);
    global0 = vec4<bool>(any(vec2<bool>(_wgslsmith_f_op_f32(select(-209f, 1161f, var_0.a)) == _wgslsmith_f_op_f32(floor(1180f)), true)), global0.x || true, true, var_0.a);
    return var_0;
}

fn func_1() -> Struct_2 {
    global0 = vec4<bool>(false, true, global0.x || global0.x, all(!vec2<bool>(any(vec4<bool>(false, false, global0.x, true)), all(vec3<bool>(true, true, global0.x)))));
    let var_0 = global0.x;
    global0 = !(!(!(!select(vec4<bool>(global0.x, true, global0.x, true), vec4<bool>(false, true, global0.x, global0.x), global0.x))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(1u, 19245u, u_input.a)), vec3<u32>(abs(1u), _wgslsmith_div_u32(4294967295u, u_input.a), 11576u)), u_input.a), ~4294967295u);
    var_1 = _wgslsmith_sub_u32(u_input.a, ~select(_wgslsmith_div_u32(u_input.a, u_input.a), ~1u, true)) | ~countOneBits(~countOneBits(61504u));
    return Struct_2(func_2(u_input.a, firstLeadingBit(_wgslsmith_clamp_i32(select(-17022i, 1129i, true), 1i, ~(-1i))), ~_wgslsmith_add_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 0u), vec3<u32>(u_input.a, 0u, 4294967295u)))), Struct_1(func_3(Struct_2(func_2(4294967295u, 12442i, 0u), func_2(u_input.a, 2147483647i, u_input.a)), Struct_2(Struct_1(false, vec3<i32>(719i, -18666i, -48782i)), Struct_1(global0.x, vec3<i32>(-2147483647i, 1i, 4294i)))).x, countOneBits(_wgslsmith_mod_vec3_i32(select(vec3<i32>(-2147483647i, -24872i, 7669i), vec3<i32>(-2147483647i, 58234i, 0i), global0.xyy), vec3<i32>(16424i, 0i, 10989i)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 8>();
    var var_0 = func_1();
    var var_1 = vec3<f32>(-738f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1435f, _wgslsmith_f_op_f32(-118f - 132f))), _wgslsmith_f_op_f32(floor(195f)))))), -1200f);
    let var_2 = Struct_3(_wgslsmith_dot_vec3_u32((_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 1u, u_input.a), vec3<u32>(u_input.a, 65696u, u_input.a)) << (max(vec3<u32>(u_input.a, 53480u, u_input.a), vec3<u32>(u_input.a, 1u, u_input.a)) % vec3<u32>(32u))) >> ((firstTrailingBit(vec3<u32>(u_input.a, 4294967295u, 4294967295u)) & vec3<u32>(54066u, u_input.a, u_input.a)) % vec3<u32>(32u)), countOneBits(vec3<u32>(u_input.a, u_input.a, 0u) ^ vec3<u32>(4294967295u, 24698u, 4294967295u)) & ~(vec3<u32>(u_input.a, u_input.a, 0u) | vec3<u32>(u_input.a, 17883u, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_clamp_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 20918u), vec2<u32>(11216u, 27903u)) & ~u_input.a), u_input.a, u_input.a));
    var var_3 = ~_wgslsmith_div_i32(firstTrailingBit(_wgslsmith_sub_i32(45796i, 86203i) ^ (var_0.b.b.x & var_0.a.b.x)), ~(-1i));
    var var_4 = Struct_2(var_0.b, func_2(~(~(~46292u)), -13029i >> ((min(u_input.a, 4294967295u) >> (_wgslsmith_mod_u32(38487u, 4294967295u) % 32u)) % 32u), _wgslsmith_dot_vec2_u32(select(vec2<u32>(var_2.c, u_input.a) ^ vec2<u32>(0u, 1u), vec2<u32>(50497u, 31105u) ^ vec2<u32>(0u, u_input.a), select(global0.yw, global1[_wgslsmith_index_u32(u_input.a, 8u)], global0.x)), _wgslsmith_div_vec2_u32(vec2<u32>(59955u, 0u), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, var_2.c), vec2<u32>(u_input.a, u_input.a))))));
    var var_5 = func_1();
    var var_6 = vec4<i32>(-1i, (var_4.a.b.x >> (1u % 32u)) << (max(~0u, _wgslsmith_mod_u32(u_input.a, 23805u)) % 32u), ~var_5.b.b.x, -1i) << (~(vec4<u32>(1u, 0u, ~var_2.c, 1u) ^ select(vec4<u32>(4294967295u, var_2.a, var_2.a, 78319u) | vec4<u32>(u_input.a, 24597u, 56500u, 1u), _wgslsmith_clamp_vec4_u32(vec4<u32>(27263u, var_2.a, u_input.a, 23253u), vec4<u32>(u_input.a, 0u, var_2.c, u_input.a), vec4<u32>(0u, 45836u, 43167u, u_input.a)), var_5.b.a)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

