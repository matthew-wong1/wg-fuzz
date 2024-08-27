struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: u32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    var var_0 = vec4<u32>(u_input.d.x, ~(~(~u_input.d.x) >> (0u % 32u)), u_input.d.x, _wgslsmith_add_u32(1u, u_input.d.x));
    var_0 = vec4<u32>(_wgslsmith_add_u32(select(~arg_0.d ^ 21773u, firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(75410u, u_input.d.x), arg_0.b.zy)), true | !arg_0.c.x), _wgslsmith_clamp_u32(_wgslsmith_mult_u32(var_0.x, 65046u), arg_1.b.x, ~u_input.d.x) | _wgslsmith_sub_u32(0u, abs(0u))), ~var_0.x, ~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.d.x, 2467u), _wgslsmith_div_u32(1u, var_0.x))), var_0.x);
    var var_1 = Struct_1(vec2<bool>(!all(select(arg_0.c.wxw, arg_0.c.xzz, true)), any(vec2<bool>(true, arg_1.c.x))), arg_1.b, !vec4<bool>(arg_0.c.x, arg_0.c.x, false, arg_0.c.x), arg_1.d, arg_0.e);
    let var_2 = Struct_1(!select(arg_0.c.xx, select(vec2<bool>(false, arg_0.c.x), select(vec2<bool>(var_1.a.x, false), vec2<bool>(arg_1.a.x, true), var_1.a.x), !var_1.c.x), true), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(132515u, 1u, 0u), ~vec3<u32>(u_input.d.x, var_0.x, arg_0.d)), ~firstTrailingBit(7345u), var_1.b.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.b.x, arg_1.b.x, 13847u), vec3<u32>(var_0.x, var_1.d, var_1.b.x))), vec4<bool>(any(!vec4<bool>(arg_1.a.x, true, false, arg_0.c.x)), all(select(vec2<bool>(var_1.c.x, arg_0.a.x), var_1.a, vec2<bool>(false, false))), _wgslsmith_f_op_f32(floor(1221f)) < _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(649f, 558f))), var_1.a.x), ~1u, arg_0.e);
    var var_3 = firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(arg_1.e, var_2.e), ~(-var_2.e.x), max(select(_wgslsmith_clamp_i32(35516i, var_1.e.x, var_1.e.x), var_2.e.x, true), (arg_0.e.x >> (var_0.x % 32u)) ^ (i32(-1i) * -11151i)), arg_0.e.x));
    return var_1.c.x;
}

