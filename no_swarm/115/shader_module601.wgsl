struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2060i, 11423i, 14366i);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~(~max(~vec4<u32>(4294967295u, 69049u, 36124u, 0u), vec4<u32>(1u, 1u, 1u, 1u))));
    var_0 = abs(firstTrailingBit(~(select(vec4<u32>(26482u, var_0.x, 0u, var_0.x), vec4<u32>(var_0.x, var_0.x, var_0.x, 79928u), false) | vec4<u32>(4294967295u, 8938u, 10676u, var_0.x))));
    var var_1 = Struct_1(_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(var_0.yzx, var_0.wzx) << (var_0.zyz % vec3<u32>(32u)), reverseBits(_wgslsmith_mod_vec3_u32(var_0.xwx, var_0.yxx))) & vec3<u32>(4294967295u, _wgslsmith_mod_u32(reverseBits(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 4294967295u, 84523u), vec4<u32>(0u, var_0.x, var_0.x, 4294967295u))), 1u), var_0.xz);
    var var_2 = Struct_1(select(abs(max(var_1.a, var_1.a) ^ ~var_1.a), max(var_0.zxy, select(vec3<u32>(var_0.x, var_0.x, 0u), var_1.a, vec3<bool>(false, false, false))), !(_wgslsmith_dot_vec3_u32(vec3<u32>(7805u, var_0.x, 15292u), vec3<u32>(var_0.x, 1u, var_0.x)) <= var_0.x)), _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.ww, vec2<u32>(~var_0.x, 0u)), ((var_1.a.zy >> (vec2<u32>(var_1.a.x, var_0.x) % vec2<u32>(32u))) & vec2<u32>(0u, 21858u)) & min(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, var_1.b.x), vec2<u32>(0u, 89767u), var_0.yx), _wgslsmith_mult_vec2_u32(vec2<u32>(var_1.b.x, 0u), var_0.zw))));
    var var_3 = 4294967295u >> (_wgslsmith_dot_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(var_0.wy, reverseBits(vec2<u32>(0u, var_2.b.x)), vec2<u32>(4294967295u, var_1.b.x) ^ vec2<u32>(var_0.x, 79441u))), vec2<u32>(var_2.b.x, var_1.b.x)) % 32u);
    return true;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(78647u, (arg_1.a.x | arg_1.b.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(59008u, 0u, arg_1.b.x, 5574u), vec4<u32>(arg_1.b.x, 1u, arg_1.a.x, 92650u)) % 32u), ~(1238u | arg_1.a.x), ~(0u & arg_1.a.x)), ~vec4<u32>(1u, ~_wgslsmith_div_u32(arg_1.b.x, arg_1.a.x), 1u, _wgslsmith_add_u32(arg_1.b.x, 0u) ^ 4294967295u), ~(~(firstLeadingBit(vec4<u32>(0u, 0u, 5459u, 25856u)) ^ min(vec4<u32>(arg_1.b.x, arg_1.a.x, arg_1.b.x, arg_1.b.x), vec4<u32>(arg_1.b.x, arg_1.a.x, arg_1.b.x, arg_1.b.x)))));
    var var_1 = countOneBits(vec3<i32>(global0.x, _wgslsmith_clamp_i32(global0.x, u_input.c.x, global0.x & -2147483647i), _wgslsmith_div_i32(-arg_3, abs(1i)))) >> (arg_1.a % vec3<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(trunc(1647f));
    let var_3 = -1791f;
    let var_4 = arg_1;
    return arg_0;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    let var_1 = arg_1;
    var var_2 = any(!vec2<bool>(any(vec2<bool>(true, true)), abs(arg_0.x) >= _wgslsmith_mod_i32(arg_0.x, -67013i)));
    var_2 = !any(vec3<bool>(true, true, true));
    let var_3 = func_4(func_3(~u_input.d, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-862f, -643f), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(max(-432f, 2047f))))), arg_1, select(!select(select(vec2<bool>(true, true), vec2<bool>(true, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false))), vec2<bool>(any(vec2<bool>(true, true)), true), vec2<bool>(true, true)), _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.yx), arg_0));
    return 1000f;
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), abs(vec3<u32>(~5498u, ~9779u, 56455u))), ~vec2<u32>(1u, 1u));
    let var_1 = (var_0.b.x >> (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(~var_0.a, ~var_0.a, ~vec3<u32>(1u, 1u, var_0.b.x)), ~(~vec3<u32>(73922u, var_0.b.x, var_0.b.x))) % 32u)) | 4294967295u;
    return max(u_input.d << (~var_0.a % vec3<u32>(32u)), abs(_wgslsmith_sub_vec3_i32(countOneBits(u_input.d), _wgslsmith_add_vec3_i32(~vec3<i32>(-2147483647i, -65351i, -2147483647i), vec3<i32>(-17304i, u_input.d.x, -1i)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    global0 = u_input.b;
    global0 = vec3<i32>(arg_0.x, -2147483647i, abs(2147483647i));
    global0 = vec3<i32>(-2147483647i, _wgslsmith_clamp_i32(u_input.a, _wgslsmith_mod_i32(reverseBits(_wgslsmith_div_i32(arg_0.x, -17337i)), global0.x), -2147483647i), abs(global0.x));
    global0 = arg_0.xxw;
    global0 = func_5(!vec4<bool>(!all(vec3<bool>(false, false, true)), true, true, true), _wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec2_i32(countOneBits(-global0.zx), global0.yx), arg_1)));
    return Struct_1(vec3<u32>(arg_1.b.x, max(countOneBits(arg_2.b.x), _wgslsmith_mult_u32(4294967295u, arg_3)), 6438u) >> (_wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, 5834u)), max(~arg_1.a, vec3<u32>(arg_2.b.x, arg_1.b.x, 29643u) << (arg_1.a % vec3<u32>(32u)))) % vec3<u32>(32u)), vec2<u32>(39452u, arg_3));
}

