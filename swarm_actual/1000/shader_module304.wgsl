struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: bool,
    d: vec2<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<u32>(4294967295u, 31381u, 0u)), Struct_1(vec3<u32>(36955u, 10449u, 1u)), Struct_1(vec3<u32>(18641u, 25628u, 1u)), Struct_1(vec3<u32>(70234u, 0u, 68497u)), Struct_1(vec3<u32>(1u, 27996u, 0u)), Struct_1(vec3<u32>(36906u, 1u, 0u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 52604u)), Struct_1(vec3<u32>(0u, 39236u, 43175u)), Struct_1(vec3<u32>(4294967295u, 0u, 1u)), Struct_1(vec3<u32>(0u, 40542u, 11054u)), Struct_1(vec3<u32>(10837u, 0u, 1u)), Struct_1(vec3<u32>(43318u, 11126u, 109254u)), Struct_1(vec3<u32>(30580u, 0u, 84563u)), Struct_1(vec3<u32>(39546u, 43590u, 9474u)), Struct_1(vec3<u32>(132523u, 4294967295u, 0u)), Struct_1(vec3<u32>(4294967295u, 8869u, 30679u)), Struct_1(vec3<u32>(4294967295u, 1u, 1u)), Struct_1(vec3<u32>(1u, 1u, 14776u)), Struct_1(vec3<u32>(4294967295u, 0u, 54929u)), Struct_1(vec3<u32>(37520u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 55581u)), Struct_1(vec3<u32>(4294967295u, 68148u, 4294967295u)), Struct_1(vec3<u32>(1u, 1u, 109097u)), Struct_1(vec3<u32>(0u, 31571u, 8645u)), Struct_1(vec3<u32>(31061u, 23565u, 1u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u)), Struct_1(vec3<u32>(0u, 5186u, 0u)), Struct_1(vec3<u32>(1u, 0u, 134730u)), Struct_1(vec3<u32>(17747u, 0u, 0u)), Struct_1(vec3<u32>(0u, 20965u, 0u)), Struct_1(vec3<u32>(0u, 0u, 19410u)), Struct_1(vec3<u32>(0u, 25912u, 0u)));

var<private> global1: array<vec4<i32>, 14> = array<vec4<i32>, 14>(vec4<i32>(i32(-2147483648), -23416i, 1i, -38726i), vec4<i32>(2147483647i, 0i, 2147483647i, 2147483647i), vec4<i32>(-4373i, 1i, 54273i, -17667i), vec4<i32>(1i, 0i, 741i, 2147483647i), vec4<i32>(30791i, i32(-2147483648), -50089i, -55249i), vec4<i32>(-11641i, 5500i, 2147483647i, -22853i), vec4<i32>(57885i, -5115i, 3092i, -1i), vec4<i32>(16506i, -38861i, 1i, -1i), vec4<i32>(i32(-2147483648), 2772i, i32(-2147483648), -11522i), vec4<i32>(-9428i, 31054i, -46873i, -1i), vec4<i32>(16924i, 0i, 52653i, i32(-2147483648)), vec4<i32>(i32(-2147483648), -1i, i32(-2147483648), 53823i), vec4<i32>(-50934i, 0i, 24159i, -11360i), vec4<i32>(i32(-2147483648), 17914i, 31015i, 6695i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4) -> u32 {
    global1 = array<vec4<i32>, 14>();
    let var_0 = ~1i;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-1622f, _wgslsmith_f_op_f32(-1941f - -837f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_div_f32(-1539f, 623f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(237f, -1928f)) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1638f, -416f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1501f, 293f)), vec2<f32>(-556f, 1007f)))));
    let var_2 = select(arg_1.b.a.xx, vec2<u32>(7704u, 4294967295u), !select(vec2<bool>(true, true), vec2<bool>(arg_1.c, false), !vec2<bool>(arg_1.c, arg_1.c))) | (min(arg_1.d, ~select(vec2<u32>(1u, 20646u), vec2<u32>(arg_1.d.x, 17367u), arg_1.c)) >> (firstTrailingBit(~arg_1.d) % vec2<u32>(32u)));
    var var_3 = true;
    return ~max(~var_2.x, arg_1.d.x);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(734f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-985f - 1000f))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1579f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-378f - -1041f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1186f))))), _wgslsmith_f_op_f32(round(193f)));
    global0 = array<Struct_1, 32>();
    var var_2 = 1u;
    let var_3 = vec2<u32>(abs(~(~4294967295u)), 0u) << (~_wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(2664u, 0u, 37277u), 0u), vec2<u32>(1u, 1u)) % vec2<u32>(32u));
    return global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~var_3.x, select(countOneBits(0u), func_3(vec3<u32>(var_3.x, 0u, 18799u), Struct_4(u_input.a, global0[_wgslsmith_index_u32(40766u, 32u)], true, var_3)), 18671u != var_3.x))), 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_1, arg_3: f32) -> vec2<u32> {
    return arg_0.a.yx;
}

