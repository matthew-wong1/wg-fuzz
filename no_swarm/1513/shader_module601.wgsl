struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<u32>,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11>;

var<private> global1: vec2<u32> = vec2<u32>(23114u, 1u);

var<private> global2: u32 = 4294967295u;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<i32>) -> u32 {
    var var_0 = select(vec3<bool>(false, arg_0.a.x, false), select(select(arg_0.a.yzx, vec3<bool>(true, u_input.c.x >= 0u, true), !arg_0.a.x), !arg_0.a.xwz, false), arg_0.a.x);
    global0 = array<f32, 11>();
    return ~abs(8083u);
}

fn func_2(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_5(arg_0.d);
    let var_1 = vec2<u32>(func_3(Struct_4(!select(vec4<bool>(arg_0.e.a.x, arg_0.e.a.x, false, false), vec4<bool>(true, false, true, true), false)), -arg_0.e.c.xz), 46101u);
    var var_2 = ~countOneBits(vec2<i32>(-u_input.b.x, arg_0.e.c.x));
    let var_3 = Struct_3(arg_3, _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(arg_0.b | vec4<i32>(var_2.x, u_input.a, -12024i, 9305i), -vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x), vec4<i32>(arg_0.e.c.x, var_2.x, var_2.x, 70611i)), _wgslsmith_div_vec4_i32(vec4<i32>(u_input.a, -27774i, 78532i, 0i), max(-vec4<i32>(var_2.x, var_2.x, var_2.x, 0i), _wgslsmith_add_vec4_i32(vec4<i32>(-35496i, -1i, 0i, u_input.a), vec4<i32>(2147483647i, 24843i, -25084i, -5299i))))), countOneBits(arg_0.c), -924f, Struct_2(arg_0.e.a, _wgslsmith_f_op_f32(-arg_0.d), -(~vec3<i32>(var_2.x, arg_0.b.x, arg_0.e.c.x)), Struct_1(88407u)));
    var var_4 = ~vec2<u32>(1u, func_3(Struct_4(!vec4<bool>(var_3.e.a.x, arg_0.e.a.x, true, arg_0.e.a.x)), vec2<i32>(i32(-1i) * -1i, firstTrailingBit(1i))));
    return arg_3;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_1(31416u);
    var var_1 = Struct_5(-1492f);
    var var_2 = 1603u;
    var var_3 = u_input.b;
    var_3 = vec2<i32>(-1i, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(-43i, 1i), _wgslsmith_clamp_i32(var_3.x, u_input.a, 94480i))) >> (min(vec2<u32>(1703u << (arg_3.x % 32u), ~(global1.x ^ var_0.a)), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 6840u))) % vec2<u32>(32u));
    return func_2(Struct_3(Struct_1(abs(global1.x)), vec4<i32>(4890i, ~var_3.x, abs(u_input.b.x), _wgslsmith_div_i32(-7395i, u_input.a) ^ select(var_3.x, -67215i, arg_0.x)), _wgslsmith_add_vec4_u32(reverseBits(_wgslsmith_add_vec4_u32(vec4<u32>(arg_3.x, u_input.c.x, 30056u, 4294967295u), vec4<u32>(arg_2.a, global1.x, 60104u, arg_1.a))), reverseBits(vec4<u32>(4294967295u, arg_1.a, 0u, 16648u)) << (firstTrailingBit(vec4<u32>(global1.x, 0u, arg_3.x, 30839u)) % vec4<u32>(32u))), var_1.a, Struct_2(select(!vec2<bool>(false, arg_0.x), select(arg_0.xz, vec2<bool>(true, arg_0.x), vec2<bool>(arg_0.x, arg_0.x)), all(arg_0.xz)), global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(132253u)), 11u)], reverseBits(vec3<i32>(u_input.b.x, 33084i, var_3.x)), Struct_1(98022u))), vec2<u32>(4294967295u, u_input.c.x) & ~arg_3.xy, _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(~76116u, 28538u, 13177u >> (arg_2.a % 32u))), _wgslsmith_add_vec3_u32(~(~arg_3), ~vec3<u32>(arg_2.a, 102079u, global1.x)), ~arg_3), arg_2);
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_2) -> Struct_5 {
    global0 = array<f32, 11>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(47750u, 11u)] + _wgslsmith_f_op_f32(sign(-335f))), arg_2.b, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(665f + arg_2.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -685f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~47029u, 11u)] + _wgslsmith_div_f32(-1148f, 921f)), arg_2.b)));
    let var_1 = arg_0;
    var var_2 = func_2(Struct_3(Struct_1(~4294967295u), select(~vec4<i32>(arg_2.c.x, arg_2.c.x, arg_2.c.x, u_input.b.x) >> (vec4<u32>(43564u, 0u, 30225u, 0u) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, -1i, u_input.b.x, arg_2.c.x)), vec4<i32>(u_input.b.x, u_input.a, u_input.a, arg_2.c.x)), !(!vec4<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x, arg_2.a.x))), max(vec4<u32>(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c.x, arg_0.a, 0u), vec4<u32>(arg_2.d.a, arg_0.a, u_input.c.x, arg_0.a)), 1u, select(arg_2.d.a, 0u, arg_2.a.x)), abs(~vec4<u32>(4401u, 4294967295u, 0u, global1.x))), _wgslsmith_f_op_f32(f32(-1f) * -171f), arg_2), u_input.c, select(~max(vec3<u32>(1u, 11099u, u_input.c.x) >> (vec3<u32>(u_input.c.x, u_input.c.x, 20490u) % vec3<u32>(32u)), ~vec3<u32>(u_input.c.x, var_1.a, u_input.c.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_2.d.a, u_input.c.x), vec3<u32>(var_1.a, var_1.a, 73802u) << (vec3<u32>(1u, var_1.a, 91254u) % vec3<u32>(32u))), vec3<u32>(min(4294967295u, arg_0.a), u_input.c.x ^ 62419u, 1u), abs(~vec3<u32>(7588u, global1.x, 74547u))), arg_2.a.x), func_2(Struct_3(var_1, select(countOneBits(vec4<i32>(-1i, u_input.b.x, arg_2.c.x, u_input.a)), min(vec4<i32>(u_input.a, 79827i, u_input.b.x, u_input.a), vec4<i32>(u_input.a, u_input.b.x, 21044i, 2147483647i)), false), select(vec4<u32>(u_input.c.x, 4294967295u, 17024u, 32484u), _wgslsmith_div_vec4_u32(vec4<u32>(var_1.a, 1u, global1.x, arg_2.d.a), vec4<u32>(global1.x, 5295u, 0u, 28269u)), true), -669f, Struct_2(arg_2.a, _wgslsmith_f_op_f32(-1000f - arg_2.b), select(arg_2.c, vec3<i32>(10102i, 16927i, 2147483647i), arg_2.a.x), func_4(vec3<bool>(arg_2.a.x, false, true), Struct_1(1u), arg_2.d, vec3<u32>(arg_2.d.a, 9195u, 23285u)))), _wgslsmith_sub_vec2_u32(vec2<u32>(0u, arg_2.d.a), ~u_input.c) ^ ~(u_input.c ^ u_input.c), vec3<u32>(~6908u, 45023u >> (reverseBits(u_input.c.x) % 32u), select(~global1.x, ~arg_0.a, all(arg_2.a))), Struct_1(firstTrailingBit(arg_0.a))));
    var_2 = arg_0;
    return Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(51202u, 11u)] * global0[_wgslsmith_index_u32(arg_0.a, 11u)])))));
}

