struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 39124u;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 21>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<i32>, arg_2: bool) -> u32 {
    var var_0 = Struct_1(false);
    global2 = array<Struct_1, 21>();
    return 112850u;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_div_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.b.x, u_input.c), 1u, u_input.e), 1u, u_input.b.x), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(4294967295u, 1u, u_input.e, 40055u))), abs(abs(reverseBits(vec4<u32>(1u, u_input.c, 1u, u_input.d))))));
    global0 = 15901u;
    var var_0 = Struct_3(_wgslsmith_dot_vec3_u32(abs(~abs(vec3<u32>(1u, u_input.b.x, 0u))), ~vec3<u32>(~u_input.e, reverseBits(u_input.e), 4294967295u)), Struct_2(arg_0.a, Struct_1(!(true || global1.a)), Struct_1(global1.a), Struct_1(select(any(vec3<bool>(global1.a, arg_0.a, global1.a)), arg_0.a || arg_0.a, !global1.a)), ~select(vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(u_input.d, 1u, u_input.c), select(vec3<bool>(false, arg_0.a, false), vec3<bool>(global1.a, false, arg_0.a), arg_0.a))));
    var_0 = Struct_3(firstTrailingBit(~abs(~0u)), Struct_2(!arg_0.a, Struct_1(global1.a), Struct_1(true || global1.a), Struct_1(!(!global1.a)), firstTrailingBit(vec3<u32>(~54344u, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(31178u, u_input.d)), 19668u))));
    let var_1 = all(!select(vec4<bool>(global1.a, any(vec2<bool>(global1.a, false)), false, any(vec3<bool>(false, var_0.b.d.a, var_0.b.c.a))), select(vec4<bool>(true, false, arg_0.a, false), !vec4<bool>(arg_0.a, arg_0.a, var_0.b.a, global1.a), select(var_0.b.c.a, true, global1.a)), false));
    return var_0.b.b;
}

fn func_1() -> Struct_2 {
    let var_0 = func_3(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(5449u), func_2(!vec4<bool>(global1.a, true, false, global1.a), vec2<i32>(-1i, u_input.a), false)), 21u)]);
    let var_1 = ~(~max(~_wgslsmith_div_i32(-18981i, 73729i), _wgslsmith_div_i32(u_input.a, -5815i)));
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    var var_2 = vec3<i32>(-5887i, var_1, u_input.a);
    return Struct_2(false, Struct_1(_wgslsmith_f_op_f32(round(-111f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1509f) + -1290f)), Struct_1(any(vec3<bool>(var_1 <= -7381i, any(vec4<bool>(global1.a, true, false, var_0.a)), all(vec2<bool>(var_0.a, true))))), var_0, ~(min(reverseBits(vec3<u32>(u_input.b.x, 61957u, 0u)), vec3<u32>(50713u, 25321u, 1u)) >> (vec3<u32>(u_input.c, 17245u, reverseBits(u_input.d)) % vec3<u32>(32u))));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    global0 = arg_3.a;
    global1 = func_1().b;
    var var_0 = _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(firstTrailingBit(arg_1), countOneBits(-16702i)) << ((~vec2<u32>(u_input.d, u_input.b.x) >> (vec2<u32>(arg_0.e.x, 12484u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_clamp_i32(arg_1, u_input.a, 5911i), arg_1) ^ _wgslsmith_sub_vec2_i32(-vec2<i32>(u_input.a, -1i), vec2<i32>(25587i, -2147483647i))), -vec2<i32>(_wgslsmith_add_i32(1i, 0i), arg_1));
    var var_1 = 4294967295u;
    var var_2 = arg_3.b.d;
    return func_1();
}

