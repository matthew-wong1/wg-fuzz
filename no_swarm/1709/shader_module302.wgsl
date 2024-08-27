struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<u32>,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec2<u32> {
    global0 = Struct_3(vec4<i32>(global0.d.b, _wgslsmith_mult_i32(-(~global0.d.b), 0i), ~46005i, ~2147483647i), vec2<u32>(arg_1.x, 28978u ^ u_input.b), arg_1.x, Struct_1(vec2<u32>(select(4294967295u, 55526u, true), 53926u), _wgslsmith_sub_i32(_wgslsmith_mult_i32(global0.a.x, max(global0.e.b, -7859i)), ~32748i << (arg_1.x % 32u))), global0.e);
    let var_0 = vec3<u32>(abs(u_input.c.x), abs(1u) | ~arg_1.x, _wgslsmith_sub_u32(1u, 16764u >> (global0.b.x % 32u)) ^ (arg_2.x >> (_wgslsmith_mult_u32(u_input.a.x, countOneBits(8733u)) % 32u)));
    global0 = Struct_3(global0.a ^ vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(global0.a.x, global0.d.b, 52096i), global0.a.yyx), vec3<i32>(62923i, global0.d.b, 0i)), global0.d.b, 0i, -2147483647i), ((var_0.zx ^ arg_1) ^ (_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.x, var_0.x), vec2<u32>(var_0.x, arg_2.x), vec2<u32>(58u, 0u)) << (vec2<u32>(var_0.x, 9106u) % vec2<u32>(32u)))) | arg_1, reverseBits(_wgslsmith_add_u32(~var_0.x, 4294967295u) & max(u_input.b, _wgslsmith_add_u32(50908u, u_input.b))), global0.e, Struct_1(~vec2<u32>(~u_input.c.x, arg_1.x | 16514u), i32(-1i) * -21074i));
    global0 = Struct_3(abs(vec4<i32>(~global0.e.b, -1i, 34416i, 0i)), arg_1, abs(min(0u, arg_1.x)), Struct_1(min(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.b.x, 4294967295u), u_input.a), _wgslsmith_sub_u32(4294967295u, u_input.b)), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(90001u, arg_1.x), vec2<u32>(38861u, 35770u)), ~var_0.xx)), max(2147483647i, select(~global0.e.b, -global0.e.b, true))), Struct_1(arg_1, -1i));
    var var_1 = Struct_1(~(~select(vec2<u32>(14309u, 0u), global0.d.a, true) & ~vec2<u32>(arg_1.x, 16247u)), max(global0.d.b, -73397i));
    return var_0.yz;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> f32 {
    global0 = Struct_3(_wgslsmith_mult_vec4_i32(~global0.a, vec4<i32>(44534i, 27758i, _wgslsmith_div_i32(2147483647i, global0.d.b), firstTrailingBit(-14706i))), ~_wgslsmith_div_vec2_u32(func_3(vec4<f32>(115f, -1000f, -567f, -1160f), vec2<u32>(global0.d.a.x, arg_0), vec4<u32>(u_input.a.x, 4294967295u, 5943u, arg_2) << (vec4<u32>(global0.e.a.x, arg_2, 4294967295u, global0.b.x) % vec4<u32>(32u))), vec2<u32>(~arg_2, u_input.a.x & 0u)), ~firstLeadingBit(arg_2), Struct_1(_wgslsmith_add_vec2_u32(~(u_input.c | vec2<u32>(u_input.a.x, u_input.c.x)), ~vec2<u32>(1607u, u_input.a.x)), abs(global0.d.b << (firstLeadingBit(1u) % 32u))), Struct_1(~vec2<u32>(reverseBits(48806u), 1u), max(1i, 2147483647i)));
    global0 = Struct_3(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, global0.e.b, min(global0.a.x, global0.e.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.e.b, global0.a.x, global0.d.b), _wgslsmith_div_vec3_i32(global0.a.xxw, global0.a.xxw))), -1i, global0.d.b, -60430i), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xx, vec2<u32>(arg_2, 1u)) | vec2<u32>(u_input.a.x, u_input.b), _wgslsmith_mult_vec2_u32(u_input.a.yz, ~global0.d.a), ~global0.e.a), _wgslsmith_div_u32(min(min(firstTrailingBit(1u), func_3(vec4<f32>(-2051f, 335f, -1635f, 152f), global0.d.a, vec4<u32>(arg_2, arg_0, 12995u, arg_2)).x), global0.c), arg_0 & ~arg_0), global0.d, Struct_1(vec2<u32>(select(_wgslsmith_clamp_u32(arg_0, 14135u, u_input.b), 103406u, true), ~u_input.c.x), global0.a.x));
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1f, 1f, 1f))));
    global0 = Struct_3((select(~global0.a, reverseBits(global0.a), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(true, true, true, arg_1), vec4<bool>(false, true, true, arg_1))) ^ -firstTrailingBit(vec4<i32>(global0.d.b, 23127i, -1i, global0.a.x))) ^ global0.a, abs(max(min(vec2<u32>(u_input.c.x, 0u), max(u_input.a.xx, global0.e.a)), reverseBits(u_input.c))), _wgslsmith_dot_vec3_u32(~u_input.a, u_input.a), Struct_1(vec2<u32>(4294967295u, 36103u), firstTrailingBit(firstTrailingBit(global0.d.b) | _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -41223i, 0i, global0.a.x), vec4<i32>(global0.e.b, global0.e.b, 2147483647i, global0.e.b)))), global0.e);
    let var_1 = global0.e;
    return _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(sign(var_0.a.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(step(479f, -459f));
    let var_1 = Struct_1(u_input.a.yx, ~_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(countOneBits(global0.a), ~vec4<i32>(1i, -14789i, global0.d.b, -2147483647i)), vec4<i32>(-2147483647i >> (global0.c % 32u), ~global0.a.x, abs(-23285i), global0.a.x)));
    var var_2 = Struct_3(-_wgslsmith_clamp_vec4_i32(~firstLeadingBit(vec4<i32>(global0.e.b, -1i, var_1.b, global0.a.x)), max(select(global0.a, vec4<i32>(-1i, 2147483647i, var_1.b, -9056i), vec4<bool>(true, false, true, true)), select(global0.a, vec4<i32>(0i, global0.a.x, -1i, -2147483647i), vec4<bool>(true, false, false, false))), vec4<i32>(firstLeadingBit(-2147483647i), var_1.b, 2147483647i, select(-5856i, 5090i, true))), var_1.a, _wgslsmith_mod_u32(4294967295u, (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, global0.b.x), vec4<u32>(0u, 41489u, 0u, var_1.a.x)) << (~0u % 32u)) & 45317u), global0.e, Struct_1(firstLeadingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, global0.b.x), vec2<u32>(u_input.b, 4294967295u), arg_0.xy)) ^ ~max(vec2<u32>(51481u, u_input.a.x), global0.e.a), 2147483647i));
    var var_3 = Struct_2(var_0, select(vec4<bool>(all(vec3<bool>(true, true, false)), true, true, true), vec4<bool>(true, arg_1.x >= _wgslsmith_f_op_f32(func_2(var_2.b.x, false, var_2.d.a.x)), true, all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false))), all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, true)))), 58809u, var_2.d);
    var_2 = Struct_3(vec4<i32>(~min(-1i, -15758i), 0i, 0i, var_3.d.b), countOneBits(~(vec2<u32>(4294967295u, var_1.a.x) >> (var_2.d.a % vec2<u32>(32u)))), 4294967295u, Struct_1(var_3.d.a << (vec2<u32>(~arg_0.x, select(var_3.d.a.x, u_input.c.x, true)) % vec2<u32>(32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(global0.e.b, var_1.b, -61628i, -1i), max(global0.a, vec4<i32>(var_1.b, 0i, var_1.b, var_1.b))) << (_wgslsmith_mod_u32(arg_0.x, var_2.b.x) % 32u)), Struct_1(global0.e.a, firstLeadingBit(~(1i | var_2.e.b))));
    return Struct_3(_wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(-vec4<i32>(var_3.d.b, var_1.b, var_1.b, -2147483647i), (global0.a >> (vec4<u32>(arg_0.x, 1u, var_2.e.a.x, 87964u) % vec4<u32>(32u))) & (vec4<i32>(0i, 11462i, -49000i, global0.d.b) ^ vec4<i32>(6576i, var_3.d.b, -60486i, var_1.b)), vec4<i32>(~var_3.d.b, -38903i, i32(-1i) * -34319i, -2147483647i)), vec4<i32>(_wgslsmith_mod_i32(var_3.d.b, 1i), global0.d.b << (4294967295u % 32u), _wgslsmith_div_i32(1538i, 20068i) ^ (var_2.a.x >> (4294967295u % 32u)), var_2.e.b)), vec2<u32>(max(1u, u_input.b), _wgslsmith_clamp_u32(global0.e.a.x, ~var_3.d.a.x, _wgslsmith_sub_u32(~global0.b.x, ~var_3.c))), _wgslsmith_mult_u32(arg_0.x, _wgslsmith_div_u32(1u, countOneBits(~var_3.d.a.x))), var_3.d, var_2.d);
}

