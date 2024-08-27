struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
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

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<vec3<f32>, 18>;

var<private> global3: Struct_2 = Struct_2(Struct_1(-623f, true, -1i));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = Struct_2(global3.a);
    var var_1 = vec3<i32>(~(-39790i), abs(var_0.a.c), global0.c);
    var var_2 = ~(~(~max(_wgslsmith_div_i32(var_1.x, -1i), 1i)));
    var var_3 = ~select(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 1i, -10576i), vec3<i32>(global3.a.c, -9319i, var_1.x))), ~vec2<i32>(0i, 0i)), var_0.a.c, select(var_0.a.b, any(vec4<bool>(false, true, true, true)), true));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1934f), false, ~(i32(-1i) * -_wgslsmith_add_i32(global3.a.c, var_0.a.c)));
    return -650f;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))) * _wgslsmith_f_op_f32(min(-135f, -2594f)));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-106f - _wgslsmith_f_op_f32(ceil(global3.a.a))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(242f, 1128f)))) - 295f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(1162f * global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) - global3.a.a))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-var_2.x)), vec2<f32>(global3.a.a, var_1)) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1211f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, -1000f) * _wgslsmith_f_op_f32(global3.a.a * var_1)))));
    let var_4 = Struct_2(global3.a);
    return var_4.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.a), global0.a, _wgslsmith_f_op_f32(-arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.a, 364f, arg_1.a))))));
    let var_1 = select(select(select(select(vec4<bool>(true, true, false, arg_2.b), !vec4<bool>(false, global3.a.b, global3.a.b, arg_1.b), vec4<bool>(arg_1.b, false, global3.a.b, true)), select(!vec4<bool>(false, arg_1.b, arg_2.b, arg_3.b), !vec4<bool>(arg_2.b, false, global0.b, arg_1.b), any(vec4<bool>(arg_3.b, global3.a.b, false, arg_2.b))), vec4<bool>(false, false, !global0.b, select(false, false, arg_3.b))), !vec4<bool>(true, !global3.a.b, false, true), true), vec4<bool>(true, arg_3.b, false, all(vec3<bool>(true, arg_3.b, arg_2.b == false))), !select(!(!vec4<bool>(global0.b, arg_1.b, true, arg_2.b)), !vec4<bool>(global0.b, false, false, global3.a.b), select(!vec4<bool>(global0.b, global0.b, global3.a.b, true), vec4<bool>(true, global3.a.b, global0.b, arg_2.b), global0.b)));
    let var_2 = func_2(1i, _wgslsmith_add_vec4_u32(~vec4<u32>(~59246u, ~u_input.a, u_input.a, arg_0), firstTrailingBit(abs(~vec4<u32>(1190u, u_input.c, u_input.a, arg_0)))), arg_0);
    var var_3 = Struct_2(arg_1);
    global1 = !all(select(!select(vec4<bool>(var_2.b, arg_1.b, var_2.b, true), vec4<bool>(false, true, true, false), var_1), var_1, func_2(_wgslsmith_mod_i32(arg_3.c, var_3.a.c), vec4<u32>(48663u, arg_0, 0u, 1u), firstLeadingBit(1u)).b));
    return arg_3.c;
}

fn func_1() -> vec3<i32> {
    global0 = global3.a;
    var var_0 = func_4(firstTrailingBit(u_input.b), func_2(_wgslsmith_add_i32(-20810i, global3.a.c >> (_wgslsmith_sub_u32(44914u, u_input.c) % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.a, 10852u), reverseBits(u_input.b), 4294967295u, u_input.b), ~(vec4<u32>(1u, u_input.b, 41413u, 2421u) << (vec4<u32>(u_input.a, u_input.b, u_input.b, 0u) % vec4<u32>(32u)))), _wgslsmith_mod_u32(~u_input.c >> (_wgslsmith_clamp_u32(u_input.a, 1u, 32168u) % 32u), 0u)), global3.a, global3.a);
    let var_1 = vec3<f32>(global0.a, -1390f, global0.a);
    let var_2 = global3.a;
    var var_3 = all(!(!(!select(vec4<bool>(global0.b, true, global0.b, var_2.b), vec4<bool>(global0.b, true, true, false), vec4<bool>(true, global3.a.b, global0.b, false)))));
    return _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(44516i, global3.a.c, var_2.c) | select(vec3<i32>(14196i, -19365i, var_2.c), vec3<i32>(1i, 14290i, 2147483647i), vec3<bool>(global3.a.b, global0.b, true))), vec3<i32>(-1i) * -(~vec3<i32>(1i, global3.a.c, var_2.c))), min(-vec3<i32>(var_2.c, global3.a.c, 33123i) | _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.c, 0i, -58407i), vec3<i32>(global0.c, -1i, 2147483647i) << (vec3<u32>(u_input.c, 0u, 1u) % vec3<u32>(32u))), ~vec3<i32>(~global3.a.c, 2147483647i, var_2.c)), -_wgslsmith_div_vec3_i32(vec3<i32>(var_2.c, firstTrailingBit(global0.c), global0.c), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(var_2.c, global3.a.c, global3.a.c)), vec3<i32>(global0.c, 22787i, global0.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.a;
    let var_1 = firstLeadingBit(func_1());
    global2 = array<vec3<f32>, 18>();
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(max(var_0.a, 726f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3.a.a - 454f), _wgslsmith_f_op_f32(1261f * _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(-649f + global0.a))), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-325f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * global0.a)))));
    var var_3 = _wgslsmith_div_vec4_u32(select(_wgslsmith_clamp_vec4_u32(min(abs(vec4<u32>(0u, u_input.b, u_input.c, u_input.a)), vec4<u32>(u_input.c, 0u, u_input.a, 53654u) ^ vec4<u32>(13167u, 84647u, 85006u, u_input.c)), ~countOneBits(vec4<u32>(u_input.a, 0u, 1u, 4294967295u)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, u_input.b, u_input.c, 67479u), vec4<u32>(48327u, u_input.c, u_input.a, u_input.c)), vec4<u32>(u_input.c, 1u, u_input.c, u_input.b), ~vec4<u32>(u_input.a, u_input.a, u_input.a, 1u))), _wgslsmith_div_vec4_u32(max(select(vec4<u32>(5406u, u_input.a, u_input.b, u_input.a), vec4<u32>(u_input.a, 0u, u_input.a, 53740u), vec4<bool>(true, global3.a.b, var_0.b, global3.a.b)), vec4<u32>(u_input.b, u_input.c, 1u, u_input.a)), vec4<u32>(u_input.a, _wgslsmith_clamp_u32(0u, 99817u, u_input.b), u_input.a, select(4294967295u, u_input.a, var_0.b))), vec4<bool>(false, all(!vec2<bool>(global3.a.b, true)), !all(vec3<bool>(global0.b, false, true)), any(vec3<bool>(global3.a.b, global3.a.b, false)) & global3.a.b)), countOneBits(max(~vec4<u32>(u_input.c, u_input.a, u_input.c, 17282u), abs(~vec4<u32>(u_input.b, u_input.c, 1u, 12492u)))));
    var var_4 = Struct_2(Struct_1(-1064f, !any(select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, true), true)), global3.a.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.a.a);
}

