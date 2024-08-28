struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<bool, 20>;

var<private> global2: Struct_2;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> vec3<bool> {
    global0 = Struct_3(!any(select(!vec3<bool>(global1[_wgslsmith_index_u32(33565u, 20u)], false, global1[_wgslsmith_index_u32(70927u, 20u)]), select(vec3<bool>(false, true, global2.c), vec3<bool>(global2.c, global2.c, false), vec3<bool>(false, true, global1[_wgslsmith_index_u32(2161u, 20u)])), select(vec3<bool>(global1[_wgslsmith_index_u32(13522u, 20u)], global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(51048u, 20u)]), vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 20u)], true), vec3<bool>(true, false, false)))), global0.b, Struct_1(400f), global0.d);
    var var_0 = Struct_4(global2.a.a, global0.d, vec4<f32>(global2.a.a, _wgslsmith_f_op_f32(global0.c.a - 817f), _wgslsmith_f_op_f32(abs(global2.a.a)), global2.b), global0.d, -min(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.b, 1i, -1i), vec3<i32>(global0.b, global0.b, global0.b)) | (vec3<i32>(0i, 32079i, global0.b) << (vec3<u32>(111145u, u_input.a, 0u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(5262i, global0.b), 2469i, ~global0.b)));
    global0 = Struct_3(!any(!select(vec3<bool>(global2.c, var_0.b.c, var_0.b.c), vec3<bool>(false, global1[_wgslsmith_index_u32(50616u, 20u)], false), vec3<bool>(true, true, global1[_wgslsmith_index_u32(u_input.a, 20u)]))), ~global0.b, Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(global0.d.a.a, var_0.d.b))))))), global0.d);
    global2 = var_0.b;
    global1 = array<bool, 20>();
    return vec3<bool>(global1[_wgslsmith_index_u32(57872u, 20u)], global2.c, true);
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = 2070f;
    var var_1 = 0u >> (countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, u_input.c, u_input.b), vec3<u32>(5489u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, u_input.d.x), vec2<u32>(28008u, u_input.c)), 44837u & u_input.c))) % 32u);
    let var_2 = firstTrailingBit(firstLeadingBit(u_input.a) << (_wgslsmith_mod_u32(60918u, _wgslsmith_sub_u32(57869u, u_input.e.x)) % 32u));
    var_1 = _wgslsmith_dot_vec3_u32(max(reverseBits(vec3<u32>(u_input.d.x, 0u, 28175u)) << (~vec3<u32>(32760u, var_2, 13734u) % vec3<u32>(32u)), vec3<u32>(min(u_input.e.x, var_2), ~0u, ~u_input.a)) | (_wgslsmith_sub_vec3_u32(~u_input.d.yww, _wgslsmith_clamp_vec3_u32(u_input.d.xyz, vec3<u32>(0u, 4294967295u, 54864u), vec3<u32>(var_2, 0u, 9236u))) & vec3<u32>(4294967295u, ~var_2, u_input.a)), _wgslsmith_add_vec3_u32(~(~firstLeadingBit(u_input.e.xwy)), vec3<u32>(var_2, countOneBits(~4294967295u), ~(~4294967295u))));
    var var_3 = global0.b;
    return Struct_3(arg_0.x | any(select(vec2<bool>(false, true), arg_0.zx, false)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-9823i, 1i), ~reverseBits(vec2<i32>(global0.b, 53855i))), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.b << (0u % 32u), global0.b, -1i & global0.b, max(global0.b, global0.b)), vec4<i32>(_wgslsmith_clamp_i32(global0.b, global0.b, -12157i), ~(-7875i), ~(-46169i), global0.b)), -countOneBits(~(-7982i))), Struct_1(global0.d.b), global0.d);
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = func_3(func_2(), Struct_1(_wgslsmith_f_op_f32(trunc(-942f))));
    global0 = Struct_3(global1[_wgslsmith_index_u32(~abs(_wgslsmith_add_u32(4294967295u, u_input.c)), 20u)], (i32(-1i) * -max(global0.b, 2147483647i)) ^ ~1i, func_3(vec3<bool>(false, 4294967295u != (4294967295u << (u_input.e.x % 32u)), select(false, true, true)), func_3(func_2(), func_3(vec3<bool>(true, true, false), global2.a).d.a).d.a).d.a, global0.d);
    global1 = array<bool, 20>();
    global0 = func_3(!select(!vec3<bool>(false, global2.c, false), select(vec3<bool>(false, global1[_wgslsmith_index_u32(u_input.c, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]), func_2(), select(vec3<bool>(false, global2.c, global0.d.c), vec3<bool>(false, true, false), vec3<bool>(true, true, global0.d.c))), vec3<bool>(true, global0.b <= -5281i, !global2.c)), Struct_1(arg_0.x));
    var var_0 = select(~firstLeadingBit(vec3<i32>(51329i, global0.b, global0.b)), (countOneBits(vec3<i32>(global0.b, global0.b, global0.b)) | (vec3<i32>(0i, 5199i, global0.b) >> (vec3<u32>(27011u, u_input.b, u_input.a) % vec3<u32>(32u)))) << (reverseBits(~u_input.e.wwz) % vec3<u32>(32u)), global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, u_input.c), 20u)]) | ~(~select(vec3<i32>(-1i, 11997i, 0i) & vec3<i32>(9512i, 1i, global0.b), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.b, 2147483647i, -3132i), vec3<i32>(1i, global0.b, -2147483647i)), vec3<bool>(false, true, false)));
    return func_3(!(!(!select(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.e.x, 20u)], false), vec3<bool>(global2.c, false, global1[_wgslsmith_index_u32(22035u, 20u)]), global1[_wgslsmith_index_u32(u_input.a, 20u)]))), Struct_1(global0.c.a)).d.a;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<u32>) -> Struct_3 {
    global2 = global0.d;
    let var_0 = ~select(_wgslsmith_mult_vec4_i32(firstLeadingBit(~vec4<i32>(arg_1, global0.b, global0.b, global0.b)), vec4<i32>(11142i, arg_1, arg_1, abs(-1i))), ~vec4<i32>(-2147483647i, global0.b, arg_1, arg_1), !(!vec4<bool>(true, global2.c, false, false)));
    var var_1 = !(!any(vec2<bool>(!global1[_wgslsmith_index_u32(54203u, 20u)], any(vec4<bool>(global2.c, false, global0.d.c, global0.a)))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -598f))), 1103f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a + -480f)))) - -166f));
    global2 = Struct_2(func_1(var_2.yz), var_2.x, global1[_wgslsmith_index_u32(u_input.d.x, 20u)]);
    return Struct_3(!global2.c, global0.b, Struct_1(arg_0.a), global0.d);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_3) -> Struct_4 {
    global1 = array<bool, 20>();
    var var_0 = all(!select(vec4<bool>(!arg_2.d.c, global0.a, all(vec4<bool>(false, false, true, false)), true), select(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 20u)], false, false, false), !vec4<bool>(arg_2.d.c, false, false, true), false), select(vec4<bool>(arg_2.d.c, global1[_wgslsmith_index_u32(u_input.e.x, 20u)], global0.d.c, arg_2.a), select(vec4<bool>(true, false, true, false), vec4<bool>(global0.a, false, false, arg_2.a), vec4<bool>(arg_0, true, true, arg_2.d.c)), all(vec2<bool>(false, false)))));
    let var_1 = select(select(~firstTrailingBit(vec2<i32>(0i, arg_1)), ~vec2<i32>(39126i, -1i), !vec2<bool>(true, arg_0)), -_wgslsmith_mult_vec2_i32(vec2<i32>(global0.b, arg_1), vec2<i32>(-43974i, arg_1)) & firstTrailingBit(~vec2<i32>(26255i, -2147483647i)), true) | _wgslsmith_mult_vec2_i32(select(min(vec2<i32>(20176i, 47695i), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.b, arg_1), vec2<i32>(arg_1, -4559i))), ~(-vec2<i32>(-1i, arg_1)), vec2<bool>(global0.b < 5652i, true)), _wgslsmith_mod_vec2_i32(-(~vec2<i32>(arg_1, arg_2.b)), vec2<i32>(17068i, 1i)));
    var var_2 = -vec3<i32>(-(arg_1 & var_1.x), 1i, -_wgslsmith_mult_i32(func_4(arg_2.c, global0.b, u_input.e.yy).b, -1i));
    return Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -713f)) * -401f) - _wgslsmith_f_op_f32(f32(-1f) * -605f)), Struct_2(arg_2.d.a, _wgslsmith_f_op_f32(global2.b + 1669f), 2147483647i == ~arg_2.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-845f, _wgslsmith_div_f32(-1228f, arg_2.c.a), _wgslsmith_f_op_f32(f32(-1f) * -1198f), func_4(global0.d.a, -1i, u_input.d.xx).d.b))))), arg_2.d, min(firstLeadingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(16938i, -1i, global0.b), vec3<i32>(arg_2.b, var_2.x, 6102i), vec3<i32>(arg_1, global0.b, 2147483647i)) ^ ~vec3<i32>(var_2.x, -2147483647i, 16562i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, var_1.x, 0i) << (u_input.d.wzz % vec3<u32>(32u)), -vec3<i32>(-1i, 1i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, -22504i, -18064i), vec3<i32>(global0.b, 2147483647i, 1i)) | (vec3<i32>(0i, 53206i, 5442i) | vec3<i32>(var_2.x, arg_2.b, 0i)))));
}

