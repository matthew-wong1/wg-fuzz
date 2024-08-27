struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 8>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(Struct_1(false, 1i, vec3<bool>(true, true, true)), 2147483647i), Struct_2(Struct_1(true, -1i, vec3<bool>(false, false, true)), 4838i), Struct_2(Struct_1(true, -12768i, vec3<bool>(true, false, true)), -1i)), Struct_3(Struct_2(Struct_1(false, -15596i, vec3<bool>(true, true, true)), -12020i), Struct_2(Struct_1(false, i32(-2147483648), vec3<bool>(true, false, false)), 2147483647i), Struct_2(Struct_1(true, -1i, vec3<bool>(false, true, true)), -1i)), Struct_3(Struct_2(Struct_1(false, 42227i, vec3<bool>(false, false, false)), 2147483647i), Struct_2(Struct_1(true, 5236i, vec3<bool>(true, false, true)), 0i), Struct_2(Struct_1(false, i32(-2147483648), vec3<bool>(true, true, true)), 0i)), Struct_3(Struct_2(Struct_1(true, 0i, vec3<bool>(false, true, false)), -1869i), Struct_2(Struct_1(false, -1i, vec3<bool>(false, true, true)), -47014i), Struct_2(Struct_1(true, -1882i, vec3<bool>(true, true, true)), 2147483647i)), Struct_3(Struct_2(Struct_1(false, 19404i, vec3<bool>(true, true, true)), 0i), Struct_2(Struct_1(true, -1i, vec3<bool>(false, true, true)), 10578i), Struct_2(Struct_1(true, i32(-2147483648), vec3<bool>(false, false, true)), -9956i)), Struct_3(Struct_2(Struct_1(true, -38433i, vec3<bool>(false, false, false)), 11995i), Struct_2(Struct_1(true, -1i, vec3<bool>(true, true, false)), -28050i), Struct_2(Struct_1(false, -1i, vec3<bool>(true, true, false)), 2147483647i)), Struct_3(Struct_2(Struct_1(true, i32(-2147483648), vec3<bool>(false, false, true)), 0i), Struct_2(Struct_1(false, 4923i, vec3<bool>(false, false, false)), i32(-2147483648)), Struct_2(Struct_1(false, 35122i, vec3<bool>(true, false, false)), 2147483647i)), Struct_3(Struct_2(Struct_1(false, -1i, vec3<bool>(false, false, false)), -1i), Struct_2(Struct_1(false, 64304i, vec3<bool>(false, true, false)), -87921i), Struct_2(Struct_1(false, 28018i, vec3<bool>(true, true, false)), 28246i)), Struct_3(Struct_2(Struct_1(false, -1i, vec3<bool>(false, false, true)), -15907i), Struct_2(Struct_1(false, i32(-2147483648), vec3<bool>(true, false, false)), -1i), Struct_2(Struct_1(false, -10912i, vec3<bool>(false, true, false)), i32(-2147483648))), Struct_3(Struct_2(Struct_1(true, -1i, vec3<bool>(true, true, false)), 0i), Struct_2(Struct_1(true, 0i, vec3<bool>(false, false, false)), -11776i), Struct_2(Struct_1(true, 22171i, vec3<bool>(true, true, false)), 5440i)), Struct_3(Struct_2(Struct_1(true, 14726i, vec3<bool>(false, false, false)), 11309i), Struct_2(Struct_1(true, 0i, vec3<bool>(true, false, false)), -1i), Struct_2(Struct_1(true, -58968i, vec3<bool>(true, false, false)), 2147483647i)), Struct_3(Struct_2(Struct_1(true, 5104i, vec3<bool>(false, false, true)), -1i), Struct_2(Struct_1(true, 21186i, vec3<bool>(true, false, false)), -1i), Struct_2(Struct_1(false, 50360i, vec3<bool>(true, false, true)), -10989i)), Struct_3(Struct_2(Struct_1(false, 0i, vec3<bool>(false, true, false)), 11200i), Struct_2(Struct_1(false, -1i, vec3<bool>(false, false, true)), -71811i), Struct_2(Struct_1(false, -30371i, vec3<bool>(true, false, true)), -3308i)), Struct_3(Struct_2(Struct_1(true, -40190i, vec3<bool>(false, false, true)), i32(-2147483648)), Struct_2(Struct_1(true, 6819i, vec3<bool>(true, true, true)), -8065i), Struct_2(Struct_1(true, -1i, vec3<bool>(false, true, false)), i32(-2147483648))), Struct_3(Struct_2(Struct_1(false, 87348i, vec3<bool>(false, true, false)), 2147483647i), Struct_2(Struct_1(false, 2147483647i, vec3<bool>(true, true, true)), i32(-2147483648)), Struct_2(Struct_1(false, 2147483647i, vec3<bool>(false, true, true)), 0i)), Struct_3(Struct_2(Struct_1(true, 31108i, vec3<bool>(true, true, true)), 40260i), Struct_2(Struct_1(false, i32(-2147483648), vec3<bool>(false, true, true)), -13558i), Struct_2(Struct_1(false, 0i, vec3<bool>(false, true, false)), i32(-2147483648))), Struct_3(Struct_2(Struct_1(false, -20363i, vec3<bool>(false, true, true)), 1i), Struct_2(Struct_1(true, 20252i, vec3<bool>(true, false, true)), -5092i), Struct_2(Struct_1(true, 1i, vec3<bool>(true, true, true)), 2147483647i)), Struct_3(Struct_2(Struct_1(true, 14217i, vec3<bool>(true, false, true)), 0i), Struct_2(Struct_1(true, -33868i, vec3<bool>(true, false, false)), 0i), Struct_2(Struct_1(false, -48796i, vec3<bool>(false, false, true)), 1i)), Struct_3(Struct_2(Struct_1(true, -53006i, vec3<bool>(true, true, false)), 17947i), Struct_2(Struct_1(false, -16134i, vec3<bool>(true, true, false)), 1i), Struct_2(Struct_1(true, i32(-2147483648), vec3<bool>(false, false, false)), -29007i)), Struct_3(Struct_2(Struct_1(true, i32(-2147483648), vec3<bool>(false, true, true)), 2147483647i), Struct_2(Struct_1(true, i32(-2147483648), vec3<bool>(true, true, true)), -3639i), Struct_2(Struct_1(false, 2147483647i, vec3<bool>(false, true, false)), -42095i)), Struct_3(Struct_2(Struct_1(false, -51267i, vec3<bool>(false, false, false)), 2147483647i), Struct_2(Struct_1(true, 0i, vec3<bool>(false, false, false)), 1i), Struct_2(Struct_1(true, 1i, vec3<bool>(true, false, true)), -1i)), Struct_3(Struct_2(Struct_1(false, 2147483647i, vec3<bool>(false, true, true)), 10689i), Struct_2(Struct_1(false, -14841i, vec3<bool>(true, false, false)), -18362i), Struct_2(Struct_1(true, 1i, vec3<bool>(false, true, true)), i32(-2147483648))), Struct_3(Struct_2(Struct_1(false, -73617i, vec3<bool>(false, true, false)), -29490i), Struct_2(Struct_1(true, 20168i, vec3<bool>(false, true, true)), -16723i), Struct_2(Struct_1(true, 4328i, vec3<bool>(false, false, false)), 1i)), Struct_3(Struct_2(Struct_1(true, -9847i, vec3<bool>(false, true, false)), -31489i), Struct_2(Struct_1(true, -12529i, vec3<bool>(true, true, false)), i32(-2147483648)), Struct_2(Struct_1(true, -1i, vec3<bool>(true, false, false)), -15036i)), Struct_3(Struct_2(Struct_1(false, 0i, vec3<bool>(true, false, true)), 0i), Struct_2(Struct_1(false, -1i, vec3<bool>(true, false, false)), 1i), Struct_2(Struct_1(false, 483i, vec3<bool>(false, false, false)), 1i)), Struct_3(Struct_2(Struct_1(true, -1i, vec3<bool>(true, true, true)), i32(-2147483648)), Struct_2(Struct_1(true, 39135i, vec3<bool>(false, true, false)), 2147483647i), Struct_2(Struct_1(false, 0i, vec3<bool>(false, true, true)), 3864i)), Struct_3(Struct_2(Struct_1(false, -1i, vec3<bool>(true, false, false)), -1i), Struct_2(Struct_1(false, -37667i, vec3<bool>(false, true, false)), -18760i), Struct_2(Struct_1(true, i32(-2147483648), vec3<bool>(true, false, true)), i32(-2147483648))));

