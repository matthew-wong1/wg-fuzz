struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 1i);

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<f32, 15>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global3 = array<f32, 15>();
    let var_0 = (true || (global0.x <= firstTrailingBit(global1.a))) != all(select(vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 15u)] == global3[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec2<bool>(true, false)), true), !all(vec3<bool>(false, true, false))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3[_wgslsmith_index_u32(1u, 15u)], global3[_wgslsmith_index_u32(~global2.b, 15u)], _wgslsmith_f_op_f32(trunc(global3[_wgslsmith_index_u32(4294967295u, 15u)]))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(-251f, -1384f, global3[_wgslsmith_index_u32(5098u, 15u)]), vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], -707f)))))));
    global3 = array<f32, 15>();
    let var_2 = vec4<bool>(var_1.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global3[_wgslsmith_index_u32(global1.b, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)])), 364f)) * global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(0u, 107797u)), u_input.a.yz & u_input.a.zy), 15u)]), 666f >= global3[_wgslsmith_index_u32(global1.b, 15u)], var_0, true);
    return -1i << ((_wgslsmith_mult_u32(~(~5801u), u_input.b.x) & 42280u) % 32u);
}

fn func_2() -> f32 {
    global1 = Struct_1(2147483647i, min(4294967295u, min(4294967295u, countOneBits(0u))) | ~global1.b);
    var var_0 = Struct_1(func_3(), 1u);
    global1 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, global1.a, global2.a, -27529i), vec4<i32>(1i, -22642i, var_0.a, -28874i)), ~global2.a), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.b.zy, u_input.b.xx), firstTrailingBit(abs(u_input.a.ww))) >> (4294967295u % 32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(5850u, 15u)])))) + 839f));
    var var_2 = any(!vec3<bool>(true, select(true, any(vec4<bool>(true, true, true, false)), true), any(vec4<bool>(true, true, true, true))));
    return var_1;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> u32 {
    global0 = countOneBits(abs(vec2<i32>(~_wgslsmith_mult_i32(34823i, -9179i), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global2.a, 2147483647i, global0.x, 0i), vec4<i32>(global0.x, global1.a, 1i, 22455i)), min(vec4<i32>(-28586i, global1.a, 1i, global1.a), vec4<i32>(17551i, global0.x, 1i, global1.a))))));
    let var_0 = -(_wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-1i, global0.x)), -vec2<i32>(0i, global1.a)), firstLeadingBit(-vec2<i32>(global0.x, 2147483647i))) | (vec2<i32>(_wgslsmith_mod_i32(global1.a, global1.a), ~global0.x) | (~vec2<i32>(7176i, global0.x) & vec2<i32>(global1.a, global0.x))));
    var var_1 = Struct_2(Struct_1(~_wgslsmith_add_i32(~global2.a, global2.a), global2.b), _wgslsmith_dot_vec4_u32(min(~u_input.a << (u_input.a % vec4<u32>(32u)), ~vec4<u32>(71016u, 30063u, 875u, u_input.b.x)), vec4<u32>(~_wgslsmith_mod_u32(global2.b, global1.b), firstTrailingBit(_wgslsmith_dot_vec3_u32(u_input.a.ywx, u_input.b)), global2.b, _wgslsmith_div_u32(firstLeadingBit(global2.b), 15506u))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2139f, 501f), vec2<f32>(-1392f, global3[_wgslsmith_index_u32(global2.b, 15u)]))))));
    var var_2 = _wgslsmith_dot_vec2_i32(~select(var_0, var_0 | ~vec2<i32>(-1i, var_0.x), all(vec3<bool>(true, arg_0.x, arg_0.x))), vec2<i32>(var_1.a.a | min(0i, 1i), -46698i) >> (_wgslsmith_mod_vec2_u32(~vec2<u32>(global1.b, u_input.a.x), max(u_input.b.xx, ~vec2<u32>(u_input.b.x, var_1.a.b))) % vec2<u32>(32u)));
    global1 = var_1.a;
    return 34100u;
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = ~(-abs(global1.a)) << (func_4(vec2<bool>(true, true), arg_2.c.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) % 32u);
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(arg_3.c.x)), arg_2.c.x, -1000f, -106f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-994f, arg_2.c.x, global3[_wgslsmith_index_u32(4294967295u, 15u)], arg_0)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(global2.b, 15u)], -698f, 954f, -1349f))) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2.c.x, arg_3.c.x, 1000f, arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(248f, arg_3.c.x, arg_2.c.x, global3[_wgslsmith_index_u32(arg_3.b, 15u)]) * vec4<f32>(arg_2.c.x, arg_2.c.x, -168f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(868f, global3[_wgslsmith_index_u32(arg_1, 15u)], global3[_wgslsmith_index_u32(arg_1, 15u)], 322f)), all(vec3<bool>(false, false, false))))))));
    global0 = ~vec2<i32>(global2.a << (arg_2.b % 32u), reverseBits(abs(arg_3.a.a)));
    let var_2 = !(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) + _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(abs(-2451f)))) < _wgslsmith_f_op_f32(-1f));
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(var_1.x + global3[_wgslsmith_index_u32(~31218u, 15u)]), _wgslsmith_div_f32(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.x), -689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), arg_2.c.x)));
    return u_input.b.x;
}

