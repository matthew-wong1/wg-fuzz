struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(0i, -72923i), vec3<i32>(0i, 0i, 1i), -1i, vec3<u32>(4294967295u, 75758u, 44806u), false);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_3(Struct_1(vec2<i32>(global0.b.x & global0.b.x, -1i), global0.b, _wgslsmith_mult_i32(~global0.c, ~(-35054i)) | global0.b.x, global0.d, global0.e), Struct_1(-firstTrailingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(global0.a.x, global0.a.x), vec2<i32>(-75656i, -9656i))), firstTrailingBit(global0.b), global0.c, global0.d, all(!(!vec3<bool>(false, false, global0.e)))));
    var var_1 = _wgslsmith_sub_vec3_i32(select(vec3<i32>(i32(-1i) * -9248i, _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.b.x, global0.b.x), global0.a), var_0.a.a.x), max(~(~vec3<i32>(var_0.b.c, -21660i, var_0.b.c)), vec3<i32>(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -2147483647i, global0.b.x, global0.a.x), vec4<i32>(2147483647i, global0.c, global0.c, 32513i)), var_0.a.c << (u_input.b % 32u))), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, var_0.a.e), 20116u > global0.d.x), select(vec3<bool>(global0.e, true, false), !vec3<bool>(true, var_0.a.e, global0.e), select(vec3<bool>(false, global0.e, false), vec3<bool>(global0.e, global0.e, true), vec3<bool>(global0.e, var_0.a.e, true))), !(!vec3<bool>(true, global0.e, global0.e)))), var_0.b.b);
    var var_2 = global0.a.x;
    var var_3 = _wgslsmith_mult_i32(var_1.x & global0.a.x, 0i);
    let var_4 = _wgslsmith_mult_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(6800u, u_input.a, 0u, 41203u), vec4<u32>(global0.d.x, 27480u, global0.d.x, 0u), vec4<u32>(global0.d.x, 1u, global0.d.x, 53993u)) ^ select(_wgslsmith_clamp_vec4_u32(vec4<u32>(global0.d.x, global0.d.x, 133581u, 1u), vec4<u32>(var_0.a.d.x, 15105u, 17162u, 30209u), vec4<u32>(51021u, var_0.a.d.x, global0.d.x, u_input.b)), vec4<u32>(global0.d.x, 45925u, u_input.a, global0.d.x) | vec4<u32>(27238u, u_input.a, global0.d.x, var_0.a.d.x), vec4<bool>(true, true, global0.e, true)), vec4<u32>(global0.d.x, 4294967295u, var_0.a.d.x, 4294967295u)) & _wgslsmith_sub_vec4_u32(min(min(vec4<u32>(global0.d.x, 10591u, var_0.a.d.x, u_input.b), vec4<u32>(0u, var_0.a.d.x, var_0.b.d.x, u_input.a)), ~vec4<u32>(var_0.b.d.x, var_0.b.d.x, 33713u, u_input.a)) & _wgslsmith_sub_vec4_u32(vec4<u32>(1u, global0.d.x, 4294967295u, global0.d.x) << (vec4<u32>(23005u, 1u, 1u, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.b, global0.d.x, u_input.b, global0.d.x) << (vec4<u32>(5047u, global0.d.x, 1u, global0.d.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(abs(~vec4<u32>(global0.d.x, 4294967295u, var_0.b.d.x, 1u)), vec4<u32>(~u_input.b, 1u, countOneBits(49353u), 4294967295u)));
    return ~global0.d;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mult_vec3_i32(global0.b, global0.b), Struct_1(vec2<i32>(_wgslsmith_mod_i32(88627i, -30249i), _wgslsmith_div_i32(17483i, 26623i)), vec3<i32>(global0.a.x, _wgslsmith_clamp_i32(global0.b.x, -global0.b.x, global0.c), _wgslsmith_add_i32(global0.a.x, 0i)), _wgslsmith_sub_i32(global0.b.x, 43302i), func_3(), global0.e), Struct_1(reverseBits(_wgslsmith_clamp_vec2_i32(reverseBits(global0.b.yz), ~vec2<i32>(0i, 15907i), -vec2<i32>(63906i, global0.a.x))), vec3<i32>(_wgslsmith_add_i32(7911i, _wgslsmith_dot_vec3_i32(vec3<i32>(52723i, global0.a.x, global0.a.x), vec3<i32>(global0.a.x, global0.c, global0.a.x))), 3062i, global0.c), global0.c, vec3<u32>(1u & ~u_input.a, reverseBits(51316u), 67828u), all(select(vec2<bool>(global0.e, true), vec2<bool>(false, true), false || global0.e))), Struct_1(~vec2<i32>(i32(-1i) * -37931i, global0.a.x), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.b.x, global0.c, global0.a.x), max(global0.b, global0.b)) ^ vec3<i32>(1i, countOneBits(-2147483647i), _wgslsmith_div_i32(global0.a.x, global0.b.x)), -global0.a.x, global0.d, abs(reverseBits(0u)) > _wgslsmith_add_u32(max(u_input.b, u_input.b), 0u)), _wgslsmith_dot_vec3_u32(global0.d, vec3<u32>(41176u, u_input.a, select(_wgslsmith_add_u32(global0.d.x, global0.d.x), ~48728u, all(vec2<bool>(true, global0.e))))));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, global0.a.x), _wgslsmith_mod_vec2_i32(abs(select(vec2<i32>(0i, global0.c), vec2<i32>(2147483647i, -2772i), vec2<bool>(var_0.b.e, var_0.d.e))), ~countOneBits(global0.b.zy))), _wgslsmith_mod_vec3_i32(vec3<i32>(global0.c, ~(-27195i), -(~var_0.c.a.x)), var_0.c.b), global0.b.x, _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(var_0.c.d, vec3<u32>(global0.d.x >> (19878u % 32u), var_0.c.d.x ^ var_0.c.d.x, 0u & var_0.e)), ~global0.d, vec3<u32>(4294967295u, 0u, _wgslsmith_mult_u32(~33941u, func_3().x))), !var_0.c.e);
    var_0 = Struct_2(max(var_0.a, countOneBits(~(~global0.b))), var_0.c, var_0.c, var_0.b, firstTrailingBit(_wgslsmith_dot_vec3_u32(global0.d, _wgslsmith_mod_vec3_u32(var_1.d, vec3<u32>(13760u, var_0.c.d.x, global0.d.x)))));
    var var_2 = Struct_2(firstLeadingBit(var_0.d.b), var_0.b, var_0.d, var_0.c, 14493u);
    var_0 = Struct_2(-(~(~(~vec3<i32>(2147483647i, -29029i, -32238i)))), Struct_1(vec2<i32>(abs(-global0.b.x), var_1.b.x), vec3<i32>(~(~var_2.a.x), countOneBits(25890i) << ((global0.d.x & 90216u) % 32u), ~var_2.a.x), _wgslsmith_add_i32(~var_1.a.x, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(var_1.b, vec3<i32>(2147483647i, global0.c, var_1.c)), ~var_2.b.c)), var_2.c.d, var_0.d.e), Struct_1(min(-var_0.a.xx | var_1.a, vec2<i32>(var_2.d.a.x, ~var_1.a.x)), ~((vec3<i32>(3546i, -43534i, global0.c) & vec3<i32>(-7491i, 2147483647i, -1i)) & var_0.d.b), -2147483647i, vec3<u32>(_wgslsmith_div_u32(~1u, 42122u), global0.d.x, 1u), _wgslsmith_div_i32(var_2.d.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-4774i, var_1.a.x, 1i, 12570i), vec4<i32>(24493i, var_2.a.x, -8201i, global0.c))) <= select(-var_0.a.x, ~var_1.a.x, -2147483647i >= var_0.d.c)), var_2.d, ~var_2.c.d.x);
    return Struct_1(firstLeadingBit(vec2<i32>(-reverseBits(2147483647i), -32807i)), max(~_wgslsmith_add_vec3_i32(~global0.b, var_0.b.b << (vec3<u32>(var_1.d.x, var_0.c.d.x, u_input.b) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(var_2.b.b, ~vec3<i32>(-1i, -35998i, var_2.d.c))), ~(~(~(~global0.c))), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(select(global0.d, var_1.d << (vec3<u32>(63408u, 4294967295u, 1u) % vec3<u32>(32u)), var_1.e), var_1.d), ((vec3<u32>(var_1.d.x, 10097u, 1u) >> (vec3<u32>(var_1.d.x, u_input.b, 0u) % vec3<u32>(32u))) ^ reverseBits(vec3<u32>(global0.d.x, 232u, 20436u))) | ~vec3<u32>(global0.d.x, var_0.e, u_input.b), vec3<u32>(global0.d.x, var_1.d.x, _wgslsmith_mod_u32(_wgslsmith_add_u32(1u, u_input.a), 76948u))), global0.e);
}

