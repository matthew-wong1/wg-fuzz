struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: Struct_1,
    e: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: u32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(-11303i, 0i, -1i, -7366i, 0i, -35520i, 52646i, 0i, -11074i, i32(-2147483648), 29359i, 7705i, -9143i, 1i, 32660i, 0i, -1i, 29797i, 2147483647i, 0i, -18713i, i32(-2147483648), -30305i, 1i, 52724i, 2147483647i, 1i, 1i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = arg_1.a;
    global0 = array<i32, 28>();
    var var_1 = 27668i;
    var_1 = global0[_wgslsmith_index_u32(var_0.c.x, 28u)];
    global0 = array<i32, 28>();
    return var_0;
}

fn func_3(arg_0: Struct_3) -> vec4<u32> {
    global0 = array<i32, 28>();
    var var_0 = Struct_2(Struct_1(vec3<i32>(5422i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(u_input.a, arg_0.a.a), vec3<i32>(1i, -60634i, u_input.a.x)), _wgslsmith_add_i32(arg_0.a.a.x, 0i)), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -199f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-209f, -1129f))), -218f), arg_0.a.c, arg_0.a.d), arg_0.a, _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~_wgslsmith_add_u32(15061u, arg_0.a.c.x), 0u, _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(arg_0.a.c, vec3<u32>(12775u, 4294967295u, arg_0.a.c.x)), ~arg_0.a.c.x)), min(vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x, 75824u) >> (vec4<u32>(9015u, 44021u, 66982u, arg_0.a.c.x) % vec4<u32>(32u)), select(vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, 39870u, arg_0.a.c.x), vec4<u32>(arg_0.a.c.x, arg_0.a.c.x, 67978u, 30143u), arg_0.a.d)) ^ ~firstLeadingBit(vec4<u32>(70771u, arg_0.a.c.x, 73323u, arg_0.a.c.x))), Struct_1(_wgslsmith_add_vec3_i32(arg_0.a.a, _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(arg_0.a.a.x, u_input.a.x, -2147483647i)), u_input.a ^ vec3<i32>(global0[_wgslsmith_index_u32(arg_0.a.c.x, 28u)], 0i, u_input.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a.a.x, 2147483647i, 0i), vec3<i32>(1058i, arg_0.a.a.x, u_input.a.x)))), _wgslsmith_div_vec3_f32(arg_0.a.b, arg_0.a.b), arg_0.a.c, arg_0.a.c.x >= ~arg_0.a.c.x), ~(~vec4<u32>(arg_0.a.c.x, ~63060u, 31945u, ~13782u)));
    return vec4<u32>(arg_0.a.c.x, ~arg_0.a.c.x, 12341u, 29766u);
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    let var_0 = Struct_3(func_2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), Struct_3(arg_0.a), !select(select(vec4<bool>(true, false, false, arg_0.a.d), vec4<bool>(false, arg_2.b.d, true, false), vec4<bool>(arg_0.a.d, arg_2.a.d, true, false)), vec4<bool>(arg_2.b.d, arg_2.a.d, arg_0.a.d, true), !vec4<bool>(arg_2.a.d, arg_0.a.d, true, arg_0.a.d))));
    let var_1 = var_0.a.c.x;
    var var_2 = arg_1;
    global0 = array<i32, 28>();
    let var_3 = Struct_3(func_2(arg_2.a.b.x, var_0, select(!(!vec4<bool>(arg_2.d.d, false, true, arg_0.a.d)), select(vec4<bool>(false, var_0.a.d, arg_0.a.d, var_0.a.d), vec4<bool>(false, true, var_0.a.d, var_0.a.d), !vec4<bool>(arg_0.a.d, var_0.a.d, false, var_0.a.d)), !(!vec4<bool>(true, arg_2.b.d, arg_2.b.d, arg_0.a.d)))));
    return Struct_5(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(f32(-1f) * -817f))) >= 1343f, arg_2.a.c.x, Struct_4(select(max(var_0.a.c.xz, var_3.a.c.xy) ^ (vec2<u32>(var_1, var_0.a.c.x) >> (vec2<u32>(4294967295u, 0u) % vec2<u32>(32u))), ~arg_2.e.yz, true), -(arg_0.a.a << (vec3<u32>(arg_2.e.x, arg_0.a.c.x, 1u) % vec3<u32>(32u)))), Struct_1(arg_2.a.a, arg_2.b.b, ~arg_2.c.xxz, var_3.a.d));
}

