struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec4<f32>,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec3<bool>(true, true, false), Struct_1(-305f, 1i, vec2<f32>(-630f, 783f), vec2<bool>(false, true), i32(-2147483648)), i32(-2147483648), Struct_2(Struct_1(-148f, 20362i, vec2<f32>(-1318f, -1111f), vec2<bool>(true, true), 6460i), vec2<u32>(1u, 13845u), vec3<f32>(1249f, -454f, -1000f), Struct_1(-102f, 2147483647i, vec2<f32>(1745f, -536f), vec2<bool>(true, false), 206i)));

var<private> global1: array<Struct_2, 32>;

var<private> global2: vec2<u32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec2<bool>) -> bool {
    global2 = vec2<u32>(0u & reverseBits(max(~global0.d.b.x, _wgslsmith_mod_u32(19178u, 22704u))), min(_wgslsmith_mod_u32(24057u, 16742u), ~(global0.d.b.x ^ 4294967295u) & _wgslsmith_clamp_u32(77844u, global2.x << (global2.x % 32u), max(55660u, arg_1.d.b.x))));
    var var_0 = global0.d.d;
    global1 = array<Struct_2, 32>();
    global0 = Struct_3(arg_1.a, global0.d.d, ~u_input.b, Struct_2(Struct_1(_wgslsmith_f_op_f32(-global0.b.c.x), -2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.d.c)), vec2<bool>(true, arg_2.x), ~arg_0), _wgslsmith_div_vec2_u32(vec2<u32>(~arg_1.d.b.x, max(global0.d.b.x, global2.x)), firstTrailingBit(global0.d.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.d.c * global0.d.c) + vec3<f32>(var_0.a, arg_1.d.c.x, var_0.c.x))), global0.b));
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.d.c.x) * _wgslsmith_f_op_f32(floor(var_0.c.x))), -1i, var_0.c, !(!(!select(global0.b.d, vec2<bool>(false, true), var_0.d.x))), u_input.b);
    return !arg_1.a.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<u32>) -> Struct_4 {
    var var_0 = Struct_5(vec4<f32>(-2513f, -1095f, global0.b.c.x, _wgslsmith_f_op_f32(step(896f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1585f, global0.b.c.x)))))), any(global0.b.d) && func_3(arg_0.x, Struct_3(select(global0.a, vec3<bool>(false, global0.a.x, false), global0.b.d.x), Struct_1(global0.b.c.x, global0.d.a.b, vec2<f32>(1122f, global0.b.c.x), vec2<bool>(false, true), -1i), u_input.b, global0.d), global0.a.yz), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d.d.a)))))));
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(707f, -675f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))))), var_0.b, _wgslsmith_f_op_f32(-641f - var_0.a.x));
    var_0 = Struct_5(var_1.a, !(!all(vec4<bool>(var_0.b, var_0.b, var_1.b, false))), _wgslsmith_f_op_f32(277f - 781f));
    global2 = arg_1.zy;
    var var_2 = 2147483647i;
    return Struct_4(global0.a.x);
}