fn func_5(arg_0: vec4<i32>, arg_1: bool, arg_2: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_add_i32(~(~global1.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 18309i, global2.a, arg_0.x), vec4<i32>(2147483647i, global0.x, arg_0.x, 0i)) | 1i) << (4294967295u % 32u), 0u);
    var var_1 = Struct_2(Struct_1(global1.a, _wgslsmith_div_u32(1u, ~(144093u << (global1.b % 32u)))), func_1(884f, _wgslsmith_div_u32(~32917u, ~(~u_input.a.x)), Struct_2(Struct_1(var_0.a << (1846u % 32u), global2.b), u_input.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(0u, 15u)], -394f) * vec2<f32>(202f, -1489f)) + vec2<f32>(262f, -1000f))), Struct_2(Struct_1(1i, global1.b), ~(var_0.b >> (18691u % 32u)), vec2<f32>(138f, 897f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3[_wgslsmith_index_u32(arg_2.x, 15u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-474f, -1000f)) - _wgslsmith_f_op_f32(ceil(-580f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(293f, 1996f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1497f, global3[_wgslsmith_index_u32(1u, 15u)]) + vec2<f32>(-2419f, 1044f)))))));
    var var_2 = _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~45255u, ~countOneBits(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, arg_2.x, global1.b), arg_2) << (~global2.b % 32u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(18506u, 4294967295u, 1u)), vec3<u32>(var_1.b, ~2570u, ~14045u), vec3<u32>(_wgslsmith_div_u32(global1.b, 1u), 0u, u_input.a.x))), u_input.a.x);
    var_2 = 1u;
    let var_3 = Struct_2(var_1.a, ~arg_2.x, var_1.c);
    return ~vec3<i32>(1i, 12161i, var_0.a);
}

fn func_6(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<bool>) -> u32 {
    var var_0 = arg_3.x;
    let var_1 = Struct_2(Struct_1(-2147483647i, ~(max(global2.b, global2.b) & (1u >> (global2.b % 32u)))), _wgslsmith_dot_vec4_u32(vec4<u32>(17219u & global1.b, _wgslsmith_mod_u32(0u, ~0u), global2.b, min(_wgslsmith_add_u32(global1.b, 1u), countOneBits(31933u))), reverseBits(vec4<u32>(_wgslsmith_div_u32(0u, 4294967295u), ~u_input.a.x, 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global2.b), u_input.b.zx)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global3[_wgslsmith_index_u32(0u, 15u)]) - vec2<f32>(arg_1, 1184f)))) - arg_2.xy));
    let var_2 = Struct_1(~global1.a, min(_wgslsmith_sub_u32(~(~global2.b), 1u), var_1.b));
    global3 = array<f32, 15>();
    var var_3 = Struct_2(var_1.a, 1u, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(func_2())), global3[_wgslsmith_index_u32(15838u, 15u)]) - vec2<f32>(arg_1, global3[_wgslsmith_index_u32(14082u, 15u)])));
    return 0u;
}

