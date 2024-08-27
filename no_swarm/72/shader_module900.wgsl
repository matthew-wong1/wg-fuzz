struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: vec2<f32> = vec2<f32>(1000f, -1144f);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(any(select(select(!vec4<bool>(true, arg_2.b.x, true, arg_2.b.x), select(arg_0.b, vec4<bool>(arg_2.d, arg_0.d, arg_0.a, true), arg_0.b), arg_2.b), select(!vec4<bool>(true, arg_0.d, true, arg_0.b.x), !vec4<bool>(arg_2.d, arg_2.b.x, false, arg_0.d), true), !select(arg_0.a, arg_2.a, arg_0.a))), select(vec4<bool>(!(u_input.a != -14738i), arg_0.d, _wgslsmith_f_op_f32(f32(-1f) * -240f) >= arg_2.c, arg_0.d), select(!arg_2.b, !select(arg_0.b, arg_2.b, vec4<bool>(true, true, true, false)), vec4<bool>(global1.x <= 1000f, true, !arg_2.b.x, true)), vec4<bool>(false, !(false && arg_2.b.x), u_input.a != u_input.a, arg_0.a)), arg_2.c, arg_2.d);
    var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(select(firstTrailingBit(~_wgslsmith_sub_u32(u_input.d, 78539u)), ~_wgslsmith_sub_u32(48133u, _wgslsmith_mult_u32(arg_1.x, 4294967295u)), var_0.d) ^ 34396u, 17u)];
    global1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-568f - global1.x) + -2019f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * 1945f) * _wgslsmith_f_op_f32(-arg_0.c)), global1.x) - 127f));
    let var_2 = arg_0;
    return vec4<bool>(arg_1.x > _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c.x, ~u_input.c.x), ~_wgslsmith_dot_vec3_u32(arg_1.zzz, arg_1.xzz)), false, var_1.b.x, false);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = arg_1.b.zy;
    let var_1 = arg_1;
    let var_2 = countOneBits(~arg_2) & 1u;
    var var_3 = Struct_1(true, select(!vec4<bool>(!var_0.x, var_0.x, func_3(Struct_1(var_1.a, vec4<bool>(true, true, arg_1.d, true), -640f, arg_3.a), vec4<u32>(1u, arg_0, u_input.b, arg_2), arg_1).x, 9638i < u_input.a), vec4<bool>(true, !(!var_1.b.x), true, !var_1.b.x), vec4<bool>(true, var_0.x, arg_1.b.x, var_1.d)), _wgslsmith_f_op_f32(1080f + arg_3.c), ~1u >= (arg_0 ^ arg_0));
    global0 = array<Struct_1, 17>();
    return _wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mod_i32(u_input.a, -1i), ~(-2147483647i), ~(~(-u_input.a))), _wgslsmith_sub_vec4_i32(~_wgslsmith_mod_vec4_i32(~vec4<i32>(21149i, u_input.a, 81650i, 12238i), vec4<i32>(u_input.a, u_input.a, 28615i, -4180i) | vec4<i32>(u_input.a, -2147483647i, 17369i, u_input.a)), vec4<i32>(-1i & _wgslsmith_div_i32(u_input.a, u_input.a), ~_wgslsmith_div_i32(30180i, u_input.a), u_input.a, i32(-1i) * -2147483647i)));
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = -(~firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, -1i, arg_1, u_input.a), vec4<i32>(-1i, u_input.a, arg_1, arg_1))) ^ func_4(countOneBits(1u), Struct_1(any(arg_0.b.wwy), vec4<bool>(arg_0.a, true, arg_0.d, false), _wgslsmith_div_f32(global1.x, 673f), arg_1 < u_input.a), 0u << ((u_input.b ^ u_input.d) % 32u), Struct_1(true, func_3(global0[_wgslsmith_index_u32(4294967295u, 17u)], vec4<u32>(u_input.c.x, u_input.d, 0u, u_input.c.x), Struct_1(arg_0.a, vec4<bool>(arg_0.b.x, arg_0.b.x, arg_0.a, arg_0.d), global1.x, arg_0.b.x)), _wgslsmith_f_op_f32(step(-816f, global1.x)), all(arg_0.b))));
    global0 = array<Struct_1, 17>();
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global1.x))), -938f))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-552f)) * _wgslsmith_f_op_f32(round(arg_0.c))), -293f));
    let var_1 = arg_0;
    global1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-218f + _wgslsmith_f_op_f32(393f + global1.x)), global1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, global1.x)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, -1176f) - vec2<f32>(arg_0.c, var_1.c)))))));
    return Struct_1(true, vec4<bool>(false, select(_wgslsmith_f_op_f32(ceil(global1.x)) == _wgslsmith_f_op_f32(var_1.c + 187f), !(!var_1.a), all(select(var_1.b.zzx, arg_0.b.yxz, var_1.b.wzw))), var_1.d, all(vec3<bool>(false, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, var_1.c)))), -863f), false);
}

