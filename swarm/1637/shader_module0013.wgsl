struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: vec4<u32>,
    d: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    let var_0 = arg_1.b;
    let var_1 = ~arg_1.c.x;
    var var_2 = arg_2.d.b.x;
    return select(vec3<bool>(arg_0.x, any(arg_0.wxw), arg_2.c.x), arg_0.yzx, arg_2.c);
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_2(4294967295u, arg_3.c, select(!vec3<bool>(false, all(vec4<bool>(arg_2.x, arg_2.x, false, false)), true), !(!select(vec3<bool>(false, arg_2.x, true), vec3<bool>(arg_2.x, arg_2.x, true), true)), select(arg_2, select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), func_3(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), Struct_1(arg_3.a, arg_3.b, arg_3.c, arg_3.a), Struct_2(16033u, arg_3.c, vec3<bool>(arg_2.x, true, true), global0[_wgslsmith_index_u32(18465u, 30u)]), false), func_3(vec4<bool>(true, arg_2.x, true, false), Struct_1(arg_3.a, vec3<f32>(1236f, arg_1, 284f), vec4<u32>(0u, arg_0.x, 53806u, 1u), arg_3.d), Struct_2(arg_3.c.x, arg_3.c, vec3<bool>(false, arg_2.x, arg_2.x), Struct_1(arg_3.d, arg_3.b, vec4<u32>(4294967295u, 4294967295u, 4415u, 6312u), arg_3.d)), false)), vec3<bool>(true, true, arg_2.x))), Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1284f, arg_3.b.x, -879f)), _wgslsmith_f_op_vec3_f32(-arg_3.b)))), ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 1u), arg_3.c.yy), 0u, ~38197u, 1u), _wgslsmith_mod_i32(arg_3.a, -2147483647i)));
    var_0 = Struct_2(~arg_3.c.x, vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_3.c.x, min(41961u, 9927u)), var_0.b.zx >> ((var_0.b.wz & u_input.b.yy) % vec2<u32>(32u))), _wgslsmith_add_u32(firstLeadingBit(countOneBits(u_input.a.x)), _wgslsmith_div_u32(59132u, arg_3.c.x & u_input.b.x)), ~77840u, _wgslsmith_dot_vec2_u32(var_0.b.yw, arg_3.c.zz) | ~_wgslsmith_sub_u32(var_0.a, 10346u)), !select(!vec3<bool>(arg_2.x, false, true), vec3<bool>(arg_2.x, true, true), vec3<bool>(var_0.d.d == arg_3.d, select(var_0.c.x, var_0.c.x, arg_2.x), var_0.c.x)), arg_3);
    global0 = array<Struct_1, 30>();
    var var_1 = vec3<f32>(1132f, var_0.d.b.x, 2167f);
    let var_2 = _wgslsmith_clamp_i32(max(14162i, ~abs(arg_3.d | arg_3.d)), max(min(1i, countOneBits(-2147483647i) & _wgslsmith_clamp_i32(var_0.d.d, arg_3.a, var_0.d.a)), arg_3.d), select(_wgslsmith_mod_i32(~_wgslsmith_mult_i32(16262i, -1i), reverseBits(~var_0.d.d)), countOneBits(-22881i) & _wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_3.d, var_0.d.a), _wgslsmith_clamp_i32(52262i, 0i, 0i)), any(!func_3(vec4<bool>(arg_2.x, arg_2.x, var_0.c.x, arg_2.x), Struct_1(arg_3.d, vec3<f32>(var_1.x, var_0.d.b.x, 2338f), var_0.b, 0i), Struct_2(0u, arg_3.c, vec3<bool>(false, false, arg_2.x), arg_3), var_0.c.x))));
    return Struct_2(var_0.d.c.x, vec4<u32>(u_input.b.x & 28568u, arg_3.c.x, u_input.b.x, 1u), func_3(select(select(!vec4<bool>(arg_2.x, true, arg_2.x, var_0.c.x), vec4<bool>(false, true, true, true), false), !(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true)), select(select(vec4<bool>(false, arg_2.x, var_0.c.x, var_0.c.x), vec4<bool>(true, arg_2.x, false, true), vec4<bool>(true, var_0.c.x, arg_2.x, var_0.c.x)), vec4<bool>(var_0.c.x, true, arg_2.x, var_0.c.x), false)), arg_3, Struct_2(firstLeadingBit(u_input.a.x), vec4<u32>(0u, 1u, u_input.b.x, _wgslsmith_dot_vec2_u32(arg_3.c.yx, u_input.b.xz)), vec3<bool>(true, var_0.c.x, arg_2.x | false), global0[_wgslsmith_index_u32(abs(var_0.d.c.x), 30u)]), var_0.c.x), Struct_1(var_0.d.d, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_0.d.b)), _wgslsmith_f_op_vec3_f32(step(arg_3.b, vec3<f32>(arg_1, -272f, arg_3.b.x))), func_3(vec4<bool>(var_0.c.x, false, var_0.c.x, true), Struct_1(1i, vec3<f32>(-925f, 1388f, 1000f), var_0.b, var_2), Struct_2(0u, vec4<u32>(59454u, 132036u, var_0.a, var_0.b.x), var_0.c, Struct_1(2147483647i, arg_3.b, vec4<u32>(57541u, arg_0.x, arg_3.c.x, 46383u), 45042i)), false).x)))), vec4<u32>(_wgslsmith_mod_u32(0u, arg_3.c.x), _wgslsmith_mult_u32(33307u, 12737u), ~u_input.a.x, _wgslsmith_clamp_u32(7022u, arg_0.x, arg_0.x)) << (vec4<u32>(_wgslsmith_mult_u32(arg_0.x, var_0.d.c.x), 1u, firstTrailingBit(u_input.a.x), countOneBits(37395u)) % vec4<u32>(32u)), -1i));
}

