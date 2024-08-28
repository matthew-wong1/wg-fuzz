struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: bool,
    c: Struct_2,
    d: Struct_1,
    e: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = Struct_4(arg_0, arg_0, Struct_2(_wgslsmith_dot_vec2_u32(firstLeadingBit(u_input.b.xy), min(_wgslsmith_div_vec2_u32(vec2<u32>(76238u, u_input.b.x), vec2<u32>(0u, u_input.b.x)), vec2<u32>(u_input.b.x, 38780u) >> (u_input.b.yy % vec2<u32>(32u)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-379f)))), arg_0, select(vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b, u_input.b), _wgslsmith_add_u32(u_input.b.x, 4294967295u), reverseBits(u_input.b.x)), vec4<u32>(u_input.b.x, abs(u_input.b.x), u_input.b.x, u_input.b.x), any(vec2<bool>(arg_0.c, false))), Struct_1(false, true, all(vec2<bool>(arg_0.a, arg_0.a)))), _wgslsmith_dot_vec2_i32(global0.yy, max(global0.xw, firstLeadingBit(-vec2<i32>(u_input.a, 13236i)))), (-40698i >> (_wgslsmith_dot_vec3_u32(u_input.b, firstTrailingBit(vec3<u32>(u_input.b.x, 60503u, 4294967295u))) % 32u)) >> (_wgslsmith_clamp_u32(~1u, firstLeadingBit(firstTrailingBit(u_input.b.x)), 1u) % 32u));
    var_0 = Struct_4(Struct_1(((u_input.b.x >> (0u % 32u)) ^ _wgslsmith_clamp_u32(0u, u_input.b.x, 4294967295u)) >= ~101533u, all(select(select(vec4<bool>(var_0.c.c.c, var_0.c.e.a, var_0.a.a, var_0.b.a), vec4<bool>(var_0.a.c, false, true, var_0.a.c), false), select(vec4<bool>(var_0.c.e.a, false, true, var_0.b.c), vec4<bool>(false, arg_0.c, true, true), vec4<bool>(true, arg_0.a, false, true)), !arg_0.a)), false), arg_0, Struct_2(firstLeadingBit(11060u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.c.b, var_0.c.b), _wgslsmith_f_op_f32(-var_0.c.b)))), arg_0, _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.c.d, var_0.c.d), vec4<u32>(69121u, var_0.c.d.x, 0u, var_0.c.a), var_0.c.d) >> (var_0.c.d % vec4<u32>(32u)), arg_0), var_0.d, ~(~(~_wgslsmith_div_i32(var_0.e, 15690i))));
    var var_1 = global0.x;
    var var_2 = Struct_4(var_0.b, Struct_1(any(vec4<bool>(!arg_0.a, var_0.c.e.a, var_0.c.c.a, !var_0.b.c)), any(vec4<bool>(!var_0.a.c, true, select(true, false, false), true)), !var_0.b.c), Struct_2(~firstLeadingBit(var_0.c.a), -1439f, Struct_1(select(arg_0.a, true, arg_0.a), var_0.a.c & !arg_0.b, !(true && var_0.a.c)), _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, var_0.c.d.x, 1u, var_0.c.a) << (vec4<u32>(var_0.c.a, var_0.c.d.x, var_0.c.a, 95067u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.c.d.x, u_input.b.x, var_0.c.d.x, var_0.c.a), var_0.c.d)), var_0.c.d | var_0.c.d), arg_0), select(2147483647i, 1i, var_0.b.b) >> (abs(~abs(u_input.b.x)) % 32u), 2147483647i);
    var_0 = Struct_4(Struct_1(select(true, !arg_0.c, var_0.e < 0i), !select(select(true, true, arg_0.b), var_2.a.c, arg_0.b || var_2.c.c.b), (var_0.c.a << (var_2.c.d.x % 32u)) != (var_0.c.a ^ 0u)), Struct_1(true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(var_2.a.a, true))), arg_0.c), var_0.c, ~1i, firstLeadingBit(2147483647i));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -870f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1121f - var_2.c.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.c.b - _wgslsmith_f_op_f32(478f * 300f)))))), _wgslsmith_f_op_f32(sign(var_2.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.b)))) + _wgslsmith_f_op_f32(-103f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.c.b + var_0.c.b))))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: vec4<bool>) -> vec4<i32> {
    global0 = _wgslsmith_sub_vec4_i32(-vec4<i32>(1i & ~global0.x, global0.x, global0.x ^ abs(global0.x), 23077i), vec4<i32>(~u_input.a, select(~u_input.a, abs(u_input.a), !arg_3.x) >> ((firstTrailingBit(108383u) >> (33755u % 32u)) % 32u), 12526i, _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, u_input.a), max(0i, 29346i)) << (_wgslsmith_mod_u32(min(4294967295u, arg_0.x), ~arg_0.x) % 32u)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1031f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-943f - 172f)), _wgslsmith_f_op_f32(f32(-1f) * -197f)))));
    global0 = reverseBits(~_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(u_input.a, -8663i, global0.x, u_input.a), select(vec4<i32>(1i, u_input.a, 2147483647i, global0.x), vec4<i32>(-1i, global0.x, u_input.a, 0i), vec4<bool>(true, true, true, arg_2.x))), firstTrailingBit(vec4<i32>(-47883i, 2147483647i, -31720i, -1i) >> (vec4<u32>(arg_0.x, arg_0.x, 34700u, u_input.b.x) % vec4<u32>(32u)))));
    global0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(firstLeadingBit(global0.x), _wgslsmith_mult_i32(firstTrailingBit(u_input.a) ^ ~global0.x, -28736i), u_input.a, u_input.a), vec4<i32>(1i, max(countOneBits(u_input.a), abs(-1i)), global0.x, ~_wgslsmith_mult_i32(u_input.a, global0.x)) >> (_wgslsmith_clamp_vec4_u32(select(countOneBits(vec4<u32>(arg_0.x, arg_0.x, 4294967295u, 1u)), ~vec4<u32>(arg_0.x, 9119u, 4294967295u, arg_0.x), !arg_3.x), _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.b.x, 16411u, arg_0.x) ^ vec4<u32>(1u, arg_0.x, 28875u, arg_0.x), max(vec4<u32>(u_input.b.x, 4294967295u, 15256u, 0u), vec4<u32>(4294967295u, 4294967295u, arg_0.x, u_input.b.x))), vec4<u32>(~49541u, abs(arg_0.x), u_input.b.x << (0u % 32u), ~4294967295u)) % vec4<u32>(32u)), -(~vec4<i32>(_wgslsmith_mod_i32(global0.x, -19701i), u_input.a, 0i, u_input.a)));
    global0 = max(vec4<i32>(u_input.a, 1i, _wgslsmith_sub_i32(-7743i, u_input.a), -2147483647i >> (1u % 32u)), vec4<i32>(~global0.x ^ u_input.a, reverseBits(-1i), -reverseBits(u_input.a), _wgslsmith_sub_i32(global0.x ^ u_input.a, reverseBits(123071i))) & _wgslsmith_div_vec4_i32(firstTrailingBit(vec4<i32>(-48234i, 59605i, global0.x, global0.x)), vec4<i32>(reverseBits(u_input.a), -1i >> (u_input.b.x % 32u), select(global0.x, global0.x, false), 2147483647i)));
    return (max(~(vec4<i32>(u_input.a, global0.x, global0.x, 23208i) << (vec4<u32>(38315u, 7394u, u_input.b.x, 4294967295u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(countOneBits(vec4<i32>(2147483647i, 23596i, global0.x, u_input.a)), vec4<i32>(u_input.a, -41108i, -11164i, u_input.a))) & (~(vec4<i32>(-2147483647i, 1i, -30375i, global0.x) | vec4<i32>(u_input.a, u_input.a, -2147483647i, 34682i)) | -_wgslsmith_add_vec4_i32(vec4<i32>(global0.x, global0.x, -20294i, -1i), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)))) & vec4<i32>(_wgslsmith_div_i32(global0.x, u_input.a), -34929i, 41666i, -2147483647i);
}

fn func_2(arg_0: bool) -> vec4<f32> {
    global0 = max(func_4(vec3<u32>(_wgslsmith_mod_u32(firstTrailingBit(0u), 1u), abs(74710u), u_input.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2718f, 1107f, 752f, 1861f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(102f, 208f, 932f, 511f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(arg_0, true, true))), vec4<f32>(-318f, 297f, -935f, -803f), select(vec4<bool>(true, false, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, false, false, arg_0))))), vec4<bool>(arg_0, !arg_0 & select(arg_0, arg_0, arg_0), arg_0, any(vec4<bool>(false, arg_0, arg_0, true))), !vec4<bool>(true, arg_0, select(arg_0, arg_0, false), all(vec2<bool>(false, arg_0)))), ~vec4<i32>(_wgslsmith_mult_i32(2147483647i, global0.x) | -13733i, global0.x, -2147483647i, _wgslsmith_dot_vec3_i32(global0.yyw, global0.yyy)));
    global0 = vec4<i32>(global0.x | _wgslsmith_clamp_i32(u_input.a, -52228i, ~(-u_input.a)), ~58425i, _wgslsmith_sub_i32(abs(10570i), global0.x), _wgslsmith_div_i32(~global0.x, abs(30992i)));
    let var_0 = vec3<bool>(arg_0, all(vec4<bool>(!(!arg_0), ~u_input.b.x <= 56525u, true, all(vec2<bool>(true, false)))), true);
    var var_1 = true;
    let var_2 = !(u_input.a != firstLeadingBit(func_4(abs(u_input.b), vec4<f32>(216f, 1000f, -1006f, -1498f), !vec4<bool>(arg_0, var_0.x, true, var_0.x), !vec4<bool>(false, false, var_0.x, false)).x));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-753f, 1f, _wgslsmith_f_op_f32(select(-598f, 1f, true)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-1075f)), _wgslsmith_f_op_f32(sign(906f)))))));
}

