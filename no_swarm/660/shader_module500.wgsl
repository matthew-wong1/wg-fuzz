struct Struct_1 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
    d: vec3<u32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: vec2<f32> = vec2<f32>(477f, -775f);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<i32>) -> vec2<bool> {
    let var_0 = arg_0.c;
    let var_1 = reverseBits(vec4<i32>(-2147483647i, -(~abs(arg_2.x)), -_wgslsmith_mult_i32(reverseBits(arg_2.x), arg_2.x), -1i));
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(29539u, 32u)], _wgslsmith_dot_vec2_u32((~var_0.d.yy << (vec2<u32>(arg_0.c.e.x, 0u) % vec2<u32>(32u))) | ~var_0.e, abs(~vec2<u32>(arg_0.b, 122355u) ^ vec2<u32>(u_input.a.x, 0u))), Struct_1(select(vec4<bool>(var_0.b.x & var_0.a.x, any(vec4<bool>(var_0.b.x, false, arg_0.a.c, arg_0.a.b.x)), !var_0.a.x, true), !vec4<bool>(arg_0.d, false, arg_0.a.b.x, true), arg_0.a.a), select(arg_0.c.a.wx, vec2<bool>(false, var_0.a.x), !any(arg_0.a.a)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -342f), _wgslsmith_f_op_f32(global1.x + global1.x))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(arg_1, 0u, 4294967295u) >> (var_0.d % vec3<u32>(32u))), vec3<u32>(4294967295u & var_0.d.x, _wgslsmith_add_u32(0u, var_0.e.x), 4294967295u)), vec2<u32>(arg_0.c.e.x, _wgslsmith_div_u32(15237u, var_0.d.x)) | select(~vec2<u32>(var_0.e.x, 0u), ~u_input.a, vec2<bool>(true, true))), all(!vec3<bool>(true || arg_0.a.b.x, !arg_0.a.a.x, true != var_0.a.x)));
    global1 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.x, _wgslsmith_f_op_f32(floor(423f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1047f) - vec2<f32>(430f, 979f))))), vec2<f32>(global1.x, _wgslsmith_f_op_f32(sign(global1.x)))))));
    let var_3 = Struct_2(Struct_1(select(vec4<bool>(!arg_0.c.a.x, any(arg_0.c.a.yy), false, !arg_0.a.c), !vec4<bool>(var_2.c.c, var_2.d, true, true), any(select(vec3<bool>(false, arg_0.a.b.x, var_2.d), var_2.a.a.wyy, var_2.a.a.wyy))), vec2<bool>(true, arg_0.d && var_2.d), all(select(vec3<bool>(var_2.c.a.x, var_2.d, false), select(arg_0.c.a.yxx, arg_0.a.a.wzw, true), arg_2.x <= arg_2.x)), var_2.a.d, var_0.d.xx), u_input.b.x, global0[_wgslsmith_index_u32(~u_input.b.x, 32u)], true);
    return var_2.c.a.yw;
}

fn func_2() -> Struct_2 {
    global0 = array<Struct_1, 32>();
    var var_0 = !all(select(select(func_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec2<bool>(true, true), false, u_input.b.wwy, u_input.b.zw), 24795u, global0[_wgslsmith_index_u32(1u, 32u)], true), 36559u, vec4<i32>(1i, -1i, 30494i, -21460i)), vec2<bool>(true, true), true), vec2<bool>(all(vec3<bool>(true, false, false)), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false))));
    var var_1 = Struct_2(Struct_1(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec2<bool>(true, global1.x > _wgslsmith_f_op_f32(366f + 732f)), true, firstLeadingBit(vec3<u32>(u_input.b.x, u_input.a.x & u_input.a.x, 34106u)), ~u_input.b.zx), u_input.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 32u)], global1.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -990f)))));
    global0 = array<Struct_1, 32>();
    let var_2 = countOneBits(select(_wgslsmith_div_u32(_wgslsmith_mult_u32(countOneBits(var_1.a.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.a.e.x, u_input.b.x, var_1.a.d.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 54319u, 30201u))), ~94793u), ~(9051u ^ u_input.b.x) << (~var_1.a.d.x % 32u), all(var_1.c.a.wz)));
    return Struct_2(Struct_1(!select(var_1.a.a, vec4<bool>(var_1.c.c, false, var_1.c.a.x, false), !var_1.c.a), !vec2<bool>(all(vec3<bool>(var_1.a.a.x, true, true)), var_1.d), !all(!vec3<bool>(var_1.a.b.x, true, false)), _wgslsmith_mult_vec3_u32(~(~vec3<u32>(4920u, u_input.a.x, var_2)), min(var_1.a.d, ~vec3<u32>(var_2, u_input.a.x, var_2))), vec2<u32>(27639u << (0u % 32u), var_1.a.d.x)), _wgslsmith_div_u32(select(~4294967295u ^ _wgslsmith_add_u32(1u, var_1.b), ~73487u, var_1.d), _wgslsmith_sub_u32(min(var_1.b, var_1.b), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, var_1.a.e.x, u_input.b.x, var_1.a.d.x), vec4<u32>(var_2, u_input.b.x, var_2, 1u), u_input.b), vec4<u32>(0u, u_input.b.x, var_2, var_1.c.e.x)))), Struct_1(var_1.a.a, var_1.c.a.wy, func_3(Struct_2(Struct_1(var_1.c.a, vec2<bool>(var_1.a.b.x, var_1.d), var_1.d, var_1.c.d, vec2<u32>(u_input.b.x, 0u)), ~var_1.b, Struct_1(var_1.a.a, vec2<bool>(true, var_1.a.b.x), true, vec3<u32>(var_2, var_1.b, var_1.c.d.x), var_1.c.e), true), 52495u, _wgslsmith_add_vec4_i32(select(vec4<i32>(-21926i, -1i, 8269i, 22938i), vec4<i32>(-2147483647i, 0i, -4547i, 10092i), true), -vec4<i32>(-13773i, 1i, -1i, -13183i))).x, vec3<u32>(max(1u, ~u_input.b.x), 4294967295u, _wgslsmith_dot_vec3_u32(~var_1.c.d, firstLeadingBit(vec3<u32>(4294967295u, 47705u, 69037u)))), ~var_1.c.e), !var_1.a.a.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    var var_0 = vec2<u32>(7441u, ~1u);
    var var_1 = 44699u;
    let var_2 = (_wgslsmith_sub_u32(var_0.x, countOneBits(_wgslsmith_mult_u32(1u, var_0.x))) | _wgslsmith_dot_vec2_u32(vec2<u32>(43374u, 0u ^ u_input.b.x), ~(u_input.b.yy & u_input.b.zx))) | u_input.b.x;
    let var_3 = true;
    var_0 = ~u_input.b.zz;
    return func_2();
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global1.x, _wgslsmith_f_op_f32(select(-342f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * -1000f), _wgslsmith_f_op_f32(global1.x - 1187f))), arg_0.d)), -1213f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(128f, 1000f), 1000f, 885f)))));
    var var_1 = select(arg_0.a.a.zz, !vec2<bool>(any(!arg_0.a.a.wy), !arg_0.a.b.x), arg_0.a.b.x);
    let var_2 = 17877u;
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, var_0.x), var_0.yz, arg_0.a.a.xw)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -106f))))) + var_0.yy));
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(~76646u, arg_0.b << (func_1(vec3<i32>(-78647i, -1i, 53539i)).c.d.x % 32u), ~(~max(arg_0.b, var_2))), countOneBits(arg_0.c.d));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-840f, _wgslsmith_f_op_f32(select(509f, -519f, true)))) - -377f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1184f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x - var_0.x), var_0.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + 653f), 1090f)));
}

