struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<bool> = vec3<bool>(true, true, true);

var<private> global2: array<vec4<i32>, 26>;

var<private> global3: array<vec3<bool>, 16> = array<vec3<bool>, 16>(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_i32(max(abs(-25961i >> (_wgslsmith_mult_u32(arg_0.x, 4294967295u) % 32u)), ~1i), _wgslsmith_mod_i32(-(~(-27074i)) ^ _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(0i, 1i)), reverseBits(87532i), -2147483647i), 1i));
    let var_1 = vec2<u32>(~(~u_input.a), _wgslsmith_sub_u32(29907u, 2595u));
    var var_2 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -385f) * _wgslsmith_f_op_f32(round(301f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2018f))), _wgslsmith_f_op_f32(f32(-1f) * -899f)))), -700f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(-1099f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1031f, _wgslsmith_f_op_f32(max(-394f, _wgslsmith_f_op_f32(select(332f, -1006f, global1.x))))))));
    global3 = array<vec3<bool>, 16>();
    let var_3 = false;
    return select(vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(4061u, var_1.x, 0u), vec3<u32>(arg_0.x, u_input.a, 1u)), 1u, ~0u), _wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.x, u_input.a, u_input.a), vec3<u32>(arg_0.x, 1u, 0u)), vec3<u32>(u_input.a, arg_0.x, arg_0.x), all(vec3<bool>(global1.x, false, global1.x))), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, arg_0.x, var_1.x), vec3<u32>(4294967295u, 95243u, 72202u)) << (vec3<u32>(arg_0.x, 4294967295u, arg_0.x) % vec3<u32>(32u))), ~(~firstLeadingBit(vec3<u32>(var_1.x, 1u, arg_0.x))), vec3<u32>(u_input.b, ~1u, 28356u)), select(_wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(1u, var_1.x)) >= var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f) + 191f) < _wgslsmith_f_op_f32(var_2.x * -1884f), all(global1.yz)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: f32) -> vec3<f32> {
    var var_0 = Struct_2(arg_1, arg_1, Struct_1(vec4<i32>(-1i, -5342i, -53121i, 1i), abs(vec2<i32>(_wgslsmith_div_i32(39101i, 23846i), arg_1.d.x | arg_1.a.x)), arg_1.c, _wgslsmith_mod_vec3_i32(-vec3<i32>(-15019i, arg_1.d.x, arg_1.d.x) ^ countOneBits(vec3<i32>(arg_1.d.x, -2147483647i, arg_1.a.x)), ~vec3<i32>(1i, 36927i, arg_1.a.x) | vec3<i32>(-43656i, arg_1.a.x, arg_1.d.x)), !global3[_wgslsmith_index_u32(4294967295u, 16u)]), Struct_1(firstTrailingBit(arg_1.a), min(arg_1.d.zy, max(vec2<i32>(0i, 2147483647i), select(arg_1.a.yx, vec2<i32>(1i, arg_1.a.x), true))), abs(vec4<u32>(arg_2, _wgslsmith_add_u32(arg_1.c.x, 1u), ~u_input.a, _wgslsmith_sub_u32(4294967295u, arg_0.x))), -arg_1.d, !select(!arg_1.e, select(vec3<bool>(global1.x, arg_1.e.x, false), arg_1.e, global3[_wgslsmith_index_u32(arg_2, 16u)]), select(vec3<bool>(arg_1.e.x, false, true), arg_1.e, vec3<bool>(arg_1.e.x, global1.x, false)))), func_3(arg_0.zz).zy << ((arg_1.c.yw >> (firstTrailingBit(_wgslsmith_clamp_vec2_u32(arg_1.c.zz, arg_0.zx, vec2<u32>(4597u, 0u))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_1 = select(var_0.a.e, vec3<bool>(true, true, select(~arg_0.x != u_input.b, var_0.a.e.x, false)), !global1.x && true);
    let var_2 = Struct_2(var_0.c, arg_1, Struct_1(global2[_wgslsmith_index_u32(1u, 26u)], vec2<i32>(-var_0.c.b.x, ~(-14926i) >> ((0u | var_0.b.c.x) % 32u)), _wgslsmith_mod_vec4_u32(abs(abs(var_0.a.c)), arg_1.c), -vec3<i32>(var_0.c.a.x, 0i << (u_input.a % 32u), -46090i), !global3[_wgslsmith_index_u32(arg_2 | arg_2, 16u)]), var_0.a, ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, ~arg_0.x), _wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(arg_0.zz, arg_0.xx), vec2<u32>(var_0.d.c.x, 4294967295u)), arg_1.c.zx));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(arg_3, 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3 * arg_3) - _wgslsmith_f_op_f32(-arg_3))), arg_3) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3, -616f, arg_3))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_3, arg_3, arg_3) * vec3<f32>(arg_3, arg_3, arg_3)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(307f, arg_3, 1000f), vec3<f32>(arg_3, -124f, -189f))), vec3<f32>(-678f, arg_3, arg_3))))));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_4(~(func_3(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 4294967295u))) >> (reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(59196u, 4294967295u, u_input.b), vec3<u32>(u_input.b, 1u, 4294967295u))) % vec3<u32>(32u))), Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0, 0i, arg_0, arg_0), global2[_wgslsmith_index_u32(0u, 26u)]), countOneBits(global2[_wgslsmith_index_u32(u_input.b, 26u)]), vec4<i32>(arg_0, arg_0, arg_0, arg_0)) >> (vec4<u32>(_wgslsmith_mod_u32(121571u, u_input.a), ~20318u, ~66568u, abs(u_input.b)) % vec4<u32>(32u)), -vec2<i32>(~(-42143i), select(-1i, -1i, global1.x)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(80918u, 38396u, u_input.b, 5654u), _wgslsmith_sub_vec4_u32(vec4<u32>(30319u, 1u, u_input.a, 25380u), vec4<u32>(4294967295u, u_input.b, 1u, u_input.a))), countOneBits(vec3<i32>(-2036i, arg_0, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_0, arg_0), vec3<i32>(arg_0, -7814i, arg_0)))), vec3<bool>(all(global1.xy), any(select(vec4<bool>(false, global1.x, true, global1.x), vec4<bool>(global1.x, false, false, true), vec4<bool>(false, arg_1.x, true, true))), _wgslsmith_f_op_f32(abs(765f)) <= _wgslsmith_f_op_f32(trunc(1000f)))), 4294967295u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(402f)) * -1163f)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-289f, -611f)))))));
    let var_1 = vec4<u32>(_wgslsmith_sub_u32(~(~abs(88877u)), min(~u_input.b, ~40991u)), 4294967295u, max(26815u, _wgslsmith_add_u32(u_input.b, ~(~4294967295u))), _wgslsmith_div_u32(22258u, ~(~53531u)));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(select(3030f, var_0.x, global1.x))), _wgslsmith_f_op_f32(-1640f - _wgslsmith_f_op_f32(trunc(263f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_0.x)))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1029f - var_0.x))) + var_0.x))));
    global2 = array<vec4<i32>, 26>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -398f) * var_0.x));
    return !select(!vec3<bool>(arg_1.x, any(vec4<bool>(global1.x, false, true, global1.x)), false), !vec3<bool>(98359u < var_1.x, false, true | global1.x), select(!vec3<bool>(arg_1.x, false, false), vec3<bool>(true, var_1.x > u_input.b, false), true));
}