var<private> global2: array<Struct_2, 20>;

var<private> global3: array<vec3<bool>, 19> = array<vec3<bool>, 19>(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true));

var<private> global4: array<f32, 1> = array<f32, 1>(-1627f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec2<i32>) -> vec3<bool> {
    var var_0 = ~(~(5052u >> (~countOneBits(u_input.a.x) % 32u)));
    return vec3<bool>(arg_1.a, true && !arg_1.a, true);
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global3 = array<vec3<bool>, 19>();
    let var_0 = arg_2.c;
    var var_1 = u_input.a.x;
    var var_2 = Struct_2(arg_2, -2147483647i);
    var var_3 = vec3<u32>(reverseBits(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 117364u, 4294967295u) ^ vec3<u32>(21041u, u_input.a.x, u_input.a.x), min(vec3<u32>(38402u, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 1u, 0u))), 0u)), u_input.a.x >> (reverseBits(~abs(u_input.a.x)) % 32u), 63618u);
    return reverseBits(countOneBits(var_3.x));
}

fn func_2(arg_0: vec3<i32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_2 {
    var var_0 = Struct_1(true, -_wgslsmith_dot_vec2_i32(~reverseBits(arg_0.xy), _wgslsmith_mult_vec2_i32(arg_0.yx, vec2<i32>(arg_2, arg_2) & vec2<i32>(-9168i, arg_2))), global3[_wgslsmith_index_u32(func_4(_wgslsmith_clamp_vec3_i32(vec3<i32>(~239i, firstTrailingBit(1153i), -arg_2), arg_0, ~(-arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))), global4[_wgslsmith_index_u32(1u, 1u)])), Struct_1(false, arg_2, select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), func_3(vec4<i32>(arg_2, arg_2, -1165i, arg_0.x), Struct_1(false, arg_2, global3[_wgslsmith_index_u32(u_input.a.x, 19u)]), arg_0.zx), vec3<bool>(true, false, false))), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(u_input.a, ~u_input.a)), 20u)]), 19u)]);
    global1 = array<Struct_3, 27>();
    global2 = array<Struct_2, 20>();
    let var_1 = Struct_1(var_0.a, -18436i, global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, 23215u), 19u)]);
    var var_2 = Struct_3(global2[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 20u)], Struct_2(Struct_1(all(func_3(vec4<i32>(var_0.b, var_1.b, var_0.b, 1i), var_1, vec2<i32>(0i, var_0.b))), _wgslsmith_dot_vec2_i32(vec2<i32>(2187i, 1i), vec2<i32>(1i, -17996i)), !select(vec3<bool>(false, false, var_1.a), vec3<bool>(var_0.a, var_1.c.x, var_1.c.x), var_1.a)), countOneBits(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(-1i, 52678i, -2147483647i))) & abs(~(-35433i))), Struct_2(Struct_1(select(false, false, var_0.a) & true, 36670i, !var_0.c), var_1.b | ~arg_0.x));
    return Struct_2(Struct_1(true, ~((var_0.b | var_0.b) & firstTrailingBit(var_2.b.a.b)), !vec3<bool>(4294967295u <= u_input.a.x, var_2.a.a.c.x, var_0.a)), ~(~_wgslsmith_dot_vec2_i32(arg_0.xy, -vec2<i32>(arg_0.x, -29556i))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = vec4<i32>(-1i) * -vec4<i32>(-select(1i, -1579i, false), 13415i, 1i >> (abs(1u) % 32u), i32(-1i) * -1i);
    global0 = array<f32, 8>();
    let var_1 = Struct_3(func_2(var_0.xwx, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(4648u, 1u)], global4[_wgslsmith_index_u32(0u, 1u)]) + vec2<f32>(arg_0, 451f)), vec2<f32>(-185f, arg_0)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global4[_wgslsmith_index_u32(11870u, 1u)]) - vec2<f32>(-112f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)])) + vec2<f32>(global4[_wgslsmith_index_u32(87132u, 1u)], 687f))), var_0.x), Struct_2(func_2(_wgslsmith_div_vec3_i32(~vec3<i32>(var_0.x, 71300i, var_0.x), vec3<i32>(var_0.x, -2147483647i, 2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(sign(-1865f)), -1743f), var_0.x).a, var_0.x), Struct_2(Struct_1(true, _wgslsmith_mult_i32(var_0.x, firstTrailingBit(var_0.x)), vec3<bool>(true, true, true)), firstLeadingBit(-var_0.x)));
    let var_2 = ~vec2<u32>(_wgslsmith_sub_u32(max(~u_input.a.x, u_input.a.x), 1u ^ countOneBits(u_input.a.x)), u_input.a.x);
    let var_3 = ~firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.b, -1i, var_0.x, 36268i) | vec4<i32>(-54812i, var_0.x, 2147483647i, 2147483647i), firstTrailingBit(_wgslsmith_div_vec4_i32(var_0, vec4<i32>(var_1.a.b, 12821i, -57054i, -25511i)))));
    return u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2[_wgslsmith_index_u32(func_1(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(firstTrailingBit(0u), 1u)] + _wgslsmith_f_op_f32(sign(1f)))), 20u)];
    let var_1 = func_3(firstLeadingBit(abs(_wgslsmith_add_vec4_i32(vec4<i32>(-702i, -2147483647i, -52310i, var_0.a.b), vec4<i32>(-2147483647i, -48697i, -2147483647i, var_0.a.b)) | vec4<i32>(0i, 0i, var_0.b, 129563i))), Struct_1(!(!(!var_0.a.c.x)), abs(-29024i), vec3<bool>(func_2(vec3<i32>(var_0.a.b, -11354i, -37681i), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1404f, -1000f), vec2<f32>(global4[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), vec2<bool>(var_0.a.c.x, true))), i32(-1i) * -1i).a.a, true, var_0.a.a)), vec2<i32>(var_0.b ^ (firstTrailingBit(2147483647i) & (i32(-1i) * -2147483647i)), 7316i)).zy;
    var var_2 = -247f;
    global3 = array<vec3<bool>, 19>();
    var var_3 = vec2<bool>(var_0.a.c.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4[_wgslsmith_index_u32(u_input.a.x, 1u)], -1035f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global4[_wgslsmith_index_u32(u_input.a.x, 1u)])) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], -859f, 1000f), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(31774u, 8u)]), false))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-354f, 551f, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], global0[_wgslsmith_index_u32(32211u, 8u)]), vec4<f32>(-1581f, global4[_wgslsmith_index_u32(53298u, 1u)], -458f, global4[_wgslsmith_index_u32(4294967295u, 1u)]), false)))))), _wgslsmith_dot_vec2_u32(~(~u_input.a), max(u_input.a, reverseBits(u_input.a))) | ~_wgslsmith_sub_u32(~u_input.a.x, u_input.a.x), vec3<i32>(~0i, ~((var_0.a.b >> (u_input.a.x % 32u)) << (~u_input.a.x % 32u)), var_0.a.b));
}

