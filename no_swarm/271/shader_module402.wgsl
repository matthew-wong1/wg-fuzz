struct Struct_1 {
    a: bool,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: f32,
    d: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_3,
    c: f32,
    d: vec3<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<bool>(false, true, false), Struct_3(Struct_1(false, 960f, vec3<i32>(-1i, -12471i, 14636i)), 208f, 501f, false), -1521f, vec3<f32>(1318f, -394f, 845f), vec2<f32>(1606f, 244f));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_3, 1>;

var<private> global3: array<vec4<i32>, 28>;

var<private> global4: bool;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32) -> u32 {
    var var_0 = Struct_4(global0.a.zz, any(global0.a.zy));
    return 0u;
}

fn func_2(arg_0: bool, arg_1: Struct_5) -> Struct_1 {
    var var_0 = u_input.e.zxy;
    let var_1 = Struct_4(select(arg_1.a.yx, !global0.a.yz, !global0.a.xx), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(u_input.e), ~vec4<u32>(u_input.d, var_0.x, 26910u, u_input.d)), vec4<u32>(_wgslsmith_mod_u32(var_0.x, var_0.x), 6806u, func_3(2324f), u_input.d)) >= (_wgslsmith_add_u32(firstTrailingBit(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(var_0.x, u_input.e.x))) >> (var_0.x % 32u)));
    var var_2 = min(select(_wgslsmith_mult_vec3_i32(-vec3<i32>(70204i, 0i, arg_1.b.a.c.x), global0.b.a.c >> (~u_input.e.yww % vec3<u32>(32u))), arg_1.b.a.c, vec3<bool>(true, false, true)), firstTrailingBit(vec3<i32>(global0.b.a.c.x, u_input.c.x, ~(-u_input.a.x))));
    var_0 = vec3<u32>(_wgslsmith_dot_vec2_u32(select(_wgslsmith_sub_vec2_u32(firstLeadingBit(var_0.yy), ~vec2<u32>(0u, var_0.x)), min(_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, u_input.d), var_0.xy), vec2<u32>(var_0.x, u_input.e.x) & var_0.xx), vec2<bool>(false, global0.b.d)), vec2<u32>(var_0.x, 0u)), reverseBits(abs(0u >> (1u % 32u))), _wgslsmith_add_u32(var_0.x, 77458u));
    var_0 = ~vec3<u32>(u_input.d, 1u, _wgslsmith_div_u32(min(u_input.d, func_3(-270f)), u_input.e.x));
    return global0.b.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    var var_0 = global0.e.x;
    var var_1 = arg_2;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(258f)) - _wgslsmith_f_op_f32(min(-1679f, arg_0.d.b))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.b.b + -851f), _wgslsmith_f_op_f32(-global0.e.x), !arg_0.b.a))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global0.e * vec2<f32>(-389f, arg_0.b.b)), _wgslsmith_f_op_vec2_f32(select(global0.d.yy, global0.d.yz, true)))) * global0.d.xx)));
    var var_3 = -1212f;
    let var_4 = -5491i;
    return -653f;
}

fn func_5(arg_0: bool, arg_1: f32) -> Struct_5 {
    let var_0 = vec4<i32>(i32(-1i) * -(~func_2(true, Struct_5(vec3<bool>(arg_0, global0.a.x, global0.a.x), Struct_3(global0.b.a, 797f, 980f, false), global0.e.x, vec3<f32>(global0.b.b, arg_1, 1020f), global0.d.yx)).c.x), global0.b.a.c.x, _wgslsmith_clamp_i32(global0.b.a.c.x, 1i, _wgslsmith_dot_vec3_i32(-global0.b.a.c, abs(vec3<i32>(global0.b.a.c.x, -1i, global0.b.a.c.x)) << (u_input.e.zwy % vec3<u32>(32u)))), global0.b.a.c.x);
    global3 = array<vec4<i32>, 28>();
    global2 = array<Struct_3, 1>();
    let var_1 = all(select(vec4<bool>(true, false, any(vec3<bool>(arg_0, false, global0.b.d)) && true, _wgslsmith_f_op_f32(-918f - arg_1) != -933f), vec4<bool>(global0.b.a.a, true, func_2(arg_0, Struct_5(global0.a, Struct_3(global0.b.a, global0.b.a.b, global0.e.x, arg_0), 400f, global0.d, global0.e)).a, all(!vec2<bool>(arg_0, false))), true));
    global3 = array<vec4<i32>, 28>();
    return Struct_5(global0.a, Struct_3(Struct_1(1i == _wgslsmith_mod_i32(-1i, var_0.x), arg_1, vec3<i32>(_wgslsmith_add_i32(var_0.x, var_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 1i, 27427i, global0.b.a.c.x), vec4<i32>(global0.b.a.c.x, u_input.c.x, 0i, 32382i)), 1i)), global0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.c))), true), -499f, global0.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.e)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, -132f)))))));
}

