struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
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

var<private> global0: array<u32, 29> = array<u32, 29>(57899u, 4294967295u, 1u, 18250u, 0u, 46910u, 29990u, 4294967295u, 0u, 16105u, 1u, 23587u, 16205u, 0u, 1u, 42131u, 0u, 1u, 49035u, 4294967295u, 0u, 5923u, 15152u, 72566u, 23156u, 4294967295u, 18149u, 0u, 31765u);

var<private> global1: vec4<bool>;

var<private> global2: vec2<u32> = vec2<u32>(4219u, 667u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(1i, -12062i), min(_wgslsmith_sub_i32(1i, 3174i), reverseBits(-1i))), ~countOneBits(0i), _wgslsmith_dot_vec3_i32(-countOneBits(vec3<i32>(2147483647i, -2147483647i, 2147483647i)), abs(vec3<i32>(-36161i, 2147483647i, 2882i))), 50447i), Struct_1(4679i), abs(_wgslsmith_div_u32(reverseBits(u_input.c.x), ~global2.x)) ^ reverseBits(firstLeadingBit(global2.x)), Struct_2(-1i, vec3<u32>(_wgslsmith_dot_vec4_u32(u_input.d | vec4<u32>(44677u, 4294967295u, global2.x, u_input.a), u_input.c), global0[_wgslsmith_index_u32(u_input.c.x, 29u)], _wgslsmith_add_u32(global2.x, global2.x) << (_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(57575u, 29u)], global0[_wgslsmith_index_u32(u_input.a, 29u)]) % 32u))), Struct_1(-(i32(-1i) * -11695i)));
    var var_1 = Struct_5(abs(vec3<i32>(-12582i, ~(-30509i), -13197i)), -_wgslsmith_div_i32(-_wgslsmith_mult_i32(24464i, -50567i), firstTrailingBit(-2147483647i)), -1523f, Struct_3(var_0.a, var_0.e, _wgslsmith_clamp_u32(~(u_input.c.x | 1u), (0u ^ var_0.c) >> (global2.x % 32u), var_0.d.b.x), var_0.d, var_0.b));
    var var_2 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.d, u_input.d, vec4<u32>(~0u, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~var_1.d.d.b.x, 1u), 29u)], _wgslsmith_mult_u32(1u, 61481u), 30396u)), u_input.d);
    var_1 = Struct_5(_wgslsmith_clamp_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(var_1.a, var_1.a, ~var_0.a.zzy)), vec3<i32>(-_wgslsmith_sub_i32(var_1.d.e.a, var_1.d.e.a), 1i, -_wgslsmith_mod_i32(var_1.a.x, -1i)), vec3<i32>(~(-81149i), 0i, var_1.d.b.a)), -_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-42059i, var_0.b.a, 0i), var_1.d.a.wxx), _wgslsmith_div_f32(var_1.c, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(var_1.c - var_1.c))), Struct_3(-select(_wgslsmith_mult_vec4_i32(var_0.a, vec4<i32>(var_1.b, -13479i, var_1.a.x, 2147483647i)), vec4<i32>(var_1.a.x, -2147483647i, 1i, var_0.e.a), true), Struct_1(2147483647i), 56997u, Struct_2(var_0.b.a, ~u_input.d.zww), Struct_1(_wgslsmith_sub_i32(firstLeadingBit(2147483647i), 37616i))));
    var_1 = Struct_5(abs(var_0.a.yzy), min(-1i, ~_wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(8770i, var_0.d.a, 2147483647i)) >> (_wgslsmith_mod_u32(global2.x, ~29622u) % 32u)), _wgslsmith_f_op_f32(max(var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c)) * _wgslsmith_div_f32(var_1.c, var_1.c)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + var_1.c), -791f))))), var_1.d);
    return !all(global1.zx);
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: bool) -> u32 {
    var var_0 = !all(select(vec4<bool>(true, true, true, global1.x), select(!vec4<bool>(arg_2, global1.x, true, true), select(vec4<bool>(global1.x, false, false, true), vec4<bool>(global1.x, false, true, false), arg_2), select(false, arg_2, arg_2)), false));
    var var_1 = !select(vec4<bool>(any(select(vec4<bool>(global1.x, global1.x, true, arg_2), vec4<bool>(false, global1.x, arg_2, true), vec4<bool>(global1.x, true, true, false))), global1.x, -6228i != arg_1.a, !global1.x && (arg_2 & true)), select(vec4<bool>(true, u_input.a < 1u, false, func_3()), !select(vec4<bool>(arg_2, global1.x, true, true), vec4<bool>(global1.x, false, arg_2, false), true), !select(vec4<bool>(global1.x, arg_2, global1.x, true), vec4<bool>(false, arg_2, global1.x, arg_2), vec4<bool>(false, true, arg_2, global1.x))), !(global0[_wgslsmith_index_u32(u_input.d.x, 29u)] >= ~23881u));
    var var_2 = ~2147483647i | arg_1.a;
    var var_3 = !(!(!any(var_1.zx)));
    var_1 = !select(vec4<bool>(!all(vec4<bool>(global1.x, true, arg_2, var_1.x)), true, func_3(), all(vec3<bool>(true, false, arg_2))), select(select(select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(true, arg_2, var_1.x, true), vec4<bool>(global1.x, global1.x, false, true)), !vec4<bool>(false, var_1.x, true, global1.x), var_1.x), select(select(vec4<bool>(true, false, true, var_1.x), vec4<bool>(arg_2, var_1.x, global1.x, global1.x), vec4<bool>(false, false, global1.x, global1.x)), vec4<bool>(global1.x, global1.x, true, global1.x), global1.x), !vec4<bool>(global1.x, var_1.x, var_1.x, arg_2)), vec4<bool>(select(true, arg_2, all(var_1.wwz)), !(false | global1.x), false, false));
    return firstTrailingBit(_wgslsmith_dot_vec3_u32(~vec3<u32>(_wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(u_input.a, 29u)]), u_input.a, 42463u), ~(~reverseBits(u_input.c.yxx))));
}