fn func_1() -> Struct_3 {
    let var_0 = 53911u;
    global0 = func_4(vec3<u32>(u_input.c.x, select(reverseBits(77277u), ~32876u, !select(true, true, false)), ~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.a.x, 32093u), ~u_input.a.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-591f * -261f), _wgslsmith_f_op_f32(func_2(0u, true, var_0)))), _wgslsmith_f_op_f32(floor(150f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-876f * -1035f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-602f)) + _wgslsmith_f_op_f32(-983f * 758f)))));
    global0 = func_4(vec3<u32>(func_4(~(vec3<u32>(global0.b.x, 1u, 0u) << (u_input.a % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-132f, -1545f)))).e.a.x, 0u, 1u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(234f, _wgslsmith_f_op_f32(trunc(492f))))));
    var var_1 = ~(~(~u_input.a));
    global0 = func_4(~vec3<u32>(var_0, 37216u, _wgslsmith_div_u32(var_0, ~var_0)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, _wgslsmith_f_op_f32(max(1f, -136f)))));
    return Struct_3(_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(global0.a, vec4<i32>(global0.d.b, global0.a.x, global0.e.b, -56739i), firstLeadingBit(global0.a)) | _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, 8286i, global0.a.x, 2369i) ^ global0.a, global0.a, global0.a), ~global0.a), var_1.xy >> (~_wgslsmith_clamp_vec2_u32(firstLeadingBit(var_1.zy), ~vec2<u32>(u_input.a.x, global0.c), ~u_input.a.zz) % vec2<u32>(32u)), _wgslsmith_sub_u32(u_input.c.x, ~global0.e.a.x >> (_wgslsmith_mod_u32(26869u, ~38271u) % 32u)), global0.e, func_4(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1170f, 1199f), vec2<f32>(-203f, -2013f), vec2<bool>(false, false))), vec2<f32>(543f, 174f), all(vec2<bool>(true, false)))))).e);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> Struct_2 {
    var var_0 = max(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~arg_0.d.a.x, 0u, _wgslsmith_sub_u32(arg_0.e.a.x, arg_0.c), arg_0.d.a.x >> (arg_0.d.a.x % 32u)), abs(vec4<u32>(68063u, 0u, 9517u, u_input.c.x)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(17060u, arg_0.d.a.x, arg_0.d.a.x, arg_0.e.a.x), vec4<u32>(arg_0.e.a.x, 55712u, arg_0.b.x, arg_0.d.a.x)) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(abs(reverseBits(vec4<u32>(u_input.a.x, 106146u, 0u, 64047u))), abs(vec4<u32>(arg_0.c, 5327u, arg_0.d.a.x, u_input.c.x)), reverseBits(vec4<u32>(global0.c, 12468u, u_input.c.x, u_input.c.x) | vec4<u32>(arg_0.b.x, 25068u, 37235u, 2766u)))), global0.d.a.x);
    let var_1 = ~max(_wgslsmith_dot_vec2_u32(select(~vec2<u32>(u_input.a.x, 0u), vec2<u32>(global0.e.a.x, 10300u), vec2<bool>(true, true)), ~_wgslsmith_sub_vec2_u32(arg_0.d.a, global0.e.a)), ~func_1().d.a.x);
    var var_2 = true;
    global0 = Struct_3(global0.a, vec2<u32>(~select(~var_1, firstLeadingBit(43308u), true), ~1u), 1u ^ var_1, Struct_1(vec2<u32>(countOneBits(global0.e.a.x), select(53678u ^ u_input.a.x, var_1, true)), ~(i32(-1i) * -1i)), global0.e);
    var_2 = true | !(arg_1.a.x < arg_1.a.x);
    return Struct_2(-513f, !select(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false)), vec4<bool>(false, true, global0.a.x > arg_0.d.b, true), vec4<bool>(false, 769f >= arg_1.a.x, -1000f >= arg_1.a.x, all(vec4<bool>(true, false, true, true)))), ~arg_0.e.a.x, func_4(u_input.a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.x, arg_1.a.x)))))).d);
}

