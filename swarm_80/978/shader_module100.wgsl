struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: i32;

var<private> global2: Struct_2;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-994f * _wgslsmith_div_f32(global2.b.x, global2.b.x)))), -2244f, global2.b.x));
    var var_1 = Struct_1(~(-1i), global2.a.b, global2.a.c);
    global2 = Struct_2(Struct_1(_wgslsmith_clamp_i32(~0i, -10826i, ~0i), vec2<i32>(global2.c.x, 34110i), global2.a.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global2.b + var_0.zx), vec2<f32>(arg_0.x, global2.b.x), !vec2<bool>(global2.a.c.x, global2.a.c.x))) + global2.b)), reverseBits(vec3<i32>(_wgslsmith_dot_vec4_i32(-u_input.c, u_input.c), -28436i, var_1.a)));
    var var_2 = Struct_2(Struct_1(-_wgslsmith_sub_i32(0i, 0i), -vec2<i32>(select(var_1.a, var_1.a, global2.a.c.x), _wgslsmith_div_i32(global2.c.x, -29358i)), select(select(!global2.a.c, !vec4<bool>(global2.a.c.x, false, var_1.c.x, var_1.c.x), global2.a.c.x || global2.a.c.x), var_1.c, !vec4<bool>(global2.a.c.x, false, var_1.c.x, true))), global2.b, vec3<i32>(-1657i, -2147483647i, u_input.c.x));
    var var_3 = vec3<i32>(-20640i, 1i, abs(1i));
    return var_1.a;
}

