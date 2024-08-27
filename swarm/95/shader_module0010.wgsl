struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3() -> f32 {
    global0 = Struct_2(select(_wgslsmith_clamp_vec4_u32(~global0.a >> (~vec4<u32>(global0.c.b.x, 1u, 5941u, 33804u) % vec4<u32>(32u)), global0.c.b, reverseBits(global0.d.b)), vec4<u32>(~4294967295u, global0.a.x, ~14615u, ~global0.a.x) | (select(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 54287u), vec4<u32>(4294967295u, 15719u, 58832u, global0.a.x), true) >> (select(global0.a, vec4<u32>(1993u, global0.a.x, 32275u, 0u), vec4<bool>(true, false, true, true)) % vec4<u32>(32u))), vec4<bool>(true, true, true, true)), _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -abs(global0.b), abs(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 29548i), vec2<i32>(global0.d.a, 0i)))), Struct_1(-(~_wgslsmith_clamp_i32(-14916i, 0i, -25767i)), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, global0.c.b.x, 4294967295u, global0.c.b.x), global0.d.b), _wgslsmith_div_u32(u_input.b.x, 63767u)), _wgslsmith_clamp_u32(select(1u, u_input.b.x, true), 4294967295u >> (0u % 32u), ~u_input.b.x), ~4294967295u, u_input.b.x), global0.c.c, ~global0.d.d), Struct_1(u_input.c.x, ~vec4<u32>(u_input.b.x, min(4294967295u, 101694u), _wgslsmith_add_u32(global0.c.b.x, 92988u), 1u), 359f, global0.d.d));
    global0 = Struct_2(global0.c.b, global0.c.d, Struct_1(_wgslsmith_sub_i32(~max(1i, u_input.a), -(-37845i << (0u % 32u))), select(vec4<u32>(global0.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(6179u, u_input.b.x, 4294967295u), global0.c.b.zxy), reverseBits(1u), ~23922u), _wgslsmith_div_vec4_u32(global0.c.b, ~vec4<u32>(global0.c.b.x, global0.d.b.x, 107678u, global0.c.b.x)), all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)))), global0.c.c, vec2<i32>(1i, 1i)), global0.d);
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(global0.d.a, _wgslsmith_mult_i32(global0.b.x >> (global0.d.b.x % 32u), -24929i)), -reverseBits(2147483647i) & (-2147483647i >> (u_input.b.x % 32u)), 21179i, -firstLeadingBit(~0i)), vec4<i32>(global0.d.a, _wgslsmith_div_i32(20036i, 9043i), select(reverseBits(global0.c.a), 26930i, all(vec4<bool>(false, false, false, false))) << (abs(u_input.b.x ^ u_input.b.x) % 32u), global0.c.d.x));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(108f, _wgslsmith_f_op_f32(-380f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(1512f))))), (max(0u, global0.d.b.x) <= select(global0.c.b.x, global0.d.b.x, true)) & true))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_2(select(vec4<u32>(u_input.b.x, firstTrailingBit(~global0.d.b.x), 4294967295u, 3952u), ~vec4<u32>(1u, u_input.b.x << (global0.a.x % 32u), global0.a.x, ~u_input.b.x), any(select(select(vec4<bool>(false, arg_0, arg_0, arg_0), vec4<bool>(arg_0, true, false, arg_0), arg_0), vec4<bool>(false, arg_0, arg_0, arg_0), false))), ~vec2<i32>(15647i, abs(global0.d.d.x)), global0.c, Struct_1(-(~1i), ~global0.d.b, 245f, ~vec2<i32>(reverseBits(u_input.a), i32(-1i) * -45951i)));
    var var_1 = Struct_1(global0.d.d.x, (_wgslsmith_mult_vec4_u32(reverseBits(vec4<u32>(u_input.b.x, 1u, u_input.b.x, 9563u)), var_0.a) | vec4<u32>(firstLeadingBit(global0.c.b.x), 17110u, var_0.c.b.x, 1u)) & _wgslsmith_mod_vec4_u32(~reverseBits(vec4<u32>(global0.c.b.x, var_0.a.x, 4294967295u, global0.a.x)), global0.c.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), abs(vec2<i32>(reverseBits(_wgslsmith_mult_i32(-14223i, global0.b.x)), global0.c.d.x)));
    var var_2 = Struct_1(~(-9087i), var_0.d.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - 1057f), var_0.b);
    var_0 = Struct_2(global0.c.b, _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(18434i, -49625i), vec2<i32>(var_2.d.x, global0.d.a))), _wgslsmith_dot_vec4_i32(-vec4<i32>(-16519i, 20877i, -8357i, var_2.a), _wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, 21729i, 29884i, var_2.d.x), u_input.c))), _wgslsmith_mult_vec2_i32(-vec2<i32>(0i, -14320i), vec2<i32>(0i, i32(-1i) * -1i)), ~vec2<i32>(var_0.c.d.x | var_0.b.x, -2147483647i)), Struct_1(var_0.b.x, _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, var_2.b.x, 46282u, 0u)), firstTrailingBit(var_2.b)), ~(~vec4<u32>(31744u, var_0.d.b.x, 1u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.c))), min(vec2<i32>(var_1.a, var_0.b.x), vec2<i32>(var_1.a, var_1.d.x) & vec2<i32>(global0.c.d.x, var_1.d.x))), Struct_1(-48008i, ~var_0.d.b, 482f, -vec2<i32>(-var_1.a, max(var_2.a, -31349i))));
    global0 = Struct_2(var_2.b, abs(vec2<i32>(2147483647i, var_2.d.x)), Struct_1(-18121i, global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-394f + 470f) - _wgslsmith_f_op_f32(535f - var_0.d.c))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(1i, 1i), _wgslsmith_mult_vec2_i32(var_2.d, vec2<i32>(14919i, u_input.c.x)))), Struct_1(_wgslsmith_dot_vec4_i32(-(~u_input.c), ~select(u_input.c, u_input.c, vec4<bool>(arg_0, true, arg_0, arg_0))), ~(vec4<u32>(1u, global0.c.b.x, u_input.b.x, 24840u) << (vec4<u32>(var_1.b.x, 1u, 23618u, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(var_0.d.b, var_0.c.b, var_1.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), abs(vec2<i32>(~1i, 2147483647i))));
    return global0.c;
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(vec3<bool>(true, !(1i <= _wgslsmith_mod_i32(0i, arg_0.a)), true | (false | (u_input.b.x <= global0.c.b.x))), select(vec3<bool>(true, true, true), vec3<bool>(false, all(vec4<bool>(false, false, false, false)), true), true), vec3<bool>(true, true, true));
    let var_1 = Struct_3(Struct_2(countOneBits(~_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c.b.x, u_input.b.x, u_input.b.x, arg_0.b.x), vec4<u32>(global0.c.b.x, u_input.b.x, 0u, 1u), arg_0.b)), reverseBits(vec2<i32>(-41651i, abs(10358i))), Struct_1(func_2(true).d.x, vec4<u32>(~20516u, arg_0.b.x << (arg_0.b.x % 32u), _wgslsmith_clamp_u32(u_input.b.x, arg_0.b.x, u_input.b.x), _wgslsmith_div_u32(4294967295u, global0.a.x)), _wgslsmith_f_op_f32(round(-488f)), _wgslsmith_mod_vec2_i32(-u_input.c.zz, _wgslsmith_div_vec2_i32(vec2<i32>(0i, global0.b.x), vec2<i32>(-12264i, global0.d.a)))), Struct_1(1i, select(~arg_0.b, global0.a, !vec4<bool>(true, true, var_0.x, true)), global0.d.c, global0.c.d)));
    let var_2 = firstLeadingBit(~(~_wgslsmith_mult_vec4_i32(u_input.c, vec4<i32>(var_1.a.c.a, var_1.a.c.d.x, global0.d.d.x, -36200i))));
    let var_3 = u_input.c;
    let var_4 = ~_wgslsmith_dot_vec3_i32(firstLeadingBit(_wgslsmith_clamp_vec3_i32(countOneBits(vec3<i32>(72231i, var_3.x, u_input.c.x)), var_2.zyz, var_3.zxy)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-2147483647i, var_1.a.d.a, u_input.a)), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-4586i, var_1.a.c.d.x, 2147483647i), var_2.yyx), vec3<i32>(-4265i, -25509i, 3875i))));
    return func_2(any(!(!vec3<bool>(true, var_0.x, false))));
}