fn func_4(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_4) -> Struct_2 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.d.d.a))), -1214f, global0.d.c.x, 3125f) - arg_2), arg_3.a, arg_2.x);
    let var_1 = 50162u;
    var var_2 = ~_wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(~vec3<u32>(global2.x, var_1, var_1), ~vec3<u32>(13237u, 30560u, global0.d.b.x))), firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, global2.x, 4294967295u), vec3<u32>(global0.d.b.x, 91225u, 47379u), vec3<u32>(global2.x, 23697u, var_1))));
    let var_3 = ~(global0.d.b.x >> (0u % 32u)) & 23677u;
    global0 = Struct_3(global0.a, Struct_1(arg_1, ~arg_0.x, _wgslsmith_f_op_vec2_f32(exp2(arg_2.zx)), select(select(select(vec2<bool>(true, var_0.b), vec2<bool>(false, var_0.b), global0.b.d.x), vec2<bool>(true, true), true), vec2<bool>(arg_3.a, global0.d.d.d.x), select(vec2<bool>(true, true), !global0.b.d, var_0.b)), _wgslsmith_sub_i32(firstTrailingBit(min(17232i, u_input.b)), _wgslsmith_clamp_i32(abs(33477i), _wgslsmith_dot_vec2_i32(arg_0, arg_0), global0.c))), ~1i, Struct_2(global0.b, ~global0.d.b, _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1479f, _wgslsmith_f_op_f32(690f - 258f), _wgslsmith_f_op_f32(max(arg_2.x, arg_1))))), Struct_1(var_0.a.x, global0.b.e ^ u_input.a, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 273f)))), vec2<bool>(all(vec2<bool>(false, true)), arg_3.a), 1i)));
    return global1[_wgslsmith_index_u32(var_2.x >> (28969u % 32u), 32u)];
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: vec3<i32>) -> u32 {
    var var_0 = func_4(arg_3.zx, -435f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(184f, -1592f), _wgslsmith_f_op_f32(f32(-1f) * -174f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(global0.d.d.a, global0.b.a)))))), func_2(countOneBits(_wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_3, arg_3, vec3<i32>(39259i, arg_3.x, arg_1)), -arg_3)), ~reverseBits(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(global0.d.b.x, 39649u, 4294967295u)))));
    var var_1 = global2.x <= ~1u;
    let var_2 = Struct_5(_wgslsmith_div_vec4_f32(vec4<f32>(global0.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(125f - -1182f)), _wgslsmith_f_op_f32(-412f + _wgslsmith_f_op_f32(f32(-1f) * -667f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d.c.x) - _wgslsmith_f_op_f32(min(582f, arg_0)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-480f, 521f, 1418f, -1000f), vec4<f32>(global0.d.c.x, var_0.c.x, var_0.c.x, 2326f), vec4<bool>(var_0.d.d.x, true, true, false))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.x, -372f, var_0.d.c.x, -679f))))), select(var_0.d.d.x, var_0.a.d.x, !(!arg_2)), _wgslsmith_f_op_f32(trunc(var_0.a.c.x)));
    var_0 = global1[_wgslsmith_index_u32(~global0.d.b.x, 32u)];
    let var_3 = -_wgslsmith_add_i32(abs(~global0.d.d.b), 1i);
    return _wgslsmith_add_u32(0u, 15967u);
}

