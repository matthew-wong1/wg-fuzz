struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-43627i, 0i, -12631i, 0i);

var<private> global1: array<u32, 2>;

var<private> global2: bool;

var<private> global3: vec4<bool> = vec4<bool>(true, true, true, true);

var<private> global4: vec3<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(_wgslsmith_mult_u32(abs(~(~global1[_wgslsmith_index_u32(u_input.c.x, 2u)])), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), _wgslsmith_div_vec2_u32(u_input.a.xx, u_input.a.xy)) ^ ~(~9266u)));
    global0 = vec4<i32>(~(-abs(-2147483647i << (var_0.a % 32u))), u_input.b.x, select(-countOneBits(-50652i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), u_input.b.xx), false) >> (u_input.c.x % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(~u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, u_input.b.x), global0.yx)), -_wgslsmith_clamp_vec2_i32(global0.wx, vec2<i32>(-4367i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), -(global0.yw ^ u_input.b.xx)), -global0.zx));
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1408f), -2025f, _wgslsmith_f_op_f32(ceil(-1739f)), _wgslsmith_f_op_f32(select(2093f, -728f, global3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1945f, 164f, 1000f, 548f)) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1367f, 524f, 1211f, -1169f), vec4<f32>(106f, -738f, -1450f, 446f), false)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1391f, -701f, 611f, -1000f), vec4<f32>(516f, 267f, -244f, 149f)))))));
    let var_2 = Struct_2(var_1.a);
    let var_3 = u_input.c.xzy;
    return Struct_3(var_2);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_3, arg_3: Struct_3) -> f32 {
    global2 = any(select(vec3<bool>(any(vec4<bool>(false, false, global3.x, arg_1)), true, true), global3.ywx, true));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_2.a.a.x * 544f), -1462f, _wgslsmith_f_op_f32(f32(-1f) * -1783f), _wgslsmith_f_op_f32(-arg_2.a.a.x)) - vec4<f32>(1f, _wgslsmith_f_op_f32(arg_3.a.a.x - -1296f), _wgslsmith_f_op_f32(round(arg_2.a.a.x)), arg_3.a.a.x))));
    let var_1 = !vec3<bool>(global3.x, true, arg_0 != any(vec4<bool>(true, global4.x, false, true)));
    let var_2 = Struct_3(func_2().a);
    var var_3 = select(var_1.zy, vec2<bool>(var_1.x, false), true);
    return _wgslsmith_f_op_f32(step(1154f, -1264f));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: f32) -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1631f);
    global0 = u_input.b;
    var var_1 = global3.zzy;
    let var_2 = u_input.a.x;
    var var_3 = ~(~(~19398u));
    return vec4<f32>(1112f, 1132f, 1436f, _wgslsmith_f_op_f32(trunc(-990f)));
}

