struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: vec4<i32>) -> bool {
    global0 = !(!vec3<bool>(true, true, any(select(vec3<bool>(true, false, false), vec3<bool>(arg_0.b.x, true, arg_0.a), vec3<bool>(true, arg_0.b.x, arg_0.b.x)))));
    global0 = !(!vec3<bool>(false, true, any(select(vec3<bool>(arg_0.b.x, global0.x, arg_0.b.x), vec3<bool>(false, false, arg_0.b.x), vec3<bool>(true, true, global0.x)))));
    let var_0 = Struct_2(arg_1.a, arg_0.d.x);
    var var_1 = arg_3.yx | firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(arg_3.wx), _wgslsmith_mod_vec2_i32(arg_3.zx, arg_3.yz)), max(countOneBits(arg_3.wy), -vec2<i32>(-6221i, u_input.a))));
    var_1 = -vec2<i32>(max(~1i, ~u_input.a), -31759i);
    return arg_1.a;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = vec3<bool>(global0.x, false, false);
    return Struct_1(global0.x, vec2<bool>(any(!vec4<bool>(global0.x, var_0.x, global0.x, global0.x)) || any(vec4<bool>(global0.x, false, global0.x, var_0.x)), !(all(vec4<bool>(false, global0.x, true, false)) || var_0.x)), vec2<f32>(arg_0, _wgslsmith_f_op_f32(select(arg_0, arg_0, true && func_3(Struct_1(global0.x, global0.yy, vec2<f32>(arg_0, -1085f), vec2<u32>(0u, 0u)), Struct_2(false, 2118u), vec3<f32>(-1161f, -466f, arg_0), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))))), vec2<u32>(1u, ~1u));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> vec3<bool> {
    global0 = !select(vec3<bool>(true, all(!vec3<bool>(false, true, arg_1.b.x)), false), !vec3<bool>(func_2(arg_1.c.x).a, true, true), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, arg_1.b.x), vec3<bool>(arg_0.b.x, global0.x, global0.x)), select(vec3<bool>(arg_0.b.x, arg_0.a, arg_1.a), vec3<bool>(false, true, false), false), arg_0.a | arg_0.b.x));
    var var_0 = ~(arg_1.d.x >> (func_2(_wgslsmith_f_op_f32(arg_0.c.x + 331f)).d.x % 32u)) << (~_wgslsmith_dot_vec2_u32(~(~arg_1.d), vec2<u32>(arg_1.d.x & 1u, _wgslsmith_sub_u32(1u, 0u))) % 32u);
    var var_1 = global0.zx;
    var_0 = ~arg_0.d.x | abs(~arg_0.d.x);
    var_1 = func_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1231f)))), _wgslsmith_f_op_f32(sign(-358f)))).b;
    return !vec3<bool>(true != var_1.x, (~4294967295u & _wgslsmith_sub_u32(arg_0.d.x, arg_0.d.x)) < countOneBits(32654u), false);
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_div_u32(_wgslsmith_mod_u32(1u, select(~30456u, 4294967295u, false)), 1u), abs(~69426u));
    var var_1 = 1u;
    global0 = vec3<bool>(true, any(select(!vec3<bool>(global0.x, global0.x, false), vec3<bool>(all(vec3<bool>(false, false, global0.x)), global0.x, global0.x && false), func_4(Struct_1(true, global0.xy, vec2<f32>(822f, -966f), vec2<u32>(1u, 1u)), func_2(-914f)))), select(false, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(u_input.a, u_input.a)) <= ~u_input.a, !global0.x));
    global0 = vec3<bool>(func_2(_wgslsmith_f_op_f32(f32(-1f) * -1000f)).b.x, !func_3(func_2(_wgslsmith_f_op_f32(f32(-1f) * -795f)), Struct_2(true, 1u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(286f, 541f, 1000f)), -min(vec4<i32>(12125i, u_input.a, u_input.a, 1i), vec4<i32>(-30082i, 1i, 2147483647i, -71250i))), !any(vec4<bool>(func_4(Struct_1(true, global0.xy, vec2<f32>(-527f, 1553f), vec2<u32>(29103u, 0u)), Struct_1(global0.x, global0.yz, vec2<f32>(2097f, 382f), vec2<u32>(4974u, 54808u))).x, true, true, false)));
    var var_2 = global0.x;
    return _wgslsmith_f_op_f32(-1054f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-477f - _wgslsmith_f_op_f32(-686f * 1582f)))) * 413f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(u_input.a == max(~u_input.a, -u_input.a)), vec2<bool>(true, true), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1227f + _wgslsmith_f_op_f32(f32(-1f) * -1065f)), _wgslsmith_f_op_f32(func_1())) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, -281f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1646f, -351f) + vec2<f32>(-744f, 1184f))) + vec2<f32>(-119f, _wgslsmith_f_op_f32(-374f - 643f)))), abs(vec2<u32>(select(min(0u, 32609u), 1u, func_4(Struct_1(global0.x, vec2<bool>(global0.x, global0.x), vec2<f32>(452f, -1822f), vec2<u32>(4801u, 0u)), Struct_1(true, global0.yz, vec2<f32>(1521f, 979f), vec2<u32>(4294967295u, 29943u))).x), 1u)));
    var var_1 = !(!(!global0.yy));
    var_1 = !(!global0.yz);
    var var_2 = ~vec2<u32>(countOneBits(23275u), var_0.d.x);
    var var_3 = Struct_2(true, var_2.x);
    let var_4 = Struct_1(true, !global0.zy, var_0.c, var_0.d);
    global0 = select(select(vec3<bool>(1i > u_input.a, select(u_input.a, 2147483647i, var_3.a) >= u_input.a, false), !(!(!vec3<bool>(global0.x, var_0.a, var_0.b.x))), !vec3<bool>(var_1.x, !var_4.b.x, any(vec4<bool>(true, true, var_3.a, false)))), func_4(Struct_1(false, !(!var_4.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_4.c * vec2<f32>(var_0.c.x, var_0.c.x))), abs(select(vec2<u32>(1u, var_3.b), vec2<u32>(var_0.d.x, 57515u), var_0.b))), var_4), select(vec3<bool>(func_2(_wgslsmith_f_op_f32(sign(var_4.c.x))).a, false, var_1.x || !var_1.x), !func_4(func_2(var_4.c.x), Struct_1(var_1.x, vec2<bool>(true, var_3.a), vec2<f32>(var_0.c.x, -1361f), var_0.d)), 0u > var_2.x));
    var var_5 = _wgslsmith_mult_vec3_u32(~vec3<u32>(var_3.b, reverseBits(var_0.d.x), ~1u) ^ ~vec3<u32>(var_0.d.x, _wgslsmith_mod_u32(var_4.d.x, 22437u), ~1u), ~(~reverseBits(vec3<u32>(4294967295u, 4294967295u, 0u)) | _wgslsmith_mult_vec3_u32(abs(vec3<u32>(20593u, var_4.d.x, 4924u)), vec3<u32>(1u, var_4.d.x, 57034u))));
    let var_6 = max(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.a, 1i, ~(-1i)), ~(~vec3<i32>(u_input.a, -30181i, u_input.a))) ^ ~(vec3<i32>(1i, u_input.a, u_input.a) | (vec3<i32>(48896i, -2147483647i, 0i) ^ vec3<i32>(1i, u_input.a, u_input.a))), _wgslsmith_mod_vec3_i32(((vec3<i32>(0i, u_input.a, 0i) >> (vec3<u32>(1u, 54712u, 1u) % vec3<u32>(32u))) >> (select(vec3<u32>(var_0.d.x, var_4.d.x, 0u), vec3<u32>(var_4.d.x, var_5.x, var_2.x), var_4.a) % vec3<u32>(32u))) | _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -12810i, u_input.a), vec3<i32>(53574i, u_input.a, u_input.a))), ~(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, 2147483647i, u_input.a), vec3<i32>(0i, u_input.a, u_input.a)) & _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-2147483647i, 2147483647i, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(var_2.x ^ var_2.x) | 0u), abs(_wgslsmith_div_vec4_u32(abs(max(vec4<u32>(4294967295u, 1u, 16562u, var_2.x), vec4<u32>(var_4.d.x, 14854u, var_5.x, 4294967295u))), ~vec4<u32>(1u, var_3.b, 1u, var_0.d.x) | select(vec4<u32>(var_2.x, 4294967295u, 0u, var_4.d.x), vec4<u32>(var_2.x, var_4.d.x, 4294967295u, 6613u), false))));
}

