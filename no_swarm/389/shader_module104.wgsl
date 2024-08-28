struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: Struct_2;

var<private> global3: array<f32, 13> = array<f32, 13>(-487f, -1000f, 965f, 723f, -211f, 2580f, 1262f, -409f, -280f, 1177f, 1013f, -729f, 753f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(global2.a.x, _wgslsmith_clamp_i32(-1i, -677i, global2.a.x)), _wgslsmith_mod_i32(~(-(~global2.a.x)), -firstTrailingBit(u_input.b & 4484i)));
    let var_1 = _wgslsmith_mod_u32(u_input.a, u_input.c);
    global2 = Struct_2(global2.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global2.b)));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1626f, -114f, -580f) - vec3<f32>(-1215f, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(408f, global1.x, global2.b.x), vec3<f32>(557f, -713f, 512f))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, global1.x))), 185f, _wgslsmith_f_op_f32(1177f * _wgslsmith_f_op_f32(-global2.b.x)))));
    global0 = select(!(true & (-31798i >= var_0)), false, any(vec3<bool>(true, true, true))) || any(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false)), true), !select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, 44805u >= u_input.a)));
    return 741f;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = Struct_1(max(_wgslsmith_div_i32(global2.a.x, reverseBits(~0i)), -1i), select(vec4<bool>(false, true, all(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true & any(vec4<bool>(true, true, false, true))), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), true), !vec4<bool>(true, true, false, arg_0.x < arg_0.x)), vec3<i32>(_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_div_i32(-10895i, u_input.b)), select(_wgslsmith_mod_i32(0i, 30983i), firstTrailingBit(global2.a.x), true)), 2147483647i, -27980i << (1u % 32u)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec3_f32(-arg_0.zwz);
    global2 = Struct_2(vec3<i32>(~var_0.c.x << (31948u % 32u), u_input.b, _wgslsmith_mod_i32((var_1.c.x ^ -2147483647i) ^ reverseBits(-2147483647i), -u_input.b)), vec2<f32>(-1515f, 258f));
    let var_3 = min(select(vec2<i32>(u_input.b, -_wgslsmith_div_i32(22020i, var_1.a)), firstTrailingBit(vec2<i32>(select(-22259i, -1i, false), _wgslsmith_div_i32(3642i, 2147483647i))), vec2<bool>(var_0.b.x, select(false, true, all(vec2<bool>(var_0.b.x, var_0.b.x))))), vec2<i32>(26205i, var_1.c.x));
    return ~u_input.a;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_sub_i32(global2.a.x, min(global2.a.x, abs(_wgslsmith_clamp_i32(global2.a.x, countOneBits(u_input.b), _wgslsmith_mod_i32(arg_1.a, global2.a.x)))));
    let var_1 = Struct_2(vec3<i32>(-(i32(-1i) * -8262i), min(countOneBits(_wgslsmith_mod_i32(global2.a.x, arg_1.c.x)), 1i), -28410i), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, global2.b.x), vec2<f32>(global1.x, 1066f)), _wgslsmith_f_op_vec2_f32(global2.b * vec2<f32>(global1.x, -271f))) - global2.b))));
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2())))));
    var_2 = ~vec2<u32>(func_3(vec4<f32>(global1.x, -110f, global3[_wgslsmith_index_u32(4294967295u, 13u)], global3[_wgslsmith_index_u32(u_input.a, 13u)])) ^ (0u | u_input.a), ~(~54557u)) << ((arg_0 >> (arg_0 % vec2<u32>(32u))) % vec2<u32>(32u));
    return Struct_2(min(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-16587i, var_1.a.x, -26701i), -(vec3<i32>(19936i, global2.a.x, 2147483647i) | vec3<i32>(-22261i, global2.a.x, -1i)), select(global2.a, -vec3<i32>(u_input.b, 1i, 0i), false)), ~global2.a), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_3 * global2.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(global2.a, _wgslsmith_f_op_vec2_f32(-global2.b));
    global2 = func_1(reverseBits(~vec2<u32>(~44615u, ~55527u)), Struct_1(2147483647i, select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true), true), vec3<i32>(u_input.b, _wgslsmith_div_i32(-global2.a.x, _wgslsmith_mult_i32(u_input.b, u_input.b)), ~u_input.b ^ 24538i)));
    var var_0 = _wgslsmith_div_vec3_i32(global2.a, vec3<i32>(u_input.b, _wgslsmith_mod_i32(22662i, 69414i), u_input.b));
    var var_1 = Struct_1(-24697i, !select(vec4<bool>(true, any(vec4<bool>(false, true, false, false)), 1203f < global1.x, any(vec3<bool>(false, true, false))), vec4<bool>(true, false, true, true), vec4<bool>(var_0.x >= 2147483647i, 2559i >= var_0.x, true, true)), _wgslsmith_mod_vec3_i32(select(-max(vec3<i32>(global2.a.x, var_0.x, 1i), global2.a), global2.a, any(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true)))), -global2.a));
    let var_2 = ((~vec2<u32>(0u, u_input.a) >> (~select(vec2<u32>(1u, 1u), vec2<u32>(u_input.a, u_input.c), var_1.b.yz) % vec2<u32>(32u))) ^ _wgslsmith_add_vec2_u32(vec2<u32>(~20491u, ~u_input.c), ~vec2<u32>(u_input.c, 1u))) & vec2<u32>(u_input.c, ~u_input.a >> (~_wgslsmith_mod_u32(u_input.a, 20391u) % 32u));
    let var_3 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(37628u, 13u)] * global1.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.b.x), -168f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_f32(func_2()))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -581f) * _wgslsmith_f_op_f32(step(global1.x, -2014f))))));
    var var_4 = _wgslsmith_f_op_f32(-588f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-758f))))) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(var_3, 13u)], global1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_div_f32(1000f, global2.b.x)))));
    let var_5 = !select(!vec3<bool>(!var_1.b.x, any(var_1.b.zz), true), !var_1.b.wzy, !(!var_1.b.yww));
    var var_6 = _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1519f, _wgslsmith_f_op_f32(f32(-1f) * -1378f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + 193f), _wgslsmith_f_op_f32(global2.b.x + global3[_wgslsmith_index_u32(82114u, 13u)])) + 1463f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-518f - global1.x)))), global2.a.x, vec4<i32>(firstLeadingBit(11904i), abs(_wgslsmith_mult_i32(-9909i, var_0.x)), abs(abs(u_input.b)), -8757i) | _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.x, 40086i >> (0u % 32u), u_input.b, u_input.b), -(vec4<i32>(var_1.a, var_1.c.x, var_0.x, global2.a.x) & vec4<i32>(-9166i, var_0.x, global2.a.x, var_0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1443f, 814f, 1013f) - vec3<f32>(-127f, 395f, -717f))) * vec3<f32>(_wgslsmith_f_op_f32(global2.b.x + -321f), global2.b.x, -126f))), global2.a.x);
}

