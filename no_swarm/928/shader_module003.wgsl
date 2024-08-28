struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 27> = array<bool, 27>(false, true, false, true, false, false, false, false, true, true, false, true, false, false, true, false, false, true, true, false, false, false, false, true, true, false, true);

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec4<bool>(true, false, true, false)), Struct_2(vec4<bool>(true, true, false, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(true, false, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, true, true, false)), Struct_2(vec4<bool>(false, true, false, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(true, false, false, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(true, true, false, false)), Struct_2(vec4<bool>(false, false, false, false)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(true, false, true, true)), Struct_2(vec4<bool>(false, true, false, false)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, true, true, true)), Struct_2(vec4<bool>(false, false, true, true)), Struct_2(vec4<bool>(false, false, false, true)), Struct_2(vec4<bool>(false, true, false, false)));

var<private> global2: array<i32, 4> = array<i32, 4>(1i, -27894i, i32(-2147483648), 2147483647i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> f32 {
    global1 = array<Struct_2, 27>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(-719f, 2037f), _wgslsmith_f_op_f32(round(315f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-398f, 737f)))))))), u_input.b, -vec2<i32>(10796i, 28744i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, 10533i << (~u_input.a % 32u)), 65005i), -9383i);
    let var_1 = -416f;
    return -1947f;
}

fn func_3(arg_0: bool) -> f32 {
    var var_0 = u_input.a;
    let var_1 = 1i;
    var var_2 = 1014f;
    var var_3 = select(vec3<bool>(global2[_wgslsmith_index_u32(~0u, 4u)] > _wgslsmith_mult_i32(12477i, 25056i), arg_0, true), vec3<bool>(!arg_0, arg_0 && true, select(false & global0[_wgslsmith_index_u32(96772u, 27u)], all(vec2<bool>(true, true)), true) | (u_input.a > _wgslsmith_mult_u32(u_input.a, u_input.a))), false);
    global1 = array<Struct_2, 27>();
    return _wgslsmith_f_op_f32(max(391f, _wgslsmith_f_op_f32(-1800f + _wgslsmith_f_op_f32(select(-369f, _wgslsmith_f_op_f32(step(1120f, 1396f)), any(select(vec4<bool>(arg_0, true, arg_0, false), vec4<bool>(arg_0, false, false, false), arg_0)))))));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1320f + 899f)))), _wgslsmith_f_op_f32(f32(-1f) * -362f)));
    var var_1 = arg_0;
    var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-arg_0.a.x)));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_3(false))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.a, vec2<f32>(847f, -1000f))) * vec2<f32>(var_0, -1000f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1213f, 1187f)), _wgslsmith_f_op_vec2_f32(sign(arg_0.a)), select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 27u)], true), vec2<bool>(false, arg_2), vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)], false)))))), 24968i, vec2<i32>(select(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-5457i, 0i, 33956i), vec3<i32>(-1i, -61095i, var_1.c.x)), vec3<i32>(-6162i, -49582i, 21881i) | vec3<i32>(0i, global2[_wgslsmith_index_u32(u_input.a, 4u)], arg_0.e)), global2[_wgslsmith_index_u32(82514u, 4u)], true), u_input.b), 2147483647i, global2[_wgslsmith_index_u32(0u, 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    global0 = array<bool, 27>();
    global1 = array<Struct_2, 27>();
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(163f + -111f), 357f)), global2[_wgslsmith_index_u32(1u, 4u)], ~min(abs(vec2<i32>(u_input.b, global2[_wgslsmith_index_u32(9598u, 4u)])), vec2<i32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], -1i)), _wgslsmith_dot_vec4_i32(vec4<i32>(global2[_wgslsmith_index_u32(2737u & u_input.a, 4u)], -8882i, ~global2[_wgslsmith_index_u32(u_input.a, 4u)], abs(global2[_wgslsmith_index_u32(u_input.a, 4u)])), abs(select(vec4<i32>(370i, u_input.b, 23574i, 38836i), vec4<i32>(1i, -2566i, 1i, -48283i), vec4<bool>(global0[_wgslsmith_index_u32(71587u, 27u)], global0[_wgslsmith_index_u32(8213u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)])))), global2[_wgslsmith_index_u32(u_input.a, 4u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(660f))), true);
    var var_1 = reverseBits(firstTrailingBit(_wgslsmith_clamp_vec4_i32(-vec4<i32>(20549i, -39320i, -2147483647i, u_input.b), _wgslsmith_clamp_vec4_i32(select(vec4<i32>(2147483647i, var_0.d, 1i, u_input.b), vec4<i32>(-1i, -1i, u_input.b, 2147483647i), vec4<bool>(true, global0[_wgslsmith_index_u32(51154u, 27u)], false, global0[_wgslsmith_index_u32(u_input.a, 27u)])), vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(115416u, 4u)], 5718i, u_input.b) << (vec4<u32>(u_input.a, 57107u, u_input.a, 1u) % vec4<u32>(32u)), vec4<i32>(-1i, 46969i, 15798i, u_input.b)), -_wgslsmith_mod_vec4_i32(vec4<i32>(-35448i, u_input.b, global2[_wgslsmith_index_u32(14900u, 4u)], -2147483647i), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 4u)], u_input.b, var_0.d, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(927f, var_0.a.x), vec2<f32>(-1092f, -236f))))), var_0.a), var_0.a, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a, 27u)], true))), reverseBits(i32(-1i) * -35184i), countOneBits(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(16378u, 4294967295u)), vec2<u32>(1992u, u_input.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-540f)))))), ~(~(vec2<u32>(u_input.a, 5899u) << ((vec2<u32>(u_input.a, u_input.a) & vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u)))));
}

