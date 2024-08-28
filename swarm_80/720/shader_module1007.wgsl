struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec4<i32>(0i, -37058i, 39996i, -55104i)), Struct_3(vec4<i32>(1i, 2147483647i, -31901i, 2147483647i)), Struct_3(vec4<i32>(-16823i, 2147483647i, 2147483647i, 24441i)), Struct_3(vec4<i32>(0i, 18714i, i32(-2147483648), 19583i)), Struct_3(vec4<i32>(-62948i, 0i, 25429i, 2147483647i)), Struct_3(vec4<i32>(i32(-2147483648), -3273i, 30586i, 2522i)), Struct_3(vec4<i32>(-32859i, -88980i, 2147483647i, 8633i)), Struct_3(vec4<i32>(60957i, -1i, -36567i, -15085i)), Struct_3(vec4<i32>(-19735i, -1i, 1i, 1i)), Struct_3(vec4<i32>(61281i, 2228i, 1i, i32(-2147483648))), Struct_3(vec4<i32>(10340i, 2147483647i, -1i, -6447i)), Struct_3(vec4<i32>(1i, 0i, 21008i, 53889i)), Struct_3(vec4<i32>(2565i, -13674i, 0i, 5500i)), Struct_3(vec4<i32>(0i, -1546i, -38935i, 2147483647i)), Struct_3(vec4<i32>(47546i, 2147483647i, 1i, 1i)), Struct_3(vec4<i32>(-1i, -1i, 18060i, -61575i)), Struct_3(vec4<i32>(2147483647i, -17041i, 41118i, -1i)), Struct_3(vec4<i32>(0i, 1i, -1i, 1i)));

var<private> global1: array<Struct_1, 11>;

