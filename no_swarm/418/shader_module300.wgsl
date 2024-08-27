struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: u32,
    c: Struct_3,
    d: f32,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec2<bool>(false, false), vec4<i32>(-1i, 38533i, 3423i, -1i)), -788f, Struct_1(vec2<bool>(false, true), vec4<i32>(1i, 27898i, 20088i, -14774i)), Struct_1(vec2<bool>(false, false), vec4<i32>(-8471i, 23674i, 0i, -1i)), vec2<i32>(1i, -1i));

var<private> global1: u32 = 6752u;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> f32 {
    let var_0 = 1131i;
    let var_1 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1361f, global0.b))))) * vec2<f32>(475f, global0.b))));
    global1 = 1u;
    var var_2 = 2147483647i;
    var_2 = max(~(-2147483647i), -2147483647i);
    return 107f;
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> i32 {
    return -global0.c.b.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    global0 = Struct_3(arg_2, _wgslsmith_f_op_f32(round(-917f)), arg_2, arg_2, -vec2<i32>(global0.c.b.x, ~0i));
    let var_0 = Struct_4(_wgslsmith_clamp_vec2_i32(min(vec2<i32>(2147483647i, -7112i), -vec2<i32>(u_input.a, -35830i)), arg_3, global0.e), reverseBits(~4294967295u), Struct_3(Struct_1(vec2<bool>(all(arg_0.wyx), arg_2.a.x), ~select(vec4<i32>(1i, arg_1.c, arg_1.c, 19450i), arg_2.b, true)), 1273f, Struct_1(vec2<bool>(0u > arg_1.a.x, true), _wgslsmith_div_vec4_i32(abs(arg_2.b), countOneBits(global0.d.b))), global0.a, max(vec2<i32>(func_3(arg_2.a.x, Struct_3(global0.c, arg_1.d, arg_2, Struct_1(global0.c.a, arg_2.b), vec2<i32>(arg_3.x, -1i))), 19775i & u_input.a), _wgslsmith_clamp_vec2_i32(-arg_2.b.zy, firstLeadingBit(arg_3), -vec2<i32>(arg_2.b.x, arg_3.x)))), 461f, Struct_3(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -147f)))), Struct_1(vec2<bool>(all(arg_0.wx), true), select(~arg_2.b, firstLeadingBit(vec4<i32>(-2147483647i, 2147483647i, -15273i, -2147483647i)), all(vec4<bool>(false, false, false, arg_2.a.x)))), global0.c, vec2<i32>(select(countOneBits(-2147483647i), reverseBits(arg_1.c), all(vec4<bool>(false, arg_0.x, false, true))), arg_3.x)));
    let var_1 = var_0.c.a.b.xyy;
    let var_2 = 0u;
    global1 = select(firstTrailingBit(~min(var_2, ~15204u)), arg_1.a.x, true & global0.a.a.x);
    return Struct_1(!(!vec2<bool>(arg_0.x, any(vec3<bool>(true, arg_0.x, arg_0.x)))), var_0.c.a.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_5 {
    var var_0 = !(!(!vec2<bool>(arg_0.a.a.x, true)));
    var var_1 = countOneBits(1i);
    var var_2 = vec2<bool>(arg_1.c.a.x, var_0.x);
    let var_3 = func_2(vec4<bool>(all(select(select(vec3<bool>(var_2.x, global0.a.a.x, true), vec3<bool>(arg_1.a.a.x, arg_0.c.a.x, true), vec3<bool>(var_0.x, false, true)), vec3<bool>(false, false, true), !vec3<bool>(true, var_2.x, true))), -411f >= _wgslsmith_f_op_f32(abs(arg_0.b)), all(select(!vec3<bool>(global0.d.a.x, false, arg_1.d.a.x), vec3<bool>(var_2.x, true, true), vec3<bool>(true, false, var_0.x))), arg_1.d.a.x), Struct_2(~(~(~vec3<u32>(4294967295u, 56164u, 1u))), any(global0.a.a), 1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(945f, global0.b)), _wgslsmith_f_op_f32(ceil(arg_1.b)))))), func_2(select(vec4<bool>(true, all(vec4<bool>(var_0.x, false, false, true)), !global0.a.a.x, global0.c.a.x), vec4<bool>(!global0.c.a.x, !global0.a.a.x, !var_2.x, global0.d.a.x), arg_1.c.a.x), Struct_2(~vec3<u32>(0u, 18991u, 0u), all(vec3<bool>(var_0.x, true, true)) || true, 1i, _wgslsmith_f_op_f32(step(-1000f, arg_1.b))), func_2(!vec4<bool>(false, var_0.x, false, true), Struct_2(vec3<u32>(16740u, 0u, 1u), !var_2.x, abs(0i), global0.b), Struct_1(!global0.a.a, _wgslsmith_sub_vec4_i32(arg_1.a.b, global0.c.b)), vec2<i32>(arg_1.e.x, 25035i) >> (~vec2<u32>(0u, 4294967295u) % vec2<u32>(32u))), func_2(select(!vec4<bool>(true, arg_1.d.a.x, var_0.x, arg_1.c.a.x), !vec4<bool>(true, global0.c.a.x, var_0.x, arg_0.a.a.x), vec4<bool>(true, var_2.x, false, false)), Struct_2(vec3<u32>(0u, 0u, 110309u), any(vec4<bool>(arg_0.a.a.x, arg_1.c.a.x, var_2.x, arg_0.c.a.x)), arg_0.d.b.x, -2023f), Struct_1(select(vec2<bool>(arg_0.c.a.x, arg_1.c.a.x), global0.a.a, vec2<bool>(var_0.x, true)), arg_0.a.b), _wgslsmith_add_vec2_i32(~vec2<i32>(-1i, -37801i), select(global0.d.b.xz, arg_1.d.b.zx, arg_1.c.a))).b.zx), abs(~select(arg_0.a.b.xz, vec2<i32>(u_input.a, 1i), true))).a.x;
    return Struct_5(vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.c.x, u_input.c.x, 5144i), vec3<i32>(global0.e.x, 30727i, -28309i), vec3<bool>(true, true, var_3)), arg_1.d.b.zxz), vec3<i32>(-arg_1.a.b.x, abs(-20352i), _wgslsmith_sub_i32(-2147483647i, arg_1.c.b.x))), 0i >> ((_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 14363u, 37916u), vec4<u32>(59703u, 1u, 4294967295u, 0u)) | ~65420u) % 32u)), true, Struct_3(func_2(select(vec4<bool>(false, var_3, true, var_2.x), vec4<bool>(arg_1.a.a.x, true, true, global0.a.a.x), select(vec4<bool>(true, true, arg_0.a.a.x, false), vec4<bool>(global0.d.a.x, var_0.x, arg_1.a.a.x, var_3), vec4<bool>(arg_1.a.a.x, false, true, var_0.x))), Struct_2(~vec3<u32>(53448u, 87373u, 15781u), var_0.x, 1i, -407f), Struct_1(arg_1.c.a, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, arg_0.d.b.x, global0.e.x, arg_0.d.b.x), vec4<i32>(global0.a.b.x, 2147483647i, u_input.c.x, arg_0.c.b.x))), min(min(arg_1.d.b.yy, vec2<i32>(32523i, global0.c.b.x)), ~vec2<i32>(global0.a.b.x, 1i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(arg_1, abs(-1708i))))), Struct_1(arg_1.d.a, vec4<i32>(select(u_input.b.x, arg_1.e.x, false), 52853i, global0.d.b.x, 0i)), func_2(!(!vec4<bool>(arg_1.a.a.x, false, global0.d.a.x, global0.a.a.x)), Struct_2(abs(vec3<u32>(458u, 4294967295u, 74748u)), !var_0.x, 77296i | u_input.a, 215f), func_2(select(vec4<bool>(false, var_2.x, var_3, false), vec4<bool>(var_0.x, var_0.x, arg_0.c.a.x, arg_0.a.a.x), arg_0.a.a.x), Struct_2(vec3<u32>(4294967295u, 1u, 25377u), global0.c.a.x, u_input.c.x, arg_0.b), Struct_1(vec2<bool>(true, arg_0.d.a.x), vec4<i32>(45677i, u_input.c.x, global0.a.b.x, u_input.c.x)), ~vec2<i32>(2147483647i, 21169i)), vec2<i32>(-arg_0.d.b.x, _wgslsmith_mod_i32(global0.c.b.x, u_input.a))), vec2<i32>(-(i32(-1i) * -37577i), ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, arg_0.e.x), vec2<i32>(arg_1.c.b.x, global0.a.b.x)))));
}

