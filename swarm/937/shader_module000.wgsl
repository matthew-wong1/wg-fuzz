struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, false, true, true), vec2<bool>(false, true));

var<private> global1: array<Struct_1, 24>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> vec3<bool> {
    return !vec3<bool>(all(select(vec2<bool>(global0.b.x, false), vec2<bool>(true, true), !global0.c)), abs(0i) < _wgslsmith_sub_i32(~arg_3.a.x, -1i), any(global0.a.zx));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(select(vec3<bool>(select(false, false & global0.b.x, true), all(select(global0.b.zx, global0.c, global0.b.yy)), !global0.a.x), global0.a, select(func_3(-1080f, _wgslsmith_f_op_vec2_f32(vec2<f32>(285f, 641f) + vec2<f32>(-924f, 1000f)), vec4<f32>(-2024f, -868f, 994f, 348f), global1[_wgslsmith_index_u32(~0u, 24u)]), vec3<bool>(true, u_input.b < 4294967295u, true), true)), !select(vec4<bool>(true, any(global0.a), global0.b.x, global0.b.x), global0.b, all(!vec2<bool>(true, global0.c.x))), func_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(863f)), _wgslsmith_f_op_f32(min(365f, -441f)))), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-934f)))), 1556f), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-710f, -364f, -1246f, -905f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(2135f, 1271f, 123f, -725f))))), global1[_wgslsmith_index_u32(max(~u_input.b | (55101u ^ u_input.b), _wgslsmith_dot_vec3_u32(u_input.c, firstTrailingBit(vec3<u32>(0u, u_input.b, u_input.b)))), 24u)]).xx);
    global1 = array<Struct_1, 24>();
    let var_0 = 0u;
    global0 = Struct_2(global0.a, vec4<bool>(!select(true, true, global0.c.x | global0.a.x), all(global0.b.www), !global0.b.x, func_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(1000f, 1000f)))), vec2<f32>(_wgslsmith_f_op_f32(floor(656f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, 2019f, 188f, -866f)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_0) & var_0, 24u)]).x), select(!select(global0.b.yz, select(global0.b.xy, global0.b.xw, false), global0.b.zy), global0.c, false));
    let var_1 = !func_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(698f + 466f), _wgslsmith_f_op_f32(ceil(-585f)))), -1970f, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 676f))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-217f, -331f, 1137f, -701f))), vec4<f32>(-1000f, 195f, -1128f, -710f), !global0.b)))), Struct_1(vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wxw, vec3<i32>(18430i, u_input.d.x, u_input.d.x)), i32(-1i) * -21594i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1161f, -543f)))), abs(u_input.b))).x;
    return Struct_2(vec3<bool>(false, var_1, var_1), !global0.b, select(func_3(257f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1348f, 920f), vec2<f32>(-565f, 1202f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-406f, 1783f)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1981f, 2569f, -576f, 842f) - vec4<f32>(-646f, 640f, -1989f, -822f)))), global1[_wgslsmith_index_u32(u_input.b, 24u)]).xz, select(select(!vec2<bool>(var_1, global0.b.x), func_3(1238f, vec2<f32>(1000f, -1498f), vec4<f32>(440f, 1854f, -1000f, 565f), global1[_wgslsmith_index_u32(4294967295u, 24u)]).xx, true), vec2<bool>(select(global0.a.x, true, true), global0.c.x), func_3(_wgslsmith_div_f32(745f, -414f), vec2<f32>(1000f, 390f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(705f, 896f, -150f, -467f))), global1[_wgslsmith_index_u32(countOneBits(33639u), 24u)]).yz), global0.a.x));
}