fn func_5(arg_0: Struct_1) -> f32 {
    global0 = array<Struct_1, 17>();
    global1 = vec2<f32>(541f, global1.x);
    var var_0 = global0[_wgslsmith_index_u32(u_input.d, 17u)];
    var_0 = func_2(Struct_1(any(func_2(func_2(arg_0, 37532i), u_input.a).b.ww), func_2(global0[_wgslsmith_index_u32(abs(~u_input.d), 17u)], u_input.a).b, -1182f, true), -1i);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(firstLeadingBit(23168u), 13905u, 24145u), 17u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - 217f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(1678f + arg_0.c)))))));
}

fn func_1(arg_0: Struct_1) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_2(Struct_1(false, arg_0.b, arg_0.c, true), u_input.a)))), arg_0.c));
    return arg_0.b.x;
}

fn func_6(arg_0: Struct_1, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> vec2<f32> {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-481f, 450f) - vec2<f32>(-609f, 2523f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(149f, 243f)))))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(704f, arg_0.c))) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-449f)))), func_2(arg_3, u_input.a).c), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1843f) + vec2<f32>(arg_0.c, -1336f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1848f, global1.x), vec2<f32>(arg_0.c, 554f))), arg_0.b.x)))), !(!(!arg_0.b.yy)))));
    var var_0 = ~(u_input.c | ~(~vec2<u32>(4294967295u, 67526u))) | _wgslsmith_div_vec2_u32(~u_input.c, ~vec2<u32>(~u_input.d, u_input.d));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1024f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.c, global1.x), vec2<f32>(328f, arg_0.c), arg_0.b.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1590f, -609f)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3.c, 1029f), vec2<f32>(693f, -2539f)))), vec2<bool>(true, true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_div_f32(arg_0.c, arg_3.c))))));
    var var_1 = func_2(Struct_1(arg_0.b.x == arg_3.b.x, arg_0.b, _wgslsmith_f_op_f32(-1f), true), ~83602i);
    let var_2 = _wgslsmith_f_op_f32(-arg_0.c);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, arg_0.c)) + vec2<f32>(-419f, -622f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1493f, -1017f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-431f, var_1.c)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, 481f)) * vec2<f32>(var_1.c, var_1.c)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 17>();
    var var_0 = select(u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(20932i, u_input.a), firstLeadingBit(vec2<i32>(13296i, 0i))), max(-vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a))), all(vec3<bool>(true, true, true))) >> (u_input.c.x % 32u);
    global1 = _wgslsmith_f_op_vec2_f32(func_6(Struct_1(!(func_1(Struct_1(true, vec4<bool>(true, true, false, true), global1.x, false)) && false), func_2(func_2(func_2(Struct_1(true, vec4<bool>(false, true, false, true), -1000f, false), u_input.a), u_input.a), 0i).b, global1.x, all(vec3<bool>(true, true, true)) || (_wgslsmith_f_op_f32(min(-1852f, -2164f)) >= global1.x)), 0i, max(firstTrailingBit(64808i), ~1i), func_2(func_2(func_2(Struct_1(false, vec4<bool>(true, false, true, true), global1.x, true), 0i), abs(firstLeadingBit(-10829i))), -2147483647i)));
    var var_1 = ~(~(~vec4<u32>(_wgslsmith_clamp_u32(45421u, u_input.c.x, u_input.d), 4294967295u >> (u_input.d % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.d, 0u), vec3<u32>(1u, 1u, 0u)), _wgslsmith_div_u32(u_input.d, u_input.c.x))));
    var_0 = ~(-_wgslsmith_sub_i32(u_input.a, 13583i));
    var var_2 = Struct_1(false, !vec4<bool>(u_input.a >= 2147483647i, true, true, true), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1707f) - _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(trunc(global1.x)))), !func_1(func_2(global0[_wgslsmith_index_u32(u_input.d, 17u)], u_input.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(u_input.d, u_input.c.x), 984f, 33854u);
}

