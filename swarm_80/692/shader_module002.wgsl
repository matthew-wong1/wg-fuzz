struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: f32,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: vec2<i32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 32>;

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> global3: Struct_5 = Struct_5(28973i, true, Struct_4(vec2<f32>(144f, 1254f), vec3<bool>(true, false, true), vec4<f32>(-233f, -2018f, -669f, 187f), vec4<bool>(false, false, false, true), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648))));

var<private> global4: u32;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = false;
    return select(select(vec4<bool>(!arg_1.x, (global2.b.d.x >= -2147483647i) && global3.b, global3.c.d.x, true), !global3.c.d, global2.a.x), vec4<bool>(any(select(arg_1.yz, vec2<bool>(global3.c.b.x, false), !global2.c)), arg_0.b.x, true, true), arg_1);
}

fn func_2() -> Struct_4 {
    global1 = false;
    let var_0 = global2.b.e.x;
    var var_1 = Struct_3(!vec2<bool>(true & any(global3.c.d), all(func_3(global3.c, vec4<bool>(true, true, global2.c, global2.b.a.x), vec4<f32>(1000f, 240f, 488f, global3.c.a.x)))), Struct_2(select(func_3(global3.c, global3.c.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.b.d, global3.c.c.x, -1003f, global2.b.b.d) + global3.c.c)).wxy, vec3<bool>(any(vec4<bool>(false, global3.b, true, false)), global2.b.b.c < global2.b.b.c, global2.b.b.d <= global2.b.b.d), all(vec2<bool>(true, global2.c))), Struct_1(~u_input.b.x, abs(-vec3<i32>(u_input.d.x, -11163i, global3.c.e.x)), _wgslsmith_f_op_f32(sign(1616f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-840f + global3.c.c.x) * _wgslsmith_f_op_f32(-global2.b.b.d)), !func_3(global3.c, vec4<bool>(false, true, global2.a.x, false), global3.c.c).zxz), ~0i, global3.c.e, ~global2.b.e >> (countOneBits(global0[_wgslsmith_index_u32(u_input.a.x, 32u)] << (vec4<u32>(72787u, u_input.c, global2.b.e.x, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), global3.b, global3.c.e.zz);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(global3.c.c.xwx))));
    global4 = _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.e.x, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_1.b.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(26908u, 0u), u_input.a.xy)), ~select(global2.b.e.x, u_input.c, false))), global2.b.e.xx);
    return Struct_4(vec2<f32>(var_1.b.b.d, global3.c.a.x), select(var_1.b.a, vec3<bool>(true, true, true), vec3<bool>(all(!vec2<bool>(var_1.b.a.x, var_1.a.x)), true, var_1.d.x == global3.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.c.c.x), -248f, _wgslsmith_f_op_f32(-var_1.b.b.c), 1676f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global3.c.c * global3.c.c))) + global3.c.c), global3.c.d, ((global2.b.d | -vec4<i32>(global3.c.e.x, global3.a, var_1.d.x, global2.d.x)) >> (firstLeadingBit(vec4<u32>(33921u, 12100u, u_input.c, 18027u)) % vec4<u32>(32u))) ^ _wgslsmith_sub_vec4_i32(vec4<i32>(var_1.d.x >> (global2.b.e.x % 32u), reverseBits(14135i), ~26220i, i32(-1i) * -52311i), ~var_1.b.d));
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec2<bool>) -> Struct_2 {
    var var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_0.c.a.x, global3.c.a.x))))), arg_0.c.c.yz))), arg_0.c.d.yxz, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global3.c.c.x, 348f, arg_0.c.a.x, global3.c.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.b.c, 1085f, -260f, -949f) - vec4<f32>(arg_0.c.c.x, global2.b.b.c, -972f, arg_0.c.a.x)))))), arg_0.c.d, -global3.c.e);
    var var_1 = u_input.d.zx;
    return Struct_2(global3.c.b, Struct_1(~func_2().e.x, ((var_0.e.xzy << (u_input.a % vec3<u32>(32u))) & firstTrailingBit(var_0.e.zzx)) << (reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 0u, 3961u), vec3<u32>(global2.b.e.x, u_input.c, 4294967295u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 1324f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.b.d))) * _wgslsmith_f_op_f32(-global2.b.b.d)), vec3<bool>(any(!vec4<bool>(global3.c.b.x, true, true, true)), true, any(vec2<bool>(global3.b, var_0.b.x)) && true)), var_1.x, _wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -(vec4<i32>(50000i, -1i, 2147483647i, var_0.e.x) << (global2.b.e % vec4<u32>(32u))), ~vec4<i32>(u_input.b.x, u_input.d.x, 2147483647i, -2147483647i) & max(vec4<i32>(global2.b.d.x, 0i, 2147483647i, global3.a), -global3.c.e)), vec4<u32>(global2.b.e.x, 6430u, 4294967295u, abs(~(global2.b.e.x & 35211u))));
}

