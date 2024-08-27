struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<bool>(true, true, false, false), vec3<i32>(0i, 20396i, 28922i), 0i, 22802u);

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec3<bool>(true, true, true), 23164u, vec4<u32>(4294967295u, 0u, 4294967295u, 45796u)), Struct_2(vec3<bool>(true, true, true), 1u, vec4<u32>(4294967295u, 0u, 0u, 54478u)), Struct_2(vec3<bool>(true, true, true), 41835u, vec4<u32>(48951u, 37580u, 1u, 0u)), Struct_2(vec3<bool>(false, false, true), 31778u, vec4<u32>(16152u, 0u, 1u, 4294967295u)), Struct_2(vec3<bool>(true, false, false), 0u, vec4<u32>(0u, 26805u, 1u, 0u)), Struct_2(vec3<bool>(true, true, true), 56964u, vec4<u32>(29802u, 0u, 2111u, 1u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> f32 {
    global0 = arg_0;
    let var_0 = countOneBits(~(~(-_wgslsmith_sub_vec3_i32(arg_0.b, global0.b))));
    var var_1 = var_0.x;
    let var_2 = abs(abs(firstLeadingBit(abs(~u_input.b.zy))));
    var var_3 = Struct_2(vec3<bool>(28713i < global0.b.x, any(vec2<bool>(false, global0.a.x)), (~1u >= global0.d) && !any(global0.a)), arg_0.d, vec4<u32>(var_2.x ^ arg_0.d, max(~(~var_2.x), 29271u), firstLeadingBit(_wgslsmith_sub_u32(~26475u, ~30195u)), ~(~(~4294967295u))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(817f)), -1076f))) + _wgslsmith_f_op_f32(1162f + _wgslsmith_f_op_f32(ceil(-1443f)))) * _wgslsmith_div_f32(-946f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1130f, -1124f))));
}