fn func_6(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: bool) -> Struct_3 {
    global2 = Struct_2(func_4(func_4(func_4(Struct_1(global0.c.a), max(1i, arg_2.e.x), abs(vec2<u32>(87995u, arg_0))).d.a, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(arg_2.e, arg_2.e), _wgslsmith_clamp_i32(global0.b, global0.b, -6811i)), max(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, arg_0), vec2<u32>(u_input.d.x, u_input.b), vec2<u32>(0u, u_input.e.x)), ~u_input.d.xy)).c, ~abs(i32(-1i) * -9136i), arg_1).d.a, -1269f, global0.a);
    global0 = Struct_3(global0.d.c, 0i << (_wgslsmith_mult_u32((arg_1.x | 52989u) & 42575u, _wgslsmith_add_u32(u_input.b, 4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(25142u, 39827u, 4294967295u, u_input.e.x), u_input.e)) % 32u), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(arg_2.d.a.a)), _wgslsmith_f_op_f32(-global0.c.a)))), arg_2.d);
    global2 = func_5(true, -16804i, func_3(vec3<bool>(global2.c, false, true), global0.c)).d;
    var var_0 = select(0u, u_input.c, true);
    global1 = array<bool, 20>();
    return Struct_3(_wgslsmith_f_op_f32(exp2(global0.c.a)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + arg_2.a))), global0.b, global2.a, func_5(false, (i32(-1i) * -39239i) ^ arg_2.e.x, func_3(!(!vec3<bool>(global1[_wgslsmith_index_u32(10791u, 20u)], global0.a, false)), Struct_1(func_1(vec2<f32>(global2.a.a, arg_2.b.a.a)).a))).b);
}

