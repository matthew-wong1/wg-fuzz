struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
    c: f32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec2<i32>(i32(-2147483648), -34173i), vec4<u32>(0u, 6232u, 1u, 0u), vec2<bool>(false, true), true), Struct_2(vec2<i32>(5119i, -28797i), vec4<u32>(4294967295u, 4294967295u, 55412u, 4294967295u), vec2<bool>(true, true), false), Struct_2(vec2<i32>(56281i, 15951i), vec4<u32>(34259u, 40037u, 22855u, 50635u), vec2<bool>(false, false), true), Struct_2(vec2<i32>(1i, 0i), vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec2<bool>(false, false), false), Struct_2(vec2<i32>(1i, -24441i), vec4<u32>(33877u, 25376u, 39128u, 18041u), vec2<bool>(true, false), false), Struct_2(vec2<i32>(36293i, -1i), vec4<u32>(41398u, 4294967295u, 13296u, 35127u), vec2<bool>(false, false), true), Struct_2(vec2<i32>(6750i, 2147483647i), vec4<u32>(1u, 1u, 7610u, 141658u), vec2<bool>(true, false), false));

var<private> global2: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(vec2<i32>(1i, 1i), 4294967295u, Struct_1(vec4<i32>(2147483647i, 59215i, 46759i, 2147483647i), false, true)), Struct_4(vec2<i32>(0i, i32(-2147483648)), 42924u, Struct_1(vec4<i32>(2147483647i, -1216i, 2147483647i, 0i), false, false)), Struct_4(vec2<i32>(2147483647i, 0i), 18165u, Struct_1(vec4<i32>(0i, 19680i, 0i, 8966i), true, false)), Struct_4(vec2<i32>(i32(-2147483648), 0i), 4294967295u, Struct_1(vec4<i32>(1i, -1i, 2147483647i, 52995i), true, false)), Struct_4(vec2<i32>(-1i, -12765i), 1u, Struct_1(vec4<i32>(1i, -30404i, -38014i, -1i), true, true)), Struct_4(vec2<i32>(1i, -82085i), 30891u, Struct_1(vec4<i32>(-40188i, 38977i, 0i, 23323i), true, false)), Struct_4(vec2<i32>(-23131i, i32(-2147483648)), 77621u, Struct_1(vec4<i32>(19435i, 1i, 13166i, 17735i), false, true)), Struct_4(vec2<i32>(-44087i, 1i), 1u, Struct_1(vec4<i32>(2147483647i, 0i, -39022i, -1i), true, false)), Struct_4(vec2<i32>(2147483647i, 26822i), 4294967295u, Struct_1(vec4<i32>(2147483647i, 3i, 50758i, -1i), false, true)), Struct_4(vec2<i32>(10577i, 34089i), 4294967295u, Struct_1(vec4<i32>(-848i, -37854i, -15311i, 1i), false, false)), Struct_4(vec2<i32>(-1i, 21293i), 1u, Struct_1(vec4<i32>(-1i, 0i, 0i, -26613i), true, true)), Struct_4(vec2<i32>(i32(-2147483648), -32135i), 0u, Struct_1(vec4<i32>(17707i, 0i, 0i, 2147483647i), false, true)), Struct_4(vec2<i32>(32050i, 0i), 47719u, Struct_1(vec4<i32>(-23881i, 2147483647i, 1i, -18545i), true, true)), Struct_4(vec2<i32>(i32(-2147483648), 10904i), 72746u, Struct_1(vec4<i32>(67844i, 0i, 18667i, -1i), false, true)), Struct_4(vec2<i32>(i32(-2147483648), 32452i), 92007u, Struct_1(vec4<i32>(2147483647i, 0i, -28222i, -24042i), true, true)), Struct_4(vec2<i32>(2147483647i, -7539i), 0u, Struct_1(vec4<i32>(0i, 0i, -29505i, 21926i), true, false)), Struct_4(vec2<i32>(-23160i, 40266i), 38108u, Struct_1(vec4<i32>(1i, -5919i, 1i, 22263i), false, true)), Struct_4(vec2<i32>(0i, 0i), 1u, Struct_1(vec4<i32>(37524i, 0i, 2147483647i, -22471i), true, false)), Struct_4(vec2<i32>(0i, 21039i), 0u, Struct_1(vec4<i32>(21656i, -25126i, -1i, 66585i), true, false)), Struct_4(vec2<i32>(1i, -5869i), 0u, Struct_1(vec4<i32>(2147483647i, 2147483647i, 53116i, -1i), true, false)), Struct_4(vec2<i32>(0i, 9437i), 1u, Struct_1(vec4<i32>(17966i, 59603i, -28765i, 1i), false, true)), Struct_4(vec2<i32>(13062i, 33812i), 4294967295u, Struct_1(vec4<i32>(-93685i, -6901i, -1i, 44810i), false, false)), Struct_4(vec2<i32>(8007i, 0i), 28884u, Struct_1(vec4<i32>(i32(-2147483648), 0i, -1i, 2147483647i), false, true)), Struct_4(vec2<i32>(17183i, 23098i), 4294967295u, Struct_1(vec4<i32>(i32(-2147483648), -41628i, i32(-2147483648), 1i), false, false)), Struct_4(vec2<i32>(-19602i, -57256i), 41144u, Struct_1(vec4<i32>(-1i, 1i, 0i, 0i), true, false)));

