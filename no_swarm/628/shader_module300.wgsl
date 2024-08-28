struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: u32,
    e: vec2<u32>,
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

var<private> global0: Struct_4;

var<private> global1: Struct_3;

var<private> global2: array<vec4<u32>, 12>;

var<private> global3: array<vec4<bool>, 29>;

var<private> global4: i32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_2, arg_1: i32) -> i32 {
    return u_input.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: bool) -> vec3<bool> {
    let var_0 = Struct_2(!(!vec4<bool>(all(global3[_wgslsmith_index_u32(367u, 29u)]), true, !arg_0.x, true)), Struct_1(vec4<u32>(u_input.c, _wgslsmith_clamp_u32(15659u, global1.c.a.x, global1.c.a.x), max(global1.c.a.x, ~4294967295u), 53127u), select(vec3<bool>(arg_0.x, false, true | global0.a), arg_0.zwz, vec3<bool>(true, any(vec3<bool>(true, true, true)), !arg_0.x)), global1.c.c), Struct_1(max(~global1.c.a, vec4<u32>(global1.c.a.x << (global1.c.a.x % 32u), u_input.e.x, 4294967295u >> (u_input.d % 32u), _wgslsmith_dot_vec2_u32(global1.c.a.xx, u_input.e))), vec3<bool>(false, !all(global1.c.b), !any(vec3<bool>(true, false, true))), -vec4<i32>(global1.b.x, global1.b.x, 1i, u_input.a)), firstLeadingBit(u_input.e), Struct_1(vec4<u32>(69521u, u_input.e.x, ~global1.c.a.x, 4294967295u) << (vec4<u32>(firstLeadingBit(global1.c.a.x), ~2030u, ~1u, max(global1.c.a.x, u_input.e.x)) % vec4<u32>(32u)), !global1.c.b, firstTrailingBit(vec4<i32>(_wgslsmith_clamp_i32(global1.c.c.x, global0.b.x, 32609i), -41516i, _wgslsmith_dot_vec2_i32(global0.b.zz, vec2<i32>(2147483647i, u_input.b.x)), 1i))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.a.yxx) - _wgslsmith_f_op_vec3_f32(select(global1.a.yxx, vec3<f32>(arg_1, arg_1, global1.a.x), arg_0.ywy))), vec3<f32>(global1.a.x, -531f, _wgslsmith_f_op_f32(-arg_1))))));
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.e.a.x, ~51701u, 0u, ~0u), vec4<u32>(_wgslsmith_dot_vec3_u32(global1.c.a.zzw, vec3<u32>(0u, 1u, u_input.c)) >> (~4294967295u % 32u), 44132u, ~(~48087u), var_0.e.a.x & 16070u)) << (_wgslsmith_clamp_u32(4294967295u, 8790u, 0u << (_wgslsmith_sub_u32(~global1.c.a.x, 0u) % 32u)) % 32u);
    global4 = ~firstTrailingBit(u_input.a);
    var var_3 = global1.c.b.yz;
    return !select(arg_0.xxz, select(vec3<bool>(!var_0.c.b.x, global1.c.b.x | global0.a, any(vec3<bool>(true, true, true))), var_0.b.b, select(!vec3<bool>(arg_2, var_0.b.b.x, false), vec3<bool>(true, var_0.b.b.x, global1.c.b.x), true)), !global1.c.b);
}

