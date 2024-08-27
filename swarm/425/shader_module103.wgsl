struct Struct_1 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(191f, -298f);

var<private> global1: array<Struct_2, 26>;

var<private> global2: vec3<f32>;

var<private> global3: array<vec4<f32>, 11> = array<vec4<f32>, 11>(vec4<f32>(-1443f, 239f, 2752f, 1000f), vec4<f32>(-1000f, 794f, 1364f, 729f), vec4<f32>(372f, -1387f, -555f, 329f), vec4<f32>(-870f, 799f, 2372f, 2701f), vec4<f32>(-323f, 769f, 113f, -803f), vec4<f32>(125f, 748f, 189f, -2040f), vec4<f32>(776f, -1081f, -518f, 465f), vec4<f32>(1650f, -1132f, -1618f, 136f), vec4<f32>(1532f, 418f, -591f, -1000f), vec4<f32>(1147f, 2176f, -260f, -295f), vec4<f32>(-188f, -835f, 611f, 528f));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    let var_0 = ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 97600u, ~u_input.a.x), vec3<u32>(~25833u, select(0u, abs(u_input.a.x), true), countOneBits(_wgslsmith_mult_u32(u_input.a.x, 42906u))));
    var var_1 = !select(vec3<bool>(!(!arg_0.d.x), arg_0.c != arg_0.c, !arg_0.d.x || arg_0.d.x), select(select(arg_0.d, select(arg_0.d, arg_0.d, false), true), !select(arg_0.d, arg_0.d, arg_0.d), vec3<bool>(true, false, true)), !(!(!arg_0.d.x)));
    global0 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(691f + global2.x), global0.x)));
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1957f * 3127f) - _wgslsmith_f_op_f32(f32(-1f) * -387f)))))));
    let var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(3027f, global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - global0.x)))))));
    return arg_0.a;
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-408f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global0.x) * global2.x)))));
    global1 = array<Struct_2, 26>();
    var var_1 = Struct_1(~(_wgslsmith_clamp_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-9525i, -1i, 25321i), vec3<i32>(441i, 1635i, 27021i)), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -23128i, 2147483647i), vec3<i32>(10629i, 2147483647i, -44583i)), -vec3<i32>(35995i, -2147483647i, -37066i)) >> (max(vec3<u32>(u_input.a.x, 78700u, u_input.b.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 0u, 4294967295u), vec3<u32>(58955u, 6834u, 4294967295u))) % vec3<u32>(32u))), abs(-firstTrailingBit(func_3(Struct_1(vec3<i32>(60490i, -1695i, 34337i), vec3<i32>(-1i, 6761i, 1i), 50534i, vec3<bool>(false, true, true), vec2<i32>(1i, 1i))))), -15568i, !(!vec3<bool>(true, all(vec2<bool>(false, true)), false)), vec2<i32>(_wgslsmith_add_i32(~1i, 1i), i32(-1i) * -max(0i, 2147483647i)));
    var var_2 = Struct_1(var_1.b, abs(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-84393i, var_1.b.x, 0i) & select(vec3<i32>(-1i, -6129i, var_1.e.x), vec3<i32>(-9833i, var_1.e.x, var_1.a.x), vec3<bool>(var_1.d.x, var_1.d.x, var_1.d.x)), vec3<i32>(~1i, var_1.e.x, var_1.e.x), var_1.a)), min(var_1.e.x, -var_1.c), !vec3<bool>(true, var_1.d.x, _wgslsmith_mod_u32(11628u, u_input.b.x) == abs(75059u)), vec2<i32>(_wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(var_1.e.x, 1i << (1u % 32u), var_1.a.x)), -1561i));
    let var_3 = true;
    return ~(~(-1i));
}

