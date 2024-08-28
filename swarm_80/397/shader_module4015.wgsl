struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: i32) -> u32 {
    var var_0 = vec2<bool>(any(!(!select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)))), arg_1.c.c.a == 1i);
    var_0 = vec2<bool>(all(!select(select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, false, false), vec4<bool>(false, true, var_0.x, true)), vec4<bool>(var_0.x, var_0.x, false, false), var_0.x)), all(!select(!vec2<bool>(var_0.x, var_0.x), select(vec2<bool>(true, false), vec2<bool>(var_0.x, true), vec2<bool>(true, var_0.x)), 33512i != arg_2)));
    let var_1 = 4857u;
    var_0 = select(select(select(select(vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, var_0.x), true && var_0.x), vec2<bool>(all(vec2<bool>(var_0.x, var_0.x)), all(vec3<bool>(var_0.x, var_0.x, var_0.x))), !select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true))), select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(true, false)), select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, true), vec2<bool>(false, var_0.x)), vec2<bool>(true, true), true), any(!vec4<bool>(true, false, var_0.x, false))), vec2<bool>(true, true)), select(select(vec2<bool>(false, !var_0.x), vec2<bool>(arg_1.c.d.x != 1u, arg_1.b.x < 5091u), false), select(vec2<bool>(arg_2 >= arg_1.c.c.a, true), !(!vec2<bool>(true, var_0.x)), vec2<bool>(true, true)), !(!(!vec2<bool>(true, var_0.x)))), vec2<bool>(any(select(!vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, var_0.x)), !vec3<bool>(var_0.x, var_0.x, false))), !any(vec4<bool>(false, true, true, var_0.x)) && var_0.x));
    var var_2 = !var_0.x;
    return 7088u;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    let var_0 = u_input.d;
    var var_1 = Struct_4(select(vec3<i32>(~(-2147483647i), ~12517i, -26918i), vec3<i32>(1i, 1i, 1i), any(vec4<bool>(true, true, true, true))) << (~vec3<u32>(select(arg_0.x, 17009u, false), func_3(vec3<f32>(1013f, 1951f, 305f), Struct_3(vec3<i32>(-2147483647i, -218i, 1i), vec2<u32>(1u, arg_0.x), Struct_2(Struct_1(0i, vec3<i32>(-1i, 0i, 0i)), Struct_1(-2147483647i, vec3<i32>(27706i, 28110i, 0i)), Struct_1(-23426i, vec3<i32>(-2147483647i, 1i, -2147483647i)), arg_0.zx)), 0i), ~arg_0.x) % vec3<u32>(32u)), ~47180u, Struct_3(vec3<i32>(15914i, countOneBits(_wgslsmith_add_i32(-16331i, -5268i)), -(~28700i)), abs(arg_0.zz), Struct_2(Struct_1(_wgslsmith_mult_i32(0i, -2147483647i), vec3<i32>(-1i, 0i, -32124i)), Struct_1(_wgslsmith_div_i32(-1i, 13742i), vec3<i32>(39313i, 76843i, 18389i)), Struct_1(-25304i, vec3<i32>(0i, -1i, -2147483647i)), ~select(vec2<u32>(53475u, arg_0.x), arg_0.yx, false))), Struct_1(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(abs(77747i), -2147483647i, ~0i)), -(~vec3<i32>(1i, 1i, 1i))));
    let var_2 = Struct_2(var_1.d, Struct_1(var_1.d.a, ~vec3<i32>(~(-2147483647i), var_1.a.x ^ 34182i, 0i)), Struct_1(var_1.d.a, var_1.a), vec2<u32>(_wgslsmith_sub_u32(var_1.c.c.d.x, func_3(vec3<f32>(-773f, -896f, 196f), var_1.c, _wgslsmith_mod_i32(var_1.c.c.b.a, var_1.d.a))), 1u));
    var_1 = Struct_4(_wgslsmith_add_vec3_i32(var_2.c.b, _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_2.b.b.x, var_1.a.x), var_2.a.b), -firstLeadingBit(vec3<i32>(1i, var_2.c.b.x, 2147483647i)))), var_1.b, var_1.c, var_1.d);
    var_1 = Struct_4(var_2.c.b, _wgslsmith_mult_u32(~firstLeadingBit(45977u) & firstLeadingBit(arg_0.x), ~(var_2.d.x >> (_wgslsmith_sub_u32(1u, u_input.d) % 32u))), var_1.c, Struct_1(-var_2.c.b.x << (var_1.b % 32u), ~vec3<i32>(_wgslsmith_add_i32(var_1.a.x, var_2.a.b.x), -var_2.c.a, -2693i)));
    return ~0u;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec3<u32>(arg_1.x ^ ((1u & _wgslsmith_mult_u32(11721u, arg_1.x)) >> (min(select(1u, 0u, true), 48114u) % 32u)), _wgslsmith_sub_u32(u_input.d, arg_1.x >> (~arg_1.x % 32u)) << (_wgslsmith_add_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_1.x, arg_1.x, u_input.b), vec4<u32>(u_input.b, u_input.d, 14979u, u_input.d)), 292u), _wgslsmith_div_u32(u_input.a, u_input.d)) % 32u), ~(~1u));
    let var_1 = vec4<u32>(1u, _wgslsmith_div_u32(max(arg_1.x, _wgslsmith_div_u32(87985u, select(1u, arg_1.x, true))), func_2(~(~var_0))), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~var_0, countOneBits(~var_0)), ~(~(~u_input.a))), func_2(select(vec3<u32>(abs(8326u), 4055u, u_input.a), reverseBits(var_0 | var_0), vec3<bool>(true, true, true))));
    var var_2 = true;
    var var_3 = ~1i;
    let var_4 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f), arg_0), -926f), arg_0, arg_0, arg_0);
    return Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(min(0i, -16047i), ~35927i, reverseBits(-2147483647i), min(1i, 51958i)), vec4<i32>(~2147483647i, i32(-1i) * -1i, 13063i, _wgslsmith_add_i32(26720i, -1i)), _wgslsmith_div_vec4_i32(vec4<i32>(2808i, 7715i, -1i, 2147483647i), vec4<i32>(-18671i, 1i, 12935i, 1i))), vec4<i32>(-2147483647i, max(1i, min(-2147483647i, 15065i)), 0i, select(i32(-1i) * -2147483647i, 2147483647i, true))), vec3<i32>(~19210i, _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(2147483647i, 2147483647i, 0i, 2147483647i)), select(vec4<i32>(0i, 35930i, 0i, -26347i), vec4<i32>(-2147483647i, -1i, 11030i, 2147483647i), vec4<bool>(false, true, true, false))), select(~vec4<i32>(12143i, 71797i, 1i, -2147483647i), reverseBits(vec4<i32>(0i, 0i, -94181i, 11997i)), true)), 1i));
}