fn func_2() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(585f, 1022f, -872f)), vec3<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<bool>(true, false, true, true), global0.b, global0.b.x, u_input.b.x))), -403f, _wgslsmith_f_op_f32(f32(-1f) * -878f)))))));
    let var_1 = global0.a.x;
    global0 = Struct_1(select(select(select(select(global0.a, global0.a, false), !global0.a, select(vec4<bool>(global0.a.x, false, true, global0.a.x), vec4<bool>(false, false, global0.a.x, true), vec4<bool>(global0.a.x, true, false, global0.a.x))), vec4<bool>(global0.d != 0u, u_input.a != -48923i, true, any(vec4<bool>(true, global0.a.x, global0.a.x, global0.a.x))), any(!vec2<bool>(global0.a.x, global0.a.x))), select(global0.a, vec4<bool>(global0.a.x, true, true, global0.a.x && global0.a.x), global0.a.x), select(vec4<bool>(global0.a.x, global0.a.x, global0.a.x, true), select(vec4<bool>(false, true, global0.a.x, global0.a.x), !vec4<bool>(false, false, false, global0.a.x), global0.a.x), global0.a.x)), global0.b, u_input.a, ~(~1u));
    let var_2 = Struct_1(vec4<bool>(any(global0.a), true, _wgslsmith_sub_u32(1u, 7350u << (global0.d % 32u)) < (u_input.b.x << (_wgslsmith_mult_u32(u_input.b.x, u_input.b.x) % 32u)), true), vec3<i32>(global0.b.x, u_input.a, -(~(-u_input.a))), abs(-select(_wgslsmith_dot_vec2_i32(vec2<i32>(29006i, 1i), vec2<i32>(-2147483647i, -15011i)), u_input.a, u_input.a > global0.b.x)), 11942u);
    var var_3 = _wgslsmith_clamp_u32(~76365u, 1u ^ ~(u_input.b.x << (~25626u % 32u)), u_input.b.x);
    return vec4<i32>(firstTrailingBit(abs(~32228i)), -max(max(global0.c, -2147483647i), global0.b.x & var_2.b.x), var_2.b.x, firstLeadingBit(u_input.a)) ^ _wgslsmith_mult_vec4_i32(~(~_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, -1i, 23415i, global0.b.x), vec4<i32>(0i, 8858i, var_2.c, -105706i))), ~max(min(vec4<i32>(20840i, -25512i, -23465i, 0i), vec4<i32>(-2147483647i, u_input.a, -52018i, var_2.b.x)), min(vec4<i32>(2147483647i, 2147483647i, var_2.c, u_input.a), vec4<i32>(global0.c, -22893i, -1i, u_input.a))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: u32) -> Struct_1 {
    global0 = Struct_1(vec4<bool>(global0.a.x, any(arg_2.a.xz), global0.a.x, global0.a.x), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.b, global0.b, vec3<i32>(96569i, -2197i, _wgslsmith_dot_vec2_i32(vec2<i32>(-60222i, 1i), vec2<i32>(u_input.a, -17121i)))), firstLeadingBit(_wgslsmith_clamp_vec3_i32(arg_0.xxy, arg_0.www & vec3<i32>(-42318i, -20113i, -2147483647i), ~vec3<i32>(1i, -1i, arg_0.x)))), 2147483647i, abs(_wgslsmith_mult_u32(global0.d, arg_1.x)));
    let var_0 = Struct_1(select(vec4<bool>(true & global0.a.x, !(global0.a.x | arg_2.a.x), all(select(arg_2.a, arg_2.a, false)), global0.a.x), vec4<bool>(arg_2.a.x, false, false, !any(vec4<bool>(false, false, arg_2.a.x, true))), 0u > u_input.b.x), max(global0.b, arg_0.zxw), -reverseBits(u_input.a), arg_1.x);
    let var_1 = u_input.b.yz << ((min(~_wgslsmith_clamp_vec2_u32(u_input.b.yx, u_input.b.zy, arg_1), ~u_input.b.xx) | countOneBits(select(firstTrailingBit(arg_1), vec2<u32>(arg_1.x, 2157u) | arg_2.c.xx, true))) % vec2<u32>(32u));
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    return Struct_1(!var_0.a, _wgslsmith_add_vec3_i32(var_0.b, _wgslsmith_mult_vec3_i32(~(~vec3<i32>(arg_0.x, 61749i, u_input.a)), ~firstTrailingBit(vec3<i32>(arg_0.x, global0.b.x, 6669i)))), arg_0.x, firstLeadingBit(_wgslsmith_clamp_u32(var_1.x, 4294967295u, countOneBits(_wgslsmith_mod_u32(u_input.b.x, var_0.d)))));
}