fn func_5(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_5, arg_3: i32) -> Struct_1 {
    global0 = arg_2.c;
    var var_0 = 896f;
    let var_1 = select(!(!(!(!vec4<bool>(true, arg_2.b, arg_2.c.c.a.x, arg_2.b)))), !vec4<bool>(true | global0.c.a.x, false, _wgslsmith_mult_i32(arg_3, 51933i) <= 68455i, arg_2.c.a.a.x), ~(~_wgslsmith_mod_u32(arg_0, 1u)) != ~select(~arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 50272u), vec2<u32>(51382u, 0u)), arg_2.b));
    var var_2 = Struct_4(func_4(arg_2.c, arg_2.c).a << (vec2<u32>(arg_0, ~9303u) % vec2<u32>(32u)), arg_0, Struct_3(arg_2.c.c, arg_1.x, Struct_1(var_1.zz, global0.c.b), func_4(func_4(func_4(arg_2.c, arg_2.c).c, Struct_3(Struct_1(vec2<bool>(true, global0.a.a.x), arg_2.c.a.b), 367f, global0.d, arg_2.c.c, vec2<i32>(5453i, global0.e.x))).c, Struct_3(global0.c, _wgslsmith_f_op_f32(186f + -1351f), arg_2.c.d, global0.c, ~u_input.b)).c.d, ~arg_2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + global0.b) * _wgslsmith_f_op_f32(min(global0.b, _wgslsmith_f_op_f32(218f - arg_1.x)))) - global0.b), Struct_3(Struct_1(select(!global0.d.a, select(global0.c.a, vec2<bool>(false, true), false), vec2<bool>(global0.c.a.x, false)), global0.d.b), _wgslsmith_f_op_f32(func_1(arg_2.c, 2147483647i)), func_2(var_1, Struct_2(~vec3<u32>(arg_0, 92176u, arg_0), true, 1i & global0.a.b.x, -1318f), Struct_1(vec2<bool>(arg_2.c.a.a.x, global0.c.a.x), arg_2.c.c.b), _wgslsmith_add_vec2_i32(~vec2<i32>(global0.a.b.x, -17371i), vec2<i32>(arg_3, 49116i) ^ u_input.b)), func_4(arg_2.c, func_4(arg_2.c, Struct_3(Struct_1(arg_2.c.d.a, arg_2.c.a.b), 1001f, Struct_1(vec2<bool>(false, var_1.x), vec4<i32>(-2147483647i, 0i, global0.e.x, u_input.c.x)), Struct_1(global0.a.a, vec4<i32>(arg_3, arg_3, 18997i, -24476i)), u_input.c)).c).c.a, -u_input.c));
    let var_3 = Struct_4(global0.e, _wgslsmith_mult_u32(_wgslsmith_mod_u32(35824u, arg_0), ~_wgslsmith_mult_u32(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_2.b, 26369u), vec3<u32>(0u, 0u, var_2.b)))), var_2.e, global0.b, var_2.c);
    return func_2(!vec4<bool>(arg_2.b, true, false, true), Struct_2(~vec3<u32>(11134u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, var_2.b, var_3.b, var_3.b), vec4<u32>(1u, 4294967295u, 0u, var_3.b)), ~4294967295u), select(var_1.x, var_2.e.a.a.x, true), arg_2.c.c.b.x, 437f), Struct_1(select(var_1.zw, !select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, global0.d.a.x), true), vec2<bool>(true, true)), _wgslsmith_div_vec4_i32(arg_2.c.c.b, vec4<i32>(_wgslsmith_mod_i32(-1i, -1i), arg_3, _wgslsmith_dot_vec4_i32(arg_2.c.c.b, vec4<i32>(0i, 0i, -10653i, 7556i)), var_3.c.c.b.x & arg_3))), _wgslsmith_sub_vec2_i32(vec2<i32>(43710i, -1i), u_input.b));
}