fn func_2(arg_0: bool) -> Struct_1 {
    var var_0 = vec3<f32>(1000f, -422f, 312f);
    var var_1 = true;
    let var_2 = u_input.d.x;
    var_1 = all(!vec2<bool>(any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(true, true, true), vec3<bool>(arg_0, arg_0, false))), arg_0));
    var_1 = !arg_0;
    return Struct_1(select(!select(!vec2<bool>(false, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(false, false), vec2<bool>(arg_0, true)), vec2<bool>(arg_0, arg_0)), vec2<bool>(true, 1253f > _wgslsmith_f_op_f32(select(-833f, 862f, arg_0))), all(vec4<bool>(arg_0, 1219f == var_0.x, arg_0, func_3(Struct_1(vec2<bool>(arg_0, false), vec4<u32>(u_input.d.x, 8342u, 4294967295u, 65681u), vec4<bool>(false, arg_0, arg_0, false), u_input.d.x, vec4<i32>(-30836i, -30799i, 18337i, u_input.a)), Struct_1(vec2<bool>(arg_0, false), vec4<u32>(50577u, 60088u, 4294967295u, 1u), vec4<bool>(arg_0, arg_0, false, arg_0), u_input.d.x, vec4<i32>(16815i, -7131i, u_input.c.x, 17983i)))))), _wgslsmith_clamp_vec4_u32(min(vec4<u32>(u_input.d.x, 5258u, _wgslsmith_div_u32(4294967295u, var_2), _wgslsmith_mod_u32(u_input.d.x, 0u)), vec4<u32>(~u_input.d.x, reverseBits(var_2), 0u >> (var_2 % 32u), 0u)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 0u, u_input.d.x, 30537u), vec4<u32>(u_input.d.x, 851u, 1u, 0u)), ~(select(vec4<u32>(62927u, 4294967295u, 4294967295u, u_input.d.x), vec4<u32>(72297u, var_2, 43105u, 2807u), true) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(var_2, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(var_2, 50929u, var_2, var_2)))), !select(vec4<bool>(1u <= u_input.d.x, true, arg_0 || arg_0, any(vec3<bool>(true, arg_0, true))), select(select(vec4<bool>(true, true, true, arg_0), vec4<bool>(false, true, true, arg_0), vec4<bool>(false, arg_0, true, true)), vec4<bool>(true, arg_0, arg_0, true), !arg_0), select(select(vec4<bool>(false, arg_0, true, arg_0), vec4<bool>(false, false, arg_0, arg_0), arg_0), !vec4<bool>(arg_0, arg_0, arg_0, false), select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(true, false, false, false), true))), ~(~var_2), ~(~max(~vec4<i32>(2147483647i, -1i, u_input.a, u_input.c.x), vec4<i32>(u_input.b.x, 7728i, -2147483647i, -2147483647i) >> (vec4<u32>(u_input.d.x, 35296u, var_2, 14106u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    let var_0 = arg_1;
    var var_1 = arg_0;
    let var_2 = func_2(arg_1);
    var var_3 = Struct_1(vec2<bool>(true, !(var_1.d < 4294967295u)), var_2.b, select(var_1.c, arg_0.c, ((arg_1 & arg_0.a.x) != true) | arg_0.c.x), _wgslsmith_add_u32(1u, ((arg_0.d ^ var_2.d) >> ((var_1.b.x << (var_2.b.x % 32u)) % 32u)) >> (1u % 32u)), var_1.e);
    var var_4 = Struct_1(vec2<bool>(true, func_3(func_2(!var_0), Struct_1(vec2<bool>(false, var_3.c.x), vec4<u32>(11874u, arg_0.d, var_2.d, 0u), !var_3.c, abs(var_1.b.x), var_2.e))), func_2(true).b, !vec4<bool>(arg_0.d >= func_2(true).b.x, any(!vec4<bool>(var_2.c.x, false, var_2.c.x, false)), var_3.c.x | true, func_2(func_3(var_2, Struct_1(vec2<bool>(false, arg_1), var_2.b, var_1.c, var_2.b.x, var_1.e))).c.x), var_2.b.x, var_3.e);
    return vec2<bool>(var_3.a.x, !(!(67784i <= _wgslsmith_mult_i32(var_2.e.x, var_3.e.x))));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    let var_0 = Struct_1(!func_4(func_2(true), false), vec4<u32>(abs(u_input.d.x), 1u, ~12637u, u_input.d.x), vec4<bool>(!func_3(Struct_1(vec2<bool>(false, true), vec4<u32>(11283u, u_input.d.x, u_input.d.x, u_input.d.x), vec4<bool>(false, false, false, false), 1u, vec4<i32>(u_input.a, -28706i, -664i, u_input.a)), Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, u_input.d.x), vec4<bool>(false, true, false, false), u_input.d.x, vec4<i32>(-120097i, u_input.c.x, u_input.c.x, u_input.b.x))), -622f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) - arg_0), false, true), ~(~35069u << (_wgslsmith_dot_vec4_u32(vec4<u32>(49861u, 4294967295u, u_input.d.x, u_input.d.x) ^ vec4<u32>(u_input.d.x, 40133u, 28466u, 0u), max(vec4<u32>(15442u, u_input.d.x, 0u, 4294967295u), vec4<u32>(1u, u_input.d.x, u_input.d.x, u_input.d.x))) % 32u)), select(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, u_input.b.x, u_input.b.x, 9391i), vec4<i32>(u_input.a, 1i, u_input.a, 0i)), ~vec4<i32>(u_input.a, -73504i, -28316i, 2147483647i), !(387f == arg_0)) >> (~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.d.x, 43654u, 0u, 4294967295u), vec4<u32>(13455u, u_input.d.x, u_input.d.x, u_input.d.x)), vec4<u32>(u_input.d.x, 82757u, u_input.d.x, 4294967295u) & vec4<u32>(u_input.d.x, u_input.d.x, 34880u, u_input.d.x)) % vec4<u32>(32u)));
    var var_1 = func_2(select(true, var_0.c.x, var_0.c.x == true));
    var_1 = var_0;
    let var_2 = Struct_1(!(!(!(!vec2<bool>(var_0.a.x, var_1.a.x)))), ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(firstTrailingBit(var_0.b), var_0.b, ~vec4<u32>(var_1.b.x, 4294967295u, 1u, u_input.d.x)), ~vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 0u)), func_2(true).c, _wgslsmith_mod_u32(~var_0.b.x, ~(~var_1.b.x) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(62832u, u_input.d.x, u_input.d.x, 54140u), var_1.b >> (var_1.b % vec4<u32>(32u)))), var_1.e | vec4<i32>(var_0.e.x, 1i, min(firstTrailingBit(var_1.e.x), _wgslsmith_mult_i32(var_1.e.x, 30882i)), max(1i, var_0.e.x << (var_1.d % 32u))));
    let var_3 = 1i;
    return vec4<bool>(var_0.c.x, false, var_2.a.x & true, var_2.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec2<bool>((~u_input.b.x | _wgslsmith_sub_i32(u_input.b.x, -33676i)) >= 2147483647i, true | (select(10932i, 2147483647i, false) <= -u_input.a)), vec4<u32>(~firstTrailingBit(~0u), 1269u, 1u, _wgslsmith_mod_u32(14054u, u_input.d.x << (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 24029u), u_input.d.yz) % 32u))), !(!(!func_1(804f))), ~36607u, vec4<i32>(i32(-1i) * -u_input.a, -2147483647i, countOneBits(abs(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(-1i, 4232i, u_input.b.x)))), (-u_input.a & abs(u_input.c.x)) & -u_input.c.x));
    var var_1 = var_0.a.x == true;
    var var_2 = func_2(var_0.a.x);
    var_0 = Struct_1(select(var_0.a, !func_4(Struct_1(vec2<bool>(true, false), var_0.b, var_2.c, 11093u, var_2.e), true), func_4(Struct_1(!var_2.c.xz, countOneBits(vec4<u32>(13510u, var_0.d, 71019u, u_input.d.x)), select(vec4<bool>(false, false, var_0.a.x, var_2.a.x), var_0.c, var_2.c), ~var_2.b.x, max(var_0.e, var_0.e)), !(u_input.c.x < u_input.c.x))), var_2.b, var_2.c, _wgslsmith_mult_u32(0u, var_2.d), vec4<i32>(firstLeadingBit(_wgslsmith_div_i32(var_2.e.x, ~var_2.e.x)), u_input.c.x, ~var_2.e.x, _wgslsmith_clamp_i32(u_input.a, -27037i, i32(-1i) * -18669i)));
    var var_3 = func_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(267f, 1262f))).x || !var_0.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.x, var_3.b.zzx, u_input.a, 2262f);
}

