struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: u32 = 0u;

var<private> global2: u32 = 0u;

var<private> global3: array<f32, 6>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: vec2<u32>) -> vec2<f32> {
    global3 = array<f32, 6>();
    var var_0 = vec2<i32>(u_input.a, 2147483647i);
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(min(vec3<u32>(u_input.d.x, 0u, arg_2.x), vec3<u32>(arg_2.x, arg_2.x, u_input.d.x)), vec3<u32>(u_input.d.x, u_input.d.x, arg_2.x)), countOneBits(vec3<u32>(45050u, u_input.d.x, 4294967295u)))), _wgslsmith_add_u32(0u, _wgslsmith_clamp_u32(~arg_2.x, u_input.d.x, 1u >> (_wgslsmith_sub_u32(arg_2.x, 1u) % 32u)))), 6u)];
    var var_2 = firstLeadingBit(u_input.d);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(~4294967295u, 6u)], 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3[_wgslsmith_index_u32(21946u, 6u)], global3[_wgslsmith_index_u32(u_input.d.x, 6u)]), vec2<f32>(700f, global3[_wgslsmith_index_u32(0u, 6u)]), false))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(var_2.x, 6u)], -438f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(1u, 6u)], global3[_wgslsmith_index_u32(4294967295u, 6u)]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: vec2<f32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = (74574u >= ~_wgslsmith_add_u32(~arg_0.x, 4294967295u)) && (false && !all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))));
    var var_1 = Struct_4(336f, Struct_2(Struct_1(firstTrailingBit(arg_0) | (vec4<u32>(28844u, u_input.d.x, arg_1, 0u) | arg_0), !all(vec4<bool>(false, false, true, false)), -1146f), 2147483647i, Struct_1(abs(vec4<u32>(arg_1, 1u, 1u, 14109u)), !(798f > global3[_wgslsmith_index_u32(0u, 6u)]), arg_3.x), max(2147483647i, 1i)), Struct_2(Struct_1(arg_0, true, -175f), countOneBits(_wgslsmith_dot_vec2_i32(max(u_input.b, u_input.c), -vec2<i32>(u_input.c.x, u_input.c.x))), Struct_1(countOneBits(reverseBits(vec4<u32>(10721u, arg_1, u_input.d.x, arg_1))), global3[_wgslsmith_index_u32(32323u, 6u)] < global3[_wgslsmith_index_u32(1u, 6u)], _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, arg_2.x) + arg_2.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, firstLeadingBit(20958i)), vec2<i32>(-14935i, u_input.a))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1667f, var_1.c.c.c)))));
    global1 = _wgslsmith_clamp_u32(1u << (var_1.b.a.a.x % 32u), _wgslsmith_clamp_u32(~_wgslsmith_dot_vec3_u32(arg_0.wyz, var_1.b.a.a.wzz), 1u | arg_0.x, _wgslsmith_mult_u32(var_1.b.c.a.x, max(select(arg_0.x, 101469u, var_1.b.a.b), 1u))), ~(10195u ^ firstTrailingBit(_wgslsmith_sub_u32(5398u, 1u))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-2224f)), _wgslsmith_f_op_f32(-2647f * global3[_wgslsmith_index_u32(var_1.c.a.a.x & var_1.b.c.a.x, 6u)]))) - -469f);
    return var_1.b.a.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_4) -> bool {
    global3 = array<f32, 6>();
    var var_0 = ~countOneBits(reverseBits(vec4<i32>(-u_input.b.x, _wgslsmith_clamp_i32(u_input.c.x, -23377i, u_input.c.x), 0i, _wgslsmith_mod_i32(-2147483647i, u_input.c.x))));
    let var_1 = Struct_1(arg_2.c.a.a, all(select(select(!vec3<bool>(true, arg_1.c.b, true), !vec3<bool>(true, arg_0.b, arg_2.b.a.b), arg_1.c.b), !select(vec3<bool>(true, true, true), vec3<bool>(arg_1.c.b, arg_2.b.c.b, arg_0.b), true), !vec3<bool>(false, false, arg_0.b))), -624f);
    var var_2 = Struct_3(arg_2.b.a.a.x);
    global1 = _wgslsmith_div_u32(var_2.a, _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1865u, arg_1.c.a.x, u_input.d.x), ~arg_0.a.zwy)), ~_wgslsmith_mult_vec3_u32(firstTrailingBit(arg_0.a.xzx), _wgslsmith_div_vec3_u32(vec3<u32>(var_1.a.x, 4294967295u, 4294967295u), arg_0.a.wwz))));
    return (select(false, var_1.b, true) | arg_2.b.a.b) | (func_3(countOneBits(vec4<u32>(arg_1.c.a.x, 10927u, 0u, 3373u)), ~u_input.d.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_2.a, 817f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b.c.c, var_1.c) - vec2<f32>(1009f, 980f))), _wgslsmith_f_op_vec2_f32(func_2(var_1.b, var_0.x, ~vec2<u32>(0u, arg_0.a.x)))) > ~4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec2<bool>(true, true), vec2<bool>(select(true, true, true), false), !select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))) & (true && ((func_1(Struct_1(vec4<u32>(u_input.d.x, u_input.d.x, 1u, u_input.d.x), true, global3[_wgslsmith_index_u32(u_input.d.x, 6u)]), Struct_2(Struct_1(vec4<u32>(4294967295u, 1u, 4294967295u, 0u), false, -1733f), u_input.c.x, Struct_1(vec4<u32>(1u, u_input.d.x, u_input.d.x, 49703u), false, global3[_wgslsmith_index_u32(u_input.d.x, 6u)]), u_input.b.x), Struct_4(-348f, Struct_2(Struct_1(vec4<u32>(5831u, 0u, u_input.d.x, u_input.d.x), false, -389f), -18531i, Struct_1(vec4<u32>(4294967295u, 64235u, 27778u, 59713u), false, global3[_wgslsmith_index_u32(u_input.d.x, 6u)]), u_input.b.x), Struct_2(Struct_1(vec4<u32>(0u, u_input.d.x, u_input.d.x, 46562u), true, global3[_wgslsmith_index_u32(4294967295u, 6u)]), 14191i, Struct_1(vec4<u32>(u_input.d.x, 0u, 0u, u_input.d.x), true, global3[_wgslsmith_index_u32(1u, 6u)]), u_input.a))) | any(vec4<bool>(true, true, true, false))) & !all(vec3<bool>(false, true, true))));
    var var_1 = _wgslsmith_add_i32(abs(~(10187i >> (u_input.d.x % 32u))) << (~_wgslsmith_clamp_u32(u_input.d.x << (u_input.d.x % 32u), max(u_input.d.x, 47991u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.d.x, u_input.d.x), vec3<u32>(4294967295u, u_input.d.x, 7526u))) % 32u), firstLeadingBit(-14630i));
    var var_2 = -1205f;
    var var_3 = Struct_3(u_input.d.x);
    var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(firstLeadingBit(reverseBits(select(vec3<u32>(var_3.a, u_input.d.x, 21355u), vec3<u32>(0u, u_input.d.x, 1528u), vec3<bool>(true, false, false)))), ~vec3<u32>(abs(u_input.d.x), var_3.a, 8780u)), 1u), 6u)];
    let var_4 = false;
    var_0 = var_4;
    let var_5 = any(select(!(!(!vec2<bool>(var_4, var_4))), select(!(!vec2<bool>(var_4, var_4)), !(!vec2<bool>(var_4, var_4)), select(select(vec2<bool>(var_4, true), vec2<bool>(false, false), false), vec2<bool>(false, var_4), !var_4)), vec2<bool>(var_4, true)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(~vec2<i32>(0i, countOneBits(u_input.a)), -abs(u_input.b)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, u_input.a, 0i), vec3<i32>(-9692i, 1i, 12026i), vec3<i32>(1i, 1i, -1i)) | firstTrailingBit(_wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(11309i, u_input.b.x, u_input.a), vec3<i32>(u_input.b.x, 21715i, -15152i)), abs(vec3<i32>(u_input.b.x, 2147483647i, u_input.a)), vec3<i32>(58764i, 0i, 0i))), abs(firstLeadingBit(_wgslsmith_mod_u32(0u, 1u)) & u_input.d.x));
}