fn func_7(arg_0: vec3<bool>, arg_1: i32, arg_2: Struct_3, arg_3: vec3<i32>) -> Struct_4 {
    let var_0 = global0.d;
    global0 = func_3(select(arg_0, select(arg_0, select(select(arg_0, arg_0, var_0.c), vec3<bool>(true, global1[_wgslsmith_index_u32(9930u, 20u)], true), arg_0), arg_0), select(!arg_0, !arg_0, !(!arg_0))), var_0.a);
    global1 = array<bool, 20>();
    var var_1 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + -120f) + var_0.a.a))), Struct_2(global0.c, _wgslsmith_f_op_f32(-arg_2.d.b), true & (!arg_0.x & (arg_2.d.c & false))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d.a.a, 541f, global0.c.a, arg_2.d.b)), vec4<f32>(_wgslsmith_div_f32(global2.a.a, -1661f), 1000f, global0.d.a.a, _wgslsmith_f_op_f32(-global0.d.b)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-928f + -993f), global0.d.b, global2.b, global2.a.a))), Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.a.a, arg_2.c.a)))), 326f, arg_2.d.b == var_0.a.a), -vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, 2147483647i, 1i, 215i), vec4<i32>(1i, arg_3.x, arg_2.b, -41012i))), countOneBits(_wgslsmith_div_i32(arg_2.b, arg_3.x)), -1i));
    global0 = Struct_3(_wgslsmith_f_op_f32(1060f * global2.a.a) != _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(280f)), func_1(vec2<f32>(-806f, global0.d.a.a)).a), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-var_1.e.xy, var_1.e.zz, arg_3.xx) ^ (max(arg_3.yx, vec2<i32>(arg_1, -11921i)) & firstLeadingBit(vec2<i32>(-21104i, arg_2.b))), arg_3.zz), Struct_1(1540f), Struct_2(func_1(var_1.c.xy), 1308f, func_5(arg_0.x, var_1.e.x, func_4(Struct_1(global0.d.a.a), arg_3.x, u_input.d.wz)).e.x == (1i >> (~u_input.a % 32u))));
    return Struct_4(arg_2.c.a, arg_2.d, _wgslsmith_f_op_vec4_f32(-var_1.c), func_3(!arg_0, func_4(global2.a, func_6(4294967295u, reverseBits(vec2<u32>(7687u, 0u)), func_5(false, arg_3.x, arg_2), false).b, ~u_input.e.xy).d.a).d, firstLeadingBit(vec3<i32>((i32(-1i) * -52348i) | ~var_1.e.x, global0.b, arg_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.a) * _wgslsmith_f_op_f32(-global2.b)))), global0.d.a.a, all(select(!vec2<bool>(true, global0.d.c), !vec2<bool>(global2.c, false), global2.c)) == true);
    var var_0 = func_7(select(select(select(!vec3<bool>(true, true, global0.d.c), select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 20u)], global1[_wgslsmith_index_u32(u_input.b, 20u)], false), vec3<bool>(global2.c, false, global2.c), vec3<bool>(global2.c, global2.c, false)), any(vec2<bool>(global2.c, false))), vec3<bool>(global0.a || false, any(vec2<bool>(true, false)), true), true), !select(!vec3<bool>(global0.a, global2.c, false), !vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 20u)], true), !vec3<bool>(false, global2.c, true)), global0.a), -31319i, func_6(77691u, ~(~vec2<u32>(u_input.a, 0u)), func_5(_wgslsmith_f_op_f32(global0.d.a.a + 1000f) > _wgslsmith_f_op_f32(step(global2.b, -504f)), 0i << (u_input.a % 32u), func_4(func_1(vec2<f32>(global2.b, global2.b)), firstLeadingBit(global0.b), u_input.e.xx & u_input.e.wy)), false), select(vec3<i32>(global0.b, -44511i, 36003i) >> (vec3<u32>(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, u_input.b), u_input.d.ywy), 1u << (1u % 32u)) % vec3<u32>(32u)), ~(vec3<i32>(-16544i, 0i, -27647i) >> (u_input.e.xwy % vec3<u32>(32u))) >> (vec3<u32>(u_input.b, countOneBits(3647u), u_input.a) % vec3<u32>(32u)), !func_2()));
    global0 = Struct_3(any(!(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.b, 20u)], global2.c, var_0.b.c)))), _wgslsmith_mod_i32(~abs(_wgslsmith_dot_vec3_i32(var_0.e, vec3<i32>(var_0.e.x, var_0.e.x, 14203i))), 0i), global2.a, func_4(func_5(!(!global2.c), firstLeadingBit(_wgslsmith_sub_i32(global0.b, var_0.e.x)), func_6(~4294967295u, ~vec2<u32>(u_input.b, u_input.c), func_7(vec3<bool>(false, var_0.d.c, var_0.d.c), global0.b, Struct_3(global0.a, var_0.e.x, global2.a, Struct_2(global2.a, -576f, true)), vec3<i32>(2147483647i, -6949i, var_0.e.x)), global0.d.c)).d.a, -5023i, vec2<u32>(select(_wgslsmith_mod_u32(u_input.e.x, 0u), reverseBits(48875u), false), 60264u)).d);
    var var_1 = ~firstTrailingBit(select(_wgslsmith_mult_vec4_i32(~vec4<i32>(0i, global0.b, var_0.e.x, -1i), _wgslsmith_div_vec4_i32(vec4<i32>(var_0.e.x, var_0.e.x, global0.b, 1i), vec4<i32>(var_0.e.x, var_0.e.x, -9201i, var_0.e.x))), vec4<i32>(global0.b, -1i, _wgslsmith_clamp_i32(var_0.e.x, var_0.e.x, 2147483647i), var_0.e.x), !select(false, global1[_wgslsmith_index_u32(1u, 20u)], global1[_wgslsmith_index_u32(87262u, 20u)])));
    var_1 = vec4<i32>(var_0.e.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.e.x, abs(global0.b), ~(21023i & var_1.x)), abs(_wgslsmith_add_i32(1i, global0.b) ^ _wgslsmith_mod_i32(-41995i, var_1.x))), var_1.x, _wgslsmith_sub_i32(countOneBits(global0.b), 0i));
    var var_2 = Struct_2(func_6(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(_wgslsmith_add_u32(4294967295u, u_input.a), 1u, ~1u, ~u_input.e.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 67188u, 1u), vec3<u32>(1u, u_input.d.x, 4294967295u)), ~(~u_input.a)), Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(868f * -316f)), func_7(!vec3<bool>(var_0.b.c, global2.c, var_0.d.c), _wgslsmith_dot_vec3_i32(var_0.e, vec3<i32>(12272i, var_0.e.x, 0i)), Struct_3(var_0.b.c, -2147483647i, Struct_1(1178f), var_0.b), ~vec3<i32>(global0.b, var_0.e.x, var_1.x)).b, var_0.c, global0.d, max(vec3<i32>(var_0.e.x, 1i, 1i), -var_0.e)), false).d.a, global0.c.a, 1u == _wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 40422u, 60105u), abs(vec4<u32>(4294967295u, u_input.b, u_input.c, u_input.b)))));
    var var_3 = ~u_input.a;
    var_0 = Struct_4(_wgslsmith_div_f32(var_2.b, 2324f), func_3(!(!(!vec3<bool>(global0.a, false, true))), var_2.a).d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-808f, _wgslsmith_f_op_f32(f32(-1f) * -241f), -1772f, 934f)), Struct_2(Struct_1(_wgslsmith_f_op_f32(step(1f, 393f))), var_2.b, var_0.d.c), -vec3<i32>(global0.b, -13904i, 1i));
    var_3 = 55199u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, _wgslsmith_add_u32(firstLeadingBit(20695u), 0u), 366u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.b * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -163f))), _wgslsmith_f_op_f32(round(global0.c.a))), i32(-1i) * -var_0.e.x, var_0.c);
}

