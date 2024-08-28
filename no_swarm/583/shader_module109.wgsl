struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: bool,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec4<bool>;

var<private> global2: vec3<bool> = vec3<bool>(true, true, false);

var<private> global3: array<bool, 7>;

var<private> global4: Struct_1 = Struct_1(1520f, vec2<u32>(36149u, 1u), false, vec3<u32>(0u, 0u, 64406u));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(0u, arg_0.d.x)), ~vec2<u32>(0u, 1u)), arg_0.d.yz), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.d.x, 30780u, 29822u, 24870u), vec4<u32>(1u, 37458u, global4.d.x, arg_0.b.x))), arg_3.b.x, firstLeadingBit(62015u), arg_0.b.x << (arg_3.b.x % 32u)), select(max(abs(vec4<u32>(1u, arg_3.b.x, arg_1, 0u)), ~vec4<u32>(arg_1, 18408u, arg_0.b.x, 13023u)), vec4<u32>(firstTrailingBit(29415u), max(2526u, 10997u), global4.b.x, select(arg_1, global4.b.x, global3[_wgslsmith_index_u32(1u, 7u)])), false)));
    var var_1 = global2.x;
    var var_2 = max(_wgslsmith_sub_vec4_i32(~(vec4<i32>(1i, u_input.a, 40729i, u_input.a) ^ vec4<i32>(arg_2.x, -1i, 2147483647i, 8431i)) ^ vec4<i32>(-u_input.a, u_input.a, _wgslsmith_dot_vec3_i32(arg_2, vec3<i32>(0i, arg_2.x, -1i)), -18819i), -countOneBits(-vec4<i32>(0i, 24847i, 261i, 7231i))), max(_wgslsmith_mod_vec4_i32(select(vec4<i32>(17332i, -1i, u_input.a, 0i), vec4<i32>(-20632i, arg_2.x, u_input.a, arg_2.x), false), reverseBits(vec4<i32>(u_input.a, 0i, -1i, -5040i))) >> (~vec4<u32>(global4.b.x, 4294967295u, 4294967295u, global4.b.x) % vec4<u32>(32u)), firstLeadingBit(-vec4<i32>(u_input.a, 2147483647i, -1i, arg_2.x))));
    let var_3 = select(!vec4<bool>((global4.a <= -730f) & !arg_3.c, select(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.b.x, arg_3.b.x), 7u)], true, global1.x), any(select(global1.ywz, vec3<bool>(true, arg_0.c, false), global4.c)), !global3[_wgslsmith_index_u32(arg_1, 7u)]), !select(select(!vec4<bool>(global3[_wgslsmith_index_u32(48991u, 7u)], global1.x, arg_3.c, global3[_wgslsmith_index_u32(54107u, 7u)]), select(vec4<bool>(global1.x, global2.x, arg_3.c, global4.c), vec4<bool>(global3[_wgslsmith_index_u32(global4.b.x, 7u)], global2.x, false, global1.x), false), select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, false, false, arg_0.c), vec4<bool>(global1.x, global1.x, global4.c, arg_3.c))), select(vec4<bool>(true, true, true, true), !vec4<bool>(false, global3[_wgslsmith_index_u32(38931u, 7u)], false, true), select(vec4<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 7u)], global2.x), vec4<bool>(arg_3.c, true, true, false), global3[_wgslsmith_index_u32(1u, 7u)])), !(!vec4<bool>(global1.x, global3[_wgslsmith_index_u32(arg_3.d.x, 7u)], global2.x, global4.c))), any(select(vec4<bool>(false, global3[_wgslsmith_index_u32(15745u, 7u)], -1i >= var_2.x, true), vec4<bool>(true, false & arg_3.c, -584f > global4.a, global2.x), !global1.x)));
    let var_4 = arg_0;
    return arg_3.d.x ^ _wgslsmith_div_u32((min(arg_1, arg_3.d.x) >> (abs(arg_3.d.x) % 32u)) & global4.b.x, _wgslsmith_add_u32(arg_3.b.x, ~1u));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    var var_0 = Struct_1(-626f, vec2<u32>(global4.d.x, global4.d.x), false, ~vec3<u32>(firstTrailingBit(func_3(Struct_1(arg_0.x, vec2<u32>(global4.d.x, 4294967295u), global4.c, vec3<u32>(0u, global4.d.x, global4.b.x)), global4.b.x, vec3<i32>(28614i, u_input.a, u_input.a), Struct_1(arg_0.x, global4.b, global3[_wgslsmith_index_u32(global4.d.x, 7u)], vec3<u32>(global4.b.x, 50626u, global4.d.x)))), _wgslsmith_dot_vec3_u32(global4.d, global4.d) << (_wgslsmith_mult_u32(global4.b.x, global4.d.x) % 32u), 4294967295u));
    var var_1 = _wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, arg_0.x, 346f), vec3<f32>(-226f, arg_0.x, 471f))))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global4.a, arg_0.x), arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-226f + global4.a)), var_0.a)));
    var var_2 = _wgslsmith_div_vec4_u32(abs(vec4<u32>(max(~var_0.b.x, 38421u | var_0.b.x), _wgslsmith_mult_u32(1u, var_0.b.x ^ var_0.d.x), ~global4.d.x, select(_wgslsmith_mod_u32(global4.b.x, var_0.d.x), 4294967295u, !global2.x))), vec4<u32>(_wgslsmith_add_u32(0u, select(4294967295u, 77939u, global2.x)), 4294967295u, 30828u, max(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global4.b.x), var_0.d))) & reverseBits(~(vec4<u32>(global4.d.x, global4.b.x, 1759u, var_0.b.x) | vec4<u32>(1u, global4.b.x, global4.b.x, global4.d.x))));
    global4 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.a + _wgslsmith_div_f32(var_1.x, 938f)))), ~reverseBits(~var_2.xw), var_2.x == max(~var_2.x, var_0.d.x), _wgslsmith_mod_vec3_u32(~vec3<u32>(var_2.x, 0u, var_0.b.x) & (~vec3<u32>(var_0.b.x, var_0.d.x, var_0.b.x) | _wgslsmith_add_vec3_u32(global4.d, vec3<u32>(19741u, global4.d.x, var_0.b.x))), (var_2.xwy >> (var_0.d % vec3<u32>(32u))) >> (var_2.zxz % vec3<u32>(32u))));
    global1 = select(!vec4<bool>(!var_0.c, false, !(var_1.x == var_0.a), false), select(vec4<bool>(!global3[_wgslsmith_index_u32(4294967295u, 7u)], !(1u <= var_2.x), !(global2.x && global3[_wgslsmith_index_u32(15256u, 7u)]), select(global1.x, true, select(global1.x, true, global4.c))), !select(vec4<bool>(false, false, true, global2.x), !vec4<bool>(true, var_0.c, true, global4.c), 1115f <= var_0.a), any(global2.yz)), !vec4<bool>(any(global1.wz), all(global1.xwz), all(vec3<bool>(global1.x, false, var_0.c)), global2.x));
    return select(u_input.a, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, ~u_input.a, -u_input.a), ~_wgslsmith_div_vec3_i32(-vec3<i32>(54883i, -52942i, -2147483647i), countOneBits(vec3<i32>(2147483647i, -33347i, u_input.a)))), false);
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<i32>) -> Struct_1 {
    global4 = Struct_1(823f, max(global4.d.zx, global4.b) >> (abs(min(vec2<u32>(0u, 95241u), _wgslsmith_sub_vec2_u32(global4.b, vec2<u32>(global4.b.x, 0u)))) % vec2<u32>(32u)), false, ~(global4.d << (global4.d % vec3<u32>(32u))));
    global2 = vec3<bool>(true, !(_wgslsmith_add_u32(global4.b.x, 59938u) > (global4.b.x | 1u)) | all(vec2<bool>(global1.x, true)), global2.x);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(1000f + global4.a), _wgslsmith_sub_vec2_u32(vec2<u32>(global4.b.x, reverseBits(global4.d.x ^ 47344u)), vec2<u32>(~global4.b.x, global4.b.x)), any(vec2<bool>(false, false)), vec3<u32>(~global4.b.x, min(18564u, ~87124u), global4.b.x) ^ vec3<u32>(global4.d.x, global4.d.x, ~global4.d.x));
    let var_1 = !global1.zxw;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(778f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1778f * -133f)))))), _wgslsmith_clamp_vec2_u32(~global4.d.yx, select(min(var_0.b, vec2<u32>(global4.d.x, 13258u)), _wgslsmith_add_vec2_u32(vec2<u32>(33387u, global4.b.x), ~vec2<u32>(4294967295u, 55636u)), select(vec2<bool>(global1.x, false), !vec2<bool>(false, var_1.x), var_1.x)), ~min(~var_0.b, _wgslsmith_mod_vec2_u32(var_0.d.xx, global4.b))), false, ~firstLeadingBit(_wgslsmith_sub_vec3_u32(var_0.d, global4.d)));
    return var_2;
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    let var_0 = countOneBits(_wgslsmith_div_vec2_u32(global4.b, arg_0.b));
    global1 = !vec4<bool>(any(global1.ywx), false, !arg_0.c, true != (true | global1.x));
    var var_1 = 1u;
    global4 = func_4(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(0i, -9617i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -20608i, 1i, 1094i), vec4<i32>(u_input.a, u_input.a, 19762i, u_input.a)), u_input.a)), ~vec4<i32>(u_input.a, -49298i, u_input.a, -1i) << (~max(vec4<u32>(4294967295u, 16053u, 109843u, 1u), vec4<u32>(21404u, var_0.x, 58644u, 4294967295u)) % vec4<u32>(32u))), ~abs(vec2<i32>(func_2(vec3<f32>(-1032f, 1420f, arg_0.a)), -2147483647i ^ u_input.a)));
    global2 = select(select(vec3<bool>((arg_0.d.x >> (arg_0.d.x % 32u)) < 73406u, any(select(global2.yz, global2.xz, arg_0.c)), global4.a == _wgslsmith_f_op_f32(-global4.a)), global1.zyy, vec3<bool>(true, !func_4(vec4<i32>(-7654i, u_input.a, u_input.a, u_input.a), vec2<i32>(19501i, u_input.a)).c, global1.x)), global1.wwy, _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.a, u_input.a, u_input.a) << (arg_0.d % vec3<u32>(32u))), abs(-vec3<i32>(1i, -14500i, u_input.a))) == ~_wgslsmith_sub_i32(-1i, max(u_input.a, u_input.a)));
    return -vec2<i32>(~countOneBits(-2147483647i), 50825i);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = !vec3<bool>(global3[_wgslsmith_index_u32(~max(~arg_1.b.x, _wgslsmith_dot_vec2_u32(global4.d.xx, vec2<u32>(global4.d.x, arg_1.b.x))), 7u)], true, all(global1.wyx));
    global0 = ~func_2(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, arg_0, arg_1.a) + vec3<f32>(global4.a, global4.a, 1304f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a, 1387f, arg_0)))))));
    let var_1 = Struct_1(global4.a, _wgslsmith_mod_vec2_u32(~(~abs(vec2<u32>(arg_1.b.x, 42064u))), _wgslsmith_sub_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(global4.d.x, 24838u), arg_1.b), arg_1.b)), global1.x, ~((global4.d ^ firstLeadingBit(vec3<u32>(14884u, arg_1.b.x, 0u))) | _wgslsmith_div_vec3_u32(func_4(vec4<i32>(-4067i, u_input.a, u_input.a, 68497i), vec2<i32>(arg_2.x, 130i)).d, firstLeadingBit(vec3<u32>(arg_1.d.x, 9871u, arg_1.b.x)))));
    var var_2 = Struct_1(-1000f, ~arg_1.b << (_wgslsmith_mult_vec2_u32(var_1.d.yy << (~vec2<u32>(var_1.d.x, var_1.b.x) % vec2<u32>(32u)), global4.d.zz) % vec2<u32>(32u)), any(select(!select(var_0.zy, vec2<bool>(global1.x, false), vec2<bool>(true, arg_1.c)), !global2.xz, !select(var_0.xy, vec2<bool>(false, false), var_1.c))), vec3<u32>(1u, 51072u | arg_1.d.x, func_4(~(~vec4<i32>(arg_2.x, -29320i, -2147483647i, 1i)), vec2<i32>(_wgslsmith_div_i32(-1i, u_input.a), _wgslsmith_mod_i32(-26569i, u_input.a))).b.x));
    let var_3 = Struct_1(var_1.a, select(var_2.d.xx, ~firstLeadingBit(min(arg_1.d.zx, global4.b)), vec2<bool>(func_4(_wgslsmith_div_vec4_i32(vec4<i32>(arg_2.x, u_input.a, 2355i, arg_2.x), vec4<i32>(-45294i, 20891i, u_input.a, -57742i)), countOneBits(vec2<i32>(8620i, arg_2.x))).c, ~32598u < _wgslsmith_clamp_u32(4294967295u, global4.b.x, 15306u))), false, vec3<u32>(_wgslsmith_sub_u32(var_1.d.x, 4294967295u), 4294967295u, 1u));
    return func_4(~reverseBits((vec4<i32>(u_input.a, u_input.a, u_input.a, 5426i) >> (vec4<u32>(arg_1.b.x, var_3.d.x, arg_1.b.x, var_1.d.x) % vec4<u32>(32u))) << (~vec4<u32>(5921u, arg_1.b.x, var_2.b.x, global4.d.x) % vec4<u32>(32u))), vec2<i32>(arg_2.x, ~(arg_2.x >> (global4.b.x % 32u))) ^ ~select(arg_2 >> (vec2<u32>(var_3.b.x, var_2.b.x) % vec2<u32>(32u)), arg_2, 0u == global4.b.x));
}