fn func_5(arg_0: vec4<f32>, arg_1: bool) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -(_wgslsmith_add_vec3_i32(global0.wwz, u_input.b.yyw) | vec3<i32>(u_input.b.x, u_input.b.x, global0.x)), global0.zxz);
    global4 = select(vec3<bool>(false, !all(!vec3<bool>(global3.x, false, global3.x)), any(select(select(vec2<bool>(global3.x, true), global4.yx, arg_1), global4.xz, true))), !(!global3.xyz), vec3<bool>(all(vec2<bool>(true, false)), true, global4.x));
    var var_1 = arg_0.xy;
    var var_2 = func_2();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.ww));
    return var_2.a;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    global3 = vec4<bool>(global3.x, !global4.x, true, true);
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-532f, -221f, -383f, -259f), vec4<f32>(793f, -993f, -886f, 116f), vec4<bool>(global3.x, global3.x, true, true)))))));
    var var_1 = Struct_2(var_0.a);
    var var_2 = func_5(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(all(vec2<bool>(true, arg_2.x)), false, func_2(), func_2()))), Struct_1(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c.x, 11919u), vec3<u32>(arg_1.x, u_input.a.x, 2723u))), var_0.a.x)), !all(arg_2) & arg_2.x);
    global2 = true;
    return Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(83589u, 2u)]), 43388u, 4294967295u), countOneBits(_wgslsmith_sub_vec3_u32(u_input.a, vec3<u32>(4294967295u, 1u, global1[_wgslsmith_index_u32(0u, 2u)])))), reverseBits(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a))));
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32) -> f32 {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, func_5(vec4<f32>(arg_0.x, 1166f, -209f, 185f), global4.x).a.x, 1147f, _wgslsmith_f_op_f32(arg_0.x + arg_0.x)) - func_5(vec4<f32>(arg_0.x, 525f, -210f, arg_0.x), all(global3.wxy)).a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -205f, arg_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -596f, arg_0.x))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(743f, 196f, 546f, -1222f) * vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 668f)))), global4.x)), global4.x).a.x;
    var var_1 = countOneBits(vec2<i32>(15289i, -countOneBits(~u_input.b.x)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1520f * arg_0.x));
    var_1 = _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(global0.xw), vec2<i32>(_wgslsmith_add_i32(1i, ~(-2147483647i)), ~_wgslsmith_add_i32(1i, -8986i)), abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.x, 46475i, 2847i), vec3<i32>(u_input.b.x, global0.x, global0.x)), abs(u_input.b.x)))), vec2<i32>(_wgslsmith_dot_vec2_i32(-_wgslsmith_sub_vec2_i32(global0.xz, vec2<i32>(global0.x, global0.x)), _wgslsmith_mod_vec2_i32(~global0.xy, abs(vec2<i32>(-2147483647i, 768i)))), 0i));
    var var_3 = _wgslsmith_clamp_vec2_u32(abs(~_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(u_input.c.xw, u_input.c.yw), ~u_input.a.zy)), u_input.c.wy, ~u_input.c.wy);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().a.a.x)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-111f)) - _wgslsmith_f_op_f32(func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(652f, 215f)) - vec2<f32>(-1469f, -544f)), func_1(-10987i, vec2<u32>(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], u_input.c.x), vec4<bool>(global3.x, global3.x, false, false), abs(u_input.c.x)), 81085u))));
    global3 = select(vec4<bool>(any(vec2<bool>(true, true)) && false, any(global3.zz), false, true), !(!vec4<bool>(true, global0.x >= global0.x, select(global3.x, global3.x, global3.x), false)), !(_wgslsmith_f_op_f32(sign(355f)) >= 449f));
    let var_1 = u_input.b.x;
    global4 = !vec3<bool>(true, true, !select(true, any(vec4<bool>(global4.x, global4.x, global3.x, global4.x)), false));
    global2 = false;
    var_0 = _wgslsmith_f_op_f32(func_6(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1160f, 1f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-1261f, -859f)))), Struct_1(33051u), u_input.c.x));
    var var_2 = func_1(_wgslsmith_mod_i32(0i, ~(~global0.x)), u_input.a.yx >> (~u_input.a.yy % vec2<u32>(32u)), !vec4<bool>(global3.x, true, !any(vec2<bool>(true, true)), all(!vec4<bool>(global3.x, true, false, global3.x))), u_input.c.x);
    var var_3 = func_5(_wgslsmith_f_op_vec4_f32(func_4(1f, Struct_1(0u), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(919f)), _wgslsmith_f_op_f32(ceil(-206f))) + -2195f))), true);
    let var_4 = Struct_1(var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(abs(u_input.c.x), 4294967295u), var_3.a.xyz, select(-(~(-global0.xz)), _wgslsmith_sub_vec2_i32(firstLeadingBit(u_input.b.wx), -_wgslsmith_add_vec2_i32(u_input.b.xz, vec2<i32>(0i, u_input.b.x))), select(true, false, true)), _wgslsmith_mult_u32(9468u, _wgslsmith_add_u32(~u_input.a.x, _wgslsmith_add_u32(u_input.c.x, 86814u))) >> (~(10078u ^ ~u_input.c.x) % 32u), -1828f);
}