var<private> global2: vec2<f32>;

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, false, true)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(false, false, false)), Struct_1(vec3<bool>(true, false, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(true, true, false)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, true, true)), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(true, false, false)));

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_2) -> vec2<u32> {
    global2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(609f, 642f) + vec2<f32>(-2037f, global2.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.x, global2.x)))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(-1108f, global2.x)), _wgslsmith_div_f32(global2.x, 1041f))), global2.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, -706f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-535f, 975f)))))), vec2<bool>(arg_3.b.x, arg_0.x)));
    let var_0 = arg_3;
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global2.x, -1473f), vec2<f32>(global2.x, -700f)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1121f, 1285f)))) * vec2<f32>(_wgslsmith_f_op_f32(select(global2.x, -482f, arg_3.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -245f))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(970f, 2306f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)), var_0.b.x)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-362f, global2.x) + vec2<f32>(-1199f, global2.x))))));
    let var_1 = arg_3;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(~abs(abs(var_0.a)), _wgslsmith_mod_u32(reverseBits(_wgslsmith_div_u32(72837u, 1638u)), countOneBits(arg_3.a >> (arg_3.a % 32u)))), abs(arg_3.a)), 31u)];
    return ~_wgslsmith_mod_vec2_u32(~vec2<u32>(countOneBits(var_1.a), arg_3.a), ~u_input.a.yz);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> Struct_2 {
    var var_0 = Struct_3(max(_wgslsmith_mult_vec4_i32(arg_1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1.a.x, arg_1.a.x, 1i, arg_1.a.x), vec4<i32>(2147483647i, arg_1.a.x, arg_1.a.x, arg_1.a.x))) << (_wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(u_input.a.x, 1u, 1u, u_input.a.x)), vec4<u32>(0u, 1u, 0u, 0u)) % vec4<u32>(32u)), arg_1.a));
    var var_1 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, 1u) << (vec2<u32>(arg_2, 5602u) % vec2<u32>(32u)), func_3(vec4<bool>(false, true, arg_0.a.x, true), Struct_2(64555u, arg_0.a), Struct_3(arg_1.a), Struct_2(arg_2, vec3<bool>(arg_0.a.x, arg_0.a.x, arg_0.a.x))), vec2<u32>(arg_2, u_input.a.x)), u_input.a.zz), ~58492u), vec3<bool>(!arg_0.a.x, -_wgslsmith_dot_vec4_i32(arg_1.a, vec4<i32>(arg_1.a.x, 1i, 1i, 1i)) > -10978i, !arg_0.a.x));
    var var_2 = Struct_1(select(select(arg_0.a, vec3<bool>(false, global2.x <= 119f, false), any(select(vec4<bool>(arg_0.a.x, true, var_1.b.x, false), vec4<bool>(false, arg_0.a.x, arg_0.a.x, false), vec4<bool>(arg_0.a.x, arg_0.a.x, var_1.b.x, false)))), !arg_0.a, any(!select(vec4<bool>(var_1.b.x, var_1.b.x, arg_0.a.x, var_1.b.x), vec4<bool>(false, false, false, true), false))));
    global0 = array<Struct_3, 18>();
    let var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(125f, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -636f))), global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global2.x)), -236f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-132f + global2.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -941f) + _wgslsmith_f_op_f32(global2.x * global2.x))))));
    return Struct_2(11307u, vec3<bool>(any(select(vec4<bool>(true, var_2.a.x, false, true), vec4<bool>(true, arg_0.a.x, false, true), true)), all(!select(var_2.a.yz, vec2<bool>(true, false), var_2.a.x)), var_2.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = arg_2.a.x;
    let var_1 = true;
    global0 = array<Struct_3, 18>();
    var var_2 = _wgslsmith_f_op_f32(step(global2.x, global2.x)) < global2.x;
    global1 = array<Struct_1, 11>();
    return true;
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, 4294967295u), u_input.a.x);
    global0 = array<Struct_3, 18>();
    var var_1 = Struct_1(vec3<bool>(~_wgslsmith_sub_u32(53829u, var_0) < _wgslsmith_dot_vec2_u32(reverseBits(u_input.a.xw), u_input.a.ww >> (u_input.a.yz % vec2<u32>(32u))), func_4(func_2(Struct_1(vec3<bool>(true, true, true)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(49063u, 0u, 0u, u_input.a.x)), 18u)], _wgslsmith_dot_vec3_u32(u_input.a.wwz, vec3<u32>(u_input.a.x, 12047u, u_input.a.x))), global3[_wgslsmith_index_u32(5852u, 31u)], Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false))), all(vec4<bool>(func_2(Struct_1(vec3<bool>(true, false, false)), global0[_wgslsmith_index_u32(1u, 18u)], 4294967295u).b.x, true, arg_0 != arg_1.x, select(false, false, true)))));
    let var_2 = arg_1 >> (u_input.a % vec4<u32>(32u));
    var var_3 = var_1.a.yx;
    return Struct_2(~(~((54440u | var_0) ^ func_2(Struct_1(vec3<bool>(true, var_1.a.x, var_3.x)), global0[_wgslsmith_index_u32(var_0, 18u)], 4294967295u).a)), select(var_1.a, vec3<bool>(!(!var_1.a.x), var_3.x, var_1.a.x), vec3<bool>(var_1.a.x, false, var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~((-2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-19164i, -2147483647i, -1i, 1134i), vec4<i32>(18026i, -2147483647i, 28310i, 0i))) & -1i));
    global3 = array<Struct_1, 31>();
    var var_1 = func_1(~(-2147483647i), _wgslsmith_mult_vec4_i32(-countOneBits(vec4<i32>(-3640i, var_0, 11827i, var_0)), _wgslsmith_add_vec4_i32(select(vec4<i32>(var_0, var_0, var_0, var_0) << (u_input.a % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, var_0, -2147483647i), vec4<i32>(var_0, 1i, -26864i, var_0)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), true)), vec4<i32>(var_0, min(43864i, 0i), var_0, countOneBits(-2147483647i)))));
    var_1 = Struct_2(var_1.a, !var_1.b);
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(493f)), _wgslsmith_f_op_f32(-global2.x)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global2.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), -697f))));
    global0 = array<Struct_3, 18>();
    global3 = array<Struct_1, 31>();
    var var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, ~1u, ~(~(4294967295u & var_1.a))), ~vec3<u32>(var_1.a, 1u, _wgslsmith_mult_u32(72394u, _wgslsmith_div_u32(13705u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(max(var_0, 75971i)), var_0, ~vec3<i32>(~var_0, countOneBits(var_0), var_0) & (vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 1i, -2147483647i), vec3<i32>(1i, -1i, -1i))), vec3<u32>(var_1.a, ~(~(~0u)), var_1.a), vec2<u32>(func_1(2147483647i, ~_wgslsmith_sub_vec4_i32(vec4<i32>(0i, 9269i, var_0, var_0), vec4<i32>(-15263i, -1i, 1i, var_0))).a, ~func_3(!vec4<bool>(true, var_1.b.x, true, true), func_2(Struct_1(vec3<bool>(var_1.b.x, true, true)), global0[_wgslsmith_index_u32(46638u, 18u)], 16276u), global0[_wgslsmith_index_u32(5451u, 18u)], Struct_2(1u, vec3<bool>(false, false, var_1.b.x))).x));
}

