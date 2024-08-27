struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec2<f32>) -> i32 {
    var var_0 = arg_0.x;
    let var_1 = Struct_1(firstTrailingBit(abs(_wgslsmith_mod_vec4_i32(~u_input.a, vec4<i32>(u_input.a.x, -23622i, 2147483647i, -14763i)))), 172f, select(false, arg_0.x, true), vec3<u32>(~firstTrailingBit(4294967295u), 64315u, 32434u));
    var var_2 = vec2<bool>(true, any(!select(!vec4<bool>(var_1.c, arg_0.x, false, true), !vec4<bool>(true, false, var_1.c, true), !arg_0.x)));
    var var_3 = !vec3<bool>(false, arg_0.x, true);
    let var_4 = -2147483647i;
    return select(u_input.a.x, -(~_wgslsmith_sub_i32(var_1.a.x, 0i)), var_1.c);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: u32) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(2147483647i, _wgslsmith_mod_i32(1i, _wgslsmith_add_i32(2147483647i, u_input.a.x)) << (4294967295u % 32u));
    var_0 = -(min(~(-16446i), func_3(select(vec2<bool>(arg_1.a.c, arg_0.c), vec2<bool>(false, arg_0.c), false), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b, 563f) * vec2<f32>(arg_1.a.b, arg_0.b)))) << (countOneBits(arg_1.a.d.x) % 32u));
    var_0 = 1i;
    var_0 = select(23289i, firstTrailingBit(firstTrailingBit(-40946i)), any(!(!select(vec2<bool>(true, arg_1.a.c), vec2<bool>(true, true), arg_1.a.c))));
    let var_1 = Struct_1(_wgslsmith_mult_vec4_i32(~(arg_0.a & _wgslsmith_add_vec4_i32(u_input.a, arg_0.a)), vec4<i32>(-arg_0.a.x, u_input.a.x, arg_0.a.x, -arg_0.a.x)), arg_1.a.b, arg_1.a.c, ~arg_0.d);
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-1022f, -482f, arg_0.c)))), arg_0.b)), arg_1.a.b, true)), _wgslsmith_sub_u32(~1u, ~1u) < arg_2.x, var_1.d);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = vec4<bool>(true, any(vec2<bool>(!arg_1.b.a.c, all(!vec2<bool>(arg_1.b.a.c, arg_1.b.a.c)))), !(arg_1.b.a.c || arg_1.b.a.c), arg_1.b.a.c);
    var var_1 = func_2(Struct_1(vec4<i32>(abs(61432i), 47504i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, arg_1.b.a.a.x), vec2<i32>(-14466i, 14366i)), abs(-7905i)) | arg_0, -607f, var_0.x, abs(~arg_1.b.a.d) & arg_1.b.a.d), Struct_2(func_2(Struct_1(vec4<i32>(u_input.a.x, 1i, arg_1.b.a.a.x, 0i), _wgslsmith_f_op_f32(round(1000f)), true, arg_1.a ^ arg_1.b.b.wxw), Struct_2(func_2(Struct_1(vec4<i32>(-2147483647i, u_input.a.x, arg_0.x, u_input.a.x), arg_1.c, arg_1.b.a.c, vec3<u32>(39696u, 4294967295u, arg_1.b.b.x)), arg_1.b, arg_1.b.b.yw, arg_1.a.x), firstTrailingBit(vec4<u32>(u_input.b, u_input.b, arg_1.b.a.d.x, 4294967295u))), ~_wgslsmith_clamp_vec2_u32(arg_1.a.zy, vec2<u32>(12679u, arg_1.b.b.x), vec2<u32>(u_input.b, 51893u)), 830u), min(~arg_1.b.b, _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, 0u, 32868u, arg_1.a.x), ~arg_1.b.b))), abs(vec2<u32>(_wgslsmith_mult_u32(u_input.b, 4294967295u), _wgslsmith_add_u32(20792u, 69879u)) ^ arg_1.a.xz), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(~arg_1.b.b.wxx, _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.a, arg_1.b.a.d), arg_1.b.b.zyy)), reverseBits(firstLeadingBit(u_input.b)) & ~(19432u ^ u_input.b)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(f32(-1f) * -435f))), arg_1.b.a.c, arg_1.b.b.xwy);
    var var_2 = ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(~7286u, ~arg_1.b.a.d.x), ~(~u_input.b), _wgslsmith_sub_u32(arg_1.a.x << (1u % 32u), ~arg_1.a.x), _wgslsmith_div_u32(~var_1.d.x, 1u)), _wgslsmith_div_vec4_u32(~vec4<u32>(7987u, 4294967295u, arg_1.b.b.x, 0u), _wgslsmith_div_vec4_u32(arg_1.b.b, vec4<u32>(17931u, 54905u, 4294967295u, 4294967295u))) << (~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_1.d.x, var_1.d.x, 4294967295u), arg_1.b.b) % vec4<u32>(32u)));
    var_1 = Struct_1(firstLeadingBit(~arg_1.b.a.a), var_1.b, all(vec2<bool>(var_1.c, all(var_0.xw) & true)), (~firstTrailingBit(vec3<u32>(arg_1.b.b.x, arg_1.b.a.d.x, 33069u)) & (var_1.d & (vec3<u32>(4294967295u, 12986u, u_input.b) | vec3<u32>(u_input.b, 0u, var_1.d.x)))) ^ vec3<u32>(reverseBits(4954u), ~u_input.b, ~var_1.d.x));
    return arg_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_1) -> Struct_1 {
    var var_0 = !vec3<bool>(arg_0.b != 230f, arg_0.d.x > _wgslsmith_dot_vec4_u32(arg_1.b.b << (arg_1.b.b % vec4<u32>(32u)), arg_1.b.b), arg_0.c);
    let var_1 = 51891u;
    var_0 = !(!vec3<bool>(all(select(var_0.zx, vec2<bool>(arg_2.c, arg_0.c), arg_2.c)), !any(vec4<bool>(true, arg_0.c, true, false)), 85909u == max(9306u, arg_1.a.x)));
    let var_2 = arg_1.b.a.a.zw;
    var_0 = !select(!select(vec3<bool>(false, false, arg_2.c), select(vec3<bool>(var_0.x, arg_0.c, false), vec3<bool>(false, true, var_0.x), vec3<bool>(false, var_0.x, arg_2.c)), !vec3<bool>(true, var_0.x, true)), vec3<bool>(func_4(select(arg_2.a, arg_1.b.a.a, vec4<bool>(arg_1.b.a.c, arg_1.b.a.c, true, arg_2.c)), arg_1).b.a.c, arg_1.b.a.c, all(vec4<bool>(true, arg_2.c, true, false))), vec3<bool>(arg_2.c, select(true, arg_0.c, true) & arg_2.c, func_4(~u_input.a, Struct_3(vec3<u32>(arg_1.a.x, 1337u, 53685u), Struct_2(arg_2, vec4<u32>(1u, u_input.b, 47935u, var_1)), arg_2.b)).b.a.c));
    return func_2(func_2(func_2(Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(38425i, var_2.x, 0i, arg_2.a.x), vec4<i32>(u_input.a.x, var_2.x, 2147483647i, -2147483647i)), -453f, arg_1.b.a.c, vec3<u32>(arg_1.b.a.d.x, var_1, arg_1.a.x) & vec3<u32>(0u, 1u, 4294967295u)), arg_1.b, arg_2.d.xy, ~firstTrailingBit(var_1)), Struct_2(func_2(arg_1.b.a, Struct_2(arg_1.b.a, vec4<u32>(arg_2.d.x, arg_1.b.b.x, 1u, 0u)), abs(vec2<u32>(arg_0.d.x, u_input.b)), ~4294967295u), arg_1.b.b), ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 5916u), arg_2.d.zy), vec2<u32>(u_input.b, 4294967295u)), 4294967295u), arg_1.b, vec2<u32>(109689u, arg_0.d.x), ~arg_1.b.a.d.x);
}

