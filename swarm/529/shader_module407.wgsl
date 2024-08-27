struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23> = array<f32, 23>(-499f, 711f, -1896f, 1841f, -656f, -1000f, -646f, 1666f, -1314f, -650f, -984f, 620f, 281f, 1000f, -919f, -289f, 1000f, -369f, -143f, 508f, -258f, 734f, 1227f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(max(-373f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(arg_0))))))));
    global0 = array<f32, 23>();
    global0 = array<f32, 23>();
    let var_1 = false || !any(vec4<bool>(true, true, true, true));
    global0 = array<f32, 23>();
    return ~_wgslsmith_sub_u32(~(~u_input.d.x), countOneBits(u_input.d.x) | ~u_input.d.x) | 0u;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    var var_0 = arg_3;
    let var_1 = global0[_wgslsmith_index_u32(1u, 23u)];
    var var_2 = Struct_2(u_input.d.wyz ^ vec3<u32>(var_0.b.c | 57988u, 1u, arg_3.b.d), Struct_1(true, -var_0.c.b, 1u, (_wgslsmith_clamp_u32(var_0.a.x, arg_2.d, arg_3.c.d) | var_0.a.x) << ((27492u ^ arg_2.c) % 32u)), arg_2);
    var var_3 = vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.a.yx, ~(~arg_3.a.yz)), var_2.a.x, _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 4294967295u), var_2.a.x), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.d, ~vec4<u32>(arg_0.c.c, u_input.d.x, arg_2.c, arg_0.c.d)) >> (36466u % 32u), 8136u, _wgslsmith_div_u32(u_input.c, abs(_wgslsmith_sub_u32(arg_0.a.x, 63824u)))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(1000f * global0[_wgslsmith_index_u32(var_0.b.d, 23u)]), 898f);
    return vec2<f32>(-459f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) - _wgslsmith_f_op_f32(-var_4.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1910f)))))));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(u_input.d.zww, Struct_1(u_input.a < u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_sub_i32(-2147483647i, u_input.a), max(u_input.b.x, -1i)), 30432u, 1u), Struct_1(true, u_input.b.x, arg_2, 1u)), u_input.b, Struct_1(true, u_input.a, ~u_input.d.x | _wgslsmith_mod_u32(max(4294967295u, u_input.c), arg_2), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(u_input.c, 1u), _wgslsmith_add_u32(arg_2, arg_0)), ~_wgslsmith_add_vec2_u32(u_input.d.zy, u_input.d.yz))), Struct_2(_wgslsmith_mult_vec3_u32(u_input.d.xzy, vec3<u32>(arg_0, arg_0, 0u)), Struct_1(true, 1i, ~arg_0 >> (arg_0 % 32u), arg_2), Struct_1(true, u_input.a >> (_wgslsmith_div_u32(4294967295u, 57875u) % 32u), 1u, ~func_3(-1000f)))));
    var var_1 = u_input.a;
    var var_2 = ~countOneBits(u_input.b.zz);
    var var_3 = Struct_3(global0[_wgslsmith_index_u32(countOneBits(37574u), 23u)]);
    var var_4 = vec2<bool>(!(!(!arg_1.x)), arg_1.x);
    return Struct_2(u_input.d.ywx, Struct_1(true, reverseBits(var_2.x), ~arg_2 ^ 11400u, ~(arg_0 << (arg_0 % 32u)) >> (4294967295u % 32u)), Struct_1(arg_1.x, ~countOneBits(-2147483647i), ~_wgslsmith_div_u32(15336u, u_input.c), u_input.d.x));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_3 {
    var var_0 = arg_1;
    global0 = array<f32, 23>();
    var_0 = arg_1;
    global0 = array<f32, 23>();
    let var_1 = Struct_1(!(!func_2(1u, vec4<bool>(false, true, false, false), 4294967295u).c.a), u_input.b.x, func_2(1436u, vec4<bool>(func_2(0u, vec4<bool>(arg_0.c.a, arg_0.b.a, arg_0.c.a, false), 14660u).c.a, arg_0.b.a, func_2(arg_0.c.c, vec4<bool>(arg_0.b.a, arg_0.c.a, arg_0.b.a, arg_0.b.a), arg_0.a.x).b.a, true), func_3(-1116f)).c.d >> (func_2(56829u, !(!vec4<bool>(false, arg_0.b.a, true, arg_0.c.a)), firstTrailingBit(arg_0.c.d >> (4294967295u % 32u))).a.x % 32u), ~_wgslsmith_mod_u32(arg_0.a.x, ~firstLeadingBit(u_input.d.x)));
    return Struct_3(_wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(73561u), 0u), 23u)] + _wgslsmith_f_op_f32(abs(arg_1.a)))));
}

