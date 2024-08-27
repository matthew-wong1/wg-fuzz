struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: vec4<i32>,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
    e: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-5955i, 4829i, -1i, 2147483647i);

var<private> global1: u32;

var<private> global2: vec4<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_mult_i32(-global0.x, global0.x);
    var var_1 = u_input.a;
    global2 = select(vec4<bool>(all(global2.wz), all(!select(vec2<bool>(false, global2.x), vec2<bool>(true, false), vec2<bool>(global2.x, false))), any(vec3<bool>(false, global2.x, global2.x)), _wgslsmith_mod_i32(_wgslsmith_div_i32(global0.x, -1i), -13493i & global0.x) != _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1843i, -1i, 1i, -28242i), vec4<i32>(global0.x, 56185i, global0.x, global0.x)), global0.x | global0.x)), !vec4<bool>(true, _wgslsmith_f_op_f32(sign(1616f)) <= -340f, global2.x == !global2.x, all(!vec4<bool>(false, global2.x, global2.x, true))), !select(select(select(vec4<bool>(false, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, false, global2.x)), select(vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(true, false, global2.x, true), vec4<bool>(false, false, global2.x, global2.x)), global2.x), !select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, true)), false));
    var var_2 = false;
    var var_3 = ~(~reverseBits(~41348u));
    return -1000f;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-325f - 1268f), 633f), vec2<f32>(-1000f, _wgslsmith_f_op_f32(func_3()))));
    global0 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-2147483647i), 9398i, _wgslsmith_clamp_i32(~arg_1, min(-1i, global0.x), _wgslsmith_mod_i32(-33260i, global0.x)), 1i), -vec4<i32>(-global0.x, countOneBits(2175i), -7991i, arg_1)));
    var var_1 = _wgslsmith_sub_vec2_i32(firstTrailingBit(firstLeadingBit(global0.zy)), _wgslsmith_div_vec2_i32(global0.xz, min(_wgslsmith_div_vec2_i32(global0.yy, global0.zx), _wgslsmith_sub_vec2_i32(global0.zx, global0.xx))) & vec2<i32>(1i, ~firstLeadingBit(global0.x)));
    global2 = select(!(!select(vec4<bool>(true, true, global2.x, true), select(vec4<bool>(false, false, global2.x, true), vec4<bool>(global2.x, true, false, global2.x), true), vec4<bool>(global2.x, global2.x, global2.x, global2.x))), vec4<bool>(u_input.a <= ~arg_0, true, any(global2.yx), !(global2.x != global2.x)), false);
    global2 = vec4<bool>(global2.x, true, global2.x, global2.x);
    return Struct_3(abs(~abs(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 77652u, arg_0), vec3<u32>(arg_0, u_input.a, 1u)))), ~(~abs(1u)), max(~vec4<i32>(~26144i, 29788i >> (u_input.a % 32u), ~global0.x, arg_1 >> (1u % 32u)), -_wgslsmith_add_vec4_i32(vec4<i32>(arg_1, 0i, 1i, arg_1) << (vec4<u32>(38537u, 36179u, 26944u, arg_0) % vec4<u32>(32u)), vec4<i32>(var_1.x, 2147483647i, 2147483647i, arg_1) << (vec4<u32>(0u, 10395u, 4294967295u, u_input.a) % vec4<u32>(32u)))), vec4<bool>(!any(vec4<bool>(true, global2.x, global2.x, global2.x)) || (u_input.a == _wgslsmith_mult_u32(arg_0, 0u)), any(select(vec2<bool>(true, false), !vec2<bool>(global2.x, global2.x), global2.x)), true, !all(!vec4<bool>(global2.x, true, false, true))), reverseBits(select(u_input.a, u_input.a, true)));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: Struct_3) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-115f)), _wgslsmith_f_op_f32(351f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -454f))))));
    var var_1 = Struct_1(vec4<u32>(~u_input.a << (~max(arg_3.a, arg_3.e) % 32u), u_input.a, _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, 1u, u_input.a), vec3<u32>(arg_3.b, 4294967295u, 18890u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(19879u, u_input.a, u_input.a), vec3<u32>(62536u, u_input.a, 82329u)) % 32u), 612u, arg_3.b), u_input.a), -global0.x);
    let var_2 = Struct_2(Struct_1(abs(~(~vec4<u32>(1u, 40161u, arg_3.e, 10551u))), arg_0.c.x), Struct_1(vec4<u32>((23085u >> (u_input.a % 32u)) >> (1u % 32u), select(~u_input.a, arg_0.e ^ 62156u, any(vec4<bool>(false, global2.x, global2.x, false))), arg_3.e, var_1.a.x | (8568u ^ u_input.a)), -8160i), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x))), arg_1.x), Struct_1(vec4<u32>(min(2594u, arg_0.e) ^ _wgslsmith_div_u32(arg_3.b, 0u), _wgslsmith_dot_vec4_u32(var_1.a | var_1.a, vec4<u32>(arg_0.b, var_1.a.x, arg_0.e, u_input.a)), 1u, ~func_2(var_1.a.x, global0.x).b), _wgslsmith_mod_i32(-10551i, arg_3.c.x)));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1803f) - arg_2.x) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.x), -1865f)) - _wgslsmith_div_f32(-507f, arg_2.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_2.c.x))))));
    var var_3 = Struct_4(arg_1.x, i32(-1i) * -44520i, _wgslsmith_mult_i32(-33217i, _wgslsmith_add_i32(firstTrailingBit(-18802i), i32(-1i) * -2147483647i)), all(arg_0.d.yx), Struct_1(var_1.a, var_2.b.b));
    return ~select(~(~_wgslsmith_div_vec4_u32(var_1.a, vec4<u32>(u_input.a, 0u, arg_0.e, var_2.a.a.x))), var_3.e.a ^ _wgslsmith_div_vec4_u32(vec4<u32>(arg_3.b, u_input.a, 46788u, arg_0.a), ~var_3.e.a), arg_3.d);
}

