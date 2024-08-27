struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(true, false, true, false, false);

var<private> global1: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<f32>(148f, 230f, 183f)), Struct_1(vec3<f32>(-393f, -736f, -482f)), Struct_1(vec3<f32>(-671f, 595f, 583f)), Struct_1(vec3<f32>(-770f, -328f, 1000f)), Struct_1(vec3<f32>(-320f, 269f, -703f)), Struct_1(vec3<f32>(-431f, 449f, -1000f)), Struct_1(vec3<f32>(588f, 152f, 1032f)), Struct_1(vec3<f32>(925f, 1374f, 1895f)), Struct_1(vec3<f32>(1284f, -135f, -1040f)), Struct_1(vec3<f32>(-1978f, 1116f, -1194f)), Struct_1(vec3<f32>(-1298f, -1000f, 412f)));

var<private> global2: Struct_2;

var<private> global3: Struct_2 = Struct_2(vec4<bool>(false, true, false, true), false, i32(-2147483648));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: u32, arg_3: i32) -> i32 {
    var var_0 = u_input.a.zx;
    global0 = array<bool, 5>();
    var var_1 = select(u_input.a.x, _wgslsmith_dot_vec2_u32(~((vec2<u32>(arg_2, var_0.x) >> (vec2<u32>(var_0.x, 52774u) % vec2<u32>(32u))) >> ((vec2<u32>(4294967295u, var_0.x) | vec2<u32>(80335u, var_0.x)) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_2, 1u), 1u), u_input.a.x)), true);
    return _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(47516i, arg_3)), -vec2<i32>(arg_3, arg_3)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0.c.c, global2.c) | vec2<i32>(-1i, 2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(global2.c, arg_3), vec2<i32>(2147483647i, 2147483647i)), select(vec2<i32>(-83683i, 10372i), vec2<i32>(1i, arg_3), arg_0.a)), -(select(vec2<i32>(-2147483647i, 1i), vec2<i32>(global2.c, arg_3), true) ^ (vec2<i32>(arg_0.c.c, global3.c) ^ vec2<i32>(arg_0.c.c, arg_3)))), -max(max(vec2<i32>(arg_3, global3.c), vec2<i32>(global3.c, global3.c)), vec2<i32>(abs(global2.c), 1i)));
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1689f), _wgslsmith_div_f32(arg_0, arg_0))))), Struct_2(global3.a, true & global2.b, global2.c));
    let var_1 = vec3<i32>(~2147483647i, -func_3(Struct_3(true, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, arg_0) * var_0.b), Struct_2(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(4294967295u, 5u)]), false, global3.c)), select(select(global3.a.zyz, vec3<bool>(global3.b, global0[_wgslsmith_index_u32(1u, 5u)], true), vec3<bool>(true, false, false)), !var_0.c.a.yyx, false), ~4294967295u << ((u_input.a.x ^ u_input.a.x) % 32u), -(~(-5182i))), ~(-57585i));
    var var_2 = Struct_3(!(-175f >= var_0.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, -598f) * vec2<f32>(arg_0, -669f)) - _wgslsmith_f_op_vec2_f32(ceil(var_0.b))) - vec2<f32>(_wgslsmith_f_op_f32(327f + arg_0), _wgslsmith_f_op_f32(-arg_0)))), Struct_2(vec4<bool>(global3.b, false, global3.a.x, global2.b), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0, var_0.b.x)))) == 684f, _wgslsmith_sub_i32(firstLeadingBit(global3.c), ~global2.c)));
    var var_3 = var_2.c;
    var var_4 = vec4<i32>(var_0.c.c, var_3.c, abs(var_2.c.c << ((u_input.a.x | u_input.a.x) % 32u)) ^ -global2.c, abs(firstTrailingBit(min(_wgslsmith_clamp_i32(0i, -1i, var_0.c.c), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.c, 3227i, 2147483647i), var_1)))));
    return 56877u;
}

