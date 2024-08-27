struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec4<i32>,
    d: vec2<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 349f;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<i32>, 11> = array<vec3<i32>, 11>(vec3<i32>(108219i, i32(-2147483648), -1157i), vec3<i32>(2147483647i, 0i, i32(-2147483648)), vec3<i32>(37536i, -14943i, -17995i), vec3<i32>(i32(-2147483648), 1i, -1i), vec3<i32>(1i, 1i, 9731i), vec3<i32>(33051i, -1i, 39801i), vec3<i32>(1i, 0i, -68234i), vec3<i32>(-47223i, 2147483647i, -9315i), vec3<i32>(18087i, 1i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 1i), vec3<i32>(18698i, 2147483647i, 1i));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: i32, arg_1: f32) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -1218f))));
    let var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_mult_i32(max(0i, -1i), ~arg_0), countOneBits(-2147483647i >> (u_input.a % 32u))), -6835i), -firstTrailingBit(arg_0) | arg_0);
    var var_2 = 798f;
    let var_3 = false;
    var var_4 = false;
    return !vec2<bool>(true, global1.x);
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: vec4<bool>) -> vec3<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-809f * 325f))))))));
    var var_1 = Struct_2(var_0.a);
    var var_2 = arg_2.x;
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_1.a)), _wgslsmith_f_op_f32(250f - 1425f)) + _wgslsmith_div_f32(var_1.a, _wgslsmith_f_op_f32(var_0.a - var_1.a)))), global1.x, ~abs(reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, 25538i, -53580i, 6200i), vec4<i32>(-2147483647i, 2147483647i, -1643i, -2147483647i)))), arg_2.xy, false);
    var var_4 = arg_1.x & arg_1.x;
    return arg_2.yww;
}

fn func_2(arg_0: i32, arg_1: bool) -> Struct_3 {
    var var_0 = _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a, 1u, 1u), u_input.a);
    var var_1 = arg_0;
    let var_2 = arg_1;
    global1 = !(!(!func_3(false, vec2<u32>(1u, 1u), select(vec4<bool>(true, var_2, global1.x, var_2), vec4<bool>(arg_1, false, true, false), global1.x))));
    let var_3 = global2[_wgslsmith_index_u32(~4294967295u, 11u)];
    return Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f)), 1654f)), _wgslsmith_div_f32(1086f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1057f, 584f) * _wgslsmith_f_op_f32(sign(-972f)))) <= _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -332f), 725f) + 999f), vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(-vec4<i32>(arg_0, 12581i, var_3.x, arg_0), vec4<i32>(var_3.x, 12831i, 0i, -2424i), vec4<i32>(-20920i, 2147483647i, var_3.x, -1i) << (vec4<u32>(18275u, u_input.b.x, u_input.b.x, u_input.a) % vec4<u32>(32u))), select(global1.xx, global1.xz, var_2), !(!arg_1));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = Struct_3(Struct_1(arg_1.a.a), func_2(~reverseBits(-arg_1.c.x), true).b, arg_1.c, !global1.xy, global1.x);
    let var_1 = !(!select(select(vec4<bool>(false, true, global1.x, arg_1.b), vec4<bool>(global1.x, global1.x, arg_1.b, arg_1.d.x), vec4<bool>(arg_1.b, false, true, false)), !select(vec4<bool>(arg_1.b, true, arg_1.e, true), vec4<bool>(arg_1.d.x, global1.x, true, arg_1.b), vec4<bool>(global1.x, arg_1.d.x, global1.x, true)), vec4<bool>(all(vec4<bool>(global1.x, false, true, arg_1.e)), any(vec2<bool>(var_0.d.x, arg_1.d.x)), arg_1.e, all(vec2<bool>(false, false)))));
    let var_2 = vec4<i32>(abs(var_0.c.x), arg_1.c.x, ~select(2147483647i, i32(-1i) * -2147483647i, var_0.e), -1i) | arg_1.c;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(Struct_1(835f), global1.x & (u_input.c == _wgslsmith_mod_u32(0u, u_input.c)), ~vec4<i32>(0i, _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-39332i, -2147483647i, -1i), 2147483647i), -1835i >> (~u_input.a % 32u), 9514i), select(!global1.yx, select(vec2<bool>(true, true), func_1(-2147483647i, 215f), global1.zx), !global1.zx), u_input.b.x >= u_input.b.x);
    var_0 = func_4(12332u, func_2(var_0.c.x, global1.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2091f * -233f))), -450f, var_0.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f)))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-851f * var_0.a.a)), -306f, var_0.a.a, _wgslsmith_f_op_f32(step(func_4(u_input.b.x, Struct_3(var_0.a, var_0.e, var_0.c, vec2<bool>(global1.x, false), false)).a.a, _wgslsmith_f_op_f32(-1839f * var_0.a.a)))) - vec4<f32>(_wgslsmith_div_f32(var_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1696f)), -436f, _wgslsmith_f_op_f32(-1106f - _wgslsmith_f_op_f32(f32(-1f) * -680f)), -1261f)));
    let var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(2269f, 143f, var_0.a.a, var_1.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_0.a.a, 1000f, 123f) * vec4<f32>(142f, var_0.a.a, var_1.x, var_0.a.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1499f, var_0.a.a, 1182f, var_1.x)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.x, 1112f, var_1.x, var_1.x), vec4<f32>(-286f, -692f, var_1.x, -1916f), vec4<bool>(var_0.e, global1.x, var_0.d.x, global1.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-475f, 928f, var_1.x, -1271f)), !vec4<bool>(global1.x, false, var_0.d.x, var_0.b))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1473f, 280f, var_1.x, -974f), vec4<f32>(-191f, 908f, -1000f, -117f), false)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1099f, 2016f, 1702f, var_0.a.a), vec4<f32>(var_0.a.a, var_1.x, var_0.a.a, var_0.a.a), true)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -748f, var_0.a.a, 222f)) - _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(693f, var_1.x, -1382f, 445f), vec4<f32>(440f, var_1.x, -1392f, 792f))), vec4<f32>(var_0.a.a, 1000f, var_1.x, 1609f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(-1318f, _wgslsmith_div_f32(1350f, 599f), _wgslsmith_f_op_f32(step(-153f, var_0.a.a)), 1465f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-641f, var_0.a.a, var_1.x, var_0.a.a), vec4<f32>(-1194f, var_1.x, var_1.x, var_1.x))))), select(!(!vec4<bool>(global1.x, false, var_0.d.x, false)), !(!(!vec4<bool>(false, var_0.d.x, global1.x, var_0.d.x))), !(!vec4<bool>(true, true, false, var_0.e)))));
    let var_3 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~(-19203i), firstLeadingBit(-1i)), _wgslsmith_sub_i32(~0i, var_0.c.x | 2147483647i), -(var_0.c.x & -1i), 17528i) ^ -vec4<i32>(-56374i, -1i, 1i, 0i), func_2(countOneBits(reverseBits(i32(-1i) * -1i)), false).c);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~u_input.b.x, 0u), var_2, u_input.a);
}