fn func_6(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_1, arg_3: f32) -> i32 {
    let var_0 = func_1(-(~(~vec4<i32>(0i, u_input.b.x, global0.x, u_input.e.x))), func_1(-vec4<i32>(16621i, u_input.a, -2147483647i, func_5(vec4<bool>(false, true, false, true), arg_0.x).x), Struct_1(~arg_2.a, reverseBits(arg_2.a.yx)), func_1(vec4<i32>(-u_input.c.x, ~0i, u_input.d.x ^ u_input.e.x, -76866i), arg_2, arg_2, min(1u, 102251u)), select(~60014u, ~arg_1, true)), arg_2, arg_2.a.x);
    let var_1 = select(!(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true), vec4<bool>(true, true, true, true))), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), false), vec4<bool>(true, true, true, true)), vec4<bool>(false, false, any(vec4<bool>(true, false, true, true)), true), vec4<bool>(false, false, any(vec3<bool>(false, false, true)), true)), !select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true))), select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, true))));
    let var_2 = _wgslsmith_sub_vec2_i32(~max(select(u_input.c, vec2<i32>(-2147483647i, global0.x), vec2<bool>(false, var_1.x)) >> ((vec2<u32>(var_0.a.x, var_0.a.x) | arg_2.b) % vec2<u32>(32u)), -(~vec2<i32>(1i, global0.x))), firstLeadingBit(vec2<i32>(-1i, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.e.x, -15118i, u_input.c.x, -1i), _wgslsmith_sub_vec4_i32(vec4<i32>(-9435i, global0.x, u_input.b.x, global0.x), u_input.e)))));
    let var_3 = arg_0.x;
    let var_4 = var_1.zxy;
    return var_2.x;
}