fn func_5(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(arg_2.c.a, arg_2.c.b, !(_wgslsmith_f_op_f32(arg_1.x - -288f) <= -2320f), arg_2.c.d & (arg_2.c.d << (vec3<u32>(arg_0, 23018u, 1u) % vec3<u32>(32u))), select(~vec2<u32>(arg_2.a.d.x, u_input.a.x), ~func_1(vec3<i32>(-2147483647i, -1i, -1i)).c.d.xz, func_3(func_2(), 6745u, vec4<i32>(-20414i, 2147483647i, 20364i, 58501i)))), ~1u, arg_2.c, (arg_0 >> (u_input.b.x % 32u)) >= arg_2.a.d.x);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.x)), -429f)))));
    var_0 = Struct_2(var_0.a, firstTrailingBit(~u_input.b.x) & ~min(~var_0.c.d.x, 24036u), var_0.c, false);
    global0 = array<Struct_1, 32>();
    var var_1 = 1i;
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1786f, -1047f))));
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(select(34911u, select(~u_input.a.x, ~_wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, 42885u), false), true), 32u)], u_input.a.x, Struct_1(vec4<bool>(true, true, true, true), vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), true), false, u_input.b.zzw, vec2<u32>(u_input.b.x, u_input.a.x)), true);
    global1 = vec2<f32>(803f, -1313f);
    var var_1 = vec4<i32>(firstLeadingBit(firstLeadingBit(min(1i, i32(-1i) * -43980i))), _wgslsmith_div_i32(-1i, select(1i << (select(4294967295u, u_input.b.x, var_0.d) % 32u), 1i, var_0.d)), ~37571i, 40931i);
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1602f)) * global1.x), global1.x));
    let var_3 = func_5(~_wgslsmith_clamp_u32(firstTrailingBit(countOneBits(var_0.c.d.x)), var_0.a.e.x, var_0.c.d.x), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2 + global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(func_1(var_1.zww))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1153f, var_2))))), func_2());
    var var_4 = Struct_1(select(func_5(firstTrailingBit(4294967295u), vec2<f32>(var_2, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_2(Struct_1(vec4<bool>(true, var_0.a.b.x, true, var_3.c), var_3.b, true, var_3.d, vec2<u32>(var_0.c.d.x, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(106623u, u_input.a.x), vec2<u32>(15038u, 4294967295u)), global0[_wgslsmith_index_u32(~var_3.d.x, 32u)], false)).a, !vec4<bool>(var_0.c.a.x, all(var_0.c.b), var_2 != global1.x, var_0.c.a.x || var_0.a.a.x), any(!vec2<bool>(var_0.d, true))), func_3(func_2(), select(46154u, abs(1u), false), vec4<i32>(1i, var_1.x, var_1.x, -1i)), var_3.a.x, _wgslsmith_mult_vec3_u32(vec3<u32>(var_3.d.x, ~(var_3.e.x & u_input.a.x), 0u), abs(~var_3.d)), ~_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.xx, vec2<u32>(var_3.d.x, 30293u)), vec2<u32>(~56935u, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(-1483f, 1403f, var_4.d.x);
}

