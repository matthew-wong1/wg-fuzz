struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec3<i32>,
    d: vec2<u32>,
    e: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec3<u32>,
    c: Struct_3,
    d: vec2<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -995f));
    let var_1 = -countOneBits(45999i);
    let var_2 = Struct_5(true, ~vec3<u32>(53260u, 1u, _wgslsmith_sub_u32(~0u, 4294967295u)), Struct_3(-min(abs(vec3<i32>(u_input.a.x, var_1, var_1)), abs(vec3<i32>(0i, u_input.a.x, -2147483647i))), Struct_2(27737u, Struct_1(var_0)), vec3<i32>(1i, 1i, 1i), ~reverseBits(vec2<u32>(54769u, 0u)), 1u), countOneBits(abs(vec2<u32>(39237u, 34092u))), Struct_1(_wgslsmith_f_op_f32(round(var_0))));
    var var_3 = all(select(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(var_2.a, true)), select(!select(vec2<bool>(var_2.a, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(all(vec4<bool>(var_2.a, var_2.a, true, var_2.a)), var_2.a), vec2<bool>(true, var_2.a)), false));
    let var_4 = Struct_3(_wgslsmith_sub_vec3_i32(firstLeadingBit(vec3<i32>(-1i) * -var_2.c.c), _wgslsmith_div_vec3_i32(-(~var_2.c.a), vec3<i32>(var_1, 0i, u_input.a.x))), var_2.c.b, ~(-var_2.c.a), vec2<u32>(4294967295u, var_2.b.x), reverseBits(var_2.d.x));
    return ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.d.x, var_4.b.a, 5420u, var_4.e), vec4<u32>(0u, var_2.b.x, 1u, var_4.d.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_2.d.x, var_4.d.x, var_2.c.e, var_2.c.b.a), vec4<u32>(47575u, var_2.c.b.a, var_4.d.x, var_2.c.e)))) >> (reverseBits(select(~vec4<u32>(var_4.b.a, var_4.d.x, 1u, 1u), vec4<u32>(var_4.d.x, countOneBits(21112u), 0u, ~var_2.b.x), !(!vec4<bool>(var_2.a, false, true, true)))) % vec4<u32>(32u));
}

fn func_2() -> bool {
    let var_0 = !(!vec4<bool>(true, _wgslsmith_sub_i32(-1i, u_input.a.x) == -25204i, !any(vec4<bool>(false, true, false, false)), true));
    let var_1 = ~func_3();
    var var_2 = var_1.x;
    let var_3 = Struct_3(_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(-1i, u_input.a.x, u_input.a.x), ~vec3<i32>(1i, -1i, 1i) >> (~var_1.zwy % vec3<u32>(32u)), max(min(vec3<i32>(-42490i, u_input.a.x, 13455i), vec3<i32>(47037i, 1i, 0i)), vec3<i32>(u_input.a.x, -6922i, u_input.a.x))), _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a.x, u_input.a.x), vec3<i32>(-1i, u_input.a.x, 2147483647i)) >> ((var_1.zyx & vec3<u32>(var_1.x, var_1.x, var_1.x)) % vec3<u32>(32u)), vec3<i32>(firstTrailingBit(2147483647i), -2147483647i, _wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), ~firstLeadingBit(vec3<i32>(u_input.a.x, 1i, u_input.a.x))), vec3<i32>(u_input.a.x, 1i, u_input.a.x >> (var_1.x % 32u)) & _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, 0i, -26389i)), _wgslsmith_sub_vec3_i32(vec3<i32>(41273i, 5773i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, 35613i)))), Struct_2(_wgslsmith_mult_u32(_wgslsmith_div_u32(var_1.x, var_1.x) ^ 4294967295u, var_1.x), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(340f))))), select(reverseBits(vec3<i32>(u_input.a.x, -38596i, -13634i)), _wgslsmith_mod_vec3_i32(countOneBits(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))), ~select(vec3<i32>(u_input.a.x, -59698i, u_input.a.x), vec3<i32>(u_input.a.x, -23956i, -2147483647i), true)), all(select(vec2<bool>(true, true), vec2<bool>(false, var_0.x), any(var_0.yyy)))), var_1.xw >> (var_1.wy % vec2<u32>(32u)), func_3().x);
    let var_4 = Struct_5(true, max(reverseBits(var_1.zyy), ~(firstTrailingBit(var_1.xyw) ^ (vec3<u32>(18455u, var_1.x, 27193u) | var_1.ywx))), var_3, ~var_1.zw, var_3.b.b);
    return all(!select(vec4<bool>(var_3.b.b.a <= -3247f, !var_4.a, var_4.a, true), vec4<bool>(any(var_0.zyz), true, var_4.a, true), vec4<bool>(var_4.d.x > 13481u, false, true, true)));
}