fn func_6(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    return Struct_3(func_4(func_4(Struct_3(global0.c, _wgslsmith_f_op_f32(arg_0.x - -1861f), func_5(41982u, vec4<f32>(1358f, global0.b, -582f, arg_0.x), Struct_5(vec2<i32>(2147483647i, global0.c.b.x), arg_2.a.x, Struct_3(Struct_1(vec2<bool>(false, arg_2.a.x), vec4<i32>(4814i, 6204i, global0.e.x, arg_2.b.x)), arg_1, global0.a, Struct_1(arg_2.a, vec4<i32>(u_input.a, 0i, global0.d.b.x, -1i)), vec2<i32>(u_input.a, 0i))), u_input.c.x), Struct_1(vec2<bool>(false, global0.c.a.x), vec4<i32>(-2147483647i, 1i, 15222i, global0.c.b.x)), u_input.c), Struct_3(arg_2, _wgslsmith_f_op_f32(316f - arg_0.x), Struct_1(vec2<bool>(true, global0.c.a.x), global0.a.b), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, arg_2.b.x, 13627i, -12994i)), arg_2.b.zx)).c, func_4(func_4(func_4(Struct_3(arg_2, global0.b, arg_2, Struct_1(vec2<bool>(true, global0.d.a.x), arg_2.b), u_input.b), Struct_3(Struct_1(global0.c.a, vec4<i32>(arg_2.b.x, -47743i, 68184i, -1i)), -1464f, global0.c, global0.d, vec2<i32>(-49143i, global0.e.x))).c, func_4(Struct_3(global0.d, arg_0.x, arg_2, Struct_1(global0.d.a, arg_2.b), arg_2.b.xz), Struct_3(global0.c, global0.b, Struct_1(arg_2.a, arg_2.b), Struct_1(vec2<bool>(true, false), vec4<i32>(u_input.a, arg_2.b.x, 0i, global0.d.b.x)), vec2<i32>(global0.d.b.x, u_input.a))).c).c, Struct_3(func_2(vec4<bool>(arg_2.a.x, global0.c.a.x, global0.c.a.x, global0.c.a.x), Struct_2(vec3<u32>(60858u, 60173u, 6083u), global0.c.a.x, global0.a.b.x, global0.b), Struct_1(vec2<bool>(arg_2.a.x, false), vec4<i32>(21906i, -1i, 0i, arg_2.b.x)), arg_2.b.wx), _wgslsmith_f_op_f32(arg_1 + global0.b), func_5(0u, vec4<f32>(arg_1, 662f, -435f, global0.b), Struct_5(u_input.c, arg_2.a.x, Struct_3(Struct_1(arg_2.a, vec4<i32>(-1i, global0.a.b.x, u_input.b.x, -23666i)), -169f, global0.a, global0.d, u_input.b)), 46332i), func_4(Struct_3(Struct_1(global0.c.a, arg_2.b), arg_0.x, Struct_1(vec2<bool>(global0.c.a.x, global0.a.a.x), arg_2.b), global0.d, u_input.c), Struct_3(arg_2, -1589f, arg_2, Struct_1(global0.d.a, global0.d.b), vec2<i32>(u_input.c.x, 36731i))).c.c, vec2<i32>(arg_2.b.x, 5434i))).c).c.a, _wgslsmith_f_op_f32(-arg_1), func_4(func_4(func_4(Struct_3(arg_2, 198f, Struct_1(global0.d.a, vec4<i32>(u_input.a, 22560i, 1i, u_input.a)), Struct_1(vec2<bool>(arg_2.a.x, true), global0.a.b), vec2<i32>(-2147483647i, u_input.a)), func_4(Struct_3(global0.a, arg_0.x, Struct_1(vec2<bool>(false, arg_2.a.x), arg_2.b), Struct_1(vec2<bool>(arg_2.a.x, global0.d.a.x), vec4<i32>(-1i, -1i, u_input.b.x, arg_2.b.x)), u_input.c), Struct_3(global0.a, 393f, Struct_1(arg_2.a, global0.d.b), Struct_1(global0.c.a, arg_2.b), vec2<i32>(35532i, -21413i))).c).c, Struct_3(Struct_1(arg_2.a, global0.c.b), 1066f, func_4(Struct_3(global0.c, global0.b, global0.a, global0.a, global0.e), Struct_3(Struct_1(global0.a.a, vec4<i32>(arg_2.b.x, global0.e.x, 1i, 0i)), 1199f, Struct_1(global0.a.a, vec4<i32>(65639i, arg_2.b.x, u_input.c.x, 0i)), global0.c, vec2<i32>(36977i, u_input.a))).c.a, arg_2, vec2<i32>(global0.a.b.x, 52989i))).c, func_4(Struct_3(Struct_1(vec2<bool>(global0.d.a.x, global0.d.a.x), global0.a.b), global0.b, Struct_1(vec2<bool>(arg_2.a.x, arg_2.a.x), arg_2.b), arg_2, vec2<i32>(arg_2.b.x, global0.c.b.x)), Struct_3(Struct_1(vec2<bool>(global0.c.a.x, false), global0.d.b), -485f, Struct_1(arg_2.a, arg_2.b), func_2(vec4<bool>(false, arg_2.a.x, false, global0.a.a.x), Struct_2(vec3<u32>(4294967295u, 38241u, 82499u), true, arg_2.b.x, arg_0.x), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, -40249i, -14879i, 13586i)), vec2<i32>(global0.c.b.x, arg_2.b.x)), vec2<i32>(arg_2.b.x, 19425i))).c).c.d, arg_2, firstLeadingBit(_wgslsmith_div_vec2_i32(countOneBits(u_input.b), ~_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(217f)), global0.b, _wgslsmith_f_op_f32(select(-273f, -1102f, true))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-666f, global0.b, global0.b))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(1276f, -2462f, global0.b) + vec3<f32>(-1161f, 1079f, 323f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0.b * 2809f)))), _wgslsmith_f_op_f32(abs(global0.b)))), func_5(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 971u), vec3<u32>(6358u, 4294967295u, 32306u)) & ~0u, vec4<f32>(_wgslsmith_f_op_f32(step(global0.b, _wgslsmith_f_op_f32(ceil(global0.b)))), _wgslsmith_f_op_f32(func_1(Struct_3(global0.a, global0.b, Struct_1(vec2<bool>(global0.c.a.x, global0.d.a.x), vec4<i32>(97275i, 39644i, u_input.a, u_input.b.x)), global0.c, vec2<i32>(global0.d.b.x, 1i)), u_input.a)), 508f, global0.b), func_4(Struct_3(global0.a, global0.b, func_2(vec4<bool>(false, global0.d.a.x, false, false), Struct_2(vec3<u32>(0u, 17593u, 62952u), global0.c.a.x, u_input.a, 217f), Struct_1(global0.a.a, global0.a.b), global0.d.b.wy), Struct_1(vec2<bool>(false, global0.d.a.x), vec4<i32>(u_input.a, u_input.b.x, global0.e.x, u_input.c.x)), ~vec2<i32>(2147483647i, u_input.b.x)), Struct_3(Struct_1(vec2<bool>(global0.a.a.x, false), vec4<i32>(u_input.a, global0.d.b.x, global0.c.b.x, 0i)), -1221f, Struct_1(vec2<bool>(false, global0.a.a.x), vec4<i32>(global0.a.b.x, global0.a.b.x, 1i, global0.c.b.x)), global0.d, _wgslsmith_add_vec2_i32(global0.a.b.xw, vec2<i32>(global0.a.b.x, u_input.b.x)))), abs(max(u_input.a, -37618i))));
    let var_0 = !func_5(select(_wgslsmith_clamp_u32(~13680u, ~9782u, 4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(18992u, 4294967295u, 28265u), vec3<u32>(4294967295u, 29307u, 0u)) >> (~1u % 32u), any(vec2<bool>(global0.c.a.x, global0.c.a.x)) == all(vec3<bool>(global0.c.a.x, true, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(522f, global0.b, 971f, -296f))), vec4<f32>(_wgslsmith_f_op_f32(global0.b + 538f), _wgslsmith_f_op_f32(global0.b + -712f), _wgslsmith_div_f32(global0.b, -1431f), global0.b), all(func_4(Struct_3(Struct_1(global0.d.a, global0.a.b), global0.b, Struct_1(global0.d.a, global0.d.b), global0.c, vec2<i32>(1i, 22795i)), Struct_3(global0.c, global0.b, Struct_1(global0.a.a, vec4<i32>(-41033i, global0.a.b.x, u_input.a, -24190i)), Struct_1(vec2<bool>(false, global0.c.a.x), global0.a.b), global0.d.b.xw)).c.c.a))), func_4(func_6(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b, -986f, global0.b)), _wgslsmith_f_op_f32(abs(global0.b)), global0.a), func_6(vec3<f32>(-1000f, 1511f, global0.b), _wgslsmith_f_op_f32(-267f * global0.b), global0.a)), 0i).a;
    global1 = 25803u;
    let var_1 = vec4<u32>(1u, max(40676u, max(1u, abs(4294967295u))) | _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, _wgslsmith_mult_u32(24265u, 34178u), select(1u, 0u, global0.d.a.x)), abs(firstTrailingBit(vec4<u32>(1u, 4294967295u, 3112u, 76687u)))), ~1u, ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(23597u, 0u), vec2<u32>(1u, 1u)), ~(~vec2<u32>(20003u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(26965u);
}

