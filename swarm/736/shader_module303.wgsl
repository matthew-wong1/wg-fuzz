struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<Struct_1, 24>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    return ~(~u_input.a);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec2<i32>) -> bool {
    let var_0 = _wgslsmith_mult_vec3_i32(vec3<i32>(-16068i, _wgslsmith_add_i32((i32(-1i) * -39693i) | -arg_1.e.x, 2147483647i), _wgslsmith_clamp_i32(abs(-5069i) >> (~4294967295u % 32u), ~arg_2.x, _wgslsmith_div_i32(-2147483647i, arg_3.x))), vec3<i32>(firstTrailingBit(-arg_3.x << (min(arg_1.a.x, arg_0) % 32u)), -2147483647i, ~(~arg_2.x)));
    let var_1 = _wgslsmith_dot_vec4_i32(arg_2, arg_2);
    var var_2 = Struct_1(reverseBits(_wgslsmith_add_vec2_u32(~vec2<u32>(4294967295u, 0u), countOneBits(vec2<u32>(79955u, arg_1.a.x))) << (_wgslsmith_mod_vec2_u32(firstTrailingBit(arg_1.a), ~vec2<u32>(1u, arg_1.a.x)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1324f))))), var_0.x, arg_1.d, _wgslsmith_div_vec3_i32(var_0, firstLeadingBit(min(var_0, ~arg_2.yzw))));
    var_2 = arg_1;
    let var_3 = ~var_1;
    return !arg_1.d.x;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = reverseBits(~(-arg_0.c)) >> (31480u % 32u);
    var var_1 = _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, abs(~(~13485u)), ~4294967295u, _wgslsmith_mod_u32(arg_2.a.x, countOneBits(1u))), vec4<u32>(_wgslsmith_clamp_u32(910u | arg_0.a.x, 31403u, arg_2.a.x), u_input.a, ~86082u, u_input.a));
    var var_2 = vec4<i32>(-countOneBits(-_wgslsmith_add_i32(arg_0.e.x, arg_0.e.x)), arg_0.c, arg_0.e.x, arg_0.c);
    return Struct_1(_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, arg_2.a.x), max(vec2<u32>(0u, 4294967295u), vec2<u32>(21679u, 1u)), ~(var_1.wy << (arg_2.a % vec2<u32>(32u)))), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(var_1.zzz, vec3<u32>(1u, u_input.a, u_input.a))), _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~var_1.yz, vec2<u32>(36380u, 1u)), vec2<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 35649u, 32922u, arg_2.a.x), vec4<u32>(arg_2.a.x, 5495u, arg_2.a.x, 18677u))))), _wgslsmith_f_op_f32(f32(-1f) * -791f), countOneBits(arg_2.c), select(arg_1.yxz, select(select(vec3<bool>(arg_0.d.x, arg_0.d.x, arg_1.x), vec3<bool>(true, arg_2.d.x, false), func_3(39378u, Struct_1(vec2<u32>(u_input.a, var_1.x), arg_2.b, -9914i, arg_0.d, vec3<i32>(-14974i, -2147483647i, -28859i)), vec4<i32>(1i, arg_0.c, 14802i, arg_0.e.x), arg_0.e.yz)), arg_1.xzz, arg_1.x || any(arg_0.d.yz)), (_wgslsmith_dot_vec3_u32(var_1.wzy, var_1.www) << (min(0u, 4294967295u) % 32u)) < reverseBits(arg_0.a.x)), _wgslsmith_sub_vec3_i32(arg_2.e, abs(max(vec3<i32>(1i, arg_2.c, var_2.x), vec3<i32>(arg_0.e.x, -9438i, -26192i)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -191f)));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1088f, -1251f, var_0) - vec3<f32>(243f, var_0, var_0)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, var_0, var_0) * vec3<f32>(1000f, 423f, var_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -219f, var_0) * vec3<f32>(290f, 574f, var_0)))) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-831f, _wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(-var_0))))));
    var var_2 = vec3<f32>(var_1.x, 565f, 578f);
    let var_3 = ~(~max(u_input.a, ~(~u_input.a)));
    global0 = array<Struct_1, 24>();
    return func_4(Struct_1(select(vec2<u32>(~1u, func_2(Struct_1(vec2<u32>(1222u, 0u), var_2.x, -2147483647i, vec3<bool>(false, true, true), arg_1), var_0)), vec2<u32>(var_3, var_3) << ((vec2<u32>(75481u, 15915u) >> (vec2<u32>(0u, 0u) % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<bool>(true, func_3(22432u, Struct_1(vec2<u32>(4294967295u, var_3), 257f, -55059i, vec3<bool>(false, false, false), vec3<i32>(arg_0.x, 13565i, arg_0.x)), vec4<i32>(2147483647i, arg_0.x, arg_0.x, 1i), vec2<i32>(arg_0.x, arg_0.x)))), 516f, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(49867i, arg_1.x) & vec2<i32>(2147483647i, arg_1.x), vec2<i32>(2147483647i, 3590i)), -(~arg_0.x)), select(vec3<bool>(any(vec4<bool>(true, false, false, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false)), _wgslsmith_f_op_f32(-var_0) == -1037f), _wgslsmith_add_vec3_i32(arg_1, ~vec3<i32>(arg_0.x, arg_1.x, -4201i))), vec4<bool>(!(!any(vec3<bool>(true, false, false))), true, true, all(vec3<bool>(true, true, true))), global0[_wgslsmith_index_u32(countOneBits(select(_wgslsmith_mod_u32(firstTrailingBit(0u), var_3 | var_3), _wgslsmith_mod_u32(u_input.a, ~1u), true)), 24u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(659f, var_1.x)), 1000f, 529f, _wgslsmith_f_op_f32(ceil(-1630f)))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, (~(-696i) << (_wgslsmith_mult_u32(arg_0.a.x, arg_3.a.x) % 32u)) ^ -(arg_0.e.x ^ arg_2)), -(-(arg_1 | vec2<i32>(arg_0.c, -28306i)) >> (vec2<u32>(countOneBits(27948u), arg_0.a.x) % vec2<u32>(32u))));
    return func_4(arg_3, select(select(!vec4<bool>(arg_0.d.x, true, true, arg_3.d.x), !(!vec4<bool>(arg_0.d.x, arg_3.d.x, arg_0.d.x, arg_0.d.x)), vec4<bool>(false, arg_3.d.x, arg_0.b == 260f, !arg_0.d.x)), vec4<bool>(arg_0.d.x, arg_0.d.x, func_3(~27785u, func_1(vec2<i32>(15702i, -1i), arg_0.e), _wgslsmith_sub_vec4_i32(vec4<i32>(arg_3.e.x, arg_2, -1i, 1180i), vec4<i32>(32004i, arg_2, 17700i, arg_3.e.x)), _wgslsmith_clamp_vec2_i32(arg_3.e.xx, arg_0.e.xz, arg_0.e.zx)), arg_3.d.x), select(!(!vec4<bool>(true, true, false, arg_3.d.x)), select(select(vec4<bool>(true, arg_0.d.x, arg_3.d.x, arg_3.d.x), vec4<bool>(arg_0.d.x, false, arg_0.d.x, arg_0.d.x), arg_3.d.x), vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, arg_0.d.x), vec4<bool>(true, true, false, arg_3.d.x), vec4<bool>(arg_3.d.x, arg_0.d.x, true, arg_3.d.x))), true)), Struct_1(arg_0.a, arg_0.b, -arg_0.e.x, vec3<bool>(func_4(arg_3, vec4<bool>(arg_3.d.x, false, false, true), Struct_1(arg_3.a, 510f, 62368i, arg_0.d, vec3<i32>(2147483647i, -20333i, arg_3.c)), vec4<f32>(arg_3.b, -214f, 1230f, 257f)).d.x | (arg_3.b > 2109f), !func_1(arg_0.e.zz, arg_0.e).d.x, func_1(arg_3.e.yy >> (arg_3.a % vec2<u32>(32u)), arg_3.e).d.x), arg_0.e), vec4<f32>(-450f, func_4(func_4(global0[_wgslsmith_index_u32(~arg_0.a.x, 24u)], vec4<bool>(false, arg_0.d.x, arg_3.d.x, true), Struct_1(vec2<u32>(u_input.a, 12548u), arg_0.b, 0i, vec3<bool>(false, false, true), arg_3.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, arg_0.b, 113f, arg_3.b) - vec4<f32>(272f, -1084f, arg_3.b, 249f))), vec4<bool>(true, all(arg_3.d.zx), true, arg_0.d.x | true), arg_3, vec4<f32>(_wgslsmith_f_op_f32(2095f * -572f), arg_3.b, _wgslsmith_f_op_f32(-arg_0.b), -1000f)).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_3.b, 489f))) - 984f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.b))), 1106f))));
}