fn func_1(arg_0: vec4<i32>) -> vec3<u32> {
    global0 = array<f32, 23>();
    var var_0 = func_5(func_2(_wgslsmith_div_u32(68187u, 42644u), vec4<bool>(true, true, true, true), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c, 36191u, 1u)), countOneBits(max(u_input.d.xzw, u_input.d.zxy)))), Struct_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(2161f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(u_input.c, 23u)])), select(true, false, true))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(8617u, 23u)]))))))));
    let var_1 = true;
    global0 = array<f32, 23>();
    return ~(~(~u_input.d.yxz));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(u_input.d.xww, Struct_1(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true))) && any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true))), _wgslsmith_div_i32(u_input.b.x, firstLeadingBit(u_input.a)), _wgslsmith_dot_vec3_u32(~u_input.d.xyy, func_1(abs(vec4<i32>(-10286i, u_input.b.x, u_input.a, u_input.a)))), _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(u_input.d.x, abs(u_input.c)), u_input.c)), func_2(~u_input.c << (0u % 32u), vec4<bool>(any(vec2<bool>(false, true)), func_2(u_input.c, select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), 0u).c.a, false, true), 70787u).b);
    var var_1 = func_2(var_0.b.d, select(select(!(!vec4<bool>(var_0.b.a, var_0.c.a, var_0.b.a, var_0.c.a)), vec4<bool>(var_0.b.a, !var_0.c.a, var_0.c.a, var_0.b.a), vec4<bool>(select(var_0.b.a, var_0.c.a, true), var_0.b.a, all(vec2<bool>(var_0.c.a, var_0.c.a)), false)), !select(!vec4<bool>(false, var_0.b.a, var_0.c.a, var_0.c.a), !vec4<bool>(true, false, true, var_0.c.a), true), false), ~(~var_0.a.x | _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(var_0.c.d, 81996u, 9655u, 28021u))) >> (firstLeadingBit(var_0.b.c) % 32u)).c;
    global0 = array<f32, 23>();
    var_1 = func_2(func_1(~vec4<i32>(1i, 44284i, u_input.b.x, u_input.b.x)).x ^ ~4294967295u, select(!vec4<bool>(var_1.a, all(vec4<bool>(true, false, false, false)), !var_0.b.a, true), !select(!vec4<bool>(var_1.a, var_0.b.a, var_1.a, var_1.a), select(vec4<bool>(var_0.c.a, var_1.a, false, var_0.c.a), vec4<bool>(true, var_0.c.a, var_0.b.a, false), vec4<bool>(var_1.a, var_1.a, false, false)), select(vec4<bool>(var_1.a, false, true, var_1.a), vec4<bool>(var_0.b.a, false, false, true), var_0.c.a)), all(!vec4<bool>(false, var_1.a, true, false))), 18596u).b;
    let var_2 = func_5(func_2(u_input.d.x, !(!vec4<bool>(false, var_1.a, false, var_1.a)), select(~max(var_0.b.c, u_input.d.x), func_2(var_1.d, vec4<bool>(var_0.c.a, true, true, false), var_0.a.x).a.x >> (134259u % 32u), var_1.a)), func_5(Struct_2(reverseBits(select(vec3<u32>(var_1.d, var_0.b.c, var_0.a.x), var_0.a, vec3<bool>(true, false, false))), func_2(0u, vec4<bool>(var_1.a, var_1.a, var_0.b.a, true), ~var_0.c.d).b, func_2(u_input.c | var_1.d, !vec4<bool>(var_0.c.a, true, var_0.b.a, var_0.b.a), _wgslsmith_div_u32(46960u, u_input.d.x)).b), Struct_3(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.d, 23u)] * -327f))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.c, func_2(_wgslsmith_div_u32(u_input.d.x, min(~var_0.a.x, _wgslsmith_add_u32(0u, var_1.d))), select(!(!vec4<bool>(var_0.b.a, true, var_0.c.a, var_0.c.a)), !select(vec4<bool>(false, false, var_0.b.a, var_0.b.a), vec4<bool>(true, false, false, false), false), false || all(vec4<bool>(var_1.a, true, true, var_0.b.a))), 87941u).c.b, vec2<i32>(var_1.b << (firstLeadingBit(38177u) % 32u), -(~u_input.b.x)), abs(-u_input.b.yz), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a, var_2.a)) - global0[_wgslsmith_index_u32(1u, 23u)]), -2078f))));
}