fn func_1(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: vec3<u32>) -> bool {
    global0 = array<i32, 28>();
    var var_0 = func_4(Struct_3(arg_0.a), _wgslsmith_f_op_f32(-arg_0.a.b.x), Struct_2(Struct_1(_wgslsmith_mod_vec3_i32(~u_input.a, _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.a.a.x, 1i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(42854u, 28u)], -14786i, u_input.a.x), u_input.a)), arg_0.a.b, ~(~arg_2), arg_0.a.d), func_2(-195f, arg_0, !select(vec4<bool>(true, arg_0.a.d, arg_0.a.d, arg_0.a.d), vec4<bool>(false, arg_1.x, arg_1.x, true), arg_1.x)), vec4<u32>(~(~0u), 51852u ^ ~arg_0.a.c.x, ~(91127u >> (arg_2.x % 32u)), 0u), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.b.x * -122f)), Struct_3(Struct_1(vec3<i32>(arg_0.a.a.x, u_input.a.x, -1i), arg_0.a.b, vec3<u32>(arg_2.x, arg_0.a.c.x, 29357u), arg_0.a.d)), !vec4<bool>(arg_0.a.d, true, true, true)), ~_wgslsmith_mult_vec4_u32(func_3(arg_0), _wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.a.c.x, 4294967295u, arg_2.x, 26460u), vec4<u32>(arg_2.x, arg_2.x, 4294967295u, arg_0.a.c.x)))));
    let var_1 = true;
    global0 = array<i32, 28>();
    var_0 = Struct_5(_wgslsmith_div_u32(func_2(_wgslsmith_f_op_f32(exp2(var_0.e.b.x)), arg_0, vec4<bool>(true, true, true, true)).c.x, arg_0.a.c.x), var_1, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(min(countOneBits(arg_0.a.c.yz), arg_0.a.c.yz ^ var_0.e.c.xz), reverseBits(arg_0.a.c.zz)), ~_wgslsmith_div_vec2_u32(~var_0.e.c.xy, ~vec2<u32>(39137u, var_0.c))), func_4(Struct_3(var_0.e), arg_0.a.b.x, Struct_2(func_4(arg_0, var_0.e.b.x, Struct_2(var_0.e, Struct_1(arg_0.a.a, arg_0.a.b, vec3<u32>(arg_0.a.c.x, arg_0.a.c.x, 4294967295u), false), vec4<u32>(4294967295u, arg_0.a.c.x, arg_2.x, 4294967295u), var_0.e, vec4<u32>(arg_0.a.c.x, var_0.c, 31392u, var_0.d.a.x))).e, Struct_1(select(vec3<i32>(-2147483647i, var_0.e.a.x, -2147483647i), u_input.a, var_0.b), _wgslsmith_f_op_vec3_f32(trunc(arg_0.a.b)), vec3<u32>(arg_2.x, 6280u, 103600u), var_1), ~(vec4<u32>(var_0.a, 62807u, arg_0.a.c.x, arg_2.x) & vec4<u32>(4294967295u, arg_0.a.c.x, var_0.d.a.x, 1u)), var_0.e, vec4<u32>(arg_2.x, min(23682u, var_0.c), 46214u, min(53480u, 27202u)))).d, arg_0.a);
    return true;
}

