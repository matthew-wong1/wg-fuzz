struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: f32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec3<i32>) -> vec2<f32> {
    let var_0 = vec4<u32>((_wgslsmith_sub_u32(4294967295u, 4294967295u) & _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 73425u, 4294967295u), vec3<u32>(3976u, 1059u, 1u))) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 0u, 1u)) % 32u), ~_wgslsmith_sub_u32(~0u, 4294967295u), ~24634u, 1u) ^ abs(vec4<u32>(38440u, reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(40160u, 9899u, 4294967295u, 4294967295u), vec4<u32>(109936u, 78443u, 54432u, 4294967295u))), _wgslsmith_mult_u32(1u, 98968u), _wgslsmith_div_u32(_wgslsmith_sub_u32(1u, 0u), max(6324u, 92394u))));
    global0 = Struct_1(vec3<bool>(all(!arg_0.a), !any(vec2<bool>(arg_1, arg_0.a.x)), false), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.b))), global0.b.zzw, _wgslsmith_f_op_f32(-global0.b.x));
    var var_1 = arg_0;
    let var_2 = ~firstTrailingBit(_wgslsmith_div_vec3_i32(arg_3, arg_3));
    var var_3 = Struct_2(84943u);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_1.c.zz + vec2<f32>(var_1.c.x, 854f)) + vec2<f32>(var_1.c.x, global0.d))) * arg_0.b.xx));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_2) -> f32 {
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d, arg_1.x, global0.d, global0.c.x), global0.b)) + vec4<f32>(_wgslsmith_f_op_f32(step(global0.d, arg_1.x)), 619f, arg_1.x, _wgslsmith_f_op_f32(floor(282f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(global0.c))), _wgslsmith_f_op_f32(-1220f + -1096f));
    var var_0 = global0.a.x;
    var var_1 = arg_2;
    var var_2 = Struct_1(select(vec3<bool>(global0.a.x, !global0.a.x || select(true, true, true), !(!global0.a.x)), !global0.a, !global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(global0.b - global0.b))))) * vec4<f32>(242f, arg_1.x, -832f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(arg_1.x)))))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -250f), _wgslsmith_f_op_f32(ceil(arg_1.x)), 486f), _wgslsmith_f_op_vec3_f32(-global0.c)), global0.b.xwx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1621f))) > _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(arg_1.x * 726f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1356f * _wgslsmith_div_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_1(global0.a, global0.b, vec3<f32>(arg_1.x, arg_1.x, global0.c.x), -1402f), false, arg_0, vec3<i32>(u_input.a, u_input.a, arg_0))).x, _wgslsmith_div_f32(arg_1.x, arg_1.x))), _wgslsmith_f_op_f32(global0.b.x * 571f)));
    var var_3 = Struct_1(select(!global0.a, select(select(vec3<bool>(var_2.a.x, var_2.a.x, var_2.a.x), !var_2.a, !vec3<bool>(var_2.a.x, true, false)), !(!var_2.a), vec3<bool>(true, false, var_2.a.x == false)), select(!(!var_2.a.x), true, select(2147483647i == u_input.a, true, !global0.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 1232f, 118f, 1000f) * global0.b)), vec4<f32>(1511f, _wgslsmith_f_op_f32(global0.c.x - var_2.d), _wgslsmith_f_op_f32(ceil(1096f)), _wgslsmith_f_op_f32(select(-1000f, var_2.c.x, true)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(global0.c))), _wgslsmith_f_op_f32(floor(var_2.c.x)));
    return _wgslsmith_f_op_f32(step(211f, var_2.c.x));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: vec2<i32>) -> Struct_2 {
    var var_0 = global0.c.x;
    var var_1 = -1i;
    global0 = Struct_1(!vec3<bool>(false, !global0.a.x, ~(-1i) <= -arg_2.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d, global0.d, global0.b.x, 745f))))), global0.b.xzw, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))));
    let var_2 = _wgslsmith_f_op_f32(max(-641f, _wgslsmith_f_op_f32(func_4(~arg_0, _wgslsmith_f_op_vec2_f32(func_3(Struct_1(vec3<bool>(true, true, true), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 874f, 337f, global0.c.x), global0.b), _wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_f32(-global0.c.x)), true, ~(-2147483647i), vec3<i32>(-26179i, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -1i, u_input.a), vec3<i32>(arg_2.x, -1530i, u_input.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.x, 1113i, 2147483647i, 1i), vec4<i32>(u_input.a, 1i, -23103i, arg_0))))), Struct_2(arg_1)))));
    var var_3 = global0.a.yz;
    return Struct_2(1u);
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    var var_0 = func_2(-16672i, 1u, _wgslsmith_add_vec2_i32(select(~vec2<i32>(u_input.a, u_input.a) << ((arg_2 << (arg_2 % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(1i, 14607i), vec2<bool>(any(vec4<bool>(global0.a.x, true, global0.a.x, global0.a.x)), any(global0.a))), select(_wgslsmith_add_vec2_i32(vec2<i32>(47182i, 1540i), vec2<i32>(u_input.a, u_input.a)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(-46306i, u_input.a), vec2<i32>(u_input.a, 11951i), vec2<i32>(u_input.a, 0i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-19181i, -21873i), min(vec2<i32>(1i, u_input.a), vec2<i32>(14245i, u_input.a))), select(select(global0.a.zy, vec2<bool>(false, true), global0.a.xx), !vec2<bool>(global0.a.x, global0.a.x), global0.a.x & global0.a.x))));
    var var_1 = select(select(!select(vec2<bool>(true, false), global0.a.xy, global0.a.x), vec2<bool>((-1093f >= global0.d) && global0.a.x, true), vec2<bool>((77133u << (var_0.a % 32u)) < ~28234u, global0.a.x)), vec2<bool>(true, any(!select(global0.a, vec3<bool>(global0.a.x, true, global0.a.x), global0.a))), global0.a.x & (max(arg_2.x, arg_1) == _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(13061u, 4294967295u, var_0.a)), ~vec3<u32>(1u, 4294967295u, 32027u))));
    var var_2 = global0.b.x;
    var_2 = _wgslsmith_f_op_f32(995f * arg_0.x);
    var var_3 = arg_1;
    return ~_wgslsmith_div_u32(arg_1, _wgslsmith_sub_u32(firstTrailingBit(var_0.a), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(~((func_1(global0.b, 125629u, vec2<u32>(1u, 0u)) ^ abs(18065u)) | 48697u));
    global0 = Struct_1(select(!select(select(global0.a, global0.a, global0.a.x), !global0.a, !vec3<bool>(global0.a.x, true, true)), vec3<bool>(any(select(vec4<bool>(global0.a.x, global0.a.x, true, true), vec4<bool>(global0.a.x, false, false, global0.a.x), vec4<bool>(global0.a.x, false, false, true))), true | (global0.a.x && true), true), global0.a.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.b.x, global0.b.x, global0.d, global0.c.x))))), _wgslsmith_f_op_vec3_f32(-global0.b.wxx), _wgslsmith_f_op_f32(554f * _wgslsmith_div_f32(global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2711f)))));
    var var_1 = Struct_1(!global0.a, global0.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, 341f, 1000f) - vec3<f32>(global0.d, -394f, global0.d))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.c), _wgslsmith_f_op_vec3_f32(round(global0.c)), false))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-796f + 803f), _wgslsmith_f_op_f32(1072f * -696f))), -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2779f) - _wgslsmith_f_op_f32(global0.c.x * global0.c.x))))), 1864f);
    var var_2 = var_1.b;
    let var_3 = vec3<u32>(~_wgslsmith_add_u32(~var_0.a, ~_wgslsmith_add_u32(28353u, var_0.a)), _wgslsmith_dot_vec2_u32(max(~firstLeadingBit(vec2<u32>(var_0.a, var_0.a)), vec2<u32>(~var_0.a, _wgslsmith_mult_u32(39219u, var_0.a))), vec2<u32>(~abs(var_0.a), ~4294967295u)), 1u & ~(~var_0.a & 4294967295u));
    var var_4 = Struct_1(select(select(var_1.a, vec3<bool>(all(vec4<bool>(global0.a.x, global0.a.x, false, global0.a.x)), global0.a.x, !var_1.a.x), global0.a.x), global0.a, vec3<bool>(all(!vec3<bool>(global0.a.x, true, true)), true, (u_input.a << (1u % 32u)) == 19933i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(global0.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.ywx + vec3<f32>(var_2.x, 1085f, var_1.d)), vec3<f32>(-1000f, 787f, 1295f)))), var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(~vec3<i32>(5280i, u_input.a, u_input.a)), -vec4<i32>(-u_input.a, ~firstLeadingBit(u_input.a), -2147483647i << ((var_3.x ^ var_3.x) % 32u), -30326i), var_3, _wgslsmith_f_op_f32(select(656f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(152f))), !(2276f != _wgslsmith_f_op_f32(func_4(u_input.a, global0.c.zx, Struct_2(1795u)))))));
}