fn func_4(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: vec4<u32>) -> i32 {
    let var_0 = -1609f;
    return ~reverseBits(-reverseBits(-18029i));
}

fn func_5(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: vec4<u32>) -> Struct_2 {
    let var_0 = Struct_2(73816u, ~select(vec4<u32>(1u, 1u, 0u, 4294967295u) << (vec4<u32>(4294967295u, arg_3.x, arg_1, 4294967295u) % vec4<u32>(32u)), vec4<u32>(41006u, u_input.b.x, arg_1, u_input.a.x), vec4<bool>(true, true, true, true)) & arg_3, vec3<bool>(func_2(~abs(u_input.a), 747f, vec3<bool>(true, false, arg_0.x == arg_0.x), Struct_1(~0i, _wgslsmith_f_op_vec3_f32(arg_0.zxz * vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), vec4<u32>(arg_3.x, 50848u, 67353u, arg_1) & vec4<u32>(97774u, 4294967295u, 0u, u_input.b.x), -arg_2)).c.x, !all(vec2<bool>(true, true)), any(vec4<bool>(false, select(true, false, false), arg_2 != arg_2, true))), func_2(arg_3.zyx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(764f, 655f) - _wgslsmith_f_op_f32(-853f + arg_0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 122f))), vec3<bool>(select(true, true, func_2(u_input.a, arg_0.x, vec3<bool>(true, false, true), global0[_wgslsmith_index_u32(arg_1, 30u)]).c.x), true, arg_0.x == arg_0.x), func_2(u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)), vec3<bool>(true, true, true), func_2(u_input.a, _wgslsmith_f_op_f32(f32(-1f) * -617f), vec3<bool>(true, true, true), func_2(u_input.b, arg_0.x, vec3<bool>(true, true, false), Struct_1(1i, arg_0.xwy, arg_3, arg_2)).d).d).d).d);
    var var_1 = ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 23804u, _wgslsmith_add_u32(1u, 18792u), 1u), var_0.d.c) << (firstLeadingBit(~1u) % 32u));
    var var_2 = vec4<i32>(33554i, -1i, arg_2, -2147483647i);
    var_2 = (-(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2, var_2.x, arg_2, var_0.d.d), vec4<i32>(var_2.x, arg_2, var_2.x, var_0.d.d), vec4<i32>(arg_2, 7580i, var_2.x, 18486i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, -26576i, var_2.x, 1i), vec4<i32>(1i, var_2.x, var_0.d.d, var_0.d.d), vec4<i32>(var_0.d.a, -22535i, var_0.d.a, var_2.x))) >> (~var_0.b % vec4<u32>(32u))) & vec4<i32>(max(-(~var_0.d.d), arg_2 | arg_2), var_2.x, 30428i, ~(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.d, 19554i), var_2.zz) >> (~15329u % 32u)));
    var_2 = -vec4<i32>(2147483647i, arg_2, -1i, ~abs(2147483647i));
    return var_0;
}