fn func_1() -> vec4<f32> {
    global0 = _wgslsmith_mult_vec4_i32(abs(firstTrailingBit(select(~vec4<i32>(-34548i, global0.x, global0.x, 1i), vec4<i32>(0i, u_input.a, -10184i, 9411i) >> (vec4<u32>(u_input.b.x, 0u, u_input.b.x, 0u) % vec4<u32>(32u)), true))), -vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, -1i), ~1194i), u_input.a, global0.x, ~u_input.a >> (u_input.b.x % 32u)));
    var var_0 = -1i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -725f), _wgslsmith_f_op_f32(max(930f, -1772f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(333f, -1507f)))), 1814f)));
    var var_2 = vec2<u32>(1u, ~9505u & u_input.b.x);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1418f));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(var_1, -1243f, var_1, 1144f), _wgslsmith_f_op_vec4_f32(func_2(false))), vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(select(var_1, -1187f, false)), var_1))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(883f, -1213f, var_1, var_1), vec4<f32>(var_1, -963f, 1273f, var_1)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, -554f, 644f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(362f, -166f, var_1, 132f), vec4<f32>(var_1, var_1, -1900f, -2060f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-474f, 1274f, -746f, -1000f), _wgslsmith_f_op_vec4_f32(func_1()))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(586f, -190f, 247f, 534f) - _wgslsmith_f_op_vec4_f32(func_2(true))))));
    global0 = reverseBits(_wgslsmith_clamp_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-21969i, global0.x, u_input.a, 0i), vec4<i32>(u_input.a, u_input.a, 1i, global0.x)) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 1088u), vec4<u32>(52952u, 0u, 102204u, 1u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(27058i, -2753i, global0.x, 1i)) >> (~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), func_4(vec3<u32>(4294967295u, u_input.b.x, 1u), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 624f, var_0.x, var_0.x))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true))) >> (~firstTrailingBit(reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 99275u, u_input.b.x))) % vec4<u32>(32u)));
    var var_1 = min(min(vec4<u32>(abs(~59265u), 38110u, 55245u, firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(57744u, 56596u, u_input.b.x, 0u), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x)))), select(vec4<u32>(4294967295u, 498u, 10512u, firstTrailingBit(14371u)), ~max(vec4<u32>(u_input.b.x, 4294967295u, 55456u, u_input.b.x), vec4<u32>(4294967295u, 22446u, u_input.b.x, u_input.b.x)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)))), select(vec4<u32>(u_input.b.x, 6899u, _wgslsmith_mod_u32(reverseBits(34985u), u_input.b.x), abs(u_input.b.x) >> (~u_input.b.x % 32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(u_input.b.x), u_input.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(30924u, 1u, u_input.b.x, u_input.b.x)), ~13300u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(55175u, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 69880u, 4294967295u), vec4<u32>(1u, 4294967295u, 1u, 24608u) << (vec4<u32>(4823u, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), firstLeadingBit(abs(vec4<u32>(4294967295u, u_input.b.x, 8701u, u_input.b.x)))), all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false)), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true)))));
    var var_2 = _wgslsmith_f_op_f32(round(-854f));
    var var_3 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1699f), !all(vec2<bool>(u_input.a >= u_input.a, true)), Struct_2(~_wgslsmith_mult_u32(abs(var_1.x), 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), Struct_1(all(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false)), _wgslsmith_f_op_f32(var_0.x + var_0.x) > var_0.x, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true)))), _wgslsmith_mod_vec4_u32(~max(vec4<u32>(var_1.x, 71016u, 26195u, 33311u), vec4<u32>(0u, 1u, u_input.b.x, u_input.b.x)), abs(~vec4<u32>(u_input.b.x, 1u, u_input.b.x, 4294967295u))), Struct_1(any(vec3<bool>(true, true, true)), true, true)), Struct_1(true, any(vec3<bool>(true, true, true)) && true, select(false, var_0.x < var_0.x, true)), 104f);
    var_1 = var_3.c.d;
    let var_4 = var_3.d;
    let x = u_input.a;
    s_output = StorageBuffer(~((-vec4<i32>(global0.x, u_input.a, u_input.a, global0.x) | vec4<i32>(0i, 2147483647i, global0.x, u_input.a)) | ~firstTrailingBit(vec4<i32>(1i, global0.x, -13145i, 2147483647i))), firstLeadingBit(~_wgslsmith_sub_u32(0u ^ u_input.b.x, _wgslsmith_add_u32(1u, var_3.c.a))), var_3.c.d.zxw, var_1.x);
}