fn func_7(arg_0: i32, arg_1: i32) -> vec3<f32> {
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(~func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1783f, -332f)), ~38512u, func_1(u_input.e, Struct_1(vec3<u32>(1u, 41268u, 89409u), vec2<u32>(4294u, 0u)), Struct_1(vec3<u32>(1u, 4294967295u, 0u), vec2<u32>(22235u, 36890u)), 4294967295u), _wgslsmith_f_op_f32(-217f + 1396f)), ~(_wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(arg_1, -1i)) ^ abs(u_input.a)), ~_wgslsmith_mod_i32(firstTrailingBit(u_input.a), -48420i)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-u_input.b, u_input.e.xxy), ~u_input.b) ^ -_wgslsmith_mod_vec3_i32(abs(vec3<i32>(-2147483647i, 1599i, arg_0)), u_input.e.xzx << (vec3<u32>(1u, 4294967295u, 13399u) % vec3<u32>(32u))));
    var var_0 = true;
    let var_1 = Struct_1(firstTrailingBit(vec3<u32>(1u, countOneBits(1u), 0u)), vec2<u32>(1u, 4294967295u));
    global0 = u_input.b;
    let var_2 = abs(_wgslsmith_mult_vec2_u32(~var_1.a.xz, countOneBits(abs(vec2<u32>(var_1.b.x, var_1.b.x))))) << (var_1.b % vec2<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(1076f, -1369f)), _wgslsmith_f_op_f32(-895f * 488f), 534f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(63522u, 60209u, (max(1u, select(0u, 19947u, true)) >> (_wgslsmith_div_u32(1u, ~1u) % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(4294967295u, 1u), ~36919u, 4294967295u), vec3<u32>(0u, 1u, ~52939u)) % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_7(~(i32(-1i) * -51592i), func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(279f, 815f)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, 4294967295u), vec3<u32>(var_0.x, var_0.x, 4294967295u)), func_1(u_input.e, Struct_1(vec3<u32>(11644u, var_0.x, var_0.x), vec2<u32>(var_0.x, 4294967295u)), Struct_1(vec3<u32>(89864u, var_0.x, 72187u), vec2<u32>(var_0.x, var_0.x)), var_0.x), 651f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1421f, -264f, -521f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-709f, -656f, -262f)))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1272f, 1012f, -1000f) - vec3<f32>(1807f, -1424f, -672f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-962f, -1249f, -2247f))), vec3<bool>(true, true, true))))));
    var var_2 = vec3<i32>(2147483647i | global0.x, _wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(14311i, global0.x, global0.x), -vec3<i32>(-25679i, u_input.e.x, global0.x)), -38600i), func_5(vec4<bool>(true, true, true, true), -1712f).x & max(_wgslsmith_mult_i32(countOneBits(25024i), -1i), 1i));
    var var_3 = select(select(!vec3<bool>(true, true, var_1.x == -1104f), vec3<bool>(all(vec2<bool>(false, false)), true & any(vec4<bool>(true, false, true, true)), false), true), vec3<bool>(any(vec3<bool>(true, true, true)), all(vec2<bool>(true, true)), !(!(8396i >= global0.x))), vec3<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-206f))) <= 1523f, any(vec3<bool>(any(vec2<bool>(true, false)), false, true))));
    var_0 = max(vec3<u32>(~0u, min(32619u, ~(2419u | var_0.x)), ~_wgslsmith_mult_u32(reverseBits(var_0.x), countOneBits(4912u))), vec3<u32>(~(0u ^ var_0.x) ^ 111213u, 81674u, reverseBits(~reverseBits(4294967295u))));
    var var_4 = any(select(!select(!vec4<bool>(var_3.x, false, false, var_3.x), vec4<bool>(var_3.x, false, var_3.x, false), var_3.x), !select(!vec4<bool>(var_3.x, var_3.x, var_3.x, true), !vec4<bool>(true, true, var_3.x, false), true), !select(select(vec4<bool>(false, var_3.x, false, false), vec4<bool>(var_3.x, true, true, var_3.x), vec4<bool>(false, true, false, var_3.x)), !vec4<bool>(true, false, var_3.x, true), var_3.x)));
    var var_5 = Struct_1(vec3<u32>(select(0u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, var_0.x, var_0.x), vec3<u32>(var_0.x, 44336u, var_0.x) & vec3<u32>(var_0.x, 36210u, var_0.x)), !(1u != var_0.x)), ~min(22274u, 1u) << (min(abs(2638u), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 27264u), vec3<u32>(0u, 89809u, 18784u))) % 32u), _wgslsmith_dot_vec4_u32(select(_wgslsmith_div_vec4_u32(vec4<u32>(15381u, 1u, var_0.x, 27373u), vec4<u32>(47485u, 83349u, var_0.x, 8244u)), firstTrailingBit(vec4<u32>(var_0.x, 1u, var_0.x, 137288u)), vec4<bool>(false, var_3.x, true, var_3.x)), ~reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)))), var_0.zx);
    let var_6 = -(~u_input.e.x);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~1u & _wgslsmith_mult_u32(37488u, var_0.x), _wgslsmith_dot_vec2_u32(reverseBits(var_0.xz), var_5.a.xz ^ var_0.xy), 1u, ~51765u), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_1.x, -681f, var_1.x, var_1.x)))))), reverseBits(2700i), abs(22875u));
}