fn func_1() -> Struct_1 {
    return func_4(func_2(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, false, -global0.c.d.x <= (~_wgslsmith_add_i32(u_input.a, 0i) | _wgslsmith_mult_i32(1i, global0.d.a << (0u % 32u))));
    let var_1 = Struct_2(global0.c.b, ~_wgslsmith_sub_vec2_i32(-global0.c.d, vec2<i32>(-global0.d.d.x, _wgslsmith_sub_i32(global0.b.x, global0.b.x))), func_1(), Struct_1(global0.c.d.x, _wgslsmith_add_vec4_u32(global0.d.b << (~global0.d.b % vec4<u32>(32u)), global0.a), -1000f, vec2<i32>(_wgslsmith_sub_i32(global0.d.d.x >> (92383u % 32u), u_input.a), u_input.c.x)));
    let var_2 = _wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.b.x, firstTrailingBit(var_1.a.x), var_1.a.x) << (u_input.b % vec3<u32>(32u)), ~(~(~firstTrailingBit(vec3<u32>(0u, global0.a.x, 30608u)))));
    global0 = var_1;
    var var_3 = reverseBits(firstTrailingBit(max(_wgslsmith_div_vec3_i32(u_input.c.zzw, ~vec3<i32>(2240i, var_1.d.d.x, -1i)), countOneBits(max(vec3<i32>(u_input.c.x, 0i, -1i), u_input.c.ywx)))));
    var var_4 = -reverseBits(_wgslsmith_add_vec4_i32(u_input.c, select(firstTrailingBit(vec4<i32>(2147483647i, 70704i, 9765i, var_1.b.x)), -u_input.c, !vec4<bool>(var_0.x, var_0.x, true, false))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b | vec3<u32>(0u, 1691u, var_1.c.b.x), global0.c.b.wxz), u_input.b), ~min(firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(21279u, global0.c.b.x, u_input.b.x, var_2), var_1.c.b)), var_2 >> (global0.d.b.x % 32u)), 907f);
}