fn func_6(arg_0: vec3<i32>, arg_1: i32, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(min(-1129f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1408f + _wgslsmith_f_op_f32(global4.a * arg_3.a)), 1090f))));
    global1 = select(select(select(select(vec4<bool>(false, global3[_wgslsmith_index_u32(arg_3.b.x, 7u)], true, true), select(vec4<bool>(global4.c, global3[_wgslsmith_index_u32(arg_3.b.x, 7u)], true, false), vec4<bool>(global2.x, global2.x, true, global3[_wgslsmith_index_u32(101058u, 7u)]), global2.x), vec4<bool>(global2.x, global2.x, false, global4.c)), !select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global3[_wgslsmith_index_u32(global4.d.x, 7u)], false, global1.x), global1.x), select(vec4<bool>(global3[_wgslsmith_index_u32(arg_3.b.x, 7u)], global4.c, false, global1.x), vec4<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 7u)], false, global1.x), global2.x)), vec4<bool>(func_5(_wgslsmith_f_op_f32(min(399f, -1418f)), Struct_1(arg_3.a, vec2<u32>(49993u, global4.d.x), global2.x, global4.d), select(arg_0.xx, vec2<i32>(u_input.a, arg_0.x), vec2<bool>(false, true))).c, global1.x, _wgslsmith_div_u32(4294967295u, global4.d.x) <= 0u, _wgslsmith_f_op_f32(round(-712f)) != _wgslsmith_f_op_f32(abs(arg_2.x))), select(select(vec4<bool>(global2.x, global2.x, true, false), select(vec4<bool>(true, global2.x, global4.c, global1.x), vec4<bool>(global4.c, true, true, global4.c), true), true), select(!vec4<bool>(global3[_wgslsmith_index_u32(arg_3.d.x, 7u)], arg_3.c, arg_3.c, global3[_wgslsmith_index_u32(global4.b.x, 7u)]), select(vec4<bool>(false, global4.c, true, false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(global4.d.x, 7u)], false), vec4<bool>(false, true, false, true)), global4.c), !(!vec4<bool>(global1.x, global4.c, false, false)))), !select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, arg_3.c), select(vec4<bool>(true, true, global2.x, global4.c), vec4<bool>(false, arg_3.c, true, true), vec4<bool>(false, true, false, false))), vec4<bool>(global1.x, false, false, func_4(vec4<i32>(u_input.a, 1i, 2147483647i, arg_1), vec2<i32>(-42315i, arg_0.x)).c), !vec4<bool>(false, arg_3.c, false, false)), true);
    var_0 = func_4(_wgslsmith_sub_vec4_i32(vec4<i32>(~reverseBits(u_input.a), 17458i, -18998i, arg_0.x), -countOneBits(-vec4<i32>(arg_1, arg_1, arg_0.x, 0i))), arg_0.xy).a;
    global0 = firstTrailingBit(u_input.a);
    global3 = array<bool, 7>();
    return func_5(-445f, arg_3, reverseBits(arg_0.zy));
}

