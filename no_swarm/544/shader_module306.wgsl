struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec4<bool>,
    d: Struct_3,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1004f;

var<private> global1: array<bool, 13> = array<bool, 13>(true, true, true, true, false, false, true, false, false, true, false, true, true);

var<private> global2: vec4<bool> = vec4<bool>(true, true, true, false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_5, arg_1: bool) -> f32 {
    let var_0 = Struct_3(select(_wgslsmith_clamp_vec3_i32(~u_input.c.wxy, vec3<i32>(2147483647i, u_input.d, arg_0.a.c) | vec3<i32>(arg_0.a.c, -10444i, u_input.e), max(select(vec3<i32>(arg_0.a.c, 39815i, u_input.e), vec3<i32>(u_input.a, 0i, 0i), false), arg_0.d.a >> (vec3<u32>(u_input.b.x, 47303u, arg_0.e.x) % vec3<u32>(32u)))), arg_0.d.d, arg_0.c.zwy), arg_0.a.b, -1i, -_wgslsmith_sub_vec3_i32(select(arg_0.d.a, -vec3<i32>(6644i, 42778i, arg_0.a.c), true && global2.x), vec3<i32>(-u_input.e, 1i, -17253i)));
    var var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_mod_u32(u_input.b.x, min(~arg_0.e.x, select(0u, arg_0.e.x, false))), 26024u));
    let var_2 = !select(!select(!vec2<bool>(true, arg_0.a.a), global2.zz, arg_1), vec2<bool>((u_input.d > -2147483647i) & true, all(!arg_0.c)), !select(vec2<bool>(global2.x, arg_0.c.x), vec2<bool>(global2.x, false), any(vec3<bool>(false, false, false))));
    var var_3 = arg_0.c;
    global2 = vec4<bool>(select(var_3.x, all(arg_0.c.yzw), (26479u == ~u_input.b.x) & all(vec3<bool>(false, true, false))), select(all(arg_0.c), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-1062f - var_0.b.a.x))) < arg_0.d.b.a.x, ~(~var_1.x) <= (u_input.b.x >> (11004u % 32u))), true, all(arg_0.c));
    return arg_0.d.b.a.x;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_5, arg_3: vec2<i32>) -> f32 {
    global1 = array<bool, 13>();
    var var_0 = arg_1.b;
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    global1 = array<bool, 13>();
    return -1483f;
}

fn func_2() -> Struct_3 {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-502f - _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_3(Struct_5(Struct_4(true, Struct_1(vec2<f32>(278f, -2078f)), u_input.c.x), Struct_4(global1[_wgslsmith_index_u32(1877u, 13u)], Struct_1(vec2<f32>(790f, 867f)), u_input.c.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], true, global2.x, global2.x), Struct_3(u_input.c.yzw, Struct_1(vec2<f32>(121f, -937f)), u_input.d, vec3<i32>(2147483647i, 0i, u_input.a)), u_input.b), true)), Struct_3(countOneBits(u_input.c.zwz), Struct_1(vec2<f32>(-2621f, -344f)), _wgslsmith_add_i32(u_input.d, u_input.c.x), vec3<i32>(u_input.d, -1i, u_input.e)), Struct_5(Struct_4(false, Struct_1(vec2<f32>(-2336f, -202f)), u_input.d), Struct_4(global1[_wgslsmith_index_u32(u_input.b.x, 13u)], Struct_1(vec2<f32>(-1000f, -469f)), 2147483647i), select(vec4<bool>(global2.x, global2.x, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], global2.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 13u)], global1[_wgslsmith_index_u32(4294967295u, 13u)], false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(u_input.b.x, 13u)], false)), Struct_3(u_input.c.wyw, Struct_1(vec2<f32>(-109f, 799f)), -2147483647i, vec3<i32>(u_input.e, 2147483647i, 49504i)), firstTrailingBit(vec2<u32>(25484u, u_input.b.x))), countOneBits(vec2<i32>(u_input.e, u_input.a) & u_input.c.zz)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-552f * -134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-320f)) + _wgslsmith_f_op_f32(-1260f * 2326f)))), 1f);
    global1 = array<bool, 13>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.zyw - vec3<f32>(var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(329f)), global2.x)), 1386f)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -936f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - 1242f) - var_0.x) + var_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -2601f), _wgslsmith_div_f32(1000f, 280f))), var_0.x))));
    var var_2 = 1u;
    global1 = array<bool, 13>();
    return Struct_3(reverseBits(vec3<i32>(max(abs(16856i), i32(-1i) * -12489i), -(~10791i), firstLeadingBit(_wgslsmith_div_i32(u_input.c.x, -24472i)))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, var_1.x))) + _wgslsmith_f_op_vec2_f32(-var_0.yw)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1682f)))), _wgslsmith_dot_vec4_i32(u_input.c, abs(min(vec4<i32>(-2147483647i, 27283i, 1i, u_input.a), -vec4<i32>(u_input.d, u_input.d, u_input.e, -2147483647i)))), _wgslsmith_mult_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-10120i, u_input.d, u_input.a) ^ u_input.c.zww, select(u_input.c.zzz, u_input.c.xyw, global2.wyz)), vec3<i32>(~(-u_input.c.x), -14090i, u_input.a)));
}