fn func_1(arg_0: Struct_4, arg_1: u32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f))), 201f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-522f)))));
    global0 = array<Struct_1, 32>();
    global0 = array<Struct_1, 32>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -610f));
    var_0 = 1167f;
    return func_4(global0[_wgslsmith_index_u32(arg_1, 32u)], Struct_4(-u_input.c.x, func_2(), all(select(!vec2<bool>(arg_0.c, arg_0.c), vec2<bool>(arg_0.c, arg_0.c), select(vec2<bool>(false, arg_0.c), vec2<bool>(false, arg_0.c), vec2<bool>(arg_0.c, arg_0.c)))), ~vec2<u32>(arg_0.b.a.x, 0u)), Struct_1(~abs(max(vec3<u32>(29504u, arg_0.d.x, 22423u), arg_0.b.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(~1u, 32u)];
    global0 = array<Struct_1, 32>();
    let var_1 = vec2<bool>(true, true);
    let var_2 = _wgslsmith_add_vec2_u32(~var_0.a.yy, func_1(Struct_4(u_input.a, Struct_1(vec3<u32>(4294967295u, 77067u, 43957u)), any(vec2<bool>(true, true)), _wgslsmith_mult_vec2_u32(vec2<u32>(49203u, 56121u), vec2<u32>(var_0.a.x, 32922u))), _wgslsmith_mult_u32(~(~var_0.a.x), _wgslsmith_sub_u32(~1u, var_0.a.x))));
    global0 = array<Struct_1, 32>();
    let var_3 = _wgslsmith_f_op_f32(round(-238f));
    var_0 = Struct_1(abs(~(~vec3<u32>(30288u, 4294967295u, var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_3))) - -1363f))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(var_3 - -1442f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(var_3 + 185f))), _wgslsmith_div_vec4_f32(vec4<f32>(var_3, _wgslsmith_f_op_f32(var_3 + var_3), _wgslsmith_f_op_f32(min(-183f, 1017f)), var_3), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_3, 715f, var_3), vec4<f32>(-447f, var_3, -706f, var_3))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3, var_3, var_3, 1547f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1212f, 158f, var_3) - vec3<f32>(var_3, -986f, -731f)), vec3<f32>(var_3, -596f, var_3)))), _wgslsmith_add_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(var_2.x, var_2.x, 47978u, var_2.x), vec4<u32>(24866u, 24654u, 0u, var_0.a.x))) ^ ((vec4<u32>(19563u, var_2.x, 57352u, 5472u) & vec4<u32>(var_0.a.x, 15326u, 4294967295u, var_0.a.x)) >> (vec4<u32>(25316u, 1u, 0u, 9538u) % vec4<u32>(32u))), _wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(16525u, 0u, var_0.a.x, var_0.a.x), vec4<u32>(var_0.a.x, 91759u, var_0.a.x, var_2.x)), vec4<u32>(var_0.a.x, ~30407u, var_2.x, 26939u))), u_input.c.x);
}