fn func_1(arg_0: Struct_5, arg_1: vec3<f32>) -> vec3<bool> {
    global3 = array<vec4<i32>, 28>();
    global4 = !(global0.b.a.c.x > -8361i) != any(!select(!vec3<bool>(arg_0.b.d, false, arg_0.b.d), !arg_0.a, false));
    let var_0 = (~u_input.e >> (~_wgslsmith_sub_vec4_u32(u_input.e, ~vec4<u32>(89873u, 44233u, u_input.e.x, 0u)) % vec4<u32>(32u))) << (u_input.e % vec4<u32>(32u));
    global0 = func_5(false, _wgslsmith_f_op_f32(func_4(Struct_2(select(arg_0.a.zz, vec2<bool>(false, true), vec2<bool>(global0.b.a.a, false)), arg_0.b.a, func_2(true, Struct_5(vec3<bool>(global0.a.x, arg_0.b.a.a, false), global2[_wgslsmith_index_u32(24862u, 1u)], arg_0.b.c, arg_1, arg_1.yy)), func_2(arg_0.a.x, Struct_5(global0.a, Struct_3(Struct_1(global0.b.a.a, global0.e.x, global0.b.a.c), arg_0.b.c, 579f, true), -926f, global0.d, arg_0.e))), arg_0.b.a, Struct_4(vec2<bool>(true, true), true))));
    global0 = func_5(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1199f))) + _wgslsmith_f_op_f32(-arg_1.x)));
    return vec3<bool>(func_5(!arg_0.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(1920f * -504f), _wgslsmith_f_op_f32(abs(-1419f)))).a.x | true, all(vec4<bool>(false, true, 29845u < _wgslsmith_add_u32(4294967295u, var_0.x), true | (arg_1.x >= -911f))), arg_0.d.x >= global0.d.x);
}

fn func_6(arg_0: f32) -> Struct_4 {
    global4 = true;
    var var_0 = global0.b;
    let var_1 = abs(reverseBits(global3[_wgslsmith_index_u32(u_input.d, 28u)]));
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_0))))), _wgslsmith_f_op_f32(ceil(func_2(true, func_5(false, arg_0)).b))));
    global1 = 1u | (firstTrailingBit(u_input.d) << (6350u % 32u));
    return Struct_4(vec2<bool>(!global0.b.a.a, !func_1(Struct_5(global0.a, Struct_3(Struct_1(var_0.d, arg_0, vec3<i32>(2147483647i, 45058i, 25677i)), var_0.c, 486f, var_0.a.a), 672f, global0.d, vec2<f32>(arg_0, global0.c)), global0.d).x), false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(select(global0.e.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f + global0.b.a.b) - global0.b.c), all(!func_1(Struct_5(vec3<bool>(true, global0.b.a.a, false), global2[_wgslsmith_index_u32(u_input.e.x, 1u)], 988f, global0.d, global0.e), vec3<f32>(global0.e.x, -1271f, -852f))))));
    let var_1 = ~u_input.e.zyw;
    let var_2 = ~countOneBits(_wgslsmith_mod_u32(min(87134u, u_input.e.x), u_input.e.x)) >> (var_1.x % 32u);
    var_0 = func_6(global0.c);
    let var_3 = ~max(var_1.x, var_1.x);
    global3 = array<vec4<i32>, 28>();
    var var_4 = Struct_3(func_2(global0.a.x, Struct_5(select(global0.a, func_5(false, 794f).a, true), func_5(var_0.b, _wgslsmith_f_op_f32(global0.c + global0.d.x)).b, global0.e.x, _wgslsmith_f_op_vec3_f32(exp2(global0.d)), _wgslsmith_f_op_vec2_f32(ceil(global0.d.yy)))), -1000f, global0.e.x, !select(var_0.a.x, func_1(func_5(var_0.b, global0.b.b), _wgslsmith_f_op_vec3_f32(global0.d * vec3<f32>(global0.e.x, global0.e.x, global0.b.c))).x, !(var_3 > var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(-global3[_wgslsmith_index_u32(abs(~u_input.e.x >> ((u_input.d >> (48232u % 32u)) % 32u)), 28u)], vec4<u32>(1u, 0u, _wgslsmith_mult_u32(var_3, _wgslsmith_sub_u32(var_1.x, var_3)), _wgslsmith_add_u32(abs(var_2 << (u_input.e.x % 32u)), ~33379u & _wgslsmith_dot_vec2_u32(var_1.yz, u_input.e.zw))), vec3<f32>(func_5(var_4.d, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_4.b, var_4.c))).d.x, _wgslsmith_f_op_f32(select(var_4.a.b, _wgslsmith_f_op_f32(-var_4.b), !(var_4.d || true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -341f) - 395f)));
}

