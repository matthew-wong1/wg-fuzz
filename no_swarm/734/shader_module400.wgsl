struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_2,
    d: vec4<i32>,
    e: bool,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: bool,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 30>;

var<private> global1: array<Struct_5, 17>;

var<private> global2: array<vec4<i32>, 15>;

var<private> global3: i32 = -13452i;

var<private> global4: Struct_1;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>) -> bool {
    var var_0 = Struct_1(43849u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -280f), arg_0.c.b.b))));
    global2 = array<vec4<i32>, 15>();
    var var_1 = 31975u;
    var_1 = ~_wgslsmith_sub_u32(~(~countOneBits(var_0.a)), _wgslsmith_mod_u32(var_0.a, reverseBits(~var_0.a)));
    let var_2 = Struct_1(~abs(global4.a), 1007f);
    return arg_0.e;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec2<i32> {
    var var_0 = Struct_4(112154u & select(arg_0.a, _wgslsmith_mod_u32(global4.a, firstTrailingBit(global4.a)), select(true, true, true)), Struct_2(arg_3, Struct_1(global4.a, -599f), ~(~0u)), Struct_1(arg_0.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-1643f, arg_3.b))))))), vec2<bool>(func_3(Struct_3(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 1i, 35945i, u_input.b.x), global2[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1883f, arg_1.x, 1212f), arg_1.zwy)), Struct_2(arg_3, Struct_1(17616u, arg_1.x), arg_0.a), min(vec4<i32>(u_input.b.x, u_input.a.x, 56577i, 37297i), global2[_wgslsmith_index_u32(29613u, 15u)]), any(vec2<bool>(false, true))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.x, -310f) - vec2<f32>(-300f, global4.b)), arg_1.zw, vec2<bool>(true, true)))), any(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -377f) + arg_1.x))));
    let var_2 = vec4<i32>(abs(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b.x, -6265i, 67605i), vec3<i32>(-8249i, -1i, -19828i)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, -43141i, u_input.b.x), global0[_wgslsmith_index_u32(arg_3.a, 30u)]))) & abs(-1i), 2147483647i, u_input.a.x, _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 15u)], vec4<i32>(-_wgslsmith_clamp_i32(-20003i, 22898i, u_input.a.x), _wgslsmith_dot_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 15u)] >> (vec4<u32>(global4.a, 0u, global4.a, arg_3.a) % vec4<u32>(32u)), vec4<i32>(7936i, u_input.b.x, 1i, u_input.a.x) | vec4<i32>(-14578i, u_input.b.x, u_input.b.x, u_input.b.x)), u_input.b.x, 0i)));
    global4 = var_0.c;
    let var_3 = var_0.d.x;
    return ~(-abs(vec2<i32>(59745i, -31384i)) >> (max(~vec2<u32>(arg_3.a, arg_0.a), _wgslsmith_div_vec2_u32(vec2<u32>(0u, arg_0.a), ~vec2<u32>(var_0.b.b.a, global4.a))) % vec2<u32>(32u)));
}

fn func_1() -> f32 {
    var var_0 = vec2<bool>(true, _wgslsmith_mult_i32(-(~(-11651i)), 3145i & (0i ^ u_input.a.x)) > (_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), func_2(Struct_1(global4.a, 1142f), vec4<f32>(-1286f, 908f, -910f, -1367f), vec4<f32>(636f, global4.b, -1598f, global4.b), Struct_1(74831u, global4.b))) & u_input.b.x));
    let var_1 = Struct_4(88814u, Struct_2(Struct_1(4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.b + global4.b) - _wgslsmith_f_op_f32(-global4.b))), Struct_1(_wgslsmith_mod_u32(global4.a, global4.a) >> (firstLeadingBit(1u) % 32u), -574f), global4.a), Struct_1(select(~47588u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a, 53112u), vec2<u32>(global4.a, 75568u)), -1551f < _wgslsmith_f_op_f32(global4.b * global4.b)), -966f), select(!select(select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(false, true)), !vec2<bool>(var_0.x, true)), select(vec2<bool>(var_0.x, var_0.x && var_0.x), !vec2<bool>(false, var_0.x), !(true && var_0.x)), vec2<bool>(true, any(vec2<bool>(true, true)))));
    var var_2 = vec2<bool>(u_input.a.x >= -15800i, false);
    var var_3 = Struct_3((~(-40203i) | _wgslsmith_dot_vec4_i32(-vec4<i32>(2147483647i, u_input.b.x, -2147483647i, -3378i), _wgslsmith_mult_vec4_i32(vec4<i32>(42684i, u_input.b.x, -6243i, u_input.b.x), vec4<i32>(u_input.a.x, u_input.b.x, -1i, u_input.a.x)))) << (var_1.a % 32u), vec3<f32>(var_1.b.a.b, 1375f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1350f + global4.b)))), Struct_2(var_1.c, Struct_1(10043u, 1404f), _wgslsmith_clamp_u32(24854u, abs(var_1.b.b.a), _wgslsmith_dot_vec2_u32(~vec2<u32>(global4.a, var_1.c.a), abs(vec2<u32>(global4.a, global4.a))))), (vec4<i32>(u_input.a.x, -u_input.a.x, i32(-1i) * -21724i, 48843i) ^ select(global2[_wgslsmith_index_u32(4294967295u, 15u)] ^ vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.a.x), -vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, 71788i), vec4<bool>(var_1.d.x, false, var_0.x, false))) | countOneBits(vec4<i32>(u_input.b.x, abs(47096i), u_input.a.x, 6529i)), true);
    let var_4 = var_3.d.x;
    return -649f;
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = Struct_1(52482u, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.b - 1303f)))))));
    var var_1 = arg_0;
    global1 = array<Struct_5, 17>();
    global1 = array<Struct_5, 17>();
    var var_2 = 0u;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)), true), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(false, false), true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), false)), Struct_2(func_4(~6921i, 1u, vec3<f32>(_wgslsmith_f_op_f32(func_1()), -259f, _wgslsmith_f_op_f32(abs(global4.b)))), func_4(-_wgslsmith_div_i32(9024i, u_input.b.x), global4.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global4.b, 172f, global4.b), vec3<f32>(1086f, -2121f, -620f), vec3<bool>(false, false, true))))), ~_wgslsmith_div_u32(_wgslsmith_mult_u32(global4.a, 1u), ~global4.a)), !(!(!any(vec4<bool>(false, true, true, true)))), Struct_4(~4294967295u, Struct_2(Struct_1(28039u, _wgslsmith_div_f32(global4.b, 347f)), Struct_1(~global4.a, _wgslsmith_f_op_f32(ceil(global4.b))), firstLeadingBit(global4.a)), Struct_1(abs(_wgslsmith_div_u32(13317u, 3318u)), global4.b), !vec2<bool>(true, global4.a <= global4.a)));
    let var_1 = min(var_0.b.a.a, ~countOneBits(0u));
    let var_2 = abs(firstLeadingBit(-_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 2310i), vec2<i32>(u_input.b.x, -2147483647i)))) ^ abs(u_input.a.xx);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-985f, -1092f, 604f) + vec3<f32>(var_0.b.a.b, 719f, global4.b))))));
    let var_4 = var_3.zx;
    var var_5 = -1i & select(var_2.x, -_wgslsmith_dot_vec3_i32(u_input.b, vec3<i32>(-16565i, -2147483647i, 9510i)), var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_3.xz, select(max(7990i, 12088i << (global4.a % 32u)), 0i, var_0.a.x), ~u_input.a.x, -(~(-u_input.b.x)));
}

