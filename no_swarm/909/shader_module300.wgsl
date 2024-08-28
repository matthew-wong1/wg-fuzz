struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<f32>(-1371f, 1465f, -209f), vec2<bool>(true, false), vec3<u32>(1u, 32499u, 25582u), 5761u, vec4<u32>(59800u, 0u, 4294967295u, 4294967295u)), Struct_1(vec3<f32>(-463f, 1000f, 268f), vec2<bool>(true, false), vec3<u32>(1u, 4294967295u, 4294967295u), 64688u, vec4<u32>(1u, 4294967295u, 4294967295u, 29529u)), Struct_1(vec3<f32>(1000f, -278f, 1000f), vec2<bool>(true, true), vec3<u32>(1u, 9893u, 1u), 4294967295u, vec4<u32>(18865u, 22669u, 43193u, 32707u)), Struct_1(vec3<f32>(1421f, -1110f, -1286f), vec2<bool>(true, true), vec3<u32>(84282u, 1u, 0u), 57030u, vec4<u32>(47231u, 94172u, 9057u, 0u)), Struct_1(vec3<f32>(489f, 1153f, 224f), vec2<bool>(false, true), vec3<u32>(1987u, 1u, 15792u), 4294967295u, vec4<u32>(0u, 32653u, 1u, 11428u)), Struct_1(vec3<f32>(-332f, 1540f, -303f), vec2<bool>(true, true), vec3<u32>(8874u, 0u, 13973u), 27160u, vec4<u32>(17916u, 74738u, 1u, 0u)), Struct_1(vec3<f32>(-928f, -306f, -1939f), vec2<bool>(false, false), vec3<u32>(4294967295u, 162u, 22963u), 36399u, vec4<u32>(1u, 65804u, 16005u, 18809u)), Struct_1(vec3<f32>(-126f, -168f, -926f), vec2<bool>(true, true), vec3<u32>(1u, 0u, 0u), 11614u, vec4<u32>(74691u, 28873u, 0u, 89315u)), Struct_1(vec3<f32>(-1126f, -1150f, 567f), vec2<bool>(false, true), vec3<u32>(17080u, 4294967295u, 0u), 0u, vec4<u32>(14155u, 1u, 38920u, 11030u)), Struct_1(vec3<f32>(-677f, -1000f, -831f), vec2<bool>(true, false), vec3<u32>(4294967295u, 4294967295u, 15061u), 2706u, vec4<u32>(4294967295u, 22214u, 63478u, 42988u)), Struct_1(vec3<f32>(-1357f, 801f, -868f), vec2<bool>(true, true), vec3<u32>(1u, 0u, 0u), 34900u, vec4<u32>(41592u, 4294967295u, 215u, 4294967295u)), Struct_1(vec3<f32>(-1924f, 1000f, 1000f), vec2<bool>(false, true), vec3<u32>(1u, 0u, 53441u), 1u, vec4<u32>(13897u, 775u, 1u, 4294967295u)), Struct_1(vec3<f32>(-1165f, 2245f, -547f), vec2<bool>(true, false), vec3<u32>(4294967295u, 47963u, 1u), 23793u, vec4<u32>(1u, 5357u, 0u, 27848u)), Struct_1(vec3<f32>(1433f, -801f, -547f), vec2<bool>(true, false), vec3<u32>(4294967295u, 1u, 1u), 0u, vec4<u32>(19993u, 51926u, 0u, 28642u)), Struct_1(vec3<f32>(256f, -871f, 824f), vec2<bool>(false, true), vec3<u32>(34758u, 81337u, 51360u), 64139u, vec4<u32>(1u, 60606u, 2889u, 1u)));

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: i32) -> vec4<f32> {
    global0 = array<Struct_1, 15>();
    let var_0 = abs(min(~(~69118u), 36711u)) >= ~(u_input.a ^ firstTrailingBit(~92618u));
    let var_1 = !(!vec4<bool>(true == all(vec2<bool>(false, false)), any(select(vec3<bool>(var_0, true, false), vec3<bool>(true, var_0, var_0), vec3<bool>(true, false, var_0))), all(!vec4<bool>(false, false, false, var_0)), select(true, true || var_0, any(vec4<bool>(false, var_0, false, var_0)))));
    var var_2 = vec2<i32>(max(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_clamp_i32(arg_0, arg_0, -2147483647i)), ~reverseBits(arg_1), countOneBits(arg_1)), arg_1), select(0i, -1i, false));
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(~74562u, ~4294967295u), u_input.a), _wgslsmith_dot_vec4_u32(max(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a), vec4<u32>(u_input.b, 17877u, 36079u, 4422u)), min(vec4<u32>(1u, u_input.a, 37436u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.a, u_input.a))), vec4<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.a, u_input.a), vec3<u32>(35513u, 20735u, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(29508u, u_input.a, 1u, u_input.b), vec4<u32>(u_input.a, u_input.b, 14173u, 4294967295u)), 0u))), _wgslsmith_dot_vec2_u32(abs(~vec2<u32>(u_input.b, u_input.a)), vec2<u32>(abs(~u_input.a), abs(23414u))));
    return _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1871f)), 1f, _wgslsmith_f_op_f32(875f + -941f)))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<f32>) -> vec2<bool> {
    var var_0 = abs(~vec4<u32>(~(~u_input.b), _wgslsmith_add_u32(u_input.a, abs(u_input.b)), arg_2, abs(arg_2)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + -2095f)))))) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(350f))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(489f, arg_0.b.x, true))))))));
    var var_2 = var_1;
    global0 = array<Struct_1, 15>();
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool) -> Struct_1 {
    var var_0 = !func_4(Struct_3(max(~arg_0, -arg_0), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1) - _wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, -322f), vec2<f32>(220f, arg_1.x)))), arg_1, ~22420u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(918f, arg_1.x, -860f, 1000f)) - _wgslsmith_f_op_vec4_f32(func_3(-46982i, 38328i))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(select(-333f, 1000f, false)), _wgslsmith_f_op_f32(arg_1.x + arg_1.x), _wgslsmith_f_op_f32(exp2(arg_1.x)))));
    global0 = array<Struct_1, 15>();
    let var_1 = arg_0.x;
    var_0 = vec2<bool>(true, true);
    global0 = array<Struct_1, 15>();
    return global0[_wgslsmith_index_u32(u_input.a, 15u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>) -> u32 {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_0 = global0[_wgslsmith_index_u32(~arg_0.x ^ ~countOneBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(3226u, arg_0.x, 0u, 35551u), ~vec4<u32>(4294967295u, u_input.b, 26296u, 25404u))), 15u)];
    let var_1 = func_2(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i ^ arg_1.x, 1i), vec2<i32>(arg_1.x, arg_1.x)), -(~_wgslsmith_add_i32(1i, -21492i)), arg_1.x, arg_1.x), var_0.a.xy, true);
    global0 = array<Struct_1, 15>();
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(_wgslsmith_mult_u32(func_1(select(vec3<u32>(u_input.a, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.a, u_input.a), false), vec4<i32>(-2147483647i, 56419i, -2147483647i, 59733i) << (vec4<u32>(u_input.a, u_input.b, 84116u, 131531u) % vec4<u32>(32u))), u_input.a) << (_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(select(vec4<u32>(u_input.a, u_input.a, 27069u, 0u), vec4<u32>(27039u, u_input.b, 35721u, u_input.b), vec4<bool>(false, true, true, true)), vec4<u32>(0u, 4294967295u, 4294967295u, 37215u)), vec4<u32>(u_input.a, 14308u, 4294967295u, 49345u) >> ((vec4<u32>(0u, 1u, u_input.b, u_input.b) | vec4<u32>(u_input.b, u_input.b, 0u, 53849u)) % vec4<u32>(32u))) % 32u), (i32(-1i) * -2147483647i) < _wgslsmith_dot_vec2_i32(select(vec2<i32>(-1i, 2147483647i), vec2<i32>(2147483647i, 2147483647i), true) | vec2<i32>(-30502i, 0i), vec2<i32>(-3811i, 17036i) | select(vec2<i32>(-12818i, 9340i), vec2<i32>(2147483647i, -2147483647i), true)), 1f);
    var var_1 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(~(-1i), max(1i, 31317i), ~(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -58605i), vec2<i32>(49849i, -1i))), _wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(0i, 1i, -2147483647i, 1i))), max(~(-2147483647i), -1i)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(select(var_0.a, 4294967295u, var_0.b), ~var_0.a), 15u)];
    var var_3 = Struct_3(_wgslsmith_mod_vec4_i32(vec4<i32>((i32(-1i) * -70565i) << (~u_input.a % 32u), 2147483647i >> (var_2.c.x % 32u), (i32(-1i) * -1i) << (countOneBits(11691u) % 32u), -1i), -(vec4<i32>(11246i, 1i, 1i, -13731i) >> (var_2.e % vec4<u32>(32u))) ^ firstTrailingBit(-vec4<i32>(2147483647i, -2147483647i, -17984i, -2147483647i))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c - -764f) * -1134f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.a.x, _wgslsmith_f_op_f32(step(var_2.a.x, -301f)))) + -784f)));
    var var_4 = var_0.c;
    var var_5 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b.x, _wgslsmith_f_op_f32(abs(-540f)), _wgslsmith_f_op_f32(floor(var_0.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_i32(var_3.a.zxw | vec3<i32>(var_3.a.x, ~1i, countOneBits(2147483647i)), -vec3<i32>(var_3.a.x, 10946i, -1i) ^ max(max(vec3<i32>(var_3.a.x, var_3.a.x, var_3.a.x), var_3.a.xwx), var_3.a.wxz ^ var_3.a.zzy)), 16261i);
}