fn func_6(arg_0: bool, arg_1: u32, arg_2: Struct_5, arg_3: Struct_5) -> Struct_3 {
    let var_0 = 1371f;
    var var_1 = -(select(_wgslsmith_div_vec3_i32(select(vec3<i32>(u_input.b.x, 7192i, -2147483647i), vec3<i32>(u_input.a, u_input.a, u_input.b.x), vec3<bool>(arg_0, true, false)), vec3<i32>(u_input.b.x, u_input.a, -2889i)), vec3<i32>(0i & u_input.b.x, -2147483647i, ~u_input.b.x), vec3<bool>(select(arg_0, true, true), arg_0, any(vec2<bool>(true, arg_0)))) ^ select(vec3<i32>(firstTrailingBit(u_input.b.x), 2147483647i, -2147483647i), vec3<i32>(u_input.b.x, select(u_input.a, -56447i, arg_0), u_input.a), select(vec3<bool>(true, false, true), !vec3<bool>(true, arg_0, true), all(vec2<bool>(true, false)))));
    var var_2 = func_4(select(select(select(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_0, arg_0, true), arg_0), !vec3<bool>(arg_0, false, false), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, arg_0), arg_0)), select(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_0, arg_0, true), arg_0), !vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(arg_0, arg_0, arg_0)), !vec3<bool>(arg_0, arg_0, true)), select(!(!vec3<bool>(arg_0, true, arg_0)), vec3<bool>(true, true, false), select(true, arg_0 || arg_0, !arg_0)), !vec3<bool>(false, true, arg_0)), Struct_1(~1u), Struct_1(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(global1.x, u_input.c.x), global1.x, _wgslsmith_add_u32(56318u, arg_1))), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, _wgslsmith_mult_u32(select(arg_1, u_input.c.x, arg_0), reverseBits(102979u)), u_input.c.x), ~firstTrailingBit(~vec3<u32>(19732u, 2818u, 0u))));
    var var_3 = vec4<bool>(select(true, arg_0, firstLeadingBit(u_input.b.x) <= u_input.b.x) & (true && any(vec3<bool>(true, arg_0, arg_0))), all(vec4<bool>(true, !any(vec4<bool>(false, arg_0, true, arg_0)), global0[_wgslsmith_index_u32(reverseBits(0u), 11u)] <= 557f, arg_0 && all(vec4<bool>(false, false, false, false)))), !arg_0, true);
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(367f)), var_0, _wgslsmith_f_op_f32(floor(-677f))));
    return Struct_3(func_4(select(select(select(var_3.zyy, vec3<bool>(true, var_3.x, var_3.x), false), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), vec3<bool>(all(vec3<bool>(false, false, arg_0)), false, var_4.x >= -1104f), (9369i ^ var_1.x) >= 2147483647i), Struct_1(1u), Struct_1(~(~123860u)), _wgslsmith_mod_vec3_u32(select(countOneBits(vec3<u32>(0u, u_input.c.x, global1.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(var_2.a, u_input.c.x, 17647u), vec3<u32>(34787u, global1.x, var_2.a)), !var_3.yyw), ~(vec3<u32>(4674u, 1u, u_input.c.x) & vec3<u32>(u_input.c.x, u_input.c.x, var_2.a)))), _wgslsmith_div_vec4_i32(vec4<i32>(5576i, min(var_1.x, u_input.a), -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -21105i, var_1.x), vec3<i32>(52588i, u_input.b.x, 24314i))), -vec4<i32>(21886i, 0i, var_1.x, var_1.x) >> (vec4<u32>(1u, var_2.a, 58182u, u_input.c.x) % vec4<u32>(32u))) >> (~select(firstTrailingBit(vec4<u32>(0u, global1.x, arg_1, 80316u)), vec4<u32>(arg_1, 0u, 57482u, var_2.a) >> (vec4<u32>(var_2.a, 8633u, global1.x, 12129u) % vec4<u32>(32u)), !vec4<bool>(var_3.x, arg_0, true, false)) % vec4<u32>(32u)), max(~(~vec4<u32>(1u, 1u, u_input.c.x, global1.x) >> (min(vec4<u32>(u_input.c.x, 14254u, global1.x, global1.x), vec4<u32>(global1.x, var_2.a, u_input.c.x, 16173u)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(~firstLeadingBit(vec4<u32>(var_2.a, 13345u, global1.x, arg_1)), vec4<u32>(_wgslsmith_div_u32(global1.x, 4294967295u), abs(53274u), ~1880u, firstLeadingBit(79493u)), vec4<u32>(_wgslsmith_add_u32(var_2.a, 4294967295u), _wgslsmith_clamp_u32(32908u, 1u, var_2.a), select(1u, u_input.c.x, var_3.x), ~4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(366f, -2324f) * -832f), Struct_2(!select(select(var_3.xy, vec2<bool>(var_3.x, false), var_3.wx), vec2<bool>(true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) - global0[_wgslsmith_index_u32(global1.x, 11u)]) * -628f), reverseBits(~(~vec3<i32>(27282i, -1i, 8421i))), func_2(Struct_3(Struct_1(arg_1), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, var_1.x), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, u_input.c.x, u_input.c.x, 4294967295u), vec4<u32>(4737u, 0u, 8660u, 4294967295u)), _wgslsmith_f_op_f32(var_4.x + arg_3.a), Struct_2(vec2<bool>(arg_0, true), global0[_wgslsmith_index_u32(51805u, 11u)], vec3<i32>(25234i, u_input.b.x, var_1.x), Struct_1(global1.x))), u_input.c, ~(~vec3<u32>(11767u, 4294967295u, 7182u)), Struct_1(_wgslsmith_mult_u32(var_2.a, 40531u)))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    global0 = array<f32, 11>();
    var var_0 = true;
    let var_1 = true;
    let var_2 = arg_0;
    global0 = array<f32, 11>();
    return func_6(var_1, arg_0.c.x, Struct_5(_wgslsmith_f_op_f32(abs(890f))), Struct_5(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.e.b))))))).e;
}

