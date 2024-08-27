struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
    d: vec4<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_2,
    d: f32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false));

var<private> global1: array<vec4<bool>, 16>;

var<private> global2: array<Struct_2, 10>;

var<private> global3: Struct_3 = Struct_3(vec2<u32>(11815u, 0u), vec2<f32>(-1707f, -1000f), Struct_2(1u, 0i, Struct_1(vec2<f32>(661f, 657f)), vec4<u32>(32650u, 0u, 33770u, 27674u), -12577i), 215f, vec2<i32>(64986i, 1i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> vec2<f32> {
    global1 = array<vec4<bool>, 16>();
    let var_0 = global3.a;
    let var_1 = ~global3.e & firstLeadingBit(firstLeadingBit(~select(global3.e, vec2<i32>(global3.e.x, 839i), false)));
    var var_2 = global3.c.c;
    var var_3 = Struct_3(global3.a, _wgslsmith_div_vec2_f32(vec2<f32>(-992f, _wgslsmith_f_op_f32(var_2.a.x - global3.b.x)), _wgslsmith_f_op_vec2_f32(select(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.c.c.a.x, global3.d), vec2<f32>(-1000f, -1370f)) + vec2<f32>(223f, -351f)), select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec2<bool>(true, false)))))), global2[_wgslsmith_index_u32(~(~1u) & var_0.x, 10u)], global3.b.x, -vec2<i32>(-18721i, var_1.x));
    return vec2<f32>(_wgslsmith_f_op_f32(-var_3.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.c.c.a.x), 2056f));
}

fn func_1() -> Struct_2 {
    let var_0 = all(select(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false))), vec2<bool>(!all(vec4<bool>(true, false, false, true)), all(!global1[_wgslsmith_index_u32(1u, 16u)])), true));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2())));
    var var_2 = Struct_1(vec2<f32>(global3.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(1954f - -1764f), true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-859f, global3.c.c.a.x)))))));
    let var_3 = vec4<i32>(0i, min(1i, i32(-1i) * -(u_input.b | -5355i)), -2147483647i, _wgslsmith_div_i32(u_input.b, 37077i));
    var var_4 = !select(var_0, var_0, true);
    return global2[_wgslsmith_index_u32(~u_input.a.x, 10u)];
}

fn func_3(arg_0: Struct_2) -> Struct_3 {
    var var_0 = func_1().c;
    global2 = array<Struct_2, 10>();
    let var_1 = ~vec2<u32>(countOneBits(9915u) << ((func_1().a << (~67492u % 32u)) % 32u), 1u);
    var var_2 = Struct_3(arg_0.d.zw, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global3.b)))), Struct_2(func_1().a, _wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(-17584i, global3.c.b, global3.e.x), vec3<i32>(-50859i, 25371i, 2415i)), ~vec3<i32>(1i, u_input.b, global3.e.x)), countOneBits(vec3<i32>(global3.e.x, 26623i, 0i))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.a.x, global3.d))) * vec2<f32>(-448f, global3.c.c.a.x))), abs(~(~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 3507u))), -2147483647i), -1112f, global3.e);
    let var_3 = Struct_2(~var_1.x, countOneBits(-_wgslsmith_add_i32(abs(global3.e.x), 1i)), func_1().c, vec4<u32>(min(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, arg_0.a, 99302u, 120217u), vec4<u32>(32654u, 0u, var_2.c.d.x, var_2.a.x)), u_input.a.x & 79358u), 4294967295u), u_input.a.x, ~1u, global3.c.a), 531i);
    return Struct_3(~(~(~(~vec2<u32>(var_3.d.x, u_input.a.x)))), vec2<f32>(var_2.c.c.a.x, _wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)), var_3, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-294f, arg_0.c.a.x))), vec2<i32>(-1i) * -vec2<i32>(firstTrailingBit(u_input.b), ~var_3.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_3(func_1());
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d + -3056f) - _wgslsmith_f_op_f32(f32(-1f) * -1184f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global3.c.c.a.x)), _wgslsmith_f_op_f32(2096f * var_0.d)))) <= -523f;
    global0 = array<vec4<bool>, 32>();
    global3 = Struct_3(var_0.a, _wgslsmith_f_op_vec2_f32(-func_3(func_3(Struct_2(1u, global3.c.e, global3.c.c, vec4<u32>(var_0.a.x, var_0.c.d.x, 1u, var_0.c.a), u_input.b)).c).b), Struct_2(~1u, var_0.c.e, func_3(Struct_2(_wgslsmith_add_u32(u_input.a.x, 1u), global3.c.e << (4294967295u % 32u), global3.c.c, min(global3.c.d, global3.c.d), ~global3.e.x)).c.c, global3.c.d, -reverseBits(15236i)), var_0.c.c.a.x, abs(var_0.e));
    var var_2 = _wgslsmith_sub_vec4_i32(select(abs(vec4<i32>(u_input.b, global3.e.x, u_input.b, u_input.b)) & vec4<i32>(-31499i, -21538i, global3.e.x, -1i), select(vec4<i32>(var_0.c.b, var_0.e.x, 0i, -19590i), vec4<i32>(global3.c.e, -1i, u_input.b, 33488i), true) << (_wgslsmith_sub_vec4_u32(global3.c.d, vec4<u32>(global3.c.a, 4294967295u, 0u, u_input.a.x)) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(~firstLeadingBit(var_0.c.d.x), 32u)]), vec4<i32>(_wgslsmith_add_i32(u_input.b, global3.c.e & u_input.b), 2147483647i, 24789i, ~(-2147483647i))) | select(vec4<i32>(-1i) * -vec4<i32>(var_0.e.x, var_0.c.e, 0i, global3.e.x), vec4<i32>(62183i, var_0.e.x & select(global3.c.b, 21541i, false), _wgslsmith_mod_i32(-global3.c.b, select(u_input.b, u_input.b, true)), countOneBits(_wgslsmith_mod_i32(u_input.b, -29864i))), true);
    var var_3 = vec4<u32>(~u_input.a.x | global3.a.x, 79283u, firstTrailingBit(_wgslsmith_sub_u32(101454u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(1295u, u_input.a.x), 1u))), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_0.c.d.xyz, global3.c.d.wxx) & firstTrailingBit(vec3<u32>(u_input.a.x, 20354u, 20505u)), func_3(func_3(global2[_wgslsmith_index_u32(~var_0.c.d.x, 10u)]).c).c.d.zzw));
    let var_4 = -8562i;
    let x = u_input.a;
    s_output = StorageBuffer(41480u, global3.c.d, var_4, global3.c.d.xyw);
}