fn func_2(arg_0: f32) -> u32 {
    global2 = countOneBits(u_input.b) & vec2<u32>(func_4(0i, Struct_2(-1i, ~u_input.c.xwx), func_3()), select(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c.x, 31628u), ~u_input.d.wzz), 1u, all(select(global1.yz, global1.xw, vec2<bool>(false, false)))));
    let var_0 = Struct_3(vec4<i32>(_wgslsmith_add_i32(_wgslsmith_clamp_i32(48094i, -1i, -1i), firstTrailingBit(-2147483647i)), _wgslsmith_clamp_i32(-7822i ^ firstTrailingBit(15175i), 20533i, 0i), _wgslsmith_sub_i32(-_wgslsmith_clamp_i32(-2087i, 0i, -2147483647i), _wgslsmith_mult_i32(~1i, 48069i >> (u_input.b.x % 32u))), -2147483647i), Struct_1(-(i32(-1i) * -74620i)), _wgslsmith_dot_vec3_u32(~min(vec3<u32>(global2.x, 50328u, 39263u), u_input.c.wyw), ~vec3<u32>(global0[_wgslsmith_index_u32(64357u, 29u)], u_input.c.x, u_input.c.x) << (u_input.c.zzx % vec3<u32>(32u))) ^ ~abs(global0[_wgslsmith_index_u32(24799u, 29u)]), Struct_2(0i, vec3<u32>(_wgslsmith_add_u32(u_input.d.x, 1u), global2.x << (~77153u % 32u), max(max(global0[_wgslsmith_index_u32(global2.x, 29u)], u_input.a), global0[_wgslsmith_index_u32(countOneBits(global2.x), 29u)]))), Struct_1(max(-1i, -58099i)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1761f), 848f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -623f, !(all(vec2<bool>(global1.x, true)) || true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0)));
    let var_2 = 47458u;
    global2 = _wgslsmith_div_vec2_u32(firstTrailingBit(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.c, var_2), vec2<u32>(0u, var_2), u_input.b)) ^ ~vec2<u32>(firstTrailingBit(54377u), max(var_0.d.b.x, var_0.d.b.x)), vec2<u32>(64503u, _wgslsmith_add_u32(global2.x, _wgslsmith_mod_u32(var_2 >> (var_0.c % 32u), var_0.d.b.x))));
    return ~(~1u) & countOneBits(firstTrailingBit(0u));
}