fn func_5(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: vec4<i32>) -> Struct_3 {
    var var_0 = Struct_2(Struct_1(-select(arg_1, min(global2[_wgslsmith_index_u32(arg_0, 26u)], arg_1), !vec4<bool>(global1.x, arg_2.x, true, false)), firstLeadingBit(arg_3.wy), vec4<u32>(arg_0, abs(_wgslsmith_mod_u32(arg_0, u_input.b)), u_input.b, ~0u), arg_3.wzx, select(vec3<bool>(false, arg_2.x, !arg_2.x), vec3<bool>(!global1.x, func_2(arg_3.x, global3[_wgslsmith_index_u32(arg_0, 16u)]).x, global1.x), !vec3<bool>(false, arg_2.x, false))), Struct_1(_wgslsmith_mod_vec4_i32((vec4<i32>(arg_1.x, 1i, -1i, arg_1.x) & vec4<i32>(arg_3.x, arg_1.x, 1i, 1i)) << (vec4<u32>(84842u, 54458u, 0u, 1u) % vec4<u32>(32u)), arg_1), ~vec2<i32>(max(-8981i, 2147483647i), _wgslsmith_clamp_i32(20105i, 1i, -2147483647i)), ~(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.b, arg_0, arg_0), vec4<u32>(arg_0, 14386u, arg_0, u_input.b))), -arg_3.zzy, !(!vec3<bool>(global1.x, false, true))), Struct_1(-vec4<i32>(_wgslsmith_mult_i32(arg_3.x, arg_3.x), arg_1.x << (49350u % 32u), _wgslsmith_sub_i32(1i, arg_3.x), _wgslsmith_mult_i32(arg_1.x, arg_3.x)), _wgslsmith_mod_vec2_i32(~vec2<i32>(2147483647i, -21254i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, arg_1.x), arg_3.yw)) & -max(arg_1.zy, vec2<i32>(arg_3.x, arg_1.x)), select(vec4<u32>(4294967295u, _wgslsmith_sub_u32(arg_0, 122018u), u_input.b, _wgslsmith_mult_u32(u_input.b, 30267u)), ~vec4<u32>(1u, u_input.b, u_input.a, 70730u), true), select(~_wgslsmith_sub_vec3_i32(arg_1.zzx, arg_1.xyx), _wgslsmith_mult_vec3_i32(-vec3<i32>(35606i, -8815i, 1i), countOneBits(arg_3.wyy)), arg_2), arg_2), Struct_1(global2[_wgslsmith_index_u32(arg_0 << (min(0u, arg_0) % 32u), 26u)], vec2<i32>(arg_1.x, arg_3.x), ~(firstLeadingBit(vec4<u32>(18843u, 4294967295u, 0u, u_input.b)) ^ vec4<u32>(33922u, 29752u, arg_0, u_input.b)), -vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_sub_i32(0i, 34533i), arg_1.x ^ 1i), select(func_2(1i, global3[_wgslsmith_index_u32(~arg_0, 16u)]), !select(vec3<bool>(false, global1.x, true), vec3<bool>(arg_2.x, arg_2.x, true), vec3<bool>(global1.x, global1.x, global1.x)), select(vec3<bool>(false, false, global1.x), vec3<bool>(true, false, false), false))), ~max(~_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, 0u), vec2<u32>(23282u, arg_0)), ~vec2<u32>(21618u, 0u)));
    var var_1 = global1.x;
    global1 = vec3<bool>(true, true, false);
    global1 = vec3<bool>(any(arg_2), var_0.d.e.x, true);
    var var_2 = Struct_2(Struct_1(~vec4<i32>(arg_3.x, _wgslsmith_mod_i32(arg_1.x, -1i), -42134i, arg_1.x), _wgslsmith_add_vec2_i32(arg_3.zw, countOneBits(_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, -1i), arg_3.xw, var_0.d.b))), ~_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0.d.c.x, u_input.a, 52561u), ~var_0.c.c), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(min(vec3<i32>(var_0.c.d.x, arg_3.x, var_0.a.b.x), vec3<i32>(arg_3.x, arg_3.x, 26562i)), -var_0.d.a.yyx), ~vec3<i32>(-37445i, -2147483647i, 2147483647i) & reverseBits(arg_3.wyw)), vec3<bool>(var_0.d.e.x, true, true)), Struct_1(vec4<i32>(var_0.b.d.x, _wgslsmith_add_i32(abs(1i), ~41936i), _wgslsmith_mod_i32(~0i, max(1i, arg_1.x)), -4759i), -_wgslsmith_clamp_vec2_i32(~vec2<i32>(-2147483647i, var_0.c.d.x), arg_3.xw, _wgslsmith_mult_vec2_i32(arg_1.zz, var_0.b.b)), vec4<u32>(0u, _wgslsmith_mod_u32(~36668u, 4294967295u), u_input.a, u_input.b), vec3<i32>(arg_3.x, arg_1.x, firstLeadingBit(reverseBits(arg_1.x))), !vec3<bool>(arg_2.x, func_2(arg_1.x, global3[_wgslsmith_index_u32(41521u, 16u)]).x, func_2(-2147483647i, vec3<bool>(false, false, false)).x)), var_0.b, var_0.d, ~var_0.c.c.zz ^ vec2<u32>(4294967295u, u_input.b));
    return Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1208f)))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -771f))), 721f), var_0.a, select(_wgslsmith_dot_vec2_i32(vec2<i32>(6228i, arg_1.x) >> (var_2.c.c.zx % vec2<u32>(32u)), -arg_3.wx), reverseBits(_wgslsmith_mod_i32(var_0.c.a.x, 1i)), var_2.d.e.x) ^ -_wgslsmith_clamp_i32(var_0.a.b.x, abs(var_0.a.a.x), ~13199i), var_0.b);
}