fn func_5(arg_0: Struct_3) -> Struct_1 {
    let var_0 = arg_0;
    global0 = u_input.c << ((arg_0.b.e.x ^ reverseBits(reverseBits(var_0.b.e.x))) % 32u);
    var var_1 = func_4(Struct_2(!(!(arg_0.b.d.a & global1.a)), func_3(Struct_1(true)), global2[_wgslsmith_index_u32(countOneBits(countOneBits(36829u)), 21u)], func_4(Struct_2(var_0.b.e.x <= 41291u, global2[_wgslsmith_index_u32(~5188u, 21u)], var_0.b.d, arg_0.b.d, select(vec3<u32>(var_0.b.e.x, 787u, 1u), vec3<u32>(88613u, 1u, arg_0.b.e.x), false)), _wgslsmith_div_i32(~u_input.a, 1i), _wgslsmith_mult_i32(u_input.a, u_input.a) != abs(u_input.a), var_0).b, arg_0.b.e), _wgslsmith_add_i32(u_input.a, firstLeadingBit(-1i)), !(0u <= ~(~arg_0.b.e.x)), Struct_3(arg_0.b.e.x, func_4(Struct_2(!global1.a, func_3(arg_0.b.d), Struct_1(true), arg_0.b.d, vec3<u32>(4294967295u, var_0.b.e.x, 1u) ^ vec3<u32>(1u, 38466u, arg_0.a)), max(-13401i, 16067i), global1.a, arg_0))).b;
    let var_2 = arg_0;
    global1 = func_3(Struct_1(true));
    return var_2.b.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(916f))))), 1f));
    var var_1 = false;
    var var_2 = Struct_2(u_input.c <= _wgslsmith_add_u32(_wgslsmith_sub_u32(20887u, u_input.b.x), (u_input.e & 1u) | _wgslsmith_div_u32(u_input.d, 1u)), Struct_1(var_0 > var_0), func_5(Struct_3(u_input.d, func_4(func_1(), u_input.a | u_input.a, all(vec2<bool>(true, false)), Struct_3(22148u, Struct_2(global1.a, global2[_wgslsmith_index_u32(8396u, 21u)], Struct_1(true), global2[_wgslsmith_index_u32(0u, 21u)], vec3<u32>(u_input.b.x, 118977u, 13188u)))))), func_4(Struct_2(func_5(Struct_3(0u, Struct_2(global1.a, global2[_wgslsmith_index_u32(90754u, 21u)], global2[_wgslsmith_index_u32(u_input.c, 21u)], global2[_wgslsmith_index_u32(22886u, 21u)], vec3<u32>(u_input.c, 4294967295u, u_input.e)))).a, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], func_1().b, func_4(Struct_2(false, Struct_1(false), global2[_wgslsmith_index_u32(u_input.e, 21u)], Struct_1(true), vec3<u32>(8766u, 4294967295u, 64756u)), -1i, true, Struct_3(u_input.e, Struct_2(global1.a, Struct_1(global1.a), Struct_1(true), Struct_1(global1.a), vec3<u32>(u_input.e, 0u, 0u)))).b, abs(~vec3<u32>(u_input.c, u_input.e, u_input.e))), -71373i, false, Struct_3(18716u, func_1())).b, vec3<u32>(_wgslsmith_mod_u32(~18084u, max(55856u, u_input.c << (4294967295u % 32u))), min(firstTrailingBit(20307u), ~u_input.e), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, u_input.e, 26373u)), ~vec3<u32>(1u, u_input.c, u_input.b.x), vec3<u32>(u_input.b.x, 4294967295u, u_input.e)), _wgslsmith_mod_vec3_u32(~vec3<u32>(0u, u_input.e, u_input.e), vec3<u32>(u_input.d, u_input.e, 1u)))));
    global1 = Struct_1(false);
    var var_3 = abs(abs(var_2.e));
    let var_4 = Struct_3(func_1().e.x, Struct_2(!(global1.a && global1.a), func_3(func_5(Struct_3(17126u, Struct_2(global1.a, Struct_1(var_2.c.a), Struct_1(true), Struct_1(global1.a), vec3<u32>(u_input.c, 30233u, 0u))))), Struct_1(all(vec3<bool>(var_2.d.a, true, false)) || false), Struct_1(false), var_2.e));
    var var_5 = Struct_1(!select(false, all(select(vec3<bool>(false, var_2.a, false), vec3<bool>(var_4.b.a, false, true), var_2.a)), false));
    let x = u_input.a;
    s_output = StorageBuffer(211f, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1344f, 1000f, _wgslsmith_f_op_f32(min(-220f, _wgslsmith_f_op_f32(max(-145f, var_0)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(var_0, 947f, true)), _wgslsmith_f_op_f32(trunc(135f))))))), -10316i, func_2(select(vec4<bool>(false, global1.a, var_4.b.d.a, true), vec4<bool>(var_5.a, false, true, true), var_4.b.c.a), abs(vec2<i32>(u_input.a, 5175i)) | -vec2<i32>(-1i, -2147483647i), global1.a) | _wgslsmith_div_u32(0u, reverseBits(var_4.b.e.x)), vec4<i32>(_wgslsmith_mod_i32(~2476i & min(24057i, u_input.a), 18720i), u_input.a, abs(15737i), select(u_input.a, ~(u_input.a << (var_3.x % 32u)), var_4.b.c.a)));
}