fn func_6(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    var var_0 = !(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, arg_1.b.x), false), !arg_1.b.ww, any(arg_1.b.wyw))));
    var var_1 = min(select(_wgslsmith_clamp_vec3_u32(firstTrailingBit(abs(u_input.a)), u_input.a << (vec3<u32>(arg_2.a.x, 1u, u_input.c.x) % vec3<u32>(32u)), u_input.a), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(10617u, 64945u, arg_2.a.x), u_input.a, vec3<u32>(global0.c, arg_2.a.x, 0u)), vec3<bool>(false, arg_1.b.x, all(arg_1.b) && true)), ~(~(~u_input.a)));
    let var_2 = Struct_3(global0.a, u_input.a.zy, abs(func_5(Struct_3(global0.a, vec2<u32>(42064u, u_input.a.x), 1u, Struct_1(u_input.a.xx, 15454i), Struct_1(vec2<u32>(arg_2.a.x, 96336u), arg_0)), Struct_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, arg_1.a, arg_1.a), vec3<f32>(895f, 1000f, 1529f))))).d.a.x), Struct_1(arg_1.d.a, -36289i), Struct_1(select(~vec2<u32>(4294967295u, 4294967295u), arg_1.d.a, !all(vec2<bool>(false, false))), -2147483647i));
    var_1 = ~vec3<u32>(~_wgslsmith_add_u32(4294967295u, ~var_2.b.x), 27992u, firstTrailingBit(arg_2.a.x));
    let var_3 = Struct_5(!arg_1.b.x, Struct_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1000f, arg_1.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a, -1000f, 853f))))), Struct_4(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(423f * arg_1.a) * -1437f), arg_1.a, _wgslsmith_f_op_f32(sign(arg_1.a)))));
    return func_4(vec3<u32>(arg_1.c, firstLeadingBit(arg_1.c), arg_1.d.a.x), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -257f) - 274f), _wgslsmith_f_op_f32(trunc(520f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(var_3.b.a.xx, vec2<f32>(-168f, arg_1.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1328f, var_3.c.a.x)))))), arg_1.b.xw)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(global0.e.a >> (u_input.a.xy % vec2<u32>(32u)));
    global0 = func_6(-31771i, func_5(func_1(), Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-629f, 173f, -219f))))))), global0.e);
    let var_1 = func_5(Struct_3(vec4<i32>(_wgslsmith_div_i32(abs(-2147483647i), i32(-1i) * -2147483647i), -countOneBits(24979i), _wgslsmith_mod_i32(firstTrailingBit(global0.d.b), global0.e.b), _wgslsmith_div_i32(abs(25241i), global0.a.x & global0.e.b)), var_0, _wgslsmith_clamp_u32(firstLeadingBit(min(u_input.c.x, 136700u)), u_input.a.x, min(var_0.x ^ u_input.c.x, var_0.x)), func_1().d, func_5(func_6(max(-1i, -1i), func_5(Struct_3(vec4<i32>(-37279i, -2147483647i, global0.a.x, global0.d.b), var_0, 0u, global0.e, global0.e), Struct_4(vec3<f32>(-286f, -1000f, -1199f))), global0.d), Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1299f, 2105f)))).d), Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(429f, 1812f, 664f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-403f, 325f, -271f) * vec3<f32>(1000f, 1207f, 465f)))))).b;
    let var_2 = Struct_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -130f)), 1093f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1382f + -806f) - -1050f))));
    global0 = func_1();
    global0 = func_4(abs(vec3<u32>(u_input.a.x, var_0.x, var_0.x << (reverseBits(var_0.x) % 32u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-var_2.a.zy))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(var_2.a.xz)) + _wgslsmith_f_op_vec2_f32(-var_2.a.yx)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(func_5(func_6(1i, func_5(Struct_3(global0.a, vec2<u32>(4294967295u, 1u), 97922u, Struct_1(u_input.a.yx, global0.a.x), Struct_1(var_0, 3031i)), Struct_4(var_2.a)), func_6(51271i, Struct_2(396f, vec4<bool>(var_1.x, false, true, var_1.x), 51986u, Struct_1(var_0, -1i)), Struct_1(global0.e.a, global0.d.b)).d), Struct_4(_wgslsmith_f_op_vec3_f32(var_2.a * var_2.a))).c, 58530u), 689f, -func_5(Struct_3(func_1().a, vec2<u32>(33549u, global0.b.x) ^ vec2<u32>(var_0.x, global0.d.a.x), 4294967295u, Struct_1(vec2<u32>(var_0.x, var_0.x), -6107i), func_1().e), var_2).d.b, var_0.x);
}