fn func_1() -> vec2<u32> {
    let var_0 = func_7(func_6(1000f != _wgslsmith_div_f32(1525f, _wgslsmith_f_op_f32(-294f * global0[_wgslsmith_index_u32(8398u, 11u)])), _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, global1.x), u_input.c, u_input.c), ~select(vec2<u32>(25277u, global1.x), vec2<u32>(u_input.c.x, u_input.c.x), vec2<bool>(false, true))), func_5(func_4(vec3<bool>(false, true, false), func_2(Struct_3(Struct_1(23367u), vec4<i32>(u_input.a, 2147483647i, 1i, 43721i), vec4<u32>(u_input.c.x, 43697u, global1.x, global1.x), global0[_wgslsmith_index_u32(u_input.c.x, 11u)], Struct_2(vec2<bool>(false, true), -1810f, vec3<i32>(23167i, u_input.a, u_input.b.x), Struct_1(u_input.c.x))), u_input.c, vec3<u32>(u_input.c.x, u_input.c.x, 36498u), Struct_1(4294967295u)), func_2(Struct_3(Struct_1(global1.x), vec4<i32>(1i, -1203i, u_input.b.x, u_input.b.x), vec4<u32>(0u, 1u, u_input.c.x, 1u), -1027f, Struct_2(vec2<bool>(false, true), -1000f, vec3<i32>(-2147483647i, -2147483647i, u_input.a), Struct_1(54566u))), u_input.c, vec3<u32>(1u, 14170u, 16801u), Struct_1(80588u)), select(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, u_input.c.x, global1.x), vec3<bool>(false, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -624f), Struct_2(vec2<bool>(true, true), _wgslsmith_div_f32(-1062f, 378f), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.a, -39405i), vec3<i32>(-5838i, 1i, -12512i)), func_4(vec3<bool>(true, true, true), Struct_1(u_input.c.x), Struct_1(global1.x), vec3<u32>(u_input.c.x, 0u, global1.x)))), Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(66u, 11u)], -652f))))), Struct_2(select(func_6(all(vec3<bool>(true, false, false)), ~global1.x, func_5(Struct_1(u_input.c.x), -1047f, Struct_2(vec2<bool>(false, false), 715f, vec3<i32>(22737i, u_input.a, 1i), Struct_1(4294967295u))), Struct_5(global0[_wgslsmith_index_u32(u_input.c.x, 11u)])).e.a, vec2<bool>(true, true), true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-233f - 1449f), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.c.x, 11u)], global0[_wgslsmith_index_u32(u_input.c.x, 11u)]), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(19934u, 11u)]) + global0[_wgslsmith_index_u32(u_input.c.x, 11u)])), ~max(vec3<i32>(-2147483647i, u_input.a, u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(1i, -30970i, -1i), vec3<i32>(u_input.b.x, u_input.a, u_input.a))), Struct_1(~global1.x)));
    let var_1 = Struct_4(select(vec4<bool>(true, any(vec2<bool>(true, true)), any(select(var_0.a, vec2<bool>(false, var_0.a.x), var_0.a.x)), true), vec4<bool>(var_0.a.x, false, !func_7(Struct_3(Struct_1(1u), vec4<i32>(1i, -5478i, var_0.c.x, 1i), vec4<u32>(28627u, global1.x, 4294967295u, 1u), 541f, Struct_2(var_0.a, global0[_wgslsmith_index_u32(global1.x, 11u)], var_0.c, Struct_1(1u))), var_0).a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(26243i, u_input.a, var_0.c.x, -24783i), vec4<i32>(var_0.c.x, var_0.c.x, u_input.a, u_input.b.x)) > -u_input.b.x), var_0.a.x));
    global2 = ~reverseBits(u_input.c.x);
    global0 = array<f32, 11>();
    var var_2 = 57329u;
    return _wgslsmith_mult_vec2_u32(~(select(vec2<u32>(4294967295u, var_0.d.a), ~u_input.c, vec2<bool>(true, var_1.a.x)) >> (vec2<u32>(func_6(var_0.a.x, var_0.d.a, Struct_5(var_0.b), Struct_5(1779f)).e.d.a, 99192u) % vec2<u32>(32u))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    global2 = global1.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), ~(u_input.c.x & ~(~45789u)));
}