fn func_1() -> Struct_3 {
    return func_5(u_input.a, _wgslsmith_mod_vec4_i32(-(~vec4<i32>(36989i, -1i, 2147483647i, 22531i)), _wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(u_input.a, 26u)], global2[_wgslsmith_index_u32(u_input.a, 26u)])), func_2(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, -49i, 0i), select(vec3<i32>(2147483647i, -9784i, 39914i), vec3<i32>(29367i, 2147483647i, 2147483647i), vec3<bool>(true, global1.x, global1.x))), -_wgslsmith_mult_vec3_i32(vec3<i32>(-17675i, 1i, 0i), vec3<i32>(18227i, -1i, -244i))), vec3<bool>(-235f > _wgslsmith_f_op_f32(trunc(1288f)), true, !global1.x || true)), ~(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(31628u, 4294967295u), 26u)] | (vec4<i32>(1i, 0i, 6535i, -1i) | -global2[_wgslsmith_index_u32(u_input.a, 26u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1870f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(901f - -683f) - _wgslsmith_f_op_f32(1286f + -1242f)) - -1530f), true)));
    let var_1 = func_1();
    var var_2 = func_1();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(247f))) + _wgslsmith_f_op_vec3_f32(func_4(vec3<u32>(_wgslsmith_mod_u32(func_3(var_2.d.c.zw).x, 63569u), ~_wgslsmith_sub_u32(70130u, 0u), reverseBits(~var_2.b.c.x)), var_2.b, ~(~firstLeadingBit(64542u)), -488f)).x);
    let var_3 = var_1.a.yyy;
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_vec3_f32(func_4(var_2.b.c.wzy, var_1.b, max(6175u, ~_wgslsmith_dot_vec3_u32(var_2.d.c.xww, var_2.d.c.yxw)), _wgslsmith_f_op_f32(floor(var_3.x)))).x));
    let x = u_input.a;
    s_output = StorageBuffer(8168i);
}

