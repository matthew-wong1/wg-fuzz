struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec2<bool>,
    d: vec4<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_2 = Struct_2(true, 0i, vec3<i32>(-26163i, -1i, 1i), Struct_1(-1666f, vec3<i32>(62419i, -91837i, 1i), vec2<bool>(true, true), vec4<bool>(false, false, false, false), vec3<u32>(14079u, 8941u, 4294967295u)), Struct_1(-824f, vec3<i32>(-22163i, 13417i, 34079i), vec2<bool>(true, false), vec4<bool>(false, true, true, true), vec3<u32>(1u, 29937u, 45614u)));

var<private> global2: array<vec3<f32>, 8> = array<vec3<f32>, 8>(vec3<f32>(1604f, 1000f, 1281f), vec3<f32>(-143f, 2251f, 317f), vec3<f32>(-1673f, 2034f, 281f), vec3<f32>(725f, 169f, 978f), vec3<f32>(-540f, -2001f, 222f), vec3<f32>(648f, -2253f, 501f), vec3<f32>(454f, -1810f, 924f), vec3<f32>(847f, -1096f, -406f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(arg_2.a, vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(global1.e.b.x, _wgslsmith_sub_i32(8816i, 197i)), i32(-1i) * -1i), _wgslsmith_add_i32(~countOneBits(550i), global1.b), global1.e.b.x), select(vec2<bool>(global0.x, select(true, global0.x, all(vec3<bool>(false, global0.x, false)))), vec2<bool>(true, true), !any(select(vec2<bool>(arg_2.d.x, true), vec2<bool>(true, global0.x), vec2<bool>(true, global0.x)))), global1.d.d, select(~arg_2.e, global1.d.e, global0.x));
    global2 = array<vec3<f32>, 8>();
    let var_1 = _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global1.c.xz, _wgslsmith_mult_vec2_i32(~global1.e.b.yz, vec2<i32>(global1.e.b.x, 66973i))), var_0.b.zx >> (global1.e.e.zx % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(arg_2.b.xx, vec2<i32>(u_input.b, global1.c.x)), (var_0.b.xz >> (vec2<u32>(global1.d.e.x, 24165u) % vec2<u32>(32u))) & firstLeadingBit(vec2<i32>(5433i, 1i)))) ^ _wgslsmith_add_vec2_i32(-(arg_2.b.xz << (_wgslsmith_sub_vec2_u32(arg_2.e.xx, vec2<u32>(u_input.c.x, var_0.e.x)) % vec2<u32>(32u))), vec2<i32>(1i, _wgslsmith_sub_i32(abs(u_input.b), _wgslsmith_mult_i32(-1i, arg_2.b.x))));
    var var_2 = Struct_2(var_0.d.x, arg_2.b.x, vec3<i32>(-(~var_0.b.x), -global1.b, reverseBits(1i & _wgslsmith_mult_i32(arg_2.b.x, 1i))), global1.e, global1.d);
    global0 = vec3<bool>(true, select(!arg_2.c.x, true, _wgslsmith_add_u32(arg_2.e.x, select(global1.d.e.x, 74671u, true)) > 35890u), !(abs(1i) <= var_1.x));
    return global1.e.a;
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    let var_0 = arg_1.b.d.e.x;
    global1 = arg_2;
    let var_1 = Struct_3(vec4<f32>(995f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(i32(-1i) * -1i, _wgslsmith_f_op_f32(arg_1.c * -680f), Struct_1(arg_2.d.a, arg_2.e.b, arg_1.b.d.d.xx, vec4<bool>(global1.d.d.x, false, true, global0.x), arg_2.d.e)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-592f)))), arg_2.d.a), Struct_2(arg_2.a, arg_1.b.e.b.x, arg_1.b.e.b, global1.d, global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1114f - global1.e.a) + arg_1.b.d.a))) + _wgslsmith_f_op_f32(max(arg_2.e.a, 647f))));
    var var_2 = -var_1.b.c;
    var var_3 = -reverseBits(vec4<i32>(firstLeadingBit(select(arg_0, var_2.x, var_1.b.e.c.x)), arg_0, firstTrailingBit(-2147483647i) << ((13584u | var_0) % 32u), 0i));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(global1.e.a))));
}

