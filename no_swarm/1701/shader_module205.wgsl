struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: bool;

var<private> global2: array<i32, 15>;

var<private> global3: u32 = 111889u;

var<private> global4: array<vec2<i32>, 29> = array<vec2<i32>, 29>(vec2<i32>(-1i, 1189i), vec2<i32>(2679i, -1i), vec2<i32>(-9360i, i32(-2147483648)), vec2<i32>(33574i, 2147483647i), vec2<i32>(25849i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(27781i, -18577i), vec2<i32>(24377i, 1i), vec2<i32>(3625i, -14875i), vec2<i32>(0i, -1i), vec2<i32>(53053i, i32(-2147483648)), vec2<i32>(9237i, -21245i), vec2<i32>(2138i, 47893i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -27359i), vec2<i32>(-12927i, 2147483647i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(1765i, -10028i), vec2<i32>(-1i, 1i), vec2<i32>(2147483647i, -49021i), vec2<i32>(-27196i, -1i), vec2<i32>(11826i, 15312i), vec2<i32>(29996i, 1811i), vec2<i32>(0i, -14679i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(-18839i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(9490i, -1i));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_3, arg_1: f32, arg_2: vec4<bool>) -> vec2<f32> {
    var var_0 = global0.d.a.c;
    global3 = arg_0.d.a.a.x;
    let var_1 = Struct_1(~abs(abs(firstLeadingBit(arg_0.d.a.a))), !arg_0.d.a.b, global0.d.a.c, 4294967295u);
    global1 = (1u & _wgslsmith_sub_u32(1u, max(60774u, var_1.c))) <= (0u | ~(global0.d.a.d | _wgslsmith_mult_u32(100473u, arg_0.d.a.d)));
    var var_2 = !any(select(var_1.b, vec3<bool>(1u >= arg_0.d.a.c, 13107u >= arg_0.d.a.c, false), var_1.b.x));
    return _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.d.b), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 273f)))), _wgslsmith_f_op_vec2_f32(arg_0.a.zx + _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d.b.x, global0.a.x) * vec2<f32>(arg_1, 289f)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec2<f32>, arg_2: vec2<f32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-global0.c, global0.c ^ global0.c), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(global0.d.a.c, 15u)], global0.e, u_input.a), global0.c), global0.c)), -2147483647i) ^ global2[_wgslsmith_index_u32(~(~global0.d.a.c), 15u)];
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, arg_2.x, -942f), _wgslsmith_div_vec3_f32(global0.a, vec3<f32>(arg_2.x, global0.a.x, arg_2.x)), vec3<bool>(true, arg_0.x, global0.b.x)))) * global0.a) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_1.x, 439f))) * global0.d.b.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), 478f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1002f - 179f)))));
    let var_2 = Struct_2(Struct_1(max(min(global0.d.a.a, arg_3.a), arg_3.a << (vec3<u32>(1u, arg_3.c, 0u) % vec3<u32>(32u))), !global0.d.a.b, select(~(~4294967295u), 50332u, true), _wgslsmith_div_u32(arg_3.d | 0u, global0.d.a.d)), global0.d.b);
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a - _wgslsmith_f_op_vec3_f32(-global0.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 356f, -1000f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, arg_1.x, 1679f)) - _wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, var_2.a.b.x))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, 1438f, -190f)))));
    var var_3 = ~(~(~(~firstTrailingBit(arg_3.a.xx))));
    return !(!(!(!vec4<bool>(false, arg_0.x, false, var_2.a.b.x))));
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: vec3<i32>) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global0.d.b.x, _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(f32(-1f) * -1681f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -209f)))));
    var var_1 = arg_2.x;
    let var_2 = select(select(select(vec4<bool>(global0.d.a.b.x, global0.d.a.b.x, global0.d.a.b.x, any(global0.b)), func_4(global0.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(1294f, arg_2.x) + vec2<f32>(arg_2.x, arg_2.x)), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(global0.a, vec2<bool>(false, global0.b.x), vec3<i32>(2147483647i, arg_3.x, -2147483647i), global0.d, -72695i), global0.a.x, vec4<bool>(false, global0.b.x, false, true))), global0.d.a), vec4<bool>(all(vec4<bool>(global0.b.x, false, global0.b.x, global0.d.a.b.x)), global0.b.x, any(vec2<bool>(false, true)), select(false, global0.b.x, true))), !func_4(!vec2<bool>(global0.d.a.b.x, global0.b.x), vec2<f32>(-740f, 983f), arg_2.zy, Struct_1(global0.d.a.a, vec3<bool>(true, global0.d.a.b.x, false), 54867u, 4696u)), global0.b.x), !(!(!select(vec4<bool>(true, true, false, false), vec4<bool>(global0.d.a.b.x, global0.d.a.b.x, true, global0.d.a.b.x), vec4<bool>(global0.d.a.b.x, global0.b.x, global0.d.a.b.x, false)))), any(vec2<bool>(false, global0.d.a.b.x)));
    let var_3 = Struct_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, global0.d.b.x, _wgslsmith_f_op_f32(f32(-1f) * -682f)) - _wgslsmith_f_op_vec3_f32(-global0.a)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1032f, var_0.x, 747f) + vec3<f32>(var_0.x, 1978f, arg_2.x))))), global0.b, vec3<i32>(~1i, ~_wgslsmith_mult_i32(min(33485i, -4057i), u_input.a), 39176i), Struct_2(global0.d.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(global0.d.b - vec2<f32>(500f, arg_2.x)))))), global2[_wgslsmith_index_u32(0u, 15u)]);
    var_1 = 1275f;
    return var_3;
}

