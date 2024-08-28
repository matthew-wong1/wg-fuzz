struct Struct_1 {
    a: vec4<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: f32,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: bool,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: i32,
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

var<private> global0: array<u32, 17>;

var<private> global1: vec4<i32> = vec4<i32>(9605i, 2147483647i, i32(-2147483648), -2508i);

var<private> global2: array<vec4<i32>, 3>;

var<private> global3: Struct_1;

var<private> global4: bool;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = !(!vec2<bool>(!(!arg_0.x), !(!arg_0.x)));
    global4 = false;
    var var_1 = 63574i;
    var var_2 = vec2<i32>(select(~(abs(u_input.c) << (_wgslsmith_clamp_u32(32266u, 50002u, 4294967295u) % 32u)), 0i, !(var_0.x & arg_0.x)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.b.yxw, global1.yzw), max(abs(2147483647i), ~u_input.c)) ^ firstTrailingBit(_wgslsmith_add_i32(-global1.x, -2147483647i)));
    global2 = array<vec4<i32>, 3>();
    return vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.d, ~1u), u_input.a.x, firstTrailingBit(1u)), _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(4294967295u, global3.a.x, u_input.a.x)), ~(~global3.a.yxy))), u_input.d, u_input.a.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 17>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)), _wgslsmith_f_op_f32(-1331f + -323f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-631f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -851f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -3227f) + _wgslsmith_f_op_f32(-477f * 1731f))), 447f)));
    global1 = vec4<i32>(abs(0i), global1.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(~u_input.c, _wgslsmith_mult_i32(1i, 0i)), ~vec2<i32>(2147483647i, global1.x), !all(vec2<bool>(false, false))), u_input.b.zy), -15622i);
    let var_1 = select(select(~u_input.a.ywy, func_3(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), vec3<bool>(1i < u_input.b.x, true, all(select(vec2<bool>(false, true), vec2<bool>(true, true), true)))), vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.a >> ((vec4<u32>(1u, global0[_wgslsmith_index_u32(u_input.d, 17u)], global0[_wgslsmith_index_u32(global3.a.x, 17u)], 1u) & u_input.a) % vec4<u32>(32u)), arg_0.a), 16553u, 1u), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true))), vec3<bool>(true, true, true), all(vec3<bool>(1i == global1.x, true, any(vec2<bool>(true, true))))));
    let var_2 = Struct_1(select(~vec4<u32>(_wgslsmith_div_u32(0u, global3.b), 1u, _wgslsmith_mult_u32(1u, 1u), _wgslsmith_mod_u32(1u, u_input.d)), ~(~arg_0.a), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), true)), reverseBits(var_1.x));
    return Struct_1(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global3.b, global0[_wgslsmith_index_u32(45514u, 17u)], 83238u), abs(vec4<u32>(global0[_wgslsmith_index_u32(88571u, 17u)], var_1.x, global0[_wgslsmith_index_u32(global3.b, 17u)], u_input.a.x))) & max(~arg_0.b, _wgslsmith_dot_vec3_u32(var_2.a.wxw, global3.a.xzw)), 11247u, var_1.x), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(global3.a.wwx, u_input.a.wzw), var_2.b) >> (23802u % 32u), 4294967295u, ~(~(~var_2.a.x))), 17u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3) -> i32 {
    global0 = array<u32, 17>();
    let var_0 = arg_2;
    var var_1 = arg_1;
    var var_2 = var_0.b;
    global2 = array<vec4<i32>, 3>();
    return ~(~u_input.c);
}