fn func_1(arg_0: vec4<bool>, arg_1: i32, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = func_4(Struct_5(arg_1, all(global3.c.d), func_2()), ~(~1i), vec2<bool>(-2430f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.c.c.x - global2.b.b.c) - -869f), false));
    let var_1 = 1046f;
    global3 = Struct_5(2147483647i, func_4(Struct_5(arg_2.x, var_0.b.e.x, Struct_4(global3.c.a, global2.b.a, global3.c.c, arg_0, global3.c.e)), firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.d.zz, vec2<i32>(-2147483647i, -3947i))), !global2.b.a.xz).e.x <= var_0.e.x, global3.c);
    var var_2 = Struct_3(!func_3(Struct_4(global3.c.a, vec3<bool>(false, false, var_0.a.x), func_2().c, vec4<bool>(true, true, arg_0.x, false), min(vec4<i32>(-28756i, -1i, -44558i, -2147483647i), vec4<i32>(59265i, -1i, var_0.d.x, var_0.c))), vec4<bool>(true, !arg_0.x, any(vec4<bool>(true, true, var_0.b.e.x, true)), true), _wgslsmith_f_op_vec4_f32(-global3.c.c)).yx, func_4(Struct_5(-arg_2.x, all(arg_0.zx), Struct_4(vec2<f32>(344f, -1000f), global3.c.b, _wgslsmith_f_op_vec4_f32(global3.c.c - vec4<f32>(332f, 1468f, -601f, 156f)), global3.c.d, min(vec4<i32>(arg_2.x, arg_2.x, arg_2.x, arg_1), vec4<i32>(-2147483647i, arg_1, global3.a, var_0.c)))), -16865i, !select(global2.b.b.e.zx, vec2<bool>(arg_0.x, true), func_4(Struct_5(-11572i, global3.b, Struct_4(global3.c.c.xx, global2.b.b.e, vec4<f32>(-1000f, var_1, 327f, var_0.b.c), arg_0, var_0.d)), arg_2.x, vec2<bool>(var_0.b.e.x, arg_0.x)).b.e.x)), 1u < _wgslsmith_div_u32(~countOneBits(var_0.e.x), ~(4294967295u & u_input.e)), abs(_wgslsmith_div_vec2_i32(var_0.d.wz, vec2<i32>(-25096i, ~var_0.d.x))));
    let var_3 = all(vec3<bool>(11324u >= _wgslsmith_dot_vec2_u32(vec2<u32>(79654u, u_input.c), reverseBits(vec2<u32>(u_input.e, u_input.e))), var_2.b.a.x, !select(false, global3.c.b.x, global3.c.d.x) && (global2.b.e.x != abs(global2.b.e.x))));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(global2.a, Struct_2(!global3.c.b, Struct_1(-11130i, vec3<i32>(-u_input.b.x, -global2.d.x, u_input.d.x), -312f, -895f, select(!vec3<bool>(global3.c.b.x, global2.b.a.x, global2.a.x), vec3<bool>(true, global2.b.a.x, global3.c.d.x), global3.c.d.x)), ~(~_wgslsmith_dot_vec4_i32(global2.b.d, vec4<i32>(global3.a, 6065i, global2.b.b.b.x, global2.d.x))), func_1(vec4<bool>(all(vec3<bool>(true, global2.c, global2.a.x)), global2.c, global3.c.d.x, global3.b), global2.b.c, reverseBits(~global2.b.d.zxy)), ~vec4<u32>(1u, abs(global2.b.e.x), 82818u, countOneBits(global2.b.e.x))), global3.c.b.x, global2.d);
    var var_0 = Struct_1(-2147483647i, _wgslsmith_div_vec3_i32(vec3<i32>(20941i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global3.c.e.x), vec2<i32>(0i, global2.d.x)), u_input.b.x ^ _wgslsmith_add_i32(u_input.d.x, 2147483647i)), u_input.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.b.c)) - -239f))), 990f, !(!func_2().b));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(762f)) - var_0.d)), _wgslsmith_f_op_f32(abs(var_0.d)))), 942f, _wgslsmith_f_op_f32(-294f + -483f), _wgslsmith_f_op_f32(select(global3.c.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.b.d) * global3.c.a.x), func_2().d.x)));
    var var_2 = global3.a;
    global3 = Struct_5(_wgslsmith_div_i32(~(-2147483647i >> (abs(global2.b.e.x) % 32u)), 1i), true, func_2());
    let var_3 = Struct_5(-1i, !(!func_3(global3.c, global3.c.d, global3.c.c).x) | false, Struct_4(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-453f, 154f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(952f + -375f))), func_3(Struct_4(global3.c.c.yx, !vec3<bool>(global3.b, true, false), global3.c.c, !global3.c.d, vec4<i32>(-1i, -10396i, -2147483647i, global2.d.x) >> (vec4<u32>(38424u, 0u, 4294967295u, u_input.e) % vec4<u32>(32u))), !vec4<bool>(true, global3.c.b.x, var_0.e.x, global2.b.b.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.c.c))).xwx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(752f * global3.c.c.x), 316f, var_1.x, global3.c.c.x)), global3.c.d, abs(-global3.c.e ^ _wgslsmith_mod_vec4_i32(vec4<i32>(30469i, 2334i, 1i, 9838i), global3.c.e))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(509f, global2.b.b.d))), global2.b.b.c, 41232u, vec4<f32>(func_2().c.x, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.a.x)) + 647f), var_1.x), ~reverseBits(_wgslsmith_mult_u32(1u, _wgslsmith_sub_u32(u_input.c, u_input.e))));
}