fn func_5(arg_0: Struct_3, arg_1: bool) -> vec2<f32> {
    global1 = select(any(func_4(select(select(arg_0.b, vec2<bool>(arg_1, arg_1), arg_0.b), !vec2<bool>(true, arg_0.b.x), all(vec4<bool>(global0.d.a.b.x, false, arg_1, true))), vec2<f32>(-406f, -916f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)))), Struct_1(firstLeadingBit(vec3<u32>(arg_0.d.a.a.x, arg_0.d.a.c, 24709u)), arg_0.d.a.b, ~global0.d.a.c, ~arg_0.d.a.c))), false, _wgslsmith_clamp_u32(~firstTrailingBit(0u), 22944u, ~(~global0.d.a.d)) < func_2(global0.d.a.c, vec2<i32>(firstTrailingBit(global0.e), abs(14544i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-116f, -316f, -640f) * vec3<f32>(global0.d.b.x, -407f, -478f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, -1119f, 331f) - vec3<f32>(-1281f, global0.a.x, global0.d.b.x))), vec3<i32>(_wgslsmith_add_i32(u_input.a, -14336i), firstLeadingBit(1i), -global0.c.x)).d.a.c);
    var var_0 = Struct_2(Struct_1(~select(abs(global0.d.a.a), vec3<u32>(global0.d.a.c, 1u, 111683u), any(global0.d.a.b)), global0.d.a.b, global0.d.a.c, ~global0.d.a.a.x), global0.d.b);
    return vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-336f * 717f), _wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a.x, -1219f)) - -212f) + _wgslsmith_f_op_f32(trunc(-1121f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.b.x))))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    global4 = array<vec2<i32>, 29>();
    var var_0 = arg_1.a.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(143f, global0.a.x))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-global0.a.zz)))) - _wgslsmith_f_op_vec2_f32(func_5(func_2(1u, min(global0.c.xz, select(vec2<i32>(global0.c.x, 26235i), global4[_wgslsmith_index_u32(3856u, 29u)], arg_1.b.x)), vec3<f32>(-2356f, _wgslsmith_div_f32(global0.d.b.x, -831f), _wgslsmith_f_op_f32(-874f - 586f)), select(global0.c, vec3<i32>(-2147483647i, -52376i, u_input.a), 9224u <= global0.d.a.d)), global0.d.a.b.x)));
    global3 = ~5088u;
    var var_2 = var_1.x;
    return func_2(~1u, min(firstTrailingBit(countOneBits(-global0.c.yy)), -_wgslsmith_mult_vec2_i32(vec2<i32>(global0.c.x, -2147483647i) >> (arg_1.a.zy % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(global0.c.zx, global4[_wgslsmith_index_u32(0u, 29u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 475f, var_1.x)) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_1.x, -791f, var_1.x)))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(trunc(global0.a))))), firstLeadingBit(global0.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(546f)) - _wgslsmith_f_op_f32(f32(-1f) * -439f));
    let var_1 = global0.b.x;
    var var_2 = func_1(_wgslsmith_mod_i32(global0.c.x, -(global0.e | 23520i)) >> (global0.d.a.d % 32u), global0.d.a);
    var var_3 = Struct_2(global0.d.a, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-973f, 404f) * vec2<f32>(global0.d.b.x, -877f))) - _wgslsmith_f_op_vec2_f32(-func_1(-12808i, global0.d.a).d.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.a.x, _wgslsmith_f_op_f32(-1373f + -959f))))));
    global0 = Struct_3(var_2.a, !(!(!func_4(var_2.d.a.b.zx, vec2<f32>(var_3.b.x, var_2.a.x), vec2<f32>(-590f, global0.a.x), Struct_1(var_2.d.a.a, var_3.a.b, var_2.d.a.d, 7282u)).zx)), var_2.c, func_2(abs(_wgslsmith_div_u32(9777u, global0.d.a.c)), -(~_wgslsmith_mult_vec2_i32(var_2.c.xz, global0.c.zz)), vec3<f32>(556f, _wgslsmith_f_op_f32(min(1014f, _wgslsmith_f_op_f32(floor(var_2.a.x)))), _wgslsmith_f_op_vec2_f32(func_5(Struct_3(vec3<f32>(var_3.b.x, -137f, 619f), global0.b, var_2.c, Struct_2(Struct_1(vec3<u32>(4294967295u, 0u, var_3.a.a.x), vec3<bool>(true, var_3.a.b.x, var_2.d.a.b.x), var_2.d.a.c, 0u), global0.a.yy), 56599i), any(vec3<bool>(true, true, false)))).x), ~reverseBits(func_2(3976u, vec2<i32>(-1i, -61976i), global0.a, var_2.c).c)).d, global2[_wgslsmith_index_u32(global0.d.a.c, 15u)]);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -(~u_input.a));
}