fn func_4(arg_0: Struct_4, arg_1: u32, arg_2: f32, arg_3: Struct_4) -> Struct_1 {
    let var_0 = arg_0.c.c.d.x;
    let var_1 = true;
    let var_2 = 2147483647i;
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(min(317f, 1069f)), -671f, arg_2) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2, arg_2, -412f, arg_2), vec4<f32>(arg_2, arg_2, 682f, arg_2))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, _wgslsmith_f_op_f32(794f - _wgslsmith_f_op_f32(max(-585f, arg_2))), _wgslsmith_f_op_f32(f32(-1f) * -1083f), 940f)));
    var var_4 = true;
    return Struct_1(-1i, _wgslsmith_add_vec3_i32(-arg_3.c.c.b.b, _wgslsmith_mult_vec3_i32(vec3<i32>(-35030i, -2147483647i, _wgslsmith_mult_i32(arg_3.d.a, arg_0.a.x)), max(_wgslsmith_mod_vec3_i32(vec3<i32>(-12703i, arg_3.d.a, var_2), arg_0.a), vec3<i32>(arg_3.c.c.b.b.x, arg_3.c.a.x, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_4(Struct_4(abs(-vec3<i32>(17724i, -30679i, 16610i)), reverseBits(abs(16810u)), Struct_3(firstLeadingBit(vec3<i32>(-47959i, -2147483647i, 1i)), ~vec2<u32>(u_input.b, u_input.c), Struct_2(Struct_1(-1i, vec3<i32>(38160i, -1i, -3507i)), Struct_1(-2147483647i, vec3<i32>(3409i, 19404i, -8819i)), Struct_1(-13878i, vec3<i32>(23830i, 0i, 2147483647i)), vec2<u32>(3262u, 6493u))), func_1(_wgslsmith_f_op_f32(min(-946f, -1381f)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, 77453u), vec2<u32>(u_input.d, 1u)))), u_input.d, 1f, Struct_4(countOneBits(vec3<i32>(1i, 1i, 1i)), u_input.c, Struct_3(abs(vec3<i32>(2147483647i, -28156i, -1i)), max(vec2<u32>(u_input.d, 13990u), vec2<u32>(54251u, 79284u)), Struct_2(Struct_1(1i, vec3<i32>(0i, 1i, -25611i)), Struct_1(-3273i, vec3<i32>(31761i, -2147483647i, -29041i)), Struct_1(1i, vec3<i32>(0i, -27387i, -2147483647i)), vec2<u32>(u_input.a, u_input.b))), Struct_1(~13993i, -vec3<i32>(12432i, -30276i, 0i)))), func_4(Struct_4(vec3<i32>(~(-60143i), 7746i, _wgslsmith_mod_i32(0i, -2147483647i)), 0u << (u_input.c % 32u), Struct_3(~vec3<i32>(41437i, -5722i, -16228i), vec2<u32>(32645u, u_input.c) | vec2<u32>(u_input.b, 4294967295u), Struct_2(Struct_1(1i, vec3<i32>(-2147483647i, 33436i, 2147483647i)), Struct_1(0i, vec3<i32>(-40036i, 65034i, 11422i)), Struct_1(-48978i, vec3<i32>(0i, -15385i, -34362i)), vec2<u32>(u_input.d, u_input.a))), func_4(Struct_4(vec3<i32>(-45477i, 35494i, -2147483647i), 4294967295u, Struct_3(vec3<i32>(0i, -1i, -2147483647i), vec2<u32>(9572u, 0u), Struct_2(Struct_1(865i, vec3<i32>(67747i, 12163i, -55315i)), Struct_1(56533i, vec3<i32>(2147483647i, 1i, -2147483647i)), Struct_1(5148i, vec3<i32>(78435i, 0i, -65575i)), vec2<u32>(7043u, 1u))), Struct_1(2147483647i, vec3<i32>(1718i, 2147483647i, 2158i))), 0u, -451f, Struct_4(vec3<i32>(17829i, -31739i, -2147483647i), u_input.a, Struct_3(vec3<i32>(2147483647i, -2147483647i, 1i), vec2<u32>(u_input.c, 4005u), Struct_2(Struct_1(2147483647i, vec3<i32>(-58309i, -4306i, 2147483647i)), Struct_1(-1i, vec3<i32>(2147483647i, -9357i, -27731i)), Struct_1(2147483647i, vec3<i32>(-7613i, 1081i, -2147483647i)), vec2<u32>(24123u, u_input.b))), Struct_1(0i, vec3<i32>(9235i, -1i, -21294i))))), u_input.b << (_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, u_input.c), vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.a, u_input.d)), vec2<u32>(u_input.d, u_input.a)) % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-413f, 281f)), -919f, true)), Struct_4(-vec3<i32>(-2147483647i, -22779i, -2147483647i), u_input.c, Struct_3(firstLeadingBit(vec3<i32>(-37382i, -47663i, 59621i)), vec2<u32>(u_input.c, u_input.a), Struct_2(Struct_1(0i, vec3<i32>(1i, -1i, 11775i)), Struct_1(8563i, vec3<i32>(-2147483647i, -26959i, -12517i)), Struct_1(2147483647i, vec3<i32>(-2147483647i, -1i, 35802i)), vec2<u32>(51792u, 14353u))), func_4(Struct_4(vec3<i32>(-2147483647i, -1i, -25290i), u_input.c, Struct_3(vec3<i32>(-2147483647i, 9402i, 1i), vec2<u32>(4294967295u, 0u), Struct_2(Struct_1(17542i, vec3<i32>(10767i, -1i, 2147483647i)), Struct_1(-1i, vec3<i32>(-1i, 0i, -1i)), Struct_1(-12239i, vec3<i32>(1i, -1i, -4501i)), vec2<u32>(0u, u_input.c))), Struct_1(0i, vec3<i32>(40760i, -2147483647i, 0i))), u_input.c, _wgslsmith_f_op_f32(f32(-1f) * -1000f), Struct_4(vec3<i32>(-57087i, -36509i, -15139i), 0u, Struct_3(vec3<i32>(2147483647i, 1i, -2147483647i), vec2<u32>(u_input.b, 0u), Struct_2(Struct_1(23794i, vec3<i32>(1i, -1152i, -2345i)), Struct_1(0i, vec3<i32>(-1i, -11265i, -1i)), Struct_1(9660i, vec3<i32>(42993i, 2147483647i, 0i)), vec2<u32>(43785u, 0u))), Struct_1(0i, vec3<i32>(0i, -2147483647i, 3908i)))))), Struct_1(-abs(min(1i, -1i)), vec3<i32>(-(i32(-1i) * -1176i), countOneBits(0i), _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(34641i, -6375i), vec2<i32>(31445i, -1i))))), _wgslsmith_div_vec2_u32(min(vec2<u32>(85935u, _wgslsmith_mult_u32(u_input.d, u_input.d)), ~(vec2<u32>(u_input.d, u_input.b) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.a), vec2<u32>(u_input.d, 4294967295u)) | ~vec2<u32>(0u, u_input.c), vec2<u32>(_wgslsmith_sub_u32(u_input.d, u_input.c), _wgslsmith_add_u32(u_input.d, u_input.b)))));
    let var_1 = Struct_4(-(-vec3<i32>(-14644i, -105206i, var_0.c.b.x) | (abs(vec3<i32>(var_0.b.b.x, var_0.b.a, var_0.b.b.x)) >> (vec3<u32>(u_input.b, 1u, u_input.c) % vec3<u32>(32u)))), 8468u, Struct_3(-(~vec3<i32>(var_0.b.a, -1i, var_0.c.a)), abs(var_0.d ^ vec2<u32>(u_input.d, 0u)) ^ select(min(var_0.d, vec2<u32>(26825u, var_0.d.x)), var_0.d, vec2<bool>(true, true)), Struct_2(func_4(Struct_4(var_0.a.b, 1u, Struct_3(var_0.a.b, vec2<u32>(u_input.a, 4294967295u), Struct_2(Struct_1(3906i, var_0.a.b), var_0.c, Struct_1(-1i, var_0.b.b), var_0.d)), var_0.b), u_input.b, _wgslsmith_f_op_f32(342f + 1775f), Struct_4(vec3<i32>(var_0.c.b.x, var_0.b.b.x, 31116i), var_0.d.x, Struct_3(vec3<i32>(var_0.c.a, var_0.b.b.x, var_0.c.b.x), var_0.d, Struct_2(Struct_1(49117i, vec3<i32>(2147483647i, var_0.a.b.x, -1i)), Struct_1(var_0.b.b.x, vec3<i32>(var_0.c.b.x, var_0.a.a, var_0.a.b.x)), var_0.c, var_0.d)), Struct_1(-1i, var_0.b.b))), Struct_1(_wgslsmith_mod_i32(2147483647i, var_0.b.a), var_0.a.b), func_1(_wgslsmith_f_op_f32(abs(-707f)), var_0.d), vec2<u32>(~var_0.d.x, countOneBits(492u)))), var_0.a);
    let var_2 = ~_wgslsmith_mod_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.d.x, 784u, var_1.b), vec3<u32>(var_0.d.x, 4294967295u, var_1.c.c.d.x)) | vec3<u32>(~1u, u_input.b, var_0.d.x), _wgslsmith_add_vec3_u32(select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, 0u, 1u), vec3<u32>(var_0.d.x, u_input.c, u_input.b)), vec3<u32>(2249u, var_1.c.c.d.x, var_1.c.c.d.x), true), ~(vec3<u32>(78581u, var_1.b, u_input.b) | vec3<u32>(u_input.c, 1u, 0u))));
    var_0 = var_1.c.c;
    let var_3 = 34890u;
    var_0 = var_1.c.c;
    var_0 = Struct_2(func_4(Struct_4(var_1.a, ~max(82288u, 4294967295u), Struct_3(vec3<i32>(2147483647i, -12508i, -1i), var_2.yz, var_1.c.c), var_1.c.c.a), countOneBits(var_2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(411f, -329f)) - _wgslsmith_f_op_f32(round(701f))) * _wgslsmith_f_op_f32(step(311f, 381f))), Struct_4(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a, -53821i, var_1.a.x), max(vec3<i32>(-2147483647i, -41286i, -1i), vec3<i32>(-12640i, var_1.c.a.x, 1i))), var_1.c.b.x, var_1.c, func_1(_wgslsmith_f_op_f32(-966f - -550f), vec2<u32>(var_3, 65484u) | var_0.d))), Struct_1(var_0.a.b.x, vec3<i32>(-26579i, -abs(1i), countOneBits(~(-2147483647i)))), Struct_1(var_1.a.x, ~max(abs(vec3<i32>(var_1.c.c.c.b.x, var_1.c.c.c.b.x, var_0.c.b.x)), _wgslsmith_clamp_vec3_i32(vec3<i32>(-19246i, var_0.a.a, var_1.d.b.x), var_0.b.b, vec3<i32>(0i, -1i, 6157i)))), _wgslsmith_div_vec2_u32(~_wgslsmith_sub_vec2_u32(~vec2<u32>(0u, u_input.c), var_1.c.b), reverseBits(firstTrailingBit(vec2<u32>(0u, var_0.d.x)))));
    let var_4 = var_1.c.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(ceil(-591f)), -1032f), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1186f), -930f)))));
}