fn func_1() -> Struct_3 {
    global1 = vec4<i32>(-3742i, min(9585i, ~abs(global1.x)), 71212i, abs(30091i));
    global0 = array<u32, 17>();
    global1 = firstTrailingBit(max(select(vec4<i32>(u_input.b.x, u_input.c, global1.x, global1.x), select(vec4<i32>(2147483647i, 0i, 30843i, -2147483647i), vec4<i32>(u_input.b.x, u_input.c, -2147483647i, -47584i), false), true), -vec4<i32>(u_input.e, global1.x, 5015i, u_input.e)) ^ firstLeadingBit(vec4<i32>(~global1.x, u_input.b.x, 25510i, abs(global1.x))));
    let var_0 = vec2<i32>(_wgslsmith_add_i32(func_4(false, Struct_2(vec4<u32>(31388u, 29888u, 31250u, u_input.a.x), _wgslsmith_sub_i32(global1.x, u_input.b.x), _wgslsmith_f_op_f32(abs(-265f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-626f, -1000f, -396f, 430f) * vec4<f32>(-123f, -1000f, 373f, -1572f)), func_2(Struct_1(u_input.a, u_input.a.x))), Struct_3(func_2(Struct_1(u_input.a, 10547u)), -361f, true, -global1.x, Struct_2(vec4<u32>(5380u, 25896u, 4294967295u, 4294967295u), global1.x, 214f, vec4<f32>(1627f, 1588f, -2146f, 713f), Struct_1(vec4<u32>(global3.a.x, 12512u, u_input.a.x, 4294967295u), 62654u)))), ~abs(~u_input.c)), ~_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(~u_input.b, u_input.b), u_input.b));
    let var_1 = Struct_2(u_input.a, i32(-1i) * -abs(var_0.x & var_0.x), -1794f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(777f, _wgslsmith_f_op_f32(f32(-1f) * -1964f))), _wgslsmith_f_op_f32(step(-1360f, -1817f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-934f + 2290f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -218f), -641f)))), func_2(func_2(Struct_1(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.a.x, 24157u, 0u), global3.a.zxx)))));
    return Struct_3(var_1.e, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-602f)))))), true, reverseBits(-select(_wgslsmith_sub_i32(global1.x, 2147483647i), _wgslsmith_mod_i32(-2147483647i, var_1.b), true)), Struct_2(var_1.a, var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -128f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-183f, var_1.d.x)), var_1.d.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_1.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.c)))), var_1.e));
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>) -> u32 {
    var var_0 = vec2<f32>(-737f, 1149f);
    let var_1 = arg_0.c;
    let var_2 = var_0.x;
    let var_3 = false;
    global3 = arg_0.a;
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(global3.a, u_input.a), global0[_wgslsmith_index_u32(func_5(func_1(), _wgslsmith_sub_vec2_u32(~u_input.a.zw, global3.a.ww)), 17u)], 6288u, ~0u), -15563i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(494f)) + 2103f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-187f, _wgslsmith_f_op_f32(-1533f - -1363f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -443f) + _wgslsmith_f_op_f32(max(-185f, 845f))))), vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -646f))), -1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(-915f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1().b * _wgslsmith_f_op_f32(-1098f + 1000f)))), Struct_1(~global3.a, global3.a.x));
    global0 = array<u32, 17>();
    var var_1 = vec4<i32>(-2147483647i, 0i, abs(-2147483647i), -38584i);
    let var_2 = var_1.x;
    var_0 = Struct_2(global3.a, -1i, 386f, vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(min(1385f, -517f)), _wgslsmith_f_op_f32(-var_0.c), var_0.d.x), var_0.e);
    var var_3 = ~1u;
    var var_4 = var_1.x;
    var var_5 = Struct_3(Struct_1(var_0.a, var_0.e.b), _wgslsmith_f_op_f32(-149f * 127f), all(vec2<bool>(true, true)) && !(true & func_1().c), func_4(false, func_1().e, Struct_3(Struct_1(var_0.e.a, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(132464u, global0[_wgslsmith_index_u32(0u, 17u)]), 17u)]), var_0.c, true, ~(-60704i), func_1().e)), func_1().e);
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c - var_5.e.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_5.e.d.x - var_0.c)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1003f)))), var_5.e.d.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.d.x, -347f), vec2<f32>(1000f, -199f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-529f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-140f)))), _wgslsmith_f_op_f32(abs(var_5.e.d.x))))));
}