fn func_2() -> Struct_2 {
    global2 = Struct_2(Struct_1(global2.c.x, vec2<i32>(global2.a.b.x, countOneBits(func_3(vec3<f32>(-898f, global2.b.x, -580f), vec2<u32>(1u, u_input.b)))), !select(global2.a.c, select(global2.a.c, global2.a.c, vec4<bool>(global2.a.c.x, global2.a.c.x, false, false)), true)), vec2<f32>(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(-global2.b.x)))), _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_div_i32(2147483647i, reverseBits(-2147483647i)), _wgslsmith_sub_i32(firstLeadingBit(global2.a.a), -25437i), -global2.c.x), -vec3<i32>(~(-1i), countOneBits(2147483647i), firstLeadingBit(u_input.c.x))));
    var var_0 = Struct_3(vec4<f32>(global2.b.x, global2.b.x, 277f, -1503f), global2.a, Struct_2(Struct_1(-49121i, vec2<i32>(~global2.c.x, _wgslsmith_add_i32(-11406i, 2147483647i)), global2.a.c), global2.b, global2.c), Struct_2(Struct_1(u_input.c.x >> (~u_input.b % 32u), min(u_input.c.ww ^ u_input.c.zw, u_input.c.yz), select(!global2.a.c, select(vec4<bool>(true, global2.a.c.x, true, global2.a.c.x), vec4<bool>(global2.a.c.x, global2.a.c.x, global2.a.c.x, global2.a.c.x), global2.a.c.x), global2.a.c)), _wgslsmith_f_op_vec2_f32(min(global2.b, _wgslsmith_div_vec2_f32(vec2<f32>(684f, -1507f), global2.b))), ~global2.c));
    var var_1 = Struct_1(2147483647i, -(global2.c.xy & vec2<i32>(_wgslsmith_div_i32(global2.a.b.x, var_0.c.a.a), -25472i)), vec4<bool>(var_0.b.c.x, var_0.d.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.b.x + -727f) - _wgslsmith_div_f32(global2.b.x, -410f)) > global2.b.x, !(!select(false, false, global2.a.c.x))));
    var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(var_0.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, var_0.c.b.x, global2.b.x, var_0.d.b.x) - var_0.a))) * var_0.a), Struct_1(_wgslsmith_dot_vec2_i32(-var_1.b, -_wgslsmith_mod_vec2_i32(vec2<i32>(0i, var_1.b.x), vec2<i32>(var_1.b.x, 2147483647i))), select(_wgslsmith_sub_vec2_i32(vec2<i32>(global2.a.a, -24469i), min(vec2<i32>(var_0.d.c.x, -5632i), vec2<i32>(var_0.b.b.x, -24290i))), vec2<i32>(8315i, _wgslsmith_clamp_i32(12863i, -1i, 21796i)), vec2<bool>(true, var_1.c.x)), !select(select(vec4<bool>(false, global2.a.c.x, var_0.d.a.c.x, var_1.c.x), vec4<bool>(false, false, false, var_1.c.x), var_0.d.a.c), !global2.a.c, global2.c.x <= -2147483647i)), var_0.d, var_0.c);
    var var_2 = Struct_2(Struct_1(-1i, vec2<i32>(~select(var_1.a, 2147483647i, var_0.b.c.x), i32(-1i) * -1i), vec4<bool>(global2.a.c.x, select(true, !var_1.c.x, var_1.c.x & global2.a.c.x), u_input.b >= 4294967295u, any(vec2<bool>(true, false)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f)))), -631f), _wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(20497i, 29504i, 8225i), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.b.x, var_1.b.x, var_0.d.a.b.x), vec3<i32>(var_0.d.c.x, global2.a.b.x, global2.a.a))), min(u_input.c.www, var_0.d.c) ^ vec3<i32>(-12610i, 2147483647i, var_0.c.a.b.x)), vec3<i32>(~var_1.a, -8534i, func_3(_wgslsmith_div_vec3_f32(vec3<f32>(global2.b.x, -1248f, var_0.d.b.x), vec3<f32>(931f, var_0.c.b.x, var_0.a.x)), select(vec2<u32>(u_input.b, 32759u), vec2<u32>(u_input.b, 26267u), var_1.c.x)))));
    return var_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    var var_0 = Struct_3(vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(118f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-271f)) + 1446f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-832f, global2.b.x)) - _wgslsmith_f_op_f32(-arg_1.b.x)), -1000f), Struct_1(-abs(_wgslsmith_sub_i32(u_input.c.x, -70986i)), max(global2.a.b, firstLeadingBit(~vec2<i32>(arg_0.b.x, -35530i))), !select(vec4<bool>(arg_1.a.c.x, true, false, arg_0.c.x), arg_0.c, 20688u != u_input.b)), func_2(), Struct_2(func_2().a, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b - global2.b) - global2.b))), (~global2.c ^ select(vec3<i32>(-13100i, u_input.a, arg_0.a), vec3<i32>(63506i, arg_1.a.b.x, arg_0.b.x), vec3<bool>(true, arg_0.c.x, global2.a.c.x))) | (max(u_input.c.yzw, vec3<i32>(arg_1.c.x, 2147483647i, 1i)) >> (max(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(22893u, u_input.b, 11516u)) % vec3<u32>(32u)))));
    return Struct_1(-2147483647i & (var_0.b.a >> (_wgslsmith_sub_u32(4294967295u, min(4294967295u, u_input.b)) % 32u)), min(-var_0.c.a.b, arg_1.a.b << (abs(~vec2<u32>(u_input.b, 4294967295u)) % vec2<u32>(32u))), arg_1.a.c);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(func_4(Struct_1(1i, vec2<i32>(1825i, u_input.c.x) & _wgslsmith_mult_vec2_i32(arg_1.b, vec2<i32>(arg_1.a, 2147483647i)), select(vec4<bool>(true, arg_1.c.x, true, false), select(vec4<bool>(arg_1.c.x, global2.a.c.x, true, global2.a.c.x), arg_1.c, global2.a.c), global2.a.c)), func_2()), vec2<f32>(573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global2.b.x), arg_0)))), -global2.c);
    var var_1 = u_input.c;
    var var_2 = max(u_input.b, _wgslsmith_clamp_u32(~(~18630u), u_input.b, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(select(vec3<u32>(4294967295u, 7126u, 4294967295u), vec3<u32>(0u, 4294967295u, 39242u), global2.a.c.zxz), vec3<u32>(35840u, 35202u, u_input.b)), vec3<u32>(1u, 53308u, u_input.b))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(938f + var_0.b.x), 311f, _wgslsmith_div_f32(var_0.b.x, arg_0), arg_0))), Struct_1(global2.c.x, ~countOneBits(u_input.c.ww), vec4<bool>(true, any(vec3<bool>(global2.a.c.x, true, global2.a.c.x)), true, !global2.a.c.x)), Struct_2(Struct_1(-func_4(global2.a, Struct_2(Struct_1(2147483647i, vec2<i32>(var_1.x, global2.c.x), vec4<bool>(false, true, true, true)), var_0.b, vec3<i32>(25508i, global2.c.x, arg_1.a))).b.x, _wgslsmith_mult_vec2_i32(select(vec2<i32>(2147483647i, global2.c.x), vec2<i32>(20613i, 2147483647i), true), vec2<i32>(17579i, 32192i)), vec4<bool>(arg_1.c.x, true, false, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.b)), var_0.b)), -max(vec3<i32>(u_input.c.x, u_input.a, var_0.a.b.x), var_1.zzz)), Struct_2(arg_1, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.b) + _wgslsmith_f_op_vec2_f32(-global2.b)))), min(~max(global2.c, var_0.c), firstTrailingBit(func_2().c))));
    let var_4 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_3.a * vec4<f32>(1088f, var_3.a.x, global2.b.x, -1000f)) - vec4<f32>(var_3.c.b.x, global2.b.x, 392f, var_3.a.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_3.a * vec4<f32>(var_3.c.b.x, -355f, global2.b.x, arg_0))), _wgslsmith_f_op_vec4_f32(-var_3.a))))), func_4(func_2().a, func_2()), var_3.c, func_2());
    return var_3.c;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<bool>) -> Struct_1 {
    global1 = arg_0.c.x;
    var var_0 = true;
    var var_1 = 10880u;
    let var_2 = arg_0;
    global2 = func_1(-171f, global2.a);
    return Struct_1(2147483647i, ~vec2<i32>(~var_2.c.x, arg_0.a.b.x), func_1(_wgslsmith_div_f32(global2.b.x, global2.b.x), func_4(global2.a, arg_0)).a.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -298f;
    global0 = array<Struct_1, 14>();
    var_0 = _wgslsmith_f_op_f32(global2.b.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1137f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-176f, _wgslsmith_f_op_f32(-161f + 278f))))));
    global1 = ~reverseBits(abs(global2.a.a & 15749i) | global2.a.b.x);
    let var_1 = func_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1466f, _wgslsmith_f_op_f32(-global2.b.x)))), Struct_1(i32(-1i) * -13957i, _wgslsmith_mult_vec2_i32(vec2<i32>(global2.a.a, 2147483647i), vec2<i32>(global2.a.a, u_input.a)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u)), !vec4<bool>(global2.a.c.x, true, global2.a.c.x, global2.a.c.x))), vec3<bool>(global2.a.c.x | false, 29216u > _wgslsmith_dot_vec3_u32(~vec3<u32>(14302u, 1u, u_input.b), _wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 1u))), func_4(func_4(func_1(global2.b.x, global0[_wgslsmith_index_u32(u_input.b, 14u)]).a, Struct_2(global2.a, vec2<f32>(global2.b.x, 469f), u_input.c.wyx)), Struct_2(func_4(global2.a, Struct_2(Struct_1(-1019i, u_input.c.zy, vec4<bool>(global2.a.c.x, global2.a.c.x, global2.a.c.x, global2.a.c.x)), vec2<f32>(global2.b.x, -206f), vec3<i32>(u_input.c.x, u_input.a, global2.c.x))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, global2.b.x) - global2.b), vec3<i32>(u_input.c.x, 0i, global2.a.a))).c.x));
    let var_2 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(668f, -1040f, global2.b.x, global2.b.x)) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.b.x, global2.b.x, 928f, 523f)))) - vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(global2.b.x * global2.b.x), 253f, 1000f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -818f, global2.b.x, global2.b.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global2.b.x)) * global2.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1425f)) * global2.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.b.x, 1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1020f)) - vec4<f32>(_wgslsmith_f_op_f32(-func_2().b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * -133f), _wgslsmith_f_op_f32(global2.b.x + global2.b.x), global2.b.x))));
    global1 = _wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.c), u_input.c);
    var var_3 = Struct_1(global2.c.x, min(global2.a.b, var_1.b), !var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(0u, u_input.b), u_input.c);
}