fn func_1(arg_0: bool, arg_1: vec2<i32>, arg_2: bool, arg_3: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global2[_wgslsmith_index_u32(arg_3.b.e.e.x, 8u)], global2[_wgslsmith_index_u32(global1.d.e.x, 8u)], arg_3.b.d.d.yxz)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(arg_3.b.e.a, arg_3.b.e.a, -323f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(111285u, 8u)])))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(706f, _wgslsmith_f_op_f32(func_2(arg_3.b.b, arg_3, arg_3.b)), 951f) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_3.a.wxw * vec3<f32>(global1.d.a, arg_3.c, arg_3.b.e.a))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d.a, 512f, 1993f) * vec3<f32>(1084f, 1125f, -231f)), arg_3.a.wxw), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.a.wzy)), !arg_3.b.d.d.xxw))));
    var var_1 = ~vec3<i32>(_wgslsmith_clamp_i32(select(i32(-1i) * -1i, -global1.e.b.x, all(vec3<bool>(false, true, global1.e.c.x))), -2147483647i, arg_1.x), 64791i | global1.e.b.x, ~global1.b);
    let var_2 = any(vec3<bool>(false, false, !any(select(global1.e.d, vec4<bool>(global0.x, false, arg_0, arg_2), vec4<bool>(false, arg_3.b.a, false, false)))));
    var var_3 = firstLeadingBit(-vec4<i32>(-1i, -44469i, _wgslsmith_mod_i32(1i, u_input.b), min(0i, u_input.b)) & (_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, 38450i, var_1.x, -24905i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, 1i, -37849i, arg_1.x), vec4<i32>(arg_1.x, -21633i, 42863i, u_input.b), vec4<i32>(arg_3.b.e.b.x, 2147483647i, arg_3.b.d.b.x, 2147483647i))) << (vec4<u32>(_wgslsmith_div_u32(arg_3.b.d.e.x, global1.e.e.x), ~arg_3.b.e.e.x, arg_3.b.e.e.x, ~u_input.a.x) % vec4<u32>(32u))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -916f) * global1.e.a), -1097f))));
    return arg_3.b.d.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(!(!all(global1.e.d)), !global0.x, false, !global1.d.d.x);
    global0 = vec3<bool>(global0.x, !global0.x, (global0.x && true) & true);
    var var_1 = -(~(_wgslsmith_mod_i32(global1.b, global1.b) >> (40314u % 32u))) & _wgslsmith_dot_vec4_i32(vec4<i32>(54245i, _wgslsmith_sub_i32(reverseBits(u_input.b), 1i), _wgslsmith_mult_i32(u_input.b, u_input.b), u_input.b), -vec4<i32>(u_input.b, select(-15498i, global1.c.x, false), i32(-1i) * -9720i, 1i));
    var var_2 = Struct_2(any(global0.yx), -(~(~(-2147483647i))), -select(~min(vec3<i32>(global1.d.b.x, u_input.b, 35432i), global1.c), vec3<i32>(i32(-1i) * -1i, -global1.d.b.x, 18633i), var_0.zzx), Struct_1(_wgslsmith_f_op_f32(floor(global1.e.a)), countOneBits(_wgslsmith_sub_vec3_i32(global1.d.b, global1.e.b)), !var_0.xz, select(global1.e.d, !(!global1.d.d), !func_1(global1.a, global1.c.yx, true, Struct_3(vec4<f32>(-422f, global1.d.a, 168f, -1613f), Struct_2(false, u_input.b, global1.d.b, Struct_1(global1.e.a, vec3<i32>(-2147483647i, -59155i, 2147483647i), global0.yy, vec4<bool>(true, true, var_0.x, global0.x), u_input.a), global1.e), global1.e.a))), vec3<u32>(0u, ~98504u, 44420u)), global1.e);
    var var_3 = abs(select(-vec4<i32>(global1.d.b.x, ~(-2147483647i), _wgslsmith_mult_i32(var_2.c.x, -38862i), firstTrailingBit(u_input.b)), reverseBits(_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_2.d.b.x, global1.b, 31175i, u_input.b)), vec4<i32>(29639i, -27419i, 1i, u_input.b) & vec4<i32>(2147483647i, u_input.b, -2147483647i, global1.c.x))), var_2.d.d.x));
    let x = u_input.a;
    s_output = StorageBuffer(-1762f, 306f);
}