var<private> global3: Struct_5;

var<private> global4: u32;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32) -> bool {
    global0 = array<vec2<bool>, 4>();
    var var_0 = global2[_wgslsmith_index_u32(min(~(~22862u << ((u_input.b.x << (~49789u % 32u)) % 32u)), ~(~global3.d ^ reverseBits(~37510u))), 25u)];
    let var_1 = true;
    global1 = array<Struct_2, 7>();
    global3 = Struct_5(global3.a, all(global3.a.zy), _wgslsmith_div_f32(global3.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global3.c)) + global3.c))), abs(global3.d));
    return (136f == _wgslsmith_f_op_f32(global3.c + -240f)) || var_0.c.b;
}

fn func_2(arg_0: vec4<u32>, arg_1: u32) -> vec4<i32> {
    global3 = Struct_5(select(global3.a, global3.a, vec4<bool>(true, ~u_input.c < ~50527u, !(22307i != u_input.d.x), !all(global3.a.zxw))), !func_3(u_input.d.x | u_input.d.x), -485f, ~(~(~global3.d ^ 4294967295u)));
    global1 = array<Struct_2, 7>();
    var var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(abs(vec4<i32>(u_input.d.x, -57386i, u_input.d.x, u_input.d.x) ^ vec4<i32>(u_input.d.x, u_input.d.x, 1i, u_input.d.x)), max(vec4<i32>(u_input.d.x, -35934i, u_input.d.x, 7277i) ^ vec4<i32>(-12161i, 1168i, 16098i, 2147483647i), ~vec4<i32>(u_input.d.x, -2147483647i, 34082i, u_input.d.x))), global3.b, ~(~28719u) >= _wgslsmith_clamp_u32(4294967295u, 1u, 0u)));
    var var_1 = all(vec3<bool>(false, global3.b, all(vec4<bool>(any(global3.a.xzy), global3.c < global3.c, 11293u <= arg_1, true))));
    global2 = array<Struct_4, 25>();
    return -(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_0.a.a, var_0.a.a), reverseBits(var_0.a.a)) & var_0.a.a) >> (min(vec4<u32>(u_input.b.x, ~arg_0.x, min(~arg_1, u_input.b.x), _wgslsmith_clamp_u32(1u, arg_0.x, arg_0.x) | 1u), u_input.b) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_add_i32(select(u_input.d.x, ~arg_0.x, true), 1i);
    global1 = array<Struct_2, 7>();
    global2 = array<Struct_4, 25>();
    var var_1 = arg_1;
    global1 = array<Struct_2, 7>();
    return _wgslsmith_sub_vec4_i32(max(select(vec4<i32>(-34516i, arg_2.x, -34071i, u_input.d.x) ^ arg_0, abs(vec4<i32>(22606i, arg_0.x, 0i, arg_0.x)), !global3.a), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, arg_0.x, -4183i, arg_2.x), arg_2)), vec4<i32>(1i, _wgslsmith_mult_i32(arg_2.x, _wgslsmith_sub_i32(arg_0.x, var_0)), _wgslsmith_div_i32(var_0, ~(-16200i)), ~arg_2.x ^ u_input.d.x)) | -vec4<i32>(-1i, var_0, u_input.d.x, _wgslsmith_mod_i32(0i, 47665i));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>) -> Struct_5 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(-30978i, arg_1.x, u_input.d.x, 43531i)), func_4(-vec4<i32>(1i, u_input.d.x, 0i, arg_1.x), countOneBits(global3.d), func_2(u_input.a, 10206u), vec2<bool>(global3.b, false))), all(vec2<bool>(true, false)), false));
    var_0 = Struct_3(Struct_1(var_0.a.a, var_0.a.b, select(true, false, var_0.a.b && false)));
    let var_1 = var_0.a.b;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x)));
    var var_3 = _wgslsmith_div_vec2_f32(arg_0.zx, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-262f)) - _wgslsmith_f_op_f32(-1223f - global3.c))), global3.c));
    return Struct_5(!(!vec4<bool>(true, !var_0.a.c, var_0.a.c, var_0.a.b)), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2))), firstTrailingBit(13311u) | ~(4294967295u << ((28973u ^ global3.d) % 32u)));
}