fn func_7(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_1) -> bool {
    global1 = vec4<bool>(((_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, u_input.a), vec4<i32>(8856i, u_input.a, 0i, -22182i)) ^ ~u_input.a) | -1i) < (u_input.a >> (func_5(_wgslsmith_f_op_f32(arg_0.a - arg_0.a), func_5(global4.a, Struct_1(arg_3.a, vec2<u32>(arg_3.d.x, global4.b.x), false, vec3<u32>(4294967295u, 1u, 0u)), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(-52368i, 68532i)).d.x % 32u)), select(true, global3[_wgslsmith_index_u32(arg_3.b.x, 7u)], global4.c), false, false);
    var var_0 = func_4(~vec4<i32>(i32(-1i) * -u_input.a, i32(-1i) * -u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, -1i, u_input.a), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, 3979i, u_input.a))), u_input.a), func_1(arg_0));
    var var_1 = _wgslsmith_f_op_f32(-global4.a);
    var var_2 = arg_0;
    var var_3 = true;
    return any(!select(vec2<bool>(true, global2.x), vec2<bool>(6307u >= arg_3.b.x, 29687i != u_input.a), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(223f, -580f, _wgslsmith_f_op_f32(-global4.a), global4.a)) + vec4<f32>(1000f, _wgslsmith_f_op_f32(step(-824f, _wgslsmith_div_f32(global4.a, global4.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global4.a))), _wgslsmith_f_op_f32(global4.a * _wgslsmith_f_op_f32(global4.a * 405f))))));
    global0 = 1i;
    var var_1 = vec4<bool>(func_7(func_6(abs(vec3<i32>(u_input.a, -15270i, u_input.a)), -1i, var_0.xy, func_5(2082f, Struct_1(global4.a, global4.b, global3[_wgslsmith_index_u32(global4.b.x, 7u)], vec3<u32>(global4.b.x, global4.b.x, 4294967295u)), func_1(Struct_1(978f, global4.d.zy, global4.c, vec3<u32>(4294967295u, 38367u, 40601u))))), _wgslsmith_clamp_vec3_u32(~(~vec3<u32>(33599u, 43378u, 41948u)), abs(vec3<u32>(0u, 1739u, 0u)), (vec3<u32>(0u, global4.b.x, global4.b.x) >> (vec3<u32>(global4.d.x, global4.b.x, global4.d.x) % vec3<u32>(32u))) ^ vec3<u32>(global4.b.x, global4.b.x, 14836u)), any(!(!vec2<bool>(false, global1.x))), func_5(_wgslsmith_f_op_f32(max(-1705f, _wgslsmith_f_op_f32(var_0.x * -1000f))), Struct_1(_wgslsmith_div_f32(global4.a, -1000f), ~vec2<u32>(1u, global4.b.x), true, _wgslsmith_mult_vec3_u32(vec3<u32>(global4.b.x, global4.d.x, 6759u), global4.d)), ~max(vec2<i32>(-49503i, -2147483647i), vec2<i32>(u_input.a, 1i)))), global3[_wgslsmith_index_u32(min(~firstLeadingBit(44966u), ~global4.d.x), 7u)], !all(select(select(vec3<bool>(global2.x, global4.c, global2.x), global1.yzw, global1.x), vec3<bool>(global2.x, global4.c, false), !global1.xzw)), true);
    let var_2 = -u_input.a;
    let var_3 = Struct_1(-736f, ~(~abs(global4.d.yy & global4.b)), global1.x, ~min(max(select(global4.d, global4.d, global1.ywx), abs(vec3<u32>(0u, global4.d.x, 40551u))), global4.d));
    var var_4 = 313f;
    var var_5 = Struct_1(1f, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(10123u, 4294967295u), vec2<u32>(13551u, 1u))), vec2<u32>(4294967295u, ~global4.d.x)), _wgslsmith_sub_vec2_u32(select(var_3.b, vec2<u32>(4294967295u, global4.d.x), true), ~vec2<u32>(var_3.b.x, 1u)) & var_3.b), global3[_wgslsmith_index_u32(var_3.d.x, 7u)], var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.a, var_5.a, 781f, var_5.a), var_0))))))), vec2<i32>(1i, 108i), _wgslsmith_mult_i32(u_input.a << (_wgslsmith_sub_u32(0u, countOneBits(0u)) % 32u), 22493i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(ceil(2519f)), all(global2.yx)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_3.a, var_0.x)), var_0.x))));
}