fn func_5(arg_0: vec2<bool>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = u_input.b;
    var var_1 = ~u_input.c.zyx;
    var var_2 = Struct_3(abs(vec4<i32>(1i, _wgslsmith_mod_i32(firstLeadingBit(-49161i), -46559i), -firstTrailingBit(-2147483647i), min(countOneBits(38181i), ~(-33533i)))), Struct_1(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-72953i, 2147483647i, 34176i) << (vec3<u32>(var_0.x, var_0.x, global2.x) % vec3<u32>(32u)), -vec3<i32>(9173i, 27941i, -42402i)))), abs(0u), Struct_2(_wgslsmith_sub_i32(-18976i, -2888i), vec3<u32>(0u << (abs(var_0.x) % 32u), 0u, ~(~4294967295u))), Struct_1(abs(firstTrailingBit(0i))));
    global2 = vec2<u32>(~4294967295u, _wgslsmith_sub_u32(arg_1.x, ~global0[_wgslsmith_index_u32(max(abs(25914u), var_2.d.b.x & 13934u), 29u)]));
    let var_3 = vec3<f32>(886f, -1772f, 1222f);
    return var_2.d;
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    global1 = !vec4<bool>(!all(select(vec3<bool>(global1.x, true, false), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, true, false))), true, any(!(!global1.yw)), !any(global1.zy));
    let var_0 = func_5(!global1.yy, min(reverseBits(vec3<u32>(24509u, 1u, global2.x) & u_input.c.yzw) | ~vec3<u32>(40444u, 4294967295u, 1u), vec3<u32>(~4294967295u, _wgslsmith_sub_u32(func_2(792f), u_input.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 4294967295u), _wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(global0[_wgslsmith_index_u32(u_input.c.x, 29u)], 28564u))))));
    let var_1 = Struct_1(abs(var_0.a));
    global1 = vec4<bool>(all(!(!vec4<bool>(global1.x, false, global1.x, false))), select(global1.x, !(!(!global1.x)), select(all(!vec3<bool>(true, global1.x, true)), -var_1.a >= var_1.a, all(global1.wx))), global1.x, true);
    let var_2 = Struct_1(_wgslsmith_mult_i32(2147483647i, arg_0.x));
    return Struct_4(Struct_3(select(_wgslsmith_mod_vec4_i32(vec4<i32>(17052i, var_0.a, 0i, var_1.a), vec4<i32>(var_0.a, 51936i, 1i, -37355i)), firstLeadingBit(vec4<i32>(arg_0.x, -32673i, var_2.a, -34245i)), true), Struct_1(var_0.a), global2.x, Struct_2(34091i, var_0.b), var_1), Struct_2(_wgslsmith_div_i32(abs(-var_2.a), var_1.a), ~countOneBits(abs(vec3<u32>(var_0.b.x, u_input.d.x, 86437u)))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4, arg_3: bool) -> Struct_5 {
    let var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 144f));
    var var_1 = Struct_5(vec3<i32>(-min(~(-55050i), arg_2.b.a & 16214i), arg_2.b.a, -40587i), arg_1.a, _wgslsmith_f_op_f32(f32(-1f) * -771f), arg_2.a);
    let var_2 = Struct_1(arg_2.b.a);
    global2 = vec2<u32>(min(1u, 26989u), 57471u);
    let var_3 = func_1((abs(~vec3<i32>(var_2.a, var_2.a, -2147483647i)) >> (var_1.d.d.b % vec3<u32>(32u))) ^ vec3<i32>(_wgslsmith_add_i32(-11274i, firstLeadingBit(-2332i)), func_1(~arg_2.a.a.yyz).b.a, var_2.a));
    return Struct_5(_wgslsmith_sub_vec3_i32(vec3<i32>(-4494i << (var_3.b.b.x % 32u), 0i, firstTrailingBit(-9855i)), -var_3.a.a.zwz) | -var_1.d.a.yzy, 19i, _wgslsmith_f_op_f32(528f * -240f), func_1(vec3<i32>(firstTrailingBit(arg_2.a.d.a), -19367i, var_3.b.a)).a);
}