fn func_7(arg_0: i32, arg_1: f32, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(arg_0, ~arg_2), firstTrailingBit(arg_2), vec2<f32>(_wgslsmith_f_op_f32(trunc(876f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) + _wgslsmith_f_op_f32(arg_3 + arg_3))));
    let var_1 = Struct_2(Struct_1(countOneBits(-_wgslsmith_clamp_i32(1i, global1.a, global0.x)), abs(global1.b)), func_6(vec3<i32>(global2.a, global2.a, global0.x) << (~select(u_input.a.zyx, u_input.b, true) % vec3<u32>(32u)), _wgslsmith_f_op_f32(trunc(-907f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(174f, global3[_wgslsmith_index_u32(arg_2, 15u)], arg_1)), vec3<f32>(513f, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), arg_3)), !select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.x, arg_1) * vec2<f32>(1528f, 521f)), _wgslsmith_f_op_vec2_f32(var_0.c * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(u_input.a.x, 15u)]))))) + _wgslsmith_f_op_vec2_f32(-var_0.c)));
    global0 = ~(~(-vec2<i32>(countOneBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-28341i, global0.x, var_1.a.a, global1.a), vec4<i32>(27516i, 26525i, global0.x, -2147483647i)))));
    let var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(select(reverseBits(vec2<i32>(global1.a, var_1.a.a) | vec2<i32>(0i, 12393i)), -abs(vec2<i32>(-17806i, var_0.a.a)), !all(vec4<bool>(true, true, false, true))), ~vec2<i32>(global1.a, 1910i)), func_5(-_wgslsmith_div_vec4_i32(vec4<i32>(arg_0, arg_0, global1.a, 27649i), vec4<i32>(var_0.a.a, 2147483647i, -2147483647i, 0i)) >> (~vec4<u32>(0u, u_input.b.x, 4294967295u, arg_2) % vec4<u32>(32u)), (global1.b << (~4294967295u % 32u)) == arg_2, ~vec3<u32>(4294967295u, 1u, ~4294967295u)).x, global1.a ^ (-1i ^ select(1i, 12937i, true)), _wgslsmith_div_i32(arg_0, -38596i));
    global0 = vec2<i32>(~_wgslsmith_dot_vec2_i32(countOneBits(abs(var_2.yz)), abs(vec2<i32>(global1.a, var_2.x))), firstLeadingBit(-var_1.a.a << (18789u % 32u)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    var var_1 = _wgslsmith_add_i32(_wgslsmith_sub_i32(~(-11914i), reverseBits(firstTrailingBit(global2.a))), firstLeadingBit(global0.x));
    var var_2 = func_7(~1i, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.a.x, 15u)]), func_6(func_5(-vec4<i32>(-37118i, 10934i, global2.a, global1.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(global2.a, global2.a, global2.a, global1.a), vec4<i32>(2147483647i, -3269i, 8452i, global0.x)), ~u_input.a.x > 1u, vec3<u32>(_wgslsmith_add_u32(17677u, 0u), min(61803u, 142756u), func_1(660f, global2.b, Struct_2(Struct_1(global2.a, 41638u), 59819u, vec2<f32>(1131f, -962f)), Struct_2(Struct_1(-2147483647i, 6595u), u_input.b.x, vec2<f32>(-644f, global3[_wgslsmith_index_u32(4294967295u, 15u)]))))), global3[_wgslsmith_index_u32(min(_wgslsmith_div_u32(88477u, ~144107u), 1u), 15u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 15u)], -857f, global3[_wgslsmith_index_u32(4294967295u, 15u)]), vec3<f32>(1783f, global3[_wgslsmith_index_u32(var_0.x, 15u)], -1508f), true))))), vec2<bool>(true, true)), _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(~var_0.x, 15u)] - _wgslsmith_div_f32(global3[_wgslsmith_index_u32(global2.b, 15u)], _wgslsmith_f_op_f32(f32(-1f) * -353f))));
    let var_3 = -global1.a;
    var_2 = Struct_2(Struct_1(-1373i, min(1u, global1.b)), ~_wgslsmith_dot_vec2_u32(~var_0.yy, u_input.b.xx) & (105389u & (u_input.a.x | _wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(global2.b, 0u)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_2.c, vec2<f32>(-499f, global3[_wgslsmith_index_u32(global1.b, 15u)]))), vec2<f32>(-359f, var_2.c.x)) - var_2.c) * var_2.c));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-773f, _wgslsmith_f_op_f32(round(-673f)), _wgslsmith_f_op_f32(var_2.c.x * var_2.c.x), -132f))));
    global2 = func_7(-18138i, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(func_7(global2.a, -979f, _wgslsmith_mult_u32(var_0.x, u_input.b.x), var_2.c.x).c.x, -1064f), var_2.c.x)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, ~var_2.a.b) >> (79599u % 32u), global2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3[_wgslsmith_index_u32(global2.b, 15u)])))).a;
    global1 = func_7(2147483647i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(35777u, var_0.x) | vec2<u32>(30525u, global2.b)) ^ _wgslsmith_add_u32(4294967295u >> (u_input.b.x % 32u), ~global1.b)), var_2.c.x).a;
    let x = u_input.a;
    s_output = StorageBuffer(842f, ~((~vec4<i32>(global2.a, var_3, global0.x, var_2.a.a) >> (max(vec4<u32>(62295u, u_input.b.x, 43560u, u_input.a.x), u_input.a) % vec4<u32>(32u))) << ((firstTrailingBit(u_input.a) << (~u_input.a % vec4<u32>(32u))) % vec4<u32>(32u))));
}