fn func_1(arg_0: u32, arg_1: bool) -> vec3<i32> {
    var var_0 = func_2();
    let var_1 = ~(~firstLeadingBit(~_wgslsmith_mult_vec2_u32(u_input.b, u_input.b)));
    let var_2 = func_3(Struct_1(vec3<i32>(min(-52004i, _wgslsmith_mult_i32(0i, -2147483647i)), max(_wgslsmith_mult_i32(-27920i, -1i), 1i), abs(0i)), _wgslsmith_add_vec3_i32(firstTrailingBit(firstLeadingBit(vec3<i32>(-5376i, -1i, -2147483647i))), abs(vec3<i32>(-2147483647i, -1i, -39106i))), _wgslsmith_sub_i32(0i & select(1i, 4468i, arg_1), _wgslsmith_mult_i32(firstTrailingBit(10081i), 31350i)), select(vec3<bool>(false, true, false), select(vec3<bool>(true, true, true), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, false, arg_1), false), vec3<bool>(true, true, true)), !select(vec3<bool>(arg_1, arg_1, true), vec3<bool>(arg_1, arg_1, false), arg_1)), ~vec2<i32>(_wgslsmith_sub_i32(-15672i, 42415i), -6031i)));
    var var_3 = Struct_1(vec3<i32>(_wgslsmith_add_i32(var_2.x, var_2.x ^ var_2.x), select(~(-57622i), -var_2.x, !arg_1), max(var_2.x, var_2.x)) | ~var_2, ~vec3<i32>(firstTrailingBit(var_2.x), var_2.x, var_2.x | (var_2.x | 1i)), var_2.x, !vec3<bool>(arg_1 & false, false, false), _wgslsmith_add_vec2_i32(firstLeadingBit(-var_2.yz), vec2<i32>(_wgslsmith_mult_i32(~2006i, min(var_2.x, 22924i)), ~1i)));
    return select(countOneBits(vec3<i32>(-1i) * -var_3.b), -countOneBits(vec3<i32>(var_3.e.x, var_2.x, 1i)), !select(select(var_3.d, vec3<bool>(true, var_3.d.x, false), false), var_3.d, !vec3<bool>(arg_1, true, arg_1))) << (vec3<u32>(_wgslsmith_dot_vec2_u32(var_1, vec2<u32>(~arg_0, u_input.b.x)), arg_0, ~arg_0) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(abs(31396u), 26u)];
    var var_1 = true;
    global3 = array<vec4<f32>, 11>();
    global2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1064f, global2.x, global0.x) * vec3<f32>(global0.x, 201f, var_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a, global0.x, global0.x) - vec3<f32>(global2.x, 2686f, 1000f)), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1156f, global2.x, -442f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global2.x)))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1096f, global0.x) * vec3<f32>(global0.x, var_0.a, var_0.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, -195f, global2.x), vec3<f32>(global2.x, global0.x, global2.x), vec3<bool>(true, false, true)))))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global0.x, global0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, global2.x, global0.x)) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-420f, 789f, global2.x), vec3<f32>(-154f, global0.x, global2.x)))))))));
    var var_2 = Struct_1(-func_1(1u, true), abs(-(vec3<i32>(-2147483647i, 7978i, -2147483647i) << (vec3<u32>(1045u, u_input.a.x, 9044u) % vec3<u32>(32u)))), -13505i, vec3<bool>((abs(4294967295u) > (u_input.a.x >> (15152u % 32u))) && all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), true, true), vec2<i32>(func_2(), -(1i << (_wgslsmith_div_u32(0u, 4294967295u) % 32u))));
    let var_3 = _wgslsmith_add_i32(abs(47936i), _wgslsmith_mult_i32(abs(min(_wgslsmith_div_i32(-28975i, 1i), _wgslsmith_sub_i32(var_2.b.x, -7340i))), _wgslsmith_div_i32(i32(-1i) * -41804i, -1i)));
    global1 = array<Struct_2, 26>();
    var_1 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(var_2.a, -(~(vec3<i32>(var_2.a.x, -41418i, var_3) & vec3<i32>(var_2.b.x, -3216i, var_2.a.x)))), _wgslsmith_f_op_f32(step(1298f, -364f)), max(-(~var_2.a.x), func_3(Struct_1(vec3<i32>(var_2.b.x, var_3, 1i) >> (vec3<u32>(u_input.b.x, 57275u, u_input.b.x) % vec3<u32>(32u)), ~vec3<i32>(-38495i, -28208i, -3159i), -35157i, select(vec3<bool>(true, true, true), var_2.d, var_2.d.x), var_2.a.yz)).x), u_input.b.x, _wgslsmith_f_op_f32(step(global0.x, -133f)));
}