fn func_2(arg_0: u32) -> Struct_4 {
    global1 = Struct_3(global1.a, u_input.b, Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(global2[_wgslsmith_index_u32(1u, 12u)]), reverseBits(global2[_wgslsmith_index_u32(18559u, 12u)] & vec4<u32>(arg_0, 29290u, arg_0, 4294967295u))), !func_3(global3[_wgslsmith_index_u32(0u << (1u % 32u), 29u)], global1.a.x, false), -global1.c.c));
    let var_0 = vec3<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(abs(i32(-1i) * -1i), countOneBits(u_input.b.x)), -2147483647i);
    let var_1 = Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, ~101930u), ~85260u << (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.d, u_input.d, 5117u), global2[_wgslsmith_index_u32(global1.c.a.x, 12u)]) % 32u), u_input.d, abs(global1.c.a.x)), global2[_wgslsmith_index_u32(3261u, 12u)]), func_3(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~abs(u_input.c), ~23989u, 0u), 29u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -254f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.a.x))) == _wgslsmith_f_op_f32(min(-1804f, _wgslsmith_f_op_f32(floor(-216f))))), global1.c.c);
    var var_2 = true;
    var var_3 = _wgslsmith_sub_i32(u_input.b.x, global1.c.c.x);
    return Struct_4(var_1.b.x, max(_wgslsmith_div_vec3_i32(var_1.c.zxx, global1.c.c.xyw), var_1.c.zxz));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: u32, arg_3: Struct_4) -> Struct_1 {
    global1 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-878f, global1.a.x)), _wgslsmith_f_op_f32(trunc(global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + global1.a.x) * global1.a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-3325f)) + _wgslsmith_f_op_f32(-global1.a.x)))), -vec2<i32>(~46704i >> (_wgslsmith_mult_u32(u_input.d, global1.c.a.x) % 32u), arg_0.x ^ func_2(4294967295u).b.x), Struct_1(vec4<u32>(u_input.d, ~(~0u), global1.c.a.x, global1.c.a.x), select(!(!vec3<bool>(true, global0.a, arg_3.a)), global1.c.b, true), global1.c.c));
    let var_0 = global2[_wgslsmith_index_u32(1u, 12u)];
    global2 = array<vec4<u32>, 12>();
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(global1.c.a.x, arg_2 | 57541u, abs(arg_2)), 49795u), 12u)], _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, var_0.x, 0u, global1.c.a.x), _wgslsmith_mod_vec4_u32(global1.c.a, vec4<u32>(arg_2, 4294967295u, 30680u, 1u)), abs(global1.c.a)), firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(82433u, arg_2, 26296u, 0u), global2[_wgslsmith_index_u32(1u, 12u)]))), countOneBits(global2[_wgslsmith_index_u32(4294967295u, 12u)]) << (_wgslsmith_div_vec4_u32(abs(vec4<u32>(12615u, 0u, u_input.e.x, 4294967295u)), ~vec4<u32>(u_input.d, u_input.e.x, var_0.x, 0u)) % vec4<u32>(32u))), global1.c.b, global1.c.c);
    let var_2 = arg_3;
    return Struct_1(~(~(abs(vec4<u32>(21050u, 2974u, 25076u, 58453u)) | (var_1.a << (vec4<u32>(u_input.c, 64281u, global1.c.a.x, u_input.c) % vec4<u32>(32u))))), !(!global1.c.b), global1.c.c);
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_2 {
    global2 = array<vec4<u32>, 12>();
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) + _wgslsmith_f_op_f32(trunc(-368f))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(892f, global1.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.a.x))), global1.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-137f, global1.a.x, -261f, global1.a.x), _wgslsmith_f_op_vec4_f32(-global1.a), global3[_wgslsmith_index_u32(select(global1.c.a.x, 90597u, false), 29u)]))), global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.e.x, _wgslsmith_mult_u32(firstLeadingBit(arg_2.a.x), ~37574u)), 29u)]))));
    let var_1 = Struct_4(true, _wgslsmith_mult_vec3_i32(max(arg_2.c.xxz, _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(global0.b, vec3<i32>(2147483647i, 2147483647i, u_input.a)), global1.c.c.wzx)), firstTrailingBit(_wgslsmith_div_vec3_i32(~vec3<i32>(u_input.a, -17199i, 26787i), vec3<i32>(arg_0, global1.c.c.x, -1i)))));
    let var_2 = _wgslsmith_mult_vec3_u32(firstTrailingBit(abs(global1.c.a.zxz)), min(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c.a.x, 15725u, 4294967295u, arg_1.a.x), vec4<u32>(35186u, arg_2.a.x, 0u, u_input.c))), vec3<u32>(~global1.c.a.x, abs(arg_2.a.x), 38794u)), _wgslsmith_div_vec3_u32(arg_2.a.yzz, _wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(21132u, 10829u, arg_1.a.x)), arg_2.a.xyz))));
    return Struct_2(!(!global3[_wgslsmith_index_u32(~(7530u >> (u_input.e.x % 32u)), 29u)]), func_4(~(~vec4<i32>(-13348i, 0i, global1.b.x, var_1.b.x) ^ vec4<i32>(global0.b.x, 31803i, u_input.a, global0.b.x)), func_2(var_2.x), arg_1.a.x, func_2(~max(var_2.x, 44124u))), func_4(arg_1.c, var_1, ~(~global1.c.a.x >> (firstLeadingBit(0u) % 32u)), func_2(select(45979u, ~39715u, true))), ~(~(~vec2<u32>(u_input.d, 7614u))), func_4(vec4<i32>(~arg_2.c.x, ~(~global1.c.c.x), i32(-1i) * -40679i, -(~0i)), func_2(abs(_wgslsmith_sub_u32(0u, global1.c.a.x))), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(10307u, 4294967295u, 0u) ^ arg_2.a.zxx), arg_2.a.zyw), var_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = global1.c;
    let var_2 = func_5(~_wgslsmith_clamp_i32(global1.c.c.x, -26436i, reverseBits(u_input.a)), global1.c, func_4(select(~countOneBits(vec4<i32>(var_1.c.x, 2147483647i, global1.c.c.x, 5704i)), vec4<i32>(reverseBits(var_1.c.x), min(var_1.c.x, 2147483647i), u_input.a << (u_input.e.x % 32u), func_1(Struct_2(global3[_wgslsmith_index_u32(u_input.d, 29u)], Struct_1(vec4<u32>(u_input.d, 1u, 4294967295u, u_input.d), var_1.b, var_1.c), global1.c, vec2<u32>(17234u, global1.c.a.x), Struct_1(vec4<u32>(1u, u_input.c, u_input.c, 4294967295u), vec3<bool>(true, var_1.b.x, true), vec4<i32>(1i, global1.c.c.x, u_input.b.x, 34160i))), -41395i)), vec4<bool>(false, var_1.b.x, true, false & var_1.b.x)), func_2(~(u_input.e.x >> (4294967295u % 32u))), ~u_input.c, func_2(~var_1.a.x)));
    global0 = func_2(global1.c.a.x);
    global3 = array<vec4<bool>, 29>();
    let var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(1535f)), _wgslsmith_f_op_f32(var_0 * global1.a.x), _wgslsmith_f_op_f32(-615f * 328f), 1131f)))), global0.b.yx, var_2.c);
    global4 = ~min(-11686i, ~_wgslsmith_mult_i32(-u_input.a, 20029i));
    let var_4 = global0.a & false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-819f, var_3.a.x))))));
}