fn func_6(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> Struct_1 {
    global0 = array<Struct_1, 24>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.b)))));
    global0 = array<Struct_1, 24>();
    var var_1 = global0[_wgslsmith_index_u32(0u, 24u)];
    let var_2 = global0[_wgslsmith_index_u32(func_2(func_1(vec2<i32>(abs(-26722i), 2147483647i) << (func_5(Struct_1(vec2<u32>(40118u, 4294967295u), arg_2.b, arg_0.e.x, var_1.d, var_1.e), abs(arg_0.e.xx), 5841i, arg_2).a % vec2<u32>(32u)), func_4(func_1(~arg_1, vec3<i32>(var_1.e.x, 1i, arg_1.x)), select(select(vec4<bool>(arg_0.d.x, false, arg_2.d.x, false), vec4<bool>(arg_2.d.x, arg_2.d.x, false, var_1.d.x), vec4<bool>(arg_2.d.x, false, false, true)), !vec4<bool>(arg_0.d.x, false, true, arg_0.d.x), select(vec4<bool>(false, false, arg_0.d.x, arg_2.d.x), vec4<bool>(var_1.d.x, var_1.d.x, arg_0.d.x, true), vec4<bool>(false, arg_0.d.x, false, arg_2.d.x))), Struct_1(func_5(Struct_1(arg_2.a, arg_0.b, arg_2.e.x, vec3<bool>(false, arg_2.d.x, arg_0.d.x), vec3<i32>(arg_0.c, arg_2.e.x, var_1.c)), var_1.e.yz, -2147483647i, Struct_1(var_1.a, arg_2.b, arg_1.x, arg_0.d, vec3<i32>(var_1.c, -46895i, 2147483647i))).a, var_1.b, 2147483647i, var_1.d, min(arg_2.e, vec3<i32>(arg_0.c, arg_1.x, arg_2.c))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b, arg_2.b, 296f, 251f))))).e), _wgslsmith_f_op_f32(arg_0.b * _wgslsmith_div_f32(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b))))), 24u)];
    return func_5(func_5(arg_0, -vec2<i32>(func_1(vec2<i32>(1i, arg_1.x), var_2.e).c, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.e.x, -10554i, 13425i), vec4<i32>(var_2.c, 2147483647i, arg_2.c, var_1.c))), firstLeadingBit(firstTrailingBit(arg_2.e.x)) | 20465i, Struct_1(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(239f * arg_0.b) - 1000f), arg_2.c, arg_0.d, _wgslsmith_add_vec3_i32(-vec3<i32>(arg_2.c, -68984i, -2147483647i), var_2.e | vec3<i32>(-1i, 0i, -1i)))), min(vec2<i32>(max(var_2.e.x, _wgslsmith_mod_i32(-8189i, 2147483647i)), 9118i), vec2<i32>(-1i) * -vec2<i32>(-2147483647i, var_2.c)), 0i >> ((max(0u, _wgslsmith_add_u32(4294967295u, var_1.a.x)) & ~0u) % 32u), func_1(vec2<i32>(-13376i, abs(_wgslsmith_div_i32(-43455i, arg_2.c))), ~max(var_2.e ^ var_1.e, arg_0.e)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, ~38884u), 24u)];
    var var_1 = func_6(func_5(func_1(_wgslsmith_div_vec2_i32(-vec2<i32>(var_0.c, 1i), var_0.e.xy), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(16042i, var_0.c, var_0.c), vec3<i32>(18442i, var_0.c, var_0.e.x)), var_0.e)), abs(select(var_0.e.zx, vec2<i32>(var_0.e.x, var_0.e.x), true)), firstTrailingBit(-58448i), global0[_wgslsmith_index_u32(u_input.a, 24u)]), -_wgslsmith_mult_vec2_i32(-(~var_0.e.yy), var_0.e.xz), Struct_1(~(~select(var_0.a, vec2<u32>(var_0.a.x, 0u), false)), var_0.b, ~var_0.c, !vec3<bool>(var_0.d.x | var_0.d.x, true, all(var_0.d)), var_0.e));
    let var_2 = -67671i;
    var_1 = Struct_1(vec2<u32>(u_input.a, var_0.a.x ^ abs(45487u)), 177f, -28320i, func_4(global0[_wgslsmith_index_u32(~1u, 24u)], select(vec4<bool>(all(var_1.d.xy), !var_1.d.x, true == var_1.d.x, true), select(select(vec4<bool>(var_1.d.x, var_1.d.x, false, false), vec4<bool>(var_1.d.x, var_0.d.x, true, var_0.d.x), vec4<bool>(var_0.d.x, true, false, true)), select(vec4<bool>(var_0.d.x, var_1.d.x, var_0.d.x, var_1.d.x), vec4<bool>(false, var_1.d.x, true, var_1.d.x), vec4<bool>(var_1.d.x, false, var_0.d.x, false)), !vec4<bool>(var_1.d.x, false, var_1.d.x, var_0.d.x)), vec4<bool>(any(vec3<bool>(true, false, var_1.d.x)), var_0.d.x, func_6(global0[_wgslsmith_index_u32(var_0.a.x, 24u)], var_1.e.xy, Struct_1(vec2<u32>(72893u, u_input.a), -365f, var_2, vec3<bool>(var_1.d.x, var_0.d.x, false), var_0.e)).d.x, true)), Struct_1(vec2<u32>(u_input.a, ~4294967295u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b)) - _wgslsmith_f_op_f32(abs(-321f))), 1i, var_1.d, var_0.e), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-527f, 1514f, var_0.b, var_1.b))))))).d, vec3<i32>(var_0.c, 0i, _wgslsmith_mult_i32(~37269i, firstTrailingBit(_wgslsmith_clamp_i32(var_0.e.x, var_1.c, 11832i)))));
    var var_3 = reverseBits(var_1.a);
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2638f)) - _wgslsmith_f_op_f32(f32(-1f) * -1427f));
    let x = u_input.a;
    s_output = StorageBuffer(13551u);
}