fn func_1(arg_0: i32) -> Struct_1 {
    var var_0 = func_5(Struct_1(~u_input.a, -407f, false, reverseBits(min(vec3<u32>(4294967295u, 1u, u_input.b), vec3<u32>(u_input.b, 50284u, 32375u)) >> (~vec3<u32>(29533u, u_input.b, 112353u) % vec3<u32>(32u)))), func_4(~_wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, arg_0, arg_0, arg_0), vec4<i32>(-76936i, 17925i, arg_0, arg_0)), Struct_3(abs(vec3<u32>(u_input.b, u_input.b, u_input.b)), Struct_2(func_2(Struct_1(u_input.a, 1147f, false, vec3<u32>(u_input.b, 0u, u_input.b)), Struct_2(Struct_1(u_input.a, -318f, true, vec3<u32>(u_input.b, u_input.b, 33990u)), vec4<u32>(26192u, 1u, 4294967295u, 6595u)), vec2<u32>(28664u, 17641u), 4294967295u), reverseBits(vec4<u32>(28928u, 78395u, u_input.b, u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(295f)) * -554f))), Struct_1(~func_2(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, -84120i, u_input.a.x), 483f, true, vec3<u32>(u_input.b, 1u, u_input.b)), Struct_2(Struct_1(vec4<i32>(arg_0, -21250i, arg_0, u_input.a.x), 194f, true, vec3<u32>(21249u, u_input.b, u_input.b)), vec4<u32>(u_input.b, 0u, u_input.b, u_input.b)), vec2<u32>(u_input.b, u_input.b), u_input.b).a | (u_input.a ^ (vec4<i32>(-1i, -1i, u_input.a.x, 34431i) | u_input.a)), _wgslsmith_f_op_f32(max(-220f, _wgslsmith_f_op_f32(f32(-1f) * -1231f))), false, _wgslsmith_sub_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), vec3<u32>(41387u, 30552u, u_input.b))), min(select(vec3<u32>(0u, 40365u, u_input.b), vec3<u32>(67879u, 1u, u_input.b), false), select(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(1u, 19763u, u_input.b), false)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, var_0.b, var_0.b)));
    let var_2 = var_0.c;
    var var_3 = vec3<i32>(reverseBits(~select(arg_0, _wgslsmith_dot_vec3_i32(var_0.a.wzz, vec3<i32>(0i, arg_0, u_input.a.x)), var_0.c || true)), arg_0, -13191i);
    let var_4 = _wgslsmith_f_op_f32(func_2(func_5(func_2(func_4(u_input.a, Struct_3(var_0.d, Struct_2(Struct_1(var_0.a, 1473f, false, var_0.d), vec4<u32>(1u, 4294967295u, u_input.b, var_0.d.x)), 1270f)).b.a, Struct_2(Struct_1(var_0.a, var_0.b, var_0.c, var_0.d), vec4<u32>(var_0.d.x, 1987u, var_0.d.x, var_0.d.x)), ~var_0.d.xx, ~4294967295u), func_4(func_4(var_0.a, Struct_3(vec3<u32>(4294967295u, 77949u, u_input.b), Struct_2(Struct_1(vec4<i32>(0i, 1i, 49888i, -12770i), var_1.x, true, var_0.d), vec4<u32>(1u, 61882u, var_0.d.x, u_input.b)), -288f)).b.a.a, Struct_3(vec3<u32>(u_input.b, u_input.b, u_input.b), Struct_2(Struct_1(vec4<i32>(-52735i, -1i, -19681i, -2147483647i), 1279f, var_0.c, var_0.d), vec4<u32>(u_input.b, var_0.d.x, 4026u, 30426u)), -203f)), func_2(Struct_1(vec4<i32>(1i, var_0.a.x, -17399i, 23250i), 837f, false, var_0.d), func_4(vec4<i32>(-2147483647i, -26274i, 1i, arg_0), Struct_3(var_0.d, Struct_2(Struct_1(var_0.a, var_1.x, var_0.c, vec3<u32>(35256u, var_0.d.x, u_input.b)), vec4<u32>(var_0.d.x, u_input.b, u_input.b, var_0.d.x)), -1722f)).b, reverseBits(vec2<u32>(1u, 87950u)), countOneBits(4294967295u))), Struct_2(Struct_1(func_5(Struct_1(vec4<i32>(var_3.x, -1i, var_0.a.x, -2147483647i), var_1.x, false, var_0.d), Struct_3(var_0.d, Struct_2(Struct_1(vec4<i32>(var_0.a.x, arg_0, 1i, arg_0), -626f, var_0.c, var_0.d), vec4<u32>(2151u, 1u, 4294967295u, var_0.d.x)), 724f), Struct_1(u_input.a, 388f, var_0.c, var_0.d)).a, -1494f, false, _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, u_input.b, var_0.d.x), vec3<u32>(4607u, u_input.b, 0u))), vec4<u32>(_wgslsmith_div_u32(4294967295u, var_0.d.x), ~var_0.d.x, _wgslsmith_dot_vec2_u32(var_0.d.zz, var_0.d.yy), 4294967295u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u | var_0.d.x, countOneBits(var_0.d.x)), max(vec2<u32>(u_input.b, var_0.d.x), vec2<u32>(u_input.b, 13833u) & vec2<u32>(1u, u_input.b))), 1u).b + func_5(Struct_1(~_wgslsmith_clamp_vec4_i32(var_0.a, u_input.a, vec4<i32>(var_3.x, 2147483647i, arg_0, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_3.x, -1i, arg_0, var_0.a.x), vec4<i32>(u_input.a.x, -1i, var_0.a.x, 35041i)) != -var_3.x, ~(~vec3<u32>(37654u, 0u, var_0.d.x))), Struct_3(~(~vec3<u32>(59719u, var_0.d.x, var_0.d.x)), func_4(u_input.a << (vec4<u32>(0u, var_0.d.x, 72369u, 0u) % vec4<u32>(32u)), func_4(u_input.a, Struct_3(var_0.d, Struct_2(Struct_1(var_0.a, var_1.x, var_0.c, vec3<u32>(u_input.b, 0u, 3099u)), vec4<u32>(9195u, 1u, 44738u, 4294967295u)), var_1.x))).b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-491f)), var_1.x)), Struct_1(max(-u_input.a, u_input.a << (vec4<u32>(u_input.b, 4294967295u, 0u, 1u) % vec4<u32>(32u))), -131f, _wgslsmith_f_op_f32(var_1.x * 1076f) == var_1.x, ~var_0.d)).b);
    return Struct_1(~_wgslsmith_div_vec4_i32(u_input.a, var_0.a), var_1.x, any(select(!select(vec4<bool>(var_0.c, true, var_0.c, false), vec4<bool>(false, var_0.c, true, var_0.c), vec4<bool>(false, var_0.c, true, var_0.c)), !vec4<bool>(var_0.c, true, var_0.c, var_0.c), vec4<bool>(var_1.x >= 875f, var_0.c, -123f < var_0.b, var_0.c))), firstTrailingBit(~(~var_0.d) >> (func_5(Struct_1(vec4<i32>(var_0.a.x, var_3.x, 93154i, 0i), var_0.b, true, vec3<u32>(var_0.d.x, u_input.b, u_input.b)), Struct_3(vec3<u32>(44559u, 0u, 1u), Struct_2(Struct_1(vec4<i32>(var_0.a.x, u_input.a.x, arg_0, arg_0), var_1.x, true, var_0.d), vec4<u32>(84270u, u_input.b, u_input.b, u_input.b)), var_4), func_4(vec4<i32>(arg_0, u_input.a.x, arg_0, arg_0), Struct_3(var_0.d, Struct_2(Struct_1(vec4<i32>(-1i, var_0.a.x, var_3.x, var_3.x), 581f, var_0.c, vec3<u32>(var_0.d.x, 120136u, 4294967295u)), vec4<u32>(u_input.b, 46790u, u_input.b, 0u)), var_1.x)).b.a).d % vec3<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(u_input.b, 0u, u_input.b);
    var var_1 = Struct_2(func_1(18280i), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, 1u, var_0.x, u_input.b)), ~vec4<u32>(_wgslsmith_dot_vec2_u32(var_0.yz, vec2<u32>(u_input.b, u_input.b)), var_0.x, ~84633u, 4294967295u)));
    let var_2 = func_1(u_input.a.x);
    var_1 = Struct_2(func_2(func_1(reverseBits(var_1.a.a.x)), func_4(reverseBits(var_1.a.a), Struct_3(var_1.b.yyz, Struct_2(Struct_1(vec4<i32>(-59915i, -23824i, 1i, 2098i), 1309f, var_1.a.c, var_2.d), vec4<u32>(0u, var_0.x, u_input.b, 0u)), var_2.b)).b, var_2.d.xx, u_input.b), var_1.b);
    var_0 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_2.b, -1268f) - vec3<f32>(var_1.a.b, 412f, var_1.a.b)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-399f, -2342f, -905f), vec3<f32>(-1000f, var_2.b, var_1.a.b), vec3<bool>(true, false, var_1.a.c)))))))), _wgslsmith_div_vec3_i32(func_4(~vec4<i32>(-2147483647i, 2147483647i, -2147483647i, var_1.a.a.x), func_4(vec4<i32>(var_2.a.x, var_1.a.a.x, 27019i, -21485i), Struct_3(vec3<u32>(var_2.d.x, var_1.a.d.x, var_2.d.x), Struct_2(Struct_1(var_2.a, var_1.a.b, var_2.c, var_2.d), vec4<u32>(0u, 13115u, u_input.b, u_input.b)), 1017f))).b.a.a.xyy, var_2.a.xwz));
}