fn func_5(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_5) -> Struct_4 {
    return Struct_4(~vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-33503i, -1i), u_input.d.yy)), ~u_input.d.x >> (select(u_input.c, arg_2.b.x, true) % 32u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u >> (0u % 32u), _wgslsmith_sub_u32(arg_2.b.x, 4294967295u)), vec2<u32>(arg_2.b.x, select(global3.d, arg_3.d, true))) >> (4294967295u % 32u), Struct_1(vec4<i32>(-arg_2.a.x, -arg_2.a.x, -countOneBits(arg_2.a.x), arg_2.a.x), true, false));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_4) -> bool {
    let var_0 = arg_0.c.a;
    let var_1 = global1[_wgslsmith_index_u32(arg_3.b, 7u)];
    let var_2 = !(!global0[_wgslsmith_index_u32(~min(firstTrailingBit(4294967295u), func_5(arg_2.x, u_input.a.x, global1[_wgslsmith_index_u32(arg_3.b, 7u)], Struct_5(global3.a, global3.a.x, global3.c, 4294967295u)).b), 4u)]);
    let var_3 = arg_3.c;
    var var_4 = false;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global3.c, _wgslsmith_f_op_f32(global3.c - arg_2.x))), -465f)))) >= arg_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = global1[_wgslsmith_index_u32(global3.d, 7u)];
    let var_2 = !vec2<bool>(func_6(func_5(627f, ~32781u, global1[_wgslsmith_index_u32(~global3.d, 7u)], func_1(vec4<f32>(global3.c, global3.c, -158f, -1053f), u_input.d.zx)), func_5(_wgslsmith_f_op_f32(floor(global3.c)), var_1.b.x, global1[_wgslsmith_index_u32(global3.d, 7u)], func_1(vec4<f32>(global3.c, 1181f, global3.c, global3.c), var_1.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.c, global3.c), vec2<f32>(620f, -144f), true))), func_5(_wgslsmith_f_op_f32(global3.c + -2035f), max(0u, global3.d), global1[_wgslsmith_index_u32(1u, 7u)], Struct_5(vec4<bool>(global3.a.x, global3.a.x, true, false), global3.b, global3.c, u_input.c))), false);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.c, global3.c))), global3.c) * _wgslsmith_f_op_f32(f32(-1f) * -459f));
    let var_4 = -(~_wgslsmith_mult_i32(~_wgslsmith_mult_i32(u_input.d.x, u_input.d.x), -2147483647i));
    var var_5 = func_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3 * -334f)), global3.c, _wgslsmith_f_op_f32(max(var_3, _wgslsmith_f_op_f32(sign(var_3)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global3.c)) + global3.c) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1195f) * -823f))), var_1.a);
    global2 = array<Struct_4, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(0u, 50339u), _wgslsmith_dot_vec4_u32(u_input.a >> (vec4<u32>(4294967295u, var_5.d, var_1.b.x, u_input.b.x) % vec4<u32>(32u)), select(var_1.b, vec4<u32>(global3.d, 72219u, 65720u, var_5.d), vec4<bool>(true, var_2.x, false, var_5.a.x))), func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1139f, global3.c, var_3, var_5.c)), firstLeadingBit(vec2<i32>(1i, u_input.d.x))).d), u_input.b.xzw), var_1.b, -(u_input.d.x << (((var_5.d | var_1.b.x) ^ ~u_input.b.x) % 32u)), func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global3.c), global3.c, all(select(global3.a.yzx, global3.a.xxz, true)))), (1u << (u_input.a.x % 32u)) << (0u % 32u), Struct_2(_wgslsmith_add_vec2_i32(~vec2<i32>(16870i, -2147483647i), vec2<i32>(2147483647i, u_input.d.x)), reverseBits(~vec4<u32>(0u, global3.d, global3.d, 4294967295u)), vec2<bool>(true | var_2.x, true), true), func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1479f, 593f, var_3, -381f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(166f, -1493f, 1000f, global3.c) - vec4<f32>(var_3, var_5.c, -413f, var_5.c))), countOneBits(vec2<i32>(var_0.x, var_4)))).c.a.x);
}