fn func_1() -> u32 {
    var var_0 = Struct_5(vec2<i32>(~global0.x, -19434i), Struct_1(abs(func_4(Struct_3(u_input.a, 1u, vec4<i32>(global0.x, 19221i, -600i, global0.x), vec4<bool>(global2.x, global2.x, true, global2.x), 54758u), _wgslsmith_div_vec4_f32(vec4<f32>(1100f, -561f, -112f, -1974f), vec4<f32>(-398f, 1000f, 1000f, -686f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-116f, -1856f)), func_2(u_input.a, global0.x))), 7028i), vec4<i32>(func_2(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(1u, 1u, 51785u)), -2147483647i).c.x, countOneBits(_wgslsmith_mod_i32(firstLeadingBit(global0.x), 2060i)), -2147483647i, -firstLeadingBit(-37846i)), Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), -1i), Struct_1(abs(firstTrailingBit(vec4<u32>(22627u, 23380u, u_input.a, 0u))), _wgslsmith_div_i32(~global0.x, 0i)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), Struct_1(vec4<u32>(36945u, u_input.a, 31550u, abs(60617u)), ~(-2147483647i) << (0u % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-1809f))))) + -407f));
    var var_1 = 45581u;
    let var_2 = select(!func_2(var_0.d.d.a.x, _wgslsmith_mod_i32(~(-21334i), -58327i)).d.xy, !(!global2.xz), all(select(vec4<bool>(all(vec2<bool>(true, global2.x)), global2.x, true, all(vec2<bool>(global2.x, global2.x))), select(select(vec4<bool>(false, global2.x, false, true), vec4<bool>(true, false, global2.x, global2.x), vec4<bool>(false, global2.x, global2.x, global2.x)), select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(true, true, global2.x, true), vec4<bool>(global2.x, true, true, global2.x)), func_2(68213u, var_0.b.b).d), vec4<bool>(true, true, true, true))));
    let var_3 = Struct_3(0u, _wgslsmith_mult_u32(var_0.b.a.x | u_input.a, 4294967295u), _wgslsmith_clamp_vec4_i32(var_0.c, vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(global0.x, global0.x), -var_0.b.b), -var_0.d.a.b, var_0.c.x, -global0.x), var_0.c), !select(vec4<bool>(false, var_2.x, !global2.x, global2.x), !select(vec4<bool>(var_2.x, var_2.x, global2.x, var_2.x), vec4<bool>(global2.x, global2.x, false, var_2.x), true), select(vec4<bool>(global2.x, true, global2.x, false), vec4<bool>(var_2.x, var_2.x, false, true), select(vec4<bool>(var_2.x, true, global2.x, var_2.x), vec4<bool>(false, true, global2.x, false), true))), ~4294967295u);
    var_1 = ~64431u;
    return var_0.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(func_1()) | abs(u_input.a);
    var var_0 = Struct_5(global0.zw, Struct_1(abs(~vec4<u32>(u_input.a, u_input.a, 65165u, u_input.a)), firstLeadingBit(1i)), ~func_2(_wgslsmith_sub_u32(9969u, 955u), 1i).c, Struct_2(Struct_1(vec4<u32>(u_input.a, abs(0u), _wgslsmith_sub_u32(u_input.a, u_input.a), 1u), _wgslsmith_mod_i32(-global0.x, global0.x)), Struct_1(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a) & vec4<u32>(42586u, 1u, 40736u, 4294967295u), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), 2147483647i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-595f, -1868f)))), Struct_1(~vec4<u32>(12819u, 0u, 4294967295u, u_input.a), 48065i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -724f)));
    var var_1 = var_0.d.c.x;
    let var_2 = var_0.b;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-689f + _wgslsmith_f_op_f32(var_0.d.c.x + var_0.d.c.x)) + 1000f))));
    let var_4 = _wgslsmith_clamp_vec3_i32(vec3<i32>(firstTrailingBit(abs(14222i | global0.x)), -_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -32477i, global0.x, var_2.b) | vec4<i32>(-6150i, var_2.b, 2147483647i, var_2.b), var_0.c), var_2.b), firstLeadingBit(-global0.zyy), firstTrailingBit(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.b, func_2(21865u, 21368i).c.x, var_2.b), vec3<i32>(var_0.a.x, -66475i, var_2.b) ^ vec3<i32>(global0.x, 0i, -32465i))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.d.c))))), ~var_0.c.zxy);
}