fn func_1() -> Struct_2 {
    var var_0 = 4294967295u;
    var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.b), global0.d.xx);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -755f)), 1f))));
    var var_2 = 17020i;
    var_2 = global0.b.x;
    return Struct_2(vec3<i32>(_wgslsmith_mult_i32(global0.a.x, -1i), 2147483647i, 2307i), func_2(), Struct_1(global0.b.zz, reverseBits(countOneBits(reverseBits(vec3<i32>(34798i, global0.b.x, global0.b.x)))), abs(~global0.b.x), func_3(), global0.e), Struct_1(vec2<i32>(-(-46856i >> (0u % 32u)), -1i), global0.b, abs(~(~global0.a.x)), select(_wgslsmith_sub_vec3_u32(vec3<u32>(132756u, u_input.a, u_input.a), vec3<u32>(1u, global0.d.x, u_input.b)), func_2().d, select(vec3<bool>(true, global0.e, false), vec3<bool>(true, true, global0.e), vec3<bool>(true, global0.e, global0.e))) & ~_wgslsmith_div_vec3_u32(global0.d, global0.d), false), _wgslsmith_mult_u32(~global0.d.x, u_input.a & 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_1();
    var var_2 = vec3<u32>(reverseBits(23623u), 1u, 11278u) >> (~(~(global0.d << (vec3<u32>(2832u, 4294967295u, global0.d.x) % vec3<u32>(32u))) & (min(var_1.d.d, global0.d) >> (_wgslsmith_add_vec3_u32(vec3<u32>(var_1.d.d.x, 4294967295u, global0.d.x), vec3<u32>(37708u, 0u, 1u)) % vec3<u32>(32u)))) % vec3<u32>(32u));
    var_2 = vec3<u32>(min(~min(_wgslsmith_mult_u32(33987u, 1u), ~61952u), 1u), abs(_wgslsmith_add_u32(1u, ~(~23818u))), 0u >> (_wgslsmith_mult_u32(min(_wgslsmith_mult_u32(var_2.x, u_input.a), _wgslsmith_div_u32(var_2.x, global0.d.x)), max(~1u, 37853u)) % 32u));
    var_1 = Struct_2(vec3<i32>(i32(-1i) * -2147483647i, -16892i, var_1.c.a.x), Struct_1(var_1.c.b.yy, global0.b, min(_wgslsmith_div_i32(-57976i, _wgslsmith_add_i32(var_1.d.c, -69368i)), ~var_1.c.a.x), var_1.d.d, _wgslsmith_sub_u32(var_1.c.d.x, u_input.a) < 4437u), var_1.d, var_1.d, func_1().c.d.x);
    var_1 = func_1();
    var var_3 = Struct_3(var_1.d, Struct_1(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(global0.a, -global0.a), func_1().c.a), -(func_2().b & -global0.b), var_1.a.x, var_1.c.d, any(select(select(vec4<bool>(false, true, var_1.c.e, true), vec4<bool>(false, true, true, global0.e), vec4<bool>(var_1.c.e, var_1.b.e, false, global0.e)), vec4<bool>(false, true, global0.e, true), vec4<bool>(global0.e, false, global0.e, global0.e)))));
    let var_4 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(~var_3.a.b.zy, func_1().a.yx), func_2().a | vec2<i32>(_wgslsmith_clamp_i32(var_1.b.b.x, var_3.a.a.x, 1i), ~var_3.b.b.x)), global0.b, -_wgslsmith_mult_i32(global0.c, 2147483647i), vec3<u32>(u_input.a, var_3.a.d.x, ~global0.d.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(~0u, select(global0.d, _wgslsmith_mod_vec3_u32(vec3<u32>(~var_0, var_0, var_2.x), ~abs(var_4.d)), var_4.c == -1i), ~((func_2().a ^ ~vec2<i32>(-1i, var_3.a.b.x)) >> (var_2.xx % vec2<u32>(32u))));
}