fn func_5(arg_0: Struct_3) -> i32 {
    global0 = -462f;
    global0 = 1000f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1466f))));
    var var_0 = Struct_4(global1[_wgslsmith_index_u32((~4294967295u >> ((u_input.b.x << (u_input.b.x % 32u)) % 32u)) | u_input.b.x, 13u)] || false, func_2().b, 1i >> (~(u_input.b.x << (4294967295u % 32u)) % 32u));
    let var_1 = 1248f;
    return -u_input.a;
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -407f);
    let var_0 = _wgslsmith_sub_vec3_u32(~((~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) | ~vec3<u32>(8581u, u_input.b.x, u_input.b.x)) & ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~(~firstTrailingBit(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) << (vec3<u32>(u_input.b.x, 17277u, u_input.b.x) % vec3<u32>(32u)))));
    var var_1 = (~u_input.a | -17218i) ^ _wgslsmith_div_i32(func_5(func_2()) ^ 31509i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0.x, -2147483647i), _wgslsmith_sub_i32(-34485i, 84267i)), ~vec2<i32>(-39108i, u_input.c.x) << (~u_input.b % vec2<u32>(32u))));
    var var_2 = Struct_4(false, func_2().b, 5433i);
    let var_3 = var_2.a;
    return 952f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(max(u_input.c.zxw, u_input.c.xxx)))));
    var var_0 = _wgslsmith_mod_u32(27952u, u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(283f, 2106f, 1000f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1115f, 387f, 460f), vec3<f32>(1000f, 682f, 291f)))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -270f), -1328f, -727f)))));
    var var_2 = ~(~vec2<u32>(4294967295u, min(5165u, u_input.b.x))) ^ abs(~u_input.b);
    var_2 = reverseBits(firstTrailingBit(~vec2<u32>(~4294967295u, var_2.x)));
    let var_3 = !(!select(vec2<bool>(any(vec3<bool>(false, global2.x, true)), true), global2.yw, true));
    var var_4 = func_2();
    var_2 = ~vec2<u32>(firstLeadingBit(var_2.x), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1000f, var_4.b.a.x, var_4.b.a.x, var_1.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1526f, var_1.x, 383f, -664f), vec4<f32>(var_1.x, var_4.b.a.x, -811f, 138f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b.a.x, -456f, 1498f, var_4.b.a.x)))))), _wgslsmith_div_vec2_f32(vec2<f32>(-446f, 1284f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.xy * _wgslsmith_f_op_vec2_f32(-var_1.yy)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_1))), vec3<f32>(_wgslsmith_div_f32(var_4.b.a.x, 260f), var_4.b.a.x, _wgslsmith_f_op_f32(-var_4.b.a.x)))) - _wgslsmith_f_op_vec3_f32(-var_1)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(func_1(var_4.d))), Struct_3(u_input.c.yyw, var_4.b, -var_4.c, u_input.c.zxy >> (~vec3<u32>(5106u, var_2.x, u_input.b.x) % vec3<u32>(32u))), Struct_5(Struct_4(any(global2.zz), func_2().b, select(1i, 2147483647i, true)), Struct_4(true, Struct_1(var_1.yx), func_5(Struct_3(var_4.a, Struct_1(vec2<f32>(var_1.x, var_1.x)), -9289i, var_4.d))), !(!vec4<bool>(true, true, var_3.x, true)), func_2(), u_input.b), func_2().a.xz)), var_2.x);
}

