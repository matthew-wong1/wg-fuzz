struct Struct_1 {
    a: f32,
    b: i32,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31>;

var<private> global1: array<i32, 7>;

var<private> global2: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false));

var<private> global3: Struct_1;

var<private> global4: array<vec2<u32>, 17>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: bool) -> i32 {
    return 38724i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    let var_0 = vec2<i32>(-(~arg_0.b), arg_2);
    var var_1 = ~global3.d.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f));
    global4 = array<vec2<u32>, 17>();
    let var_3 = arg_1;
    return global0[_wgslsmith_index_u32(0u, 31u)];
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> i32 {
    global2 = array<vec4<bool>, 12>();
    global2 = array<vec4<bool>, 12>();
    global3 = func_3(Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(750f)), 378f)), reverseBits(-func_2(4294967295u, arg_2.c)), arg_0.c, arg_1.d), Struct_1(1176f, firstLeadingBit(global3.b) | -30095i, all(global2[_wgslsmith_index_u32(~arg_2.d.x, 12u)]), ~abs(abs(arg_1.d))), global3.b);
    let var_0 = Struct_1(global3.a, global1[_wgslsmith_index_u32(func_3(func_3(func_3(global0[_wgslsmith_index_u32(~4294967295u, 31u)], Struct_1(1612f, arg_0.b, arg_1.c, global3.d), 1i), func_3(global0[_wgslsmith_index_u32(~arg_2.d.x, 31u)], arg_0, _wgslsmith_div_i32(1i, 1i)), abs(abs(1i))), func_3(Struct_1(global3.a, countOneBits(arg_0.b), func_3(Struct_1(582f, arg_2.b, arg_1.c, vec3<u32>(38400u, 1u, arg_1.d.x)), Struct_1(-1000f, arg_3.x, true, arg_1.d), -60i).c, vec3<u32>(arg_2.d.x, arg_0.d.x, arg_2.d.x) << (arg_2.d % vec3<u32>(32u))), arg_0, 18845i), 2147483647i).d.x, 7u)], (~func_3(global0[_wgslsmith_index_u32(379u, 31u)], Struct_1(181f, u_input.a, arg_0.c, vec3<u32>(19470u, arg_2.d.x, 0u)), -6051i).d.x ^ u_input.c) <= (~4294967295u ^ select(_wgslsmith_dot_vec4_u32(vec4<u32>(20287u, arg_2.d.x, arg_1.d.x, global3.d.x), vec4<u32>(arg_0.d.x, u_input.b, arg_2.d.x, 0u)), ~arg_0.d.x, all(vec2<bool>(false, true)))), global3.d);
    let var_1 = arg_1;
    return max(-48452i, ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(4294967295u & ~u_input.c);
    var var_1 = select(!(!(!select(vec3<bool>(global3.c, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)))), !(!(!select(vec3<bool>(global3.c, global3.c, global3.c), vec3<bool>(false, false, true), vec3<bool>(false, global3.c, global3.c)))), !global3.c);
    let var_2 = select(reverseBits(vec4<i32>(func_1(global0[_wgslsmith_index_u32(global3.d.x, 31u)], Struct_1(global3.a, global3.b, var_1.x, global3.d), global0[_wgslsmith_index_u32(46642u, 31u)], vec3<i32>(-1i, -704i, global1[_wgslsmith_index_u32(194u, 7u)])), 1i | global3.b, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, global3.d.x), 7u)], func_2(u_input.e, var_1.x))), select(reverseBits(vec4<i32>(-42177i, u_input.a, 2147483647i, 2147483647i)), _wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, u_input.a, u_input.a, global1[_wgslsmith_index_u32(global3.d.x, 7u)]), ~vec4<i32>(-2147483647i, 0i, global1[_wgslsmith_index_u32(global3.d.x, 7u)], -2147483647i)), all(!vec3<bool>(global3.c, var_1.x, var_1.x))), true) ^ vec4<i32>(global1[_wgslsmith_index_u32(77877u, 7u)], global3.b, abs(u_input.a), global1[_wgslsmith_index_u32(~var_0, 7u)]);
    let var_3 = !vec3<bool>(true, (_wgslsmith_clamp_i32(global1[_wgslsmith_index_u32(u_input.c, 7u)], 0i, global3.b) << (0u % 32u)) < (u_input.a << (~global3.d.x % 32u)), true);
    var var_4 = global0[_wgslsmith_index_u32(u_input.c, 31u)];
    global0 = array<Struct_1, 31>();
    var var_5 = abs(vec3<i32>(~(~select(-24004i, -4149i, global3.c)), ~(-var_4.b) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_4.d.x, 3964u, 0u, u_input.b) | vec4<u32>(var_0, global3.d.x, 10332u, u_input.d), firstLeadingBit(vec4<u32>(6941u, global3.d.x, 28682u, var_4.d.x))) % 32u), _wgslsmith_mod_i32(u_input.a, abs(var_2.x) << (firstTrailingBit(59279u) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1115f, 866f, 1779f, -608f) + vec4<f32>(var_4.a, var_4.a, var_4.a, global3.a)))))), global3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global3.a, 232f, global3.a), vec3<f32>(global3.a, global3.a, -1080f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.a, global3.a, global3.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, 789f, 545f) - vec3<f32>(1571f, global3.a, global3.a))))));
}