fn func_1(arg_0: i32) -> u32 {
    let var_0 = Struct_2(global3.a, all(global3.a), global3.c);
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2638f, -790f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1086f, -239f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(955f, 873f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, -451f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(515f * -275f), _wgslsmith_f_op_f32(round(-855f)))))));
    let var_2 = global1[_wgslsmith_index_u32(abs(func_2(var_1.x)), 11u)];
    let var_3 = ~90050u;
    global0 = array<bool, 5>();
    return _wgslsmith_add_u32(16497u, _wgslsmith_dot_vec3_u32(u_input.a.xyx, u_input.a.yzx));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = arg_0;
    var var_1 = Struct_2(global2.a, any(!vec2<bool>(global2.a.x, all(arg_2.zw))), -arg_1.x);
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(arg_0.a + var_0.a))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1042f, 348f, 945f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(603f, var_0.a.x, var_0.a.x), var_0.a)), vec3<bool>(true, !global3.a.x, global3.a.x)))));
    global2 = Struct_2(select(global3.a, select(!vec4<bool>(global3.a.x, global2.a.x, global2.b, false), !vec4<bool>(true, false, global0[_wgslsmith_index_u32(66216u, 5u)], global2.b), select(global2.b, true, true)), arg_2), true, arg_1.x);
    let var_3 = Struct_3(any(select(!select(global3.a.wz, arg_2.zx, vec2<bool>(false, global2.b)), !(!vec2<bool>(true, arg_2.x)), vec2<bool>(all(global2.a.ywx), true))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(arg_0.a.x * -902f)), Struct_2(vec4<bool>(global2.a.x, -20367i <= (2147483647i >> (u_input.a.x % 32u)), true, false), true, var_1.c));
    return Struct_2(arg_2, var_3.a, 1i);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_3 {
    let var_0 = -10108i;
    return Struct_3(global0[_wgslsmith_index_u32(7766u, 5u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -181f))), arg_0);
}

fn func_6(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_2 {
    let var_0 = abs(abs(0u));
    let var_1 = min(vec4<i32>(-(~(-arg_0.x)), abs(func_4(Struct_1(vec3<f32>(arg_1.b.x, arg_1.b.x, 692f)), vec4<i32>(arg_0.x, arg_0.x, 36894i, -22950i), global3.a).c | 1i), 43536i, _wgslsmith_add_i32(-global3.c, global3.c)), -select(abs(vec4<i32>(global2.c, 1i, 0i, global3.c)) | vec4<i32>(-18990i, -39603i, 42722i, 2670i), vec4<i32>(-arg_0.x, 0i, arg_1.c.c, _wgslsmith_mult_i32(arg_0.x, arg_0.x)), !(!vec4<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, true, global2.b))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1254f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(171f, _wgslsmith_f_op_f32(trunc(arg_1.b.x)), arg_1.c.a.x))));
    let var_3 = Struct_3(false, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_5(arg_1.c, var_0).b.x * _wgslsmith_f_op_f32(-1828f - arg_1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -261f) * _wgslsmith_f_op_f32(trunc(arg_1.b.x)))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.b.x, 1464f)))), vec2<f32>(_wgslsmith_f_op_f32(arg_1.b.x + arg_1.b.x), arg_1.b.x), false))), arg_1.c);
    var var_4 = _wgslsmith_sub_u32(~u_input.a.x, func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.b.x, -223f)) - -766f))) & _wgslsmith_add_u32(~_wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, var_0), vec3<u32>(var_0, 26514u, 0u))), u_input.a.x << (select(u_input.a.x, max(u_input.a.x, 1u), !global2.b) % 32u));
    return func_5(arg_1.c, ~0u ^ (_wgslsmith_mult_u32(30415u, _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 25611u, var_0, var_0))) ^ 31197u)).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    global2 = func_6(-_wgslsmith_add_vec2_i32(select(vec2<i32>(global3.c, -20581i), vec2<i32>(1i, 49579i), global3.b) | -vec2<i32>(global3.c, 77264i), ~_wgslsmith_div_vec2_i32(vec2<i32>(global2.c, global2.c), vec2<i32>(global3.c, 1477i))), func_5(func_4(global1[_wgslsmith_index_u32(func_1(abs(-2147483647i)), 11u)], vec4<i32>(firstLeadingBit(-6744i), select(-21015i, 1i, global3.b), 34738i, global3.c ^ 2147483647i), !vec4<bool>(global3.a.x, true, false, false)), firstTrailingBit(~4294967295u)));
    var var_1 = i32(-1i) * -firstTrailingBit(global3.c);
    let var_2 = true;
    var var_3 = global2.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(290f, 629f, -1163f))), vec3<f32>(_wgslsmith_f_op_f32(140f - _wgslsmith_f_op_f32(385f + -1479f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(222f, -664f)), _wgslsmith_f_op_f32(f32(-1f) * -442f)))));
}