fn func_1(arg_0: bool, arg_1: vec4<u32>, arg_2: vec4<u32>) -> Struct_1 {
    let var_0 = func_4(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(select(vec4<i32>(u_input.a, global0.c, 1i, 1i), vec4<i32>(-2147483647i, 5716i, 0i, u_input.a), vec4<bool>(arg_0, false, global0.a.x, global0.a.x)), func_2()), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global0.c, u_input.a, 49858i), vec4<i32>(u_input.a, -22974i, global0.c, -42001i)), vec4<i32>(-1i, -2147483647i, -3160i, -2147483647i))), abs(vec2<u32>(countOneBits(5077u) ^ _wgslsmith_mod_u32(global0.d, 1u), ~global0.d)), global1[_wgslsmith_index_u32(arg_1.x, 6u)], min(arg_1.x, ~4294967295u));
    var var_1 = ~var_0.d;
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    let var_2 = vec2<u32>(_wgslsmith_add_u32(firstLeadingBit(var_0.d), abs(firstTrailingBit(121478u))), 4294967295u);
    return Struct_1(select(var_0.a, !var_0.a, true), vec3<i32>(-u_input.a, 1i, 24930i ^ u_input.a), 1i, ~(22585u << (~min(3903u, var_0.d) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-2146f)) - _wgslsmith_f_op_f32(-491f - _wgslsmith_f_op_f32(min(506f, 1699f)))), 1541f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-547f, -926f, global0.a.x)))), -1569f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1313f, _wgslsmith_f_op_f32(sign(154f)), -496f, _wgslsmith_f_op_f32(155f - -1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1635f, -923f, 624f))))), vec4<bool>(false, true, false, func_1(true, vec4<u32>(u_input.b.x, global0.d & 53074u, 1u, u_input.b.x), _wgslsmith_mod_vec4_u32(vec4<u32>(14129u, 4294967295u, global0.d, u_input.b.x), arg_1)).a.x)));
    let var_1 = _wgslsmith_div_vec4_u32(~vec4<u32>(0u, arg_0.d, 56377u, global0.d), countOneBits(vec4<u32>(arg_0.d ^ 0u, arg_0.d, abs(118273u), ~2186u))) & vec4<u32>(~1u, 72278u, _wgslsmith_div_u32(39521u, ~arg_1.x | 64878u), ~6457u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1460f * 1735f) * _wgslsmith_f_op_f32(sign(-611f)))), _wgslsmith_f_op_f32(f32(-1f) * -116f)));
    global0 = func_1(-209f > _wgslsmith_f_op_f32(step(var_0.x, -238f)), countOneBits(firstLeadingBit(vec4<u32>(u_input.b.x, 43090u, ~arg_1.x, var_1.x))), ~(abs(vec4<u32>(var_1.x, arg_1.x, 79168u, 1u)) << (vec4<u32>(~92u, ~4294967295u, firstTrailingBit(var_1.x), 1u) % vec4<u32>(32u))));
    let var_3 = vec3<u32>(arg_1.x, 13696u, arg_0.d) >> (~arg_1.yxz % vec3<u32>(32u));
    return func_4(~(~countOneBits(vec4<i32>(arg_0.c, global0.c, global0.c, u_input.a))) ^ (abs(vec4<i32>(u_input.a, global0.b.x, 1i, global0.c)) >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 39651u), vec4<u32>(var_3.x, arg_1.x, u_input.b.x, var_3.x)) % vec4<u32>(32u))), u_input.b.yy, Struct_2(global0.a.wzy, var_1.x & abs(~arg_0.d), _wgslsmith_mod_vec4_u32(arg_1, ~(var_1 & vec4<u32>(4294967295u, var_3.x, global0.d, u_input.b.x)))), _wgslsmith_add_u32(19571u, var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    let var_0 = firstTrailingBit(~vec4<u32>(36065u, global0.d, ~102107u, _wgslsmith_dot_vec2_u32(u_input.b.zx, vec2<u32>(u_input.b.x, global0.d))) | (vec4<u32>(global0.d >> (u_input.b.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(46681u, 1u, global0.d), vec3<u32>(global0.d, 0u, 403u)), _wgslsmith_clamp_u32(30424u, 26652u, u_input.b.x), u_input.b.x) ^ select(~vec4<u32>(37638u, u_input.b.x, 28183u, u_input.b.x), vec4<u32>(39163u, 0u, 30886u, u_input.b.x), global0.a)));
    global0 = func_5(func_1(((var_0.x ^ var_0.x) != (global0.d >> (1u % 32u))) || global0.a.x, _wgslsmith_sub_vec4_u32(var_0, ~_wgslsmith_mult_vec4_u32(var_0, vec4<u32>(42087u, global0.d, 32330u, var_0.x))), var_0), vec4<u32>(0u, global0.d, ~u_input.b.x, 44832u << (~4294967295u % 32u)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(~u_input.b.x, u_input.b.x << (1u % 32u), _wgslsmith_clamp_u32(global0.d, u_input.b.x, var_0.x), _wgslsmith_clamp_u32(4706u, var_0.x, var_0.x)), vec4<u32>(u_input.b.x, var_0.x, var_0.x, var_0.x) & _wgslsmith_add_vec4_u32(var_0, var_0)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(abs(u_input.b.x) << (var_0.x % 32u), ~4294967295u, abs(1u)), ~(vec3<u32>(15438u, 63300u, 15006u) | vec3<u32>(global0.d, u_input.b.x, 1u)) << (_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.b, u_input.b), vec3<u32>(global0.d, 4294967295u, 7683u) | vec3<u32>(77175u, u_input.b.x, 17926u)) % vec3<u32>(32u))), max(var_0.zwy, abs(~abs(u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(176f, -967f, -1627f, 367f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, -792f, -1022f, 817f))))));
}