fn func_1() -> u32 {
    let var_0 = true;
    let var_1 = func_2();
    let var_2 = vec4<bool>(true, (_wgslsmith_mod_i32(54371i, abs(-55200i)) >> (u_input.c.x % 32u)) <= u_input.a.x, all(vec3<bool>(true || all(var_1.a.zx), false, global0.c.x)), !global0.b.x & !any(global0.b.yy));
    var var_3 = vec4<u32>(21082u, 16117u, ~(~63172u), 1322u);
    global1 = array<Struct_1, 24>();
    return u_input.b;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = u_input.d.x;
    var var_1 = vec3<f32>(-165f, arg_1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.b))));
    global1 = array<Struct_1, 24>();
    var var_2 = arg_1.a.x;
    let var_3 = Struct_2(vec3<bool>(true, true, global0.a.x), !(!(!(!vec4<bool>(false, true, false, global0.c.x)))), func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -635f), arg_1.b, arg_0 < 0u)) + _wgslsmith_f_op_f32(step(-583f, _wgslsmith_f_op_f32(min(-644f, var_1.x))))), _wgslsmith_f_op_vec2_f32(-var_1.yx), vec4<f32>(_wgslsmith_f_op_f32(sign(421f)), 460f, arg_2.b, _wgslsmith_f_op_f32(arg_2.b - var_1.x)), arg_1).zz);
    return Struct_1(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a.ww, vec2<i32>(-1i, 15376i & u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-588f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(106f)) + 1000f)), -813f), firstLeadingBit(u_input.c.x));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = ~(i32(-1i) * -10686i);
    let var_1 = u_input.a;
    let var_2 = func_4(_wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(~0u, arg_1.c), 87726u), ~abs(u_input.b) | max(~arg_1.c, arg_1.c)), arg_1, Struct_1(var_1.yz, _wgslsmith_f_op_f32(arg_1.b - 987f), _wgslsmith_add_u32(_wgslsmith_mod_u32(u_input.c.x, ~1u), 4294967295u)));
    var var_3 = var_1;
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b, arg_0, arg_1.b))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_1.b, arg_1.b, -455f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2031f, arg_0, 1000f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(954f, 1045f, arg_0) * vec3<f32>(var_2.b, 1250f, -866f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, arg_0, arg_1.b)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(960f, 491f, arg_0) + vec3<f32>(1000f, arg_0, 916f)))))));
    return Struct_1(~vec2<i32>(-25427i, ~arg_1.a.x), -823f, u_input.b >> (~(~26482u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.a.yy & vec2<i32>(-2147483647i, _wgslsmith_mult_i32(0i, u_input.a.x)));
    var var_1 = global1[_wgslsmith_index_u32(73502u, 24u)];
    let var_2 = global1[_wgslsmith_index_u32(67869u, 24u)];
    var_1 = func_5(_wgslsmith_div_f32(var_1.b, -1000f), func_4(4294967295u, global1[_wgslsmith_index_u32(func_1(), 24u)], global1[_wgslsmith_index_u32(~4294967295u, 24u)]), ~(-1i), func_2());
    var var_3 = _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -(_wgslsmith_div_i32(u_input.a.x, -2147483647i) | -18228i)), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.a.wzy, max(u_input.a.xyw, _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.x, -2147483647i, -30163i), u_input.a.ywz))), _wgslsmith_mod_i32(u_input.d.x, var_0.x)));
    let var_4 = 1000f;
    global0 = Struct_2(!(!global0.b.wxz), func_2().b, vec2<bool>(select((global0.c.x != global0.a.x) | (var_2.b != -861f), true, _wgslsmith_div_i32(var_2.a.x, -6205i) >= -64815i), select(true, !global0.b.x, any(vec4<bool>(global0.b.x, true, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(~(select(vec3<u32>(4294967295u, 32022u, var_2.c), min(vec3<u32>(4294967295u, var_1.c, u_input.b), u_input.c), true) >> (~vec3<u32>(u_input.c.x, 0u, u_input.b) % vec3<u32>(32u))), var_4, firstLeadingBit(vec3<i32>(var_3.x >> (~73854u % 32u), 2147483647i, var_2.a.x)), vec2<f32>(_wgslsmith_f_op_f32(trunc(var_1.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_4))) * -872f)), -100f);
}

