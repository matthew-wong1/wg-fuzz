struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1000f, -1000f);

var<private> global1: vec4<f32>;

var<private> global2: bool = false;

var<private> global3: array<Struct_1, 27>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> bool {
    var var_0 = Struct_1(!all(select(!vec2<bool>(arg_1.e, true), vec2<bool>(true, arg_1.c), arg_1.c)), -(firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, arg_1.b.x)) & arg_1.b), any(!vec4<bool>(arg_1.a, true, !arg_1.e, select(false, true, arg_1.a))), _wgslsmith_add_u32(abs(_wgslsmith_mod_u32(73118u, arg_1.d)), arg_1.d), !(_wgslsmith_f_op_f32(-arg_0.x) >= -606f));
    let var_1 = -44457i;
    return any(!select(vec3<bool>(var_0.e, true, false), vec3<bool>(true, true, true), true)) | !arg_1.a;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    global0 = global1.wy;
    let var_0 = _wgslsmith_sub_i32(abs(1i), -19832i);
    global3 = array<Struct_1, 27>();
    let var_1 = _wgslsmith_div_f32(global0.x, global0.x);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1701f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(step(-1090f, _wgslsmith_f_op_f32(-2840f * var_1))), -665f)));
    return Struct_1(false, abs(vec3<i32>(_wgslsmith_div_i32(1i, ~1279i), -8813i, var_0)), func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1484f, -452f, 143f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.x, var_2.x, 194f) * global1.ywx))), Struct_1(!(arg_0 == false), vec3<i32>(_wgslsmith_div_i32(-34587i, 2147483647i), _wgslsmith_mod_i32(u_input.b, var_0), u_input.a), true, reverseBits(1u), all(vec4<bool>(false, arg_1, true, true)))), 30492u, any(vec4<bool>(true, false, func_2(_wgslsmith_f_op_vec3_f32(-global1.wyz), global3[_wgslsmith_index_u32(1u, 27u)]), all(vec4<bool>(false, arg_0, false, false)))));
}