fn func_1(arg_0: f32) -> vec4<f32> {
    let var_0 = !vec2<bool>(true, func_2());
    var var_1 = Struct_1(arg_0);
    var_1 = Struct_1(var_1.a);
    var_1 = Struct_1(-530f);
    let var_2 = select(vec4<bool>(all(vec4<bool>(any(vec3<bool>(true, var_0.x, var_0.x)), !var_0.x, false, !var_0.x)), any(!(!vec3<bool>(var_0.x, false, var_0.x))), func_2(), !any(select(var_0, var_0, var_0.x))), select(select(select(!vec4<bool>(var_0.x, false, true, var_0.x), vec4<bool>(var_0.x, true, var_0.x, false), true), !vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, u_input.a.x <= -14574i, any(vec4<bool>(var_0.x, var_0.x, var_0.x, false)), all(vec4<bool>(var_0.x, true, true, false)))), vec4<bool>(!(var_1.a == var_1.a), any(!vec3<bool>(var_0.x, var_0.x, true)), arg_0 == _wgslsmith_f_op_f32(-var_1.a), !var_0.x), select(select(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x)), select(vec4<bool>(true, true, var_0.x, var_0.x), !vec4<bool>(var_0.x, true, true, false), any(var_0)), (-410f > var_1.a) == select(var_0.x, var_0.x, var_0.x))), select(!(!(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x))), !vec4<bool>(var_0.x, select(false, true, var_0.x), var_1.a != arg_0, true), vec4<bool>(var_0.x, false, !any(vec2<bool>(var_0.x, var_0.x)), false)));
    return vec4<f32>(_wgslsmith_f_op_f32(-var_1.a), var_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -605f))) + arg_0), arg_0);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_5, arg_2: u32, arg_3: vec4<f32>) -> Struct_3 {
    let var_0 = !select(vec2<bool>(arg_1.a, true & !arg_1.a), !select(vec2<bool>(arg_1.a, arg_1.a), select(vec2<bool>(arg_1.a, true), vec2<bool>(false, true), vec2<bool>(false, false)), !vec2<bool>(arg_1.a, arg_1.a)), vec2<bool>(all(vec2<bool>(false, true)) != true, !arg_1.a));
    var var_1 = firstTrailingBit(~abs(vec4<i32>(u_input.a.x, u_input.a.x, 1i, 36567i) & min(vec4<i32>(arg_1.c.c.x, 2147483647i, -30717i, u_input.a.x), vec4<i32>(arg_1.c.a.x, -1i, -2147483647i, -1i))));
    let var_2 = -17639i;
    let var_3 = arg_1.e;
    var var_4 = !(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_div_f32(1531f, 1000f))).x)).x == _wgslsmith_f_op_f32(-arg_0.x));
    return Struct_3(_wgslsmith_sub_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_2, -16638i, 30882i), vec3<i32>(-14616i, u_input.a.x, -49597i))), arg_1.c.a), Struct_2(abs(arg_1.c.e), Struct_1(var_3.a)), abs(vec3<i32>(max(4276i, _wgslsmith_mult_i32(arg_1.c.a.x, u_input.a.x)), -abs(0i), 1i)), vec2<u32>(arg_1.d.x, ~(~(~3287u))), 1u);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_5 {
    var var_0 = arg_0.d;
    let var_1 = Struct_3(arg_0.a, Struct_2(arg_0.d.x >> (4294967295u % 32u), Struct_1(_wgslsmith_f_op_f32(abs(func_4(vec4<f32>(-282f, arg_1.x, -408f, 192f), Struct_5(true, vec3<u32>(1u, 53117u, var_0.x), arg_0, vec2<u32>(var_0.x, var_0.x), arg_0.b.b), 40324u, vec4<f32>(arg_2.x, arg_0.b.b.a, -579f, 1000f)).b.b.a)))), ~select(~arg_0.c, _wgslsmith_clamp_vec3_i32(-arg_0.a, firstTrailingBit(vec3<i32>(-7257i, u_input.a.x, arg_0.c.x)), -vec3<i32>(2147483647i, arg_0.c.x, u_input.a.x)), vec3<bool>(true, true, true)), vec2<u32>(~abs(~arg_0.e), _wgslsmith_add_u32(75855u, var_0.x)), 1u);
    let var_2 = arg_0.b.b;
    var_0 = ~firstLeadingBit(vec2<u32>(107569u, ~(var_0.x & 1u)));
    var var_3 = func_4(vec4<f32>(_wgslsmith_div_f32(-1164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(910f)))), _wgslsmith_f_op_f32(f32(-1f) * -502f), _wgslsmith_f_op_f32(arg_0.b.b.a - _wgslsmith_f_op_f32(f32(-1f) * -2717f)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -316f))).x)), Struct_5(!any(vec4<bool>(true, true, true, true)), countOneBits(select(vec3<u32>(var_0.x, var_1.b.a, 1u), vec3<u32>(var_1.e, var_1.b.a, 0u), true) & min(vec3<u32>(var_1.e, var_0.x, 44106u), vec3<u32>(var_1.e, 4599u, var_0.x))), var_1, vec2<u32>(56985u, 1u), arg_0.b.b), ~_wgslsmith_dot_vec2_u32(vec2<u32>(67738u, var_1.e) ^ _wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.d.x, 41436u), vec2<u32>(82186u, var_0.x)), _wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 4294967295u) | vec2<u32>(arg_0.b.a, var_1.b.a), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, arg_0.d.x), var_1.d))), vec4<f32>(arg_1.x, _wgslsmith_f_op_f32(arg_1.x - -160f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1594f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-1747f)), _wgslsmith_f_op_f32(293f + var_1.b.b.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2.a), 1238f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.b.b.a), _wgslsmith_f_op_f32(ceil(-959f)), all(vec3<bool>(true, false, false))))))).a.x;
    return Struct_5(false, ~(~(~vec3<u32>(0u, arg_0.e, arg_0.b.a)) << (select(func_3().yww, ~vec3<u32>(var_1.b.a, 19896u, arg_0.e), true) % vec3<u32>(32u))), Struct_3(~(-vec3<i32>(var_1.c.x, 1i, 0i)) | select(arg_0.c, vec3<i32>(arg_0.c.x, 1i, 21558i), vec3<bool>(true, true, true)), func_4(vec4<f32>(var_1.b.b.a, var_1.b.b.a, -310f, var_1.b.b.a), Struct_5(true, ~vec3<u32>(1u, arg_0.b.a, 4294967295u), arg_0, ~var_1.d, arg_0.b.b), var_1.d.x | ~var_0.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(var_2.a, -1000f, var_1.b.b.a, arg_2.x), vec4<f32>(arg_1.x, 1370f, arg_1.x, -2065f))))).b, arg_0.c, vec2<u32>(select(0u, firstLeadingBit(var_1.d.x), select(true, true, true)), countOneBits(func_3().x)), func_4(vec4<f32>(_wgslsmith_f_op_vec4_f32(func_1(var_1.b.b.a)).x, arg_2.x, -855f, -421f), Struct_5(var_2.a == -1000f, vec3<u32>(var_1.e, var_1.e, var_1.b.a), arg_0, select(arg_0.d, arg_0.d, vec2<bool>(true, false)), func_4(vec4<f32>(-560f, arg_1.x, -202f, var_2.a), Struct_5(true, vec3<u32>(0u, var_1.b.a, 819u), Struct_3(vec3<i32>(2754i, arg_0.c.x, 31952i), Struct_2(4294967295u, arg_0.b.b), arg_0.c, vec2<u32>(0u, var_1.b.a), 19904u), vec2<u32>(var_0.x, 1u), Struct_1(var_2.a)), arg_0.b.a, vec4<f32>(arg_2.x, 1859f, -149f, -658f)).b.b), 4294967295u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-479f, arg_0.b.b.a, 391f, -1801f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.b.a, 833f, var_1.b.b.a, arg_2.x) * vec4<f32>(1454f, -1092f, -102f, 279f)), true))).d.x), vec2<u32>(arg_0.b.a, 1581u), arg_0.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(_wgslsmith_f_op_vec4_f32(func_1(-327f)), Struct_5(false, ~countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)), Struct_3(vec3<i32>(48155i, u_input.a.x, u_input.a.x), Struct_2(56147u, Struct_1(407f)), vec3<i32>(-26515i, -2147483647i, u_input.a.x), _wgslsmith_mod_vec2_u32(vec2<u32>(45988u, 1u), vec2<u32>(8035u, 54655u)), select(29473u, 0u, false)), reverseBits(~vec2<u32>(1u, 48146u)), Struct_1(-646f)), 1u, _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_f32(f32(-1f) * -613f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(func_4(vec4<f32>(1101f, 617f, 380f, -469f), Struct_5(false, vec3<u32>(0u, 6400u, 1u), Struct_3(vec3<i32>(1i, u_input.a.x, u_input.a.x), Struct_2(14538u, Struct_1(964f)), vec3<i32>(u_input.a.x, u_input.a.x, 46962i), vec2<u32>(16710u, 30795u), 4294967295u), vec2<u32>(19197u, 152u), Struct_1(1416f)), 53756u, _wgslsmith_f_op_vec4_f32(vec4<f32>(-382f, -1359f, 346f, 1761f) + vec4<f32>(1449f, 1000f, -1173f, 394f))).b.b.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(837f, -498f))), -1544f), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1657f, 1000f, -752f), vec3<f32>(-163f, -382f, -1000f))))), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(280f, -856f, 300f), vec3<f32>(-666f, 1292f, 940f), vec3<bool>(false, true, false))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, 186f, -851f), vec3<f32>(285f, 854f, -1821f), false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, 1978f, -1216f))))))));
    var var_1 = Struct_5(var_0.a, func_5(var_0.c, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-108f, var_0.e.a, 1636f) * vec3<f32>(1404f, var_0.e.a, 2329f)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.c.b.b.a, -1196f, -1979f), vec3<f32>(586f, -1760f, var_0.c.b.b.a)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.c.b.b.a, 146f, var_0.e.a), vec3<f32>(var_0.c.b.b.a, var_0.e.a, var_0.e.a), true)) * vec3<f32>(var_0.c.b.b.a, 1483f, var_0.e.a)))).b, Struct_3(~abs(~vec3<i32>(u_input.a.x, u_input.a.x, var_0.c.a.x)), var_0.c.b, vec3<i32>(i32(-1i) * -u_input.a.x, -34067i, -2147483647i), vec2<u32>(~1u, var_0.c.e), _wgslsmith_div_u32(_wgslsmith_add_u32(24590u, 62428u) >> (var_0.b.x % 32u), ~var_0.d.x)), var_0.d, var_0.c.b.b);
    var_1 = func_5(func_5(Struct_3(_wgslsmith_clamp_vec3_i32(abs(vec3<i32>(0i, u_input.a.x, u_input.a.x)), vec3<i32>(1i, var_0.c.a.x, u_input.a.x), max(var_1.c.a, vec3<i32>(0i, var_1.c.c.x, u_input.a.x))), Struct_2(_wgslsmith_dot_vec3_u32(var_0.b, var_0.b), var_1.c.b.b), ~(~vec3<i32>(-5926i, u_input.a.x, var_1.c.c.x)), vec2<u32>(var_1.d.x, ~var_1.b.x), select(var_0.d.x, var_1.b.x, !var_1.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(948f, var_0.c.b.b.a, 875f)) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1650f, -147f, 844f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(600f, -1187f, -207f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-885f, var_1.c.b.b.a, 1873f) * vec3<f32>(var_1.e.a, var_1.e.a, var_0.c.b.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(193f, var_0.e.a, 1755f))))).c, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.e.a, _wgslsmith_f_op_f32(-886f * 3032f), 2096f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(469f, 482f, var_0.e.a))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(417f, var_1.e.a, var_1.e.a)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(417f)), _wgslsmith_f_op_f32(-955f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e.a + var_0.c.b.b.a) + 241f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)))));
    var var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.c.b.b.a * func_5(func_4(vec4<f32>(var_0.e.a, -1273f, var_0.c.b.b.a, var_1.c.b.b.a), Struct_5(var_0.a, var_1.b, Struct_3(var_0.c.a, var_1.c.b, vec3<i32>(u_input.a.x, var_0.c.a.x, var_0.c.c.x), var_1.b.zx, 1u), vec2<u32>(0u, 96038u), Struct_1(var_0.e.a)), ~var_0.d.x, vec4<f32>(var_0.c.b.b.a, -875f, var_1.c.b.b.a, var_1.c.b.b.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.e.a, 1000f, var_0.c.b.b.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.b.a, var_1.e.a, 267f) + vec3<f32>(var_1.c.b.b.a, 1401f, -135f))), vec3<f32>(-1277f, -1178f, _wgslsmith_f_op_f32(-var_1.e.a))).e.a)));
    var var_3 = vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(var_0.c.e), 1u, abs(5822u), 0u), vec4<u32>(24065u, var_1.b.x, 21294u, 4294967295u) << (_wgslsmith_add_vec4_u32(vec4<u32>(var_1.b.x, 0u, var_1.c.d.x, var_1.c.e), vec4<u32>(var_1.d.x, 6833u, var_0.b.x, var_0.c.d.x)) % vec4<u32>(32u)))) << (var_1.b.zz % vec2<u32>(32u));
    var var_4 = Struct_4(func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(round(var_1.e.a)), _wgslsmith_f_op_f32(-var_0.e.a), -1000f, -523f), var_0, var_0.c.e, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -553f, -1200f, -804f), vec4<f32>(var_0.c.b.b.a, -1000f, -395f, -132f), vec4<bool>(var_0.a, false, false, false)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.c.b.b.a, -139f, var_1.e.a) - vec3<f32>(-2261f, var_0.e.a, var_0.e.a)), vec3<f32>(var_0.e.a, var_0.e.a, var_0.c.b.b.a))), vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1(1651f)).x, _wgslsmith_div_f32(-417f, var_0.e.a), _wgslsmith_f_op_f32(var_0.e.a * -1869f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.e.a, 697f, -401f))))))).c, vec2<bool>(_wgslsmith_add_i32(select(-2147483647i, u_input.a.x, false), -17746i) == u_input.a.x, abs(26395u) != _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 3827u, var_1.d.x, 6514u), func_3())), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(1f, var_1.e.a)), 243f, _wgslsmith_f_op_f32(var_0.c.b.b.a + _wgslsmith_f_op_f32(-119f - -735f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.b.b.a, 1000f, 323f) * vec3<f32>(973f, var_1.e.a, var_0.e.a)) * vec3<f32>(var_0.e.a, 1940f, var_0.c.b.b.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1.e.a + var_1.e.a), _wgslsmith_f_op_f32(956f - 1070f), var_0.c.b.b.a, -119f))), vec3<bool>(true, true, true));
    var var_5 = vec2<bool>(var_4.a.b.a >= 30290u, true);
    var_1 = Struct_5(false, var_1.b, Struct_3(reverseBits(var_1.c.a), var_0.c.b, _wgslsmith_add_vec3_i32(vec3<i32>(0i, 18034i, var_0.c.c.x) << (var_0.b % vec3<u32>(32u)), var_4.a.c), ~(~firstLeadingBit(vec2<u32>(var_0.b.x, var_1.d.x))), var_0.d.x), var_1.b.yy, Struct_1(2112f));
    let var_6 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.c.b.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(792f, _wgslsmith_f_op_f32(-var_0.c.b.b.a), _wgslsmith_f_op_f32(floor(var_6.b.b.a))) * _wgslsmith_f_op_vec3_f32(select(var_4.c, vec3<f32>(-233f, var_6.b.b.a, _wgslsmith_f_op_f32(1342f - -633f)), !(!var_0.a)))), var_4.c.xz, _wgslsmith_dot_vec2_u32(~(~var_0.c.d), vec2<u32>(var_6.d.x >> (0u % 32u), _wgslsmith_div_u32(70259u, var_1.c.e))) << ((~(var_1.c.e & 32001u) & _wgslsmith_mod_u32(firstLeadingBit(var_4.a.d.x), var_0.c.b.a)) % 32u), var_0.c.a.x);
}

