struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13> = array<f32, 13>(1015f, -137f, 864f, 401f, -860f, -478f, 801f, -970f, 529f, -822f, -162f, 281f, -1000f);

var<private> global1: Struct_3;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: vec2<f32>) -> f32 {
    var var_0 = Struct_4(global1.a.c.x, 6103i);
    var var_1 = Struct_1(global1.a.b, ~72515u, min(u_input.b, abs(0u)));
    let var_2 = ~abs(countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, 1u, 0u) & vec4<u32>(0u, 66516u, var_1.b, 12951u), vec4<u32>(0u, 1u, 101938u, 42287u) << (vec4<u32>(40828u, global1.a.d.x, 39536u, u_input.b) % vec4<u32>(32u)), vec4<u32>(var_1.c, var_1.c, 20046u, 57418u))));
    var var_3 = global1.a.c.xx;
    let var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.a.b.x + global1.a.b.x), _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(global1.a.d.x, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])), _wgslsmith_f_op_f32(-global1.a.b.x), _wgslsmith_div_f32(arg_2.x, global1.a.b.x)) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(var_1.a, vec4<f32>(-974f, arg_2.x, var_1.a.x, arg_2.x), vec4<bool>(true, var_0.a, arg_0.a, true)))))))), var_2.x | (~var_2.x << (~65893u % 32u)), 4294967295u);
    return _wgslsmith_div_f32(var_4.a.x, _wgslsmith_f_op_f32(var_4.a.x + -659f));
}

fn func_2() -> Struct_2 {
    global1 = Struct_3(Struct_2(-vec4<i32>(~u_input.c.x, u_input.c.x, _wgslsmith_add_i32(u_input.c.x, 1625i), u_input.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1000f, 2227f, global0[_wgslsmith_index_u32(47141u, 13u)], 1590f))), global1.a.b))), global1.a.c, min(~(~global1.a.d), select(firstLeadingBit(vec3<u32>(38101u, 18893u, u_input.b)), global1.a.d, true))));
    var var_0 = global1.a.b.x;
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1150f + 2291f))))) - _wgslsmith_f_op_f32(func_3(Struct_4(global1.a.c.x, ~(~u_input.c.x)), -2147483647i, _wgslsmith_f_op_vec2_f32(-global1.a.b.zw))));
    var var_1 = global1.a.d.x;
    let var_2 = Struct_4(!((2147483647i == _wgslsmith_sub_i32(0i, global1.a.a.x)) & global1.a.c.x), -46496i);
    return global1.a;
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_3(func_2());
    var var_1 = func_2();
    global0 = array<f32, 13>();
    var var_2 = arg_0.a.x >> (~4955u % 32u);
    global0 = array<f32, 13>();
    return -1350f;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>, arg_2: f32) -> Struct_4 {
    global1 = Struct_3(Struct_2(select(vec4<i32>(-39394i, ~(-78451i), firstLeadingBit(2147483647i), -45810i), vec4<i32>(reverseBits(global1.a.a.x), u_input.c.x, 0i, global1.a.a.x), any(vec4<bool>(global1.a.c.x, global1.a.c.x, true, global1.a.c.x))), global1.a.b, !func_2().c, global1.a.d));
    var var_0 = _wgslsmith_f_op_f32(max(965f, -1004f));
    var var_1 = global1.a.c.x;
    return Struct_4(all(select(vec4<bool>(true, any(vec3<bool>(global1.a.c.x, false, false)), any(global1.a.c.wzx), !global1.a.c.x), !global1.a.c, global1.a.c.x)), ~14958i);
}

fn func_6(arg_0: Struct_4) -> Struct_3 {
    let var_0 = arg_0;
    global1 = Struct_3(func_2());
    var var_1 = var_0;
    var var_2 = 2147483647i;
    let var_3 = Struct_2(u_input.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-226f, 353f, global0[_wgslsmith_index_u32(u_input.b, 13u)], global0[_wgslsmith_index_u32(1u, 13u)])) * vec4<f32>(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(1u, 13u)], 791f)), _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(global1.a.d.x, 13u)])), _wgslsmith_div_f32(-711f, global0[_wgslsmith_index_u32(u_input.b, 13u)]), global0[_wgslsmith_index_u32(~2645u, 13u)]))), vec4<bool>(true, all(func_2().c.wwy), true, false), firstTrailingBit(firstLeadingBit(~countOneBits(vec3<u32>(global1.a.d.x, 4294967295u, global1.a.d.x)))));
    return Struct_3(Struct_2(func_2().a << (vec4<u32>(~global1.a.d.x, 0u, 21870u, ~var_3.d.x) % vec4<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(func_4(func_2())), global0[_wgslsmith_index_u32(var_3.d.x, 13u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global1.a.b.x, global1.a.b.x)) + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(global1.a.d.x, 13u)] * var_3.b.x)), global0[_wgslsmith_index_u32(var_3.d.x, 13u)]), global1.a.c, var_3.d >> (~max(vec3<u32>(4294967295u, 4294967295u, u_input.b), vec3<u32>(global1.a.d.x, 0u, u_input.b)) % vec3<u32>(32u))));
}