fn func_3(arg_0: vec2<bool>) -> u32 {
    let var_0 = vec2<u32>(1u, 1u);
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(1581f, 523f, -594f, -124f), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-447f, global1.x, -2231f, 1023f), vec4<f32>(global0.x, -150f, global0.x, -717f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(738f, global1.x, global1.x, -778f))), !select(vec4<bool>(true, false, arg_0.x, false), vec4<bool>(true, false, arg_0.x, arg_0.x), false))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1187f, global0.x, 305f, global1.x)))))), select(select(select(vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, true, true, false), false), select(vec4<bool>(arg_0.x, true, arg_0.x, false), vec4<bool>(arg_0.x, false, arg_0.x, true), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), select(false, false, arg_0.x)), !(!vec4<bool>(arg_0.x, true, true, true)), !vec4<bool>(true, false, false, arg_0.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1606f, global0.x), -138f, _wgslsmith_f_op_f32(select(global1.x, global0.x, true)), _wgslsmith_f_op_f32(global0.x * -1409f)) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global0.x, global0.x))))) * vec4<f32>(_wgslsmith_f_op_f32(-global1.x), 1481f, _wgslsmith_f_op_f32(-453f + 606f), global0.x)), arg_0.x));
    global3 = array<Struct_1, 27>();
    var var_1 = vec2<i32>(u_input.b, 1i);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.x, -527f), 1000f)))) * _wgslsmith_f_op_f32(round(global1.x)));
    return 0u;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(162f, 201f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) - global1.x), global1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))) + 544f)));
    global3 = array<Struct_1, 27>();
    let var_1 = arg_3.c;
    global2 = all(!vec3<bool>(select(true, arg_0.a, true), true, arg_0.e));
    var var_2 = !(!vec2<bool>(any(!vec4<bool>(false, arg_3.a, false, true)), true));
    return Struct_1(any(!(!select(vec2<bool>(false, false), vec2<bool>(var_2.x, arg_0.e), true))), vec3<i32>(-11944i, arg_0.b.x, i32(-1i) * -2147483647i), -1369f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))), arg_3.d & ~arg_3.d, true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 27>();
    let var_0 = func_4(func_1(true, select(true, _wgslsmith_div_i32(33030i, u_input.b) == -13719i, any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(func_3(vec2<bool>(false, true)), func_1(true, true).d, 1u), ~max(vec3<u32>(59807u, 0u, 1u), vec3<u32>(1u, 18901u, 11992u))), ~(~abs(0u))), _wgslsmith_mod_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, u_input.a, -7159i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), ~vec3<i32>(u_input.a, u_input.a, -1i)), firstLeadingBit(vec3<i32>(-u_input.b, u_input.b >> (1u % 32u), max(0i, u_input.b)))), global3[_wgslsmith_index_u32(4294967295u, 27u)]);
    global3 = array<Struct_1, 27>();
    let var_1 = func_4(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(var_0.d, 2302u)), vec2<u32>(4294967295u, var_0.d)), select(vec2<u32>(var_0.d, var_0.d), ~vec2<u32>(57230u, 0u), !vec2<bool>(var_0.e, true))) | _wgslsmith_sub_u32(abs(var_0.d), ~var_0.d), 27u)], vec2<u32>(~select(22101u, var_0.d, var_0.e), var_0.d) ^ ~((vec2<u32>(12632u, var_0.d) & vec2<u32>(4294967295u, var_0.d)) & firstLeadingBit(vec2<u32>(66809u, var_0.d))), firstTrailingBit(vec3<i32>(func_4(func_4(Struct_1(true, vec3<i32>(2147483647i, var_0.b.x, var_0.b.x), true, var_0.d, var_0.e), vec2<u32>(var_0.d, 4294967295u), var_0.b, Struct_1(var_0.e, var_0.b, var_0.c, 51402u, var_0.e)), abs(vec2<u32>(25451u, var_0.d)), _wgslsmith_add_vec3_i32(vec3<i32>(28966i, 26835i, var_0.b.x), var_0.b), var_0).b.x, -8760i, var_0.b.x)), func_4(Struct_1(var_0.e, var_0.b, any(vec2<bool>(true, true)), ~(~4294967295u), func_1(func_2(global1.wwx, Struct_1(var_0.a, var_0.b, false, var_0.d, var_0.e)), !var_0.a).e), vec2<u32>(var_0.d, ~var_0.d), var_0.b, Struct_1(all(vec2<bool>(var_0.e, true)), var_0.b, true, func_4(Struct_1(var_0.a, var_0.b, true, var_0.d, var_0.e), _wgslsmith_div_vec2_u32(vec2<u32>(var_0.d, var_0.d), vec2<u32>(var_0.d, 2406u)), vec3<i32>(var_0.b.x, u_input.b, u_input.b), func_4(Struct_1(false, var_0.b, var_0.a, 0u, var_0.e), vec2<u32>(var_0.d, var_0.d), vec3<i32>(1i, u_input.a, 17603i), Struct_1(var_0.e, var_0.b, var_0.a, var_0.d, false))).d, true)));
    global3 = array<Struct_1, 27>();
    global1 = vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.x)), -1000f)), global0.x))), _wgslsmith_f_op_f32(floor(global1.x)), global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) - 747f))));
    var var_2 = -vec4<i32>(var_1.b.x << (_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 6114u), vec2<u32>(66388u, 0u)), var_0.d) % 32u), 0i, 2147483647i, var_1.b.x);
    global0 = global1.wz;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 415f, global1.x, 800f) + vec4<f32>(global0.x, global1.x, global0.x, global0.x)) + vec4<f32>(1000f, -665f, 730f, global1.x))))) * vec4<f32>(-1000f, global0.x, _wgslsmith_div_f32(761f, 1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - global0.x) - _wgslsmith_f_op_f32(round(344f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(-41843i, ~(var_0.b.x & _wgslsmith_mod_i32(var_1.b.x, var_2.x)), _wgslsmith_dot_vec4_i32(max(~vec4<i32>(var_0.b.x, -69565i, var_1.b.x, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, var_1.b.x, 0i, 10566i), vec4<i32>(var_1.b.x, var_2.x, u_input.a, 27191i), vec4<i32>(var_1.b.x, 64897i, u_input.a, var_0.b.x))), -max(vec4<i32>(u_input.a, var_1.b.x, var_0.b.x, var_2.x), vec4<i32>(var_1.b.x, var_0.b.x, var_1.b.x, u_input.a))), var_1.b.x), func_1(false, !any(!vec2<bool>(var_0.c, true))).b.x, ~(-(~vec4<i32>(1i, 0i, 1010i, var_2.x))));
}