fn func_1() -> i32 {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 381f, -187f, -977f) + vec4<f32>(-181f, -859f, -1582f, -913f))) + vec4<f32>(-1372f, _wgslsmith_f_op_f32(f32(-1f) * -376f), _wgslsmith_f_op_f32(f32(-1f) * -1751f), _wgslsmith_f_op_f32(-1402f * -1127f))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(trunc(-234f)), _wgslsmith_div_f32(292f, -538f), _wgslsmith_f_op_f32(floor(-241f)), _wgslsmith_f_op_f32(192f - 200f))))), u_input.a.x, func_4(1i, ~(~(u_input.b.x << (0u % 32u))), func_2(~select(u_input.b, u_input.b, true), -986f, vec3<bool>(true, false, true), Struct_1(~(-33469i), _wgslsmith_f_op_vec3_f32(vec3<f32>(-496f, -273f, 426f) - vec3<f32>(2105f, -1981f, -1478f)), vec4<u32>(4294967295u, u_input.a.x, u_input.b.x, u_input.a.x), _wgslsmith_mod_i32(-2147483647i, -2147483647i))), ~(~vec4<u32>(u_input.b.x, u_input.a.x, 0u, u_input.b.x)) << ((max(vec4<u32>(u_input.a.x, u_input.b.x, 1u, 53381u), vec4<u32>(18107u, 58224u, u_input.a.x, u_input.a.x)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(25382u, u_input.b.x, 4294967295u, 58794u), vec4<u32>(0u, u_input.a.x, 4294967295u, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(1u, _wgslsmith_add_u32(_wgslsmith_div_u32(71584u | u_input.a.x, u_input.b.x), countOneBits(u_input.a.x)), u_input.b.x, ~_wgslsmith_mod_u32(1u, u_input.b.x) | _wgslsmith_div_u32(~3011u, u_input.b.x)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(min(-256f, var_0.d.b.x)), _wgslsmith_f_op_f32(min(1297f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1338f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.d.b.x)) * _wgslsmith_f_op_f32(-var_0.d.b.x))))), -863f, -1330f);
    var var_2 = _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-1i, 0i, 0i, -1i), vec4<i32>(14721i, var_0.d.a, 0i, 7863i) & vec4<i32>(-2147483647i, var_0.d.a, 2147483647i, var_0.d.d)) ^ ~firstLeadingBit(vec4<i32>(25250i, var_0.d.a, var_0.d.a, var_0.d.d)), vec4<i32>(_wgslsmith_sub_i32(-2152i, var_0.d.d ^ var_0.d.a), var_0.d.d, var_0.d.d & abs(var_0.d.d), -(15150i | var_0.d.d))) & ~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.d.a, -2147483647i), vec2<i32>(var_0.d.d, 2147483647i)) & ~(-2147483647i), -var_0.d.a, _wgslsmith_div_i32(countOneBits(-2147483647i), 19696i | var_0.d.a), ~var_0.d.a);
    var var_3 = vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b.x, var_0.b.x, u_input.a.x, abs(var_0.a)), func_5(vec4<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(floor(var_0.d.b.x)), -313f, 2157f), var_0.b.x, func_4(-var_0.d.d, u_input.b.x | 0u, func_5(vec4<f32>(var_1.x, var_0.d.b.x, var_1.x, var_1.x), u_input.b.x, var_0.d.a, var_0.b), vec4<u32>(var_0.d.c.x, u_input.b.x, u_input.b.x, 1u)), vec4<u32>(firstLeadingBit(0u), 1u, ~var_0.b.x, countOneBits(u_input.b.x))).b), u_input.b.x);
    let var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.d.b + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), func_2(vec3<u32>(4294967295u, 0u, 24336u), var_1.x, vec3<bool>(true, var_0.c.x, false), var_0.d).d.b.x, var_0.d.b.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_0.d.b.x)))), var_1.x, 845f))));
    return -reverseBits(0i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 30>();
    global0 = array<Struct_1, 30>();
    var var_0 = select(-vec2<i32>(-2482i, _wgslsmith_mod_i32(-23538i, 45517i)), vec2<i32>(9542i, _wgslsmith_clamp_i32(-2147483647i, 2330i, -1i)) | (_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, 29541i), vec2<i32>(0i, 1i)) & (vec2<i32>(61112i, 85611i) << (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)))), vec2<bool>(false, true)) >> (u_input.b.zz % vec2<u32>(32u));
    var_0 = max(vec2<i32>(firstLeadingBit(~func_1()), _wgslsmith_mod_i32(-1i, var_0.x << (0u % 32u))), abs(vec2<i32>(-6778i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -2147483647i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(-24060i, var_0.x, var_0.x), vec3<i32>(2147483647i, var_0.x, var_0.x))))));
    var var_1 = abs(vec4<u32>(min(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 69143u, u_input.a.x), u_input.a) << ((u_input.b.x ^ u_input.b.x) % 32u), ~1u), firstLeadingBit(1u), 33539u, 4294967295u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b);
}