fn func_1() -> Struct_1 {
    let var_0 = u_input.c.x;
    global1 = func_6(func_5(global1.a.b.x, vec4<i32>(0i, var_0, min(-12170i << (global1.a.d.x % 32u), firstTrailingBit(-23108i)), countOneBits(-global1.a.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2())))));
    var var_1 = Struct_4(((i32(-1i) * -var_0) << (u_input.b % 32u)) == _wgslsmith_dot_vec4_i32(func_2().a, min(global1.a.a, _wgslsmith_mult_vec4_i32(u_input.c, u_input.c))), max(var_0, -_wgslsmith_mod_i32(var_0, _wgslsmith_sub_i32(0i, u_input.c.x))));
    var var_2 = Struct_4(false, -global1.a.a.x);
    var_1 = Struct_4(all(vec3<bool>((var_1.a & false) || false, _wgslsmith_dot_vec2_u32(global1.a.d.zy, vec2<u32>(global1.a.d.x, global1.a.d.x)) >= 72324u, var_1.a)), select(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-u_input.c.ww, -vec2<i32>(2147483647i, 1i)), 5079i), firstLeadingBit(var_1.b) >> (_wgslsmith_dot_vec2_u32(global1.a.d.xx, ~vec2<u32>(0u, u_input.b)) % 32u), global1.a.c.x));
    return Struct_1(global1.a.b, firstLeadingBit(~(~u_input.b)) | max(26316u, u_input.b), 4294967295u);
}

fn func_7(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = func_5(func_2().b.x, arg_2.a, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(0u, u_input.b), 17079u, u_input.b ^ global1.a.d.x, _wgslsmith_clamp_u32(arg_1.c, global1.a.d.x, 18702u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(11169u, global1.a.d.x, arg_1.c, global1.a.d.x), vec4<u32>(arg_1.c, arg_1.b, arg_1.c, arg_2.d.x))) ^ (_wgslsmith_add_u32(global1.a.d.x, arg_1.b | 5808u) << (~67740u % 32u)), 13u)]);
    global1 = func_6(func_5(global1.a.b.x, ~func_6(Struct_4(true, u_input.a)).a.a | reverseBits(vec4<i32>(-2147483647i, global1.a.a.x, -2147483647i, 30214i) ^ arg_2.a), func_2().b.x));
    var var_1 = arg_1;
    let var_2 = var_0.b;
    var var_3 = var_1.b;
    return vec4<u32>(_wgslsmith_div_u32(var_1.b, _wgslsmith_mod_u32(~0u ^ ~u_input.b, global1.a.d.x)), _wgslsmith_add_u32(u_input.b, 4294967295u >> (global1.a.d.x % 32u)), u_input.b, arg_2.d.x ^ abs(_wgslsmith_div_u32(_wgslsmith_add_u32(var_1.b, arg_2.d.x), countOneBits(0u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(select(func_7(_wgslsmith_f_op_f32(615f + global0[_wgslsmith_index_u32(global1.a.d.x, 13u)]), func_1(), global1.a), select(vec4<u32>(0u, u_input.b, u_input.b, 88261u), ~vec4<u32>(global1.a.d.x, 79829u, 37716u, 5683u), global1.a.c.x | false), func_2().c), ~_wgslsmith_div_vec4_u32(vec4<u32>(46704u, global1.a.d.x, global1.a.d.x, u_input.b), func_7(global0[_wgslsmith_index_u32(0u, 13u)], Struct_1(global1.a.b, u_input.b, 57442u), Struct_2(u_input.c, vec4<f32>(-678f, global1.a.b.x, global1.a.b.x, global1.a.b.x), global1.a.c, vec3<u32>(u_input.b, 1u, u_input.b))))) & countOneBits(_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(69526u, 1u, 4294967295u, global1.a.d.x), vec4<u32>(71367u, 0u, 24991u, u_input.b) ^ vec4<u32>(global1.a.d.x, u_input.b, 46437u, 0u)), _wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.b, 31029u, 4294967295u) << (vec4<u32>(7572u, global1.a.d.x, global1.a.d.x, u_input.b) % vec4<u32>(32u)), ~vec4<u32>(4294967295u, 1u, 19909u, u_input.b))));
    var_0 = abs(vec4<u32>(1u, 20072u, func_2().d.x, 4294967295u) | min(~(~vec4<u32>(var_0.x, 33529u, 0u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, var_0.x, var_0.x, global1.a.d.x) << (vec4<u32>(u_input.b, 0u, 1u, var_0.x) % vec4<u32>(32u)), select(vec4<u32>(u_input.b, global1.a.d.x, 1u, 0u), vec4<u32>(global1.a.d.x, 9015u, u_input.b, global1.a.d.x), vec4<bool>(global1.a.c.x, true, global1.a.c.x, false)), ~vec4<u32>(4294967295u, u_input.b, 1u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~global1.a.a.x), -14122i, _wgslsmith_sub_u32(func_6(func_5(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b, 13u)]), -vec4<i32>(-2147483647i, -2876i, global1.a.a.x, -2147483647i), -2495f)).a.d.x, ~(~_wgslsmith_add_u32(var_0.x, 31799u))), _wgslsmith_dot_vec3_u32(func_6(func_5(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(24822u, 13u)]), ~global1.a.a, 1824f)).a.d, _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(~global1.a.d, select(vec3<u32>(global1.a.d.x, 0u, 20510u), vec3<u32>(global1.a.d.x, 0u, global1.a.d.x), global1.a.c.zyx)), vec3<u32>(_wgslsmith_div_u32(2987u, u_input.b), ~u_input.b, ~13535u), vec3<u32>(u_input.b, global1.a.d.x, var_0.x) >> (~var_0.zyw % vec3<u32>(32u)))));
}