fn func_5(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_3(Struct_1(vec3<i32>(countOneBits(~(-20226i)), _wgslsmith_clamp_i32(-5560i, arg_2.a.x, global0[_wgslsmith_index_u32(arg_2.c.x, 28u)]) << (27037u % 32u), select(-1i, reverseBits(1i), !arg_2.d)), _wgslsmith_f_op_vec3_f32(arg_2.b - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_2.b)))), vec3<u32>(~arg_2.c.x, 22443u, arg_2.c.x) >> (_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_2.c.x, arg_2.c.x, arg_0.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(116646u, arg_2.c.x, 0u), vec3<u32>(arg_2.c.x, arg_0.x, arg_2.c.x))) % vec3<u32>(32u)), true));
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_1 = func_4(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.b.x)))) - arg_2.b.x), Struct_2(arg_2, func_2(_wgslsmith_f_op_f32(-arg_2.b.x), var_0, vec4<bool>(var_0.a.d, func_1(Struct_3(Struct_1(vec3<i32>(global0[_wgslsmith_index_u32(var_0.a.c.x, 28u)], u_input.a.x, -3033i), arg_2.b, var_0.a.c, arg_2.d)), vec2<bool>(arg_1, true), vec3<u32>(arg_2.c.x, 4294967295u, 1u)), arg_1, all(vec2<bool>(true, true)))), abs(vec4<u32>(~arg_0.x, 2680u, _wgslsmith_div_u32(arg_2.c.x, arg_2.c.x), ~arg_0.x)), func_4(var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b.x) - _wgslsmith_f_op_f32(-arg_2.b.x)), Struct_2(arg_2, func_4(Struct_3(Struct_1(arg_2.a, arg_2.b, vec3<u32>(75369u, 4294967295u, 0u), arg_2.d)), -187f, Struct_2(arg_2, Struct_1(var_0.a.a, arg_2.b, arg_0.zyz, false), vec4<u32>(1u, 4294967295u, arg_2.c.x, 6850u), Struct_1(u_input.a, arg_2.b, vec3<u32>(arg_2.c.x, var_0.a.c.x, 0u), var_0.a.d), vec4<u32>(4294967295u, var_0.a.c.x, 654u, 1675u))).e, vec4<u32>(arg_2.c.x, 52392u, 1u, arg_2.c.x), arg_2, arg_0)).e, arg_0));
    var_1 = func_4(var_0, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.a.b.x))), var_0.a.b.x)), Struct_2(var_1.e, func_4(Struct_3(func_2(1300f, var_0, vec4<bool>(arg_2.d, true, arg_2.d, true))), _wgslsmith_f_op_f32(f32(-1f) * -251f), Struct_2(Struct_1(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_2.c.x, 28u)], 2147483647i), var_1.e.b, vec3<u32>(var_1.c, var_0.a.c.x, 4294967295u), var_0.a.d), arg_2, _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, var_0.a.c.x, 3438u, var_0.a.c.x), vec4<u32>(var_0.a.c.x, arg_0.x, 3118u, arg_2.c.x)), var_0.a, ~arg_0)).e, min(_wgslsmith_mod_vec4_u32(arg_0, vec4<u32>(var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, 1u)), _wgslsmith_clamp_vec4_u32(arg_0 >> (vec4<u32>(var_0.a.c.x, var_1.c, var_1.d.a.x, 76281u) % vec4<u32>(32u)), arg_0, vec4<u32>(arg_2.c.x, 34439u, arg_0.x, 1u))), Struct_1(var_1.d.b, vec3<f32>(_wgslsmith_f_op_f32(round(var_0.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_div_f32(var_0.a.b.x, -1045f)), _wgslsmith_mod_vec3_u32(arg_2.c, _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.e.c.x, 28908u, var_1.d.a.x), var_1.e.c)), !any(vec4<bool>(var_0.a.d, false, arg_2.d, true))), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(2390u, arg_2.c.x, 0u, 0u), arg_0) ^ func_3(var_0))));
    return var_1.d.a.x;
}

fn func_6(arg_0: u32, arg_1: u32, arg_2: f32) -> Struct_3 {
    global0 = array<i32, 28>();
    var var_0 = countOneBits(max(_wgslsmith_div_i32(-2147483647i, -9805i), global0[_wgslsmith_index_u32(4294967295u, 28u)]));
    let var_1 = Struct_3(Struct_1(select(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, global0[_wgslsmith_index_u32(15803u, 28u)]), vec3<i32>(u_input.a.x, 43169i, 30028i)), select(abs(u_input.a), -u_input.a, vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(arg_2)), arg_2, arg_2)), ~abs(~vec3<u32>(4294967295u, 32795u, arg_0)), true));
    let var_2 = _wgslsmith_clamp_i32(_wgslsmith_add_i32(var_1.a.a.x, ~var_1.a.a.x) ^ firstLeadingBit(u_input.a.x), var_1.a.a.x, ~(-1i));
    var_0 = global0[_wgslsmith_index_u32(reverseBits(66010u & _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(var_1.a.c, vec3<u32>(0u, 0u, 1u)), ~arg_1), _wgslsmith_add_u32(~4294967295u, var_1.a.c.x))), 28u)];
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 28>();
    global0 = array<i32, 28>();
    var var_0 = func_6(~func_5(vec4<u32>(1u, 1u, 1u, 1u), func_1(Struct_3(Struct_1(u_input.a, vec3<f32>(-632f, 1124f, -209f), vec3<u32>(1u, 4294967295u, 32905u), true)), vec2<bool>(true, true), vec3<u32>(4294967295u, 1u, 4294967295u)) & true, Struct_1(-u_input.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(231f, -1277f, -1944f)), vec3<u32>(1u, 1u, 26190u), true)), abs(35415u), _wgslsmith_f_op_f32(-1384f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1430f))) + 1976f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.a.b.x)))), vec4<u32>(~var_0.a.c.x, var_0.a.c.x, var_0.a.c.x, _wgslsmith_sub_u32(var_0.a.c.x, 0u)) >> (vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(6241u, var_0.a.c.x), func_3(Struct_3(Struct_1(u_input.a, var_0.a.b, var_0.a.c, var_0.a.d))).x), ~(~486u), var_0.a.c.x, ~var_0.a.c.x) % vec4<u32>(32u)), var_0.a.a >> (min(~_wgslsmith_mult_vec3_u32(var_0.a.c, var_0.a.c), var_0.a.c) % vec3<u32>(32u)));
}