fn func_7(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: f32, arg_3: u32) -> Struct_3 {
    global1 = !(!vec4<bool>(true, false, !global1.x, false == global1.x));
    let var_0 = vec2<i32>(-6465i, -2147483647i);
    global2 = func_5(global1.xy, _wgslsmith_mod_vec3_u32(~(~vec3<u32>(44230u, 67827u, global2.x)) ^ arg_1.xxx, arg_1.xww)).b.xz;
    global2 = arg_1.xy;
    let var_1 = arg_0;
    return Struct_3(vec4<i32>(-(30022i >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u)), arg_0.b, ~max(~(-2453i), -6527i), -1i), func_6(firstTrailingBit(abs(func_6(var_1.a.x, Struct_1(var_1.d.a.x), Struct_4(var_1.d, var_1.d.d), true).a.x)), Struct_1(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-12776i, 2147483647i, 1i, -1251i), var_1.d.a), var_1.d.a)), func_1(var_1.d.a.wwz), global1.x || true).d.b, firstTrailingBit(arg_3), Struct_2(abs(_wgslsmith_mult_i32(-1665i, -12657i)) ^ _wgslsmith_mod_i32(firstLeadingBit(1i), var_0.x ^ var_0.x), func_6(~(~var_1.d.b.a), func_6(16367i, Struct_1(var_1.d.d.a), func_1(vec3<i32>(2147483647i, var_0.x, 0i)), all(vec3<bool>(global1.x, global1.x, global1.x))).d.b, func_1(_wgslsmith_add_vec3_i32(vec3<i32>(1i, var_0.x, var_1.b), arg_0.d.a.yyx)), true).d.d.b), Struct_1(~var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(func_6(_wgslsmith_mod_i32(-_wgslsmith_div_i32(-21127i, 8746i), -29974i), Struct_1(-(~2747i)), func_1(-abs(vec3<i32>(-21922i, -10581i, 23301i))), true), ~select(select(vec4<u32>(global2.x, 26868u, global2.x, 4294967295u), u_input.d, select(vec4<bool>(global1.x, global1.x, true, false), vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(global1.x, false, global1.x, global1.x))), ~(vec4<u32>(1u, u_input.d.x, 52318u, 4294967295u) >> (vec4<u32>(0u, 1u, u_input.b.x, global0[_wgslsmith_index_u32(0u, 29u)]) % vec4<u32>(32u))), vec4<bool>(true, global1.x, global1.x, !global1.x)), 329f, firstTrailingBit(~0u));
    var var_1 = true;
    var var_2 = vec4<bool>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(507f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-293f, -634f) * _wgslsmith_f_op_f32(round(1111f))), _wgslsmith_mod_u32(4294967295u, 31103u) > func_5(global1.xx, vec3<u32>(u_input.d.x, 102960u, 133405u)).b.x)) > 1870f, global1.x, _wgslsmith_dot_vec4_u32(~max(u_input.d, u_input.d), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 58790u, 14577u, 16428u), vec4<u32>(global2.x, 0u, 13118u, 0u)) & _wgslsmith_div_vec4_u32(u_input.c, u_input.c)) >= ~_wgslsmith_add_u32(firstTrailingBit(1u), abs(global0[_wgslsmith_index_u32(4294967295u, 29u)])), true);
    var var_3 = func_5(select(vec2<bool>(select(true, false, global1.x) | true, _wgslsmith_sub_u32(var_0.d.b.x, var_0.c) < (var_0.d.b.x ^ global0[_wgslsmith_index_u32(50232u, 29u)])), !vec2<bool>(global1.x || var_2.x, all(vec3<bool>(false, true, true))), global1.wz), select((var_0.d.b | vec3<u32>(global2.x, u_input.d.x, global2.x)) & vec3<u32>(global0[_wgslsmith_index_u32(1u, 29u)], ~57793u, _wgslsmith_div_u32(global2.x, var_0.c)), ~(~u_input.c.xyx), global1.x));
    let var_4 = abs(~global2.x);
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-3001f * -533f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(621f - 1777f) - _wgslsmith_f_op_f32(f32(-1f) * -753f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-129f))))), 1323f, -856f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-390f))));
    var_3 = Struct_2(var_0.e.a, _wgslsmith_clamp_vec3_u32(vec3<u32>(53817u, 1u, _wgslsmith_sub_u32(func_2(var_5.x), min(46461u, 90331u))), vec3<u32>(1u, 1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(global2.x, 0u), u_input.a)), vec3<u32>(var_0.d.b.x, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.x, 0u) << (var_3.b % vec3<u32>(32u)), vec3<u32>(var_0.d.b.x, var_0.d.b.x, 50345u)))));
    let var_6 = ~var_3.a >> (func_1(func_1(~abs(vec3<i32>(var_0.a.x, var_3.a, var_0.d.a))).a.a.xwz).b.b.x % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 4294967295u, ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 8033u, 65888u, u_input.d.x), vec4<u32>(18298u, var_3.b.x, 36908u, u_input.a)), 74277u, ~_wgslsmith_div_u32(var_3.b.x, var_4)), global0[_wgslsmith_index_u32(u_input.b.x, 29u)]);
}