fn func_5(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_4 {
    let var_0 = Struct_3(vec3<bool>(func_2(vec3<i32>(_wgslsmith_sub_i32(u_input.b, global0.b.e), i32(-1i) * -2147483647i, arg_3.b), vec3<u32>(firstTrailingBit(4294967295u), ~17160u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, global2.x, global0.d.b.x, global0.d.b.x), vec4<u32>(1u, 4294967295u, 71290u, 1u)))).a, true, false), arg_3, arg_1, Struct_2(global0.b, ~arg_2.zz, vec3<f32>(arg_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.c.x) + _wgslsmith_f_op_f32(arg_3.c.x - -535f)), _wgslsmith_f_op_f32(select(global0.d.a.c.x, 913f, func_2(vec3<i32>(arg_1, arg_1, 26272i), vec3<u32>(global0.d.b.x, 88900u, arg_2.x)).a))), func_4(-vec2<i32>(arg_3.b, arg_1) | (vec2<i32>(19726i, arg_1) | vec2<i32>(-15957i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) - _wgslsmith_f_op_f32(-arg_3.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.d.c.x, 194f, arg_3.c.x, 1065f), vec4<f32>(arg_3.c.x, global0.b.c.x, global0.d.c.x, arg_3.a), vec4<bool>(global0.d.a.d.x, true, arg_3.d.x, false)))), Struct_4(global0.b.d.x)).a));
    let var_1 = Struct_3(var_0.a, func_4(vec2<i32>(1i, firstTrailingBit(firstTrailingBit(-1i))), 1240f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(370f, global0.b.c.x, -1000f, var_0.d.c.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.c.x, -247f, 826f, -751f) - vec4<f32>(735f, arg_3.a, -1000f, arg_3.a)))), func_2(vec3<i32>(arg_3.b, -2147483647i, -46665i) & -vec3<i32>(17445i, 2147483647i, arg_1), arg_2)).d, min(81135i, arg_3.e), Struct_2(arg_3, _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(vec2<u32>(4294967295u, arg_0)), global0.d.b, _wgslsmith_mod_vec2_u32(vec2<u32>(52045u, 23054u), global0.d.b)), _wgslsmith_div_vec2_u32(min(vec2<u32>(var_0.d.b.x, arg_2.x), vec2<u32>(70666u, arg_2.x)), _wgslsmith_sub_vec2_u32(var_0.d.b, var_0.d.b))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(var_0.d.c)) + _wgslsmith_f_op_vec3_f32(min(var_0.d.c, global0.d.c)))), Struct_1(global0.d.d.c.x, firstTrailingBit(_wgslsmith_sub_i32(arg_1, 0i)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(729f, 375f) - vec2<f32>(2019f, arg_3.c.x)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_3.c.x, 900f))))), vec2<bool>(true, global0.b.d.x), -1i)));
    var var_2 = arg_2.zy;
    var var_3 = !var_1.d.d.d.x;
    let var_4 = !(!var_1.d.a.d.x);
    return Struct_4(any(!select(vec4<bool>(var_4, false, var_1.b.d.x, false), select(vec4<bool>(var_4, global0.b.d.x, var_1.d.a.d.x, var_1.b.d.x), vec4<bool>(false, global0.a.x, var_0.b.d.x, false), vec4<bool>(true, false, false, arg_3.d.x)), any(var_0.a))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~global0.d.b;
    let var_0 = func_5(~_wgslsmith_add_u32(firstLeadingBit(global0.d.b.x) & func_1(global0.b.a, global0.c, false, vec3<i32>(62143i, -1i, -48487i)), 66999u), global0.d.a.b, vec3<u32>(reverseBits(~(~1u)), firstTrailingBit(min(_wgslsmith_div_u32(global2.x, global2.x), ~global2.x)), _wgslsmith_mult_u32(4294967295u, ~global0.d.b.x)), func_4(vec2<i32>(countOneBits(7802i), 1i << (global0.d.b.x % 32u)) << (func_4(vec2<i32>(2147483647i, global0.d.a.e), global0.b.a, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d.a.c.x, -865f, -343f, global0.d.a.a), vec4<f32>(global0.d.c.x, global0.d.a.c.x, 561f, global0.d.d.c.x))), func_2(vec3<i32>(-2147483647i, 18350i, 12821i), vec3<u32>(43336u, global2.x, global2.x))).b % vec2<u32>(32u)), _wgslsmith_f_op_f32(-func_4(vec2<i32>(-1i, -6240i) << (global0.d.b % vec2<u32>(32u)), _wgslsmith_f_op_f32(min(global0.b.a, -402f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(500f, 819f, -500f, global0.d.c.x), vec4<f32>(global0.d.c.x, global0.b.a, -749f, global0.d.a.a), global0.a.x)), func_2(vec3<i32>(global0.d.a.b, u_input.a, u_input.a), vec3<u32>(0u, 0u, global2.x))).a.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -396f, global0.d.c.x, -1000f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.a, global0.b.c.x, 267f, -1000f) * vec4<f32>(global0.d.c.x, 322f, global0.d.d.c.x, global0.b.a))))), Struct_4(!(global2.x <= 0u))).a);
    global2 = vec2<u32>(global0.d.b.x, ~(countOneBits(~50141u) >> (firstLeadingBit(33276u) % 32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(global0.d.c.x)), global0.c, global0.d.d.c, global0.a.zz, _wgslsmith_dot_vec2_i32((min(vec2<i32>(-1i, u_input.a), vec2<i32>(global0.d.a.e, u_input.a)) ^ vec2<i32>(-10859i, global0.d.a.b)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, global0.b.e), vec2<i32>(global0.c, global0.d.d.e), vec2<i32>(u_input.a, u_input.b) << (global0.d.b % vec2<u32>(32u))), min(max(min(vec2<i32>(-11935i, 33766i), vec2<i32>(-2147483647i, u_input.b)), vec2<i32>(u_input.b, -25399i)), -vec2<i32>(u_input.a, u_input.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.d.b.x, 4294967295u, 34944u, 1u), vec4<u32>(64725u, 0u, global2.x, global2.x)) << ((vec4<u32>(24404u, global0.d.b.x, global2.x, global2.x) | vec4<u32>(global2.x, global0.d.b.x, global2.x, global2.x)) % vec4<u32>(32u))), vec4<u32>(27770u, ~global0.d.b.x, global2.x, (global2.x | 0u) >> (1u % 32u))));
}

