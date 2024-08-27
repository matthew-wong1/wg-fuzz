struct Struct_1 {
    a: f32,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> vec2<i32> {
    var var_0 = Struct_3(arg_1, !vec3<bool>(arg_0.c.x, arg_0.b.x, false), !(!arg_0.c));
    var var_1 = ~select(1i, reverseBits(-1i), arg_0.c.x);
    var_0 = Struct_3(Struct_2(max(arg_1.a, vec4<i32>(var_0.a.d.c.x, -2147483647i, -26345i, reverseBits(-6740i))), u_input.b, var_0.a.c, var_0.a.d), var_0.c.zzw, select(select(vec4<bool>(all(vec3<bool>(var_0.c.x, arg_0.b.x, false)), arg_0.c.x || arg_0.b.x, false, true), arg_0.c, !select(vec4<bool>(arg_0.b.x, arg_0.b.x, true, arg_0.c.x), var_0.c, arg_0.c)), select(var_0.c, vec4<bool>(true, !var_0.c.x, any(vec2<bool>(var_0.b.x, false)), !var_0.b.x), select(select(arg_0.c, var_0.c, vec4<bool>(false, var_0.b.x, true, var_0.b.x)), !vec4<bool>(false, false, false, arg_0.c.x), vec4<bool>(true, var_0.c.x, arg_0.c.x, false))), !any(vec4<bool>(true, arg_0.c.x, var_0.b.x, var_0.b.x))));
    let var_2 = select(var_0.c.zx, !vec2<bool>(36044u != max(arg_0.a.d.d, arg_1.b), !(var_0.b.x & true)), vec2<bool>(true, !(!arg_0.c.x)));
    var var_3 = _wgslsmith_f_op_f32(max(arg_1.d.a, _wgslsmith_f_op_f32(round(-1550f))));
    return var_0.a.c >> (~(~vec2<u32>(arg_0.a.b, ~4471u)) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -182f), reverseBits(-2147483647i), ~(func_3(Struct_3(Struct_2(vec4<i32>(-2147483647i, arg_1, u_input.a, arg_1), 783u, vec2<i32>(-1i, u_input.a), Struct_1(-862f, -17530i, vec2<i32>(-4317i, u_input.a), 1u)), vec3<bool>(true, false, true), vec4<bool>(false, false, true, false)), Struct_2(vec4<i32>(-19429i, u_input.a, arg_1, 26006i), arg_0.x, vec2<i32>(-47897i, 0i), Struct_1(-1466f, -12324i, vec2<i32>(13371i, 0i), u_input.b)), 73063i) << (~(~arg_0.zz) % vec2<u32>(32u))), 0u);
    let var_1 = _wgslsmith_add_i32(arg_1 >> (countOneBits(u_input.b) % 32u), firstLeadingBit(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, arg_1, var_0.b), -vec3<i32>(-2147483647i, u_input.a, u_input.a)))));
    return Struct_2(~vec4<i32>(~var_0.c.x, -u_input.a, u_input.a, max(2147483647i, 2147483647i)) | -reverseBits(-vec4<i32>(1i, 12499i, 2147483647i, var_0.c.x)), select(1u, 41699u, any(vec2<bool>(true, false))), countOneBits(countOneBits(vec2<i32>(min(-25979i, 2147483647i), arg_1))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-843f)))), -2147483647i, _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(33781i, var_1), var_0.c), firstLeadingBit(firstLeadingBit(var_0.c)), _wgslsmith_add_vec2_i32(-var_0.c, max(var_0.c, vec2<i32>(0i, arg_1)))), reverseBits(1u)));
}

fn func_1(arg_0: vec4<i32>) -> u32 {
    let var_0 = 0u;
    var var_1 = func_2(vec3<u32>(var_0, 32418u, var_0), _wgslsmith_dot_vec3_i32(vec3<i32>(39614i, -5299i, -1i), -(vec3<i32>(0i, 10852i, u_input.a) ^ vec3<i32>(u_input.a, 4i, -33495i)) ^ _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(9980i, u_input.a, arg_0.x), vec3<i32>(-21005i, u_input.a, 0i)), select(vec3<i32>(-2147483647i, arg_0.x, -2147483647i), vec3<i32>(u_input.a, u_input.a, 2147483647i), vec3<bool>(true, false, true)), vec3<i32>(1i, -2147483647i, 0i))));
    var_1 = func_2(_wgslsmith_add_vec3_u32(reverseBits(vec3<u32>(var_0, ~var_0, 37974u)), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(0u, u_input.b, var_0), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 1u), vec3<u32>(4294967295u, 4294967295u, 4294967295u)))), u_input.a);
    let var_2 = Struct_4(any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false)))), vec4<i32>(70158i, _wgslsmith_dot_vec3_i32(~(vec3<i32>(arg_0.x, var_1.a.x, var_1.c.x) >> (vec3<u32>(var_0, var_0, var_1.d.d) % vec3<u32>(32u))), abs(vec3<i32>(48952i, 0i, 1i))), arg_0.x, var_1.c.x), var_1.a);
    var var_3 = var_1.d;
    return ~(~13582u);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<u32>, arg_3: Struct_2) -> Struct_4 {
    let var_0 = arg_0.a;
    var var_1 = arg_1;
    let var_2 = _wgslsmith_add_u32(reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3.d.d, u_input.b), arg_2.zz)), arg_3.d.d);
    var var_3 = arg_2.zzz;
    var var_4 = arg_3;
    return Struct_4(true, ~(~select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_4.c.x, 0i, -1i, 1i), vec4<i32>(-38780i, arg_1.c.x, -1i, 29273i)), -var_4.a, false)), -firstLeadingBit(vec4<i32>(-42152i, 36896i, -18014i, -55222i) | var_4.a));
}

fn func_5(arg_0: Struct_4) -> Struct_3 {
    let var_0 = ~(~vec3<u32>(4294967295u << (u_input.b % 32u), firstLeadingBit(u_input.b), 6141u)) & _wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(u_input.b, 21940u, 1u)), vec3<u32>(~(u_input.b >> (13251u % 32u)), 44880u, u_input.b));
    var var_1 = 4294967295u;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-2221f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-147f, -285f))))));
    var var_3 = func_2(_wgslsmith_mult_vec3_u32(max(~(~vec3<u32>(var_0.x, var_0.x, var_0.x)), ~min(vec3<u32>(u_input.b, u_input.b, var_0.x), vec3<u32>(u_input.b, var_0.x, 45847u))), _wgslsmith_add_vec3_u32(firstTrailingBit(var_0), vec3<u32>(1u, ~4294967295u, firstTrailingBit(62071u)))), 72003i & abs(arg_0.c.x)).d;
    var_1 = ~(~(~var_3.d) << (min(var_0.x << (4294967295u % 32u), 1u) % 32u)) & ~16533u;
    return Struct_3(func_2(var_0, u_input.a ^ ~(-1i >> (0u % 32u))), select(vec3<bool>(true, any(vec3<bool>(true, true, true)), arg_0.a), select(select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(arg_0.a, true, false), arg_0.a), !select(vec3<bool>(arg_0.a, arg_0.a, false), vec3<bool>(false, false, arg_0.a), arg_0.a), select(vec3<bool>(arg_0.a, true, arg_0.a), !vec3<bool>(arg_0.a, arg_0.a, true), select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a, arg_0.a, false), arg_0.a))), arg_0.a & true), !select(!vec4<bool>(arg_0.a, true, true, false), select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true), !vec4<bool>(arg_0.a, false, arg_0.a, arg_0.a), true), vec4<bool>(!arg_0.a, arg_0.a, false, arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(Struct_4(_wgslsmith_f_op_f32(round(-1083f)) == 294f, ~vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), abs(abs(vec4<i32>(u_input.a, 24364i, 63978i, u_input.a)))), Struct_4(true, -select(vec4<i32>(32097i, 2147483647i, -2147483647i, u_input.a), vec4<i32>(67041i, u_input.a, u_input.a, u_input.a), true), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, 58365i, 49358i) ^ vec4<i32>(u_input.a, -1i, u_input.a, u_input.a), firstTrailingBit(vec4<i32>(14075i, 46743i, u_input.a, u_input.a)))), vec4<u32>(func_1(~vec4<i32>(0i, u_input.a, u_input.a, u_input.a)), u_input.b, 1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 63092u), vec2<u32>(1u, 4294967295u))), Struct_2(vec4<i32>(u_input.a, 0i, u_input.a, 8099i) ^ func_2(vec3<u32>(u_input.b, u_input.b, 1u), -24009i).a, 1u, vec2<i32>(func_3(Struct_3(Struct_2(vec4<i32>(u_input.a, u_input.a, -3592i, 48138i), u_input.b, vec2<i32>(36002i, -10557i), Struct_1(-1743f, u_input.a, vec2<i32>(-2147483647i, u_input.a), 4294967295u)), vec3<bool>(true, true, true), vec4<bool>(false, false, false, false)), Struct_2(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), 3585u, vec2<i32>(-42242i, u_input.a), Struct_1(1000f, u_input.a, vec2<i32>(u_input.a, u_input.a), u_input.b)), u_input.a).x, u_input.a), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -237f), u_input.a, ~vec2<i32>(u_input.a, 0i), select(53106u, u_input.b, true)))));
    let var_1 = Struct_4(var_0.c.x, _wgslsmith_sub_vec4_i32(var_0.a.a, var_0.a.a), vec4<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -77902i, 0i) & vec3<i32>(var_0.a.c.x, u_input.a, 56784i), var_0.a.a.wxx), -1i, countOneBits(i32(-1i) * -64957i)) ^ abs(~countOneBits(vec4<i32>(-1i, -1i, 79598i, var_0.a.a.x))));
    var_0 = func_5(func_4(Struct_4(!var_0.c.x, reverseBits(var_0.a.a), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, u_input.a, var_1.b.x, var_0.a.d.b), vec4<i32>(-2147483647i, 0i, var_1.b.x, var_0.a.a.x)), ~var_0.a.a)), func_4(func_4(func_4(var_1, var_1, vec4<u32>(1u, u_input.b, 1849u, var_0.a.d.d), Struct_2(var_1.b, 1u, vec2<i32>(var_0.a.d.b, u_input.a), Struct_1(var_0.a.d.a, -52695i, vec2<i32>(-1i, var_1.b.x), var_0.a.d.d))), var_1, ~vec4<u32>(1u, var_0.a.d.d, 65318u, 1061u), func_5(var_1).a), func_4(Struct_4(false, var_1.c, vec4<i32>(-1404i, u_input.a, -81006i, u_input.a)), var_1, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 54469u, u_input.b, 0u), vec4<u32>(49762u, var_0.a.d.d, var_0.a.b, 31286u)), var_0.a), abs(vec4<u32>(u_input.b, 55420u, 28982u, u_input.b)), func_5(var_1).a), ~vec4<u32>(u_input.b, firstLeadingBit(u_input.b), var_0.a.d.d, ~u_input.b), func_2(firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 53761u)), 0i)));
    var var_2 = func_5(var_1);
    var var_3 = func_3(Struct_3(Struct_2(var_1.c, 13969u, vec2<i32>(var_1.b.x >> (36715u % 32u), ~(-1i)), Struct_1(var_2.a.d.a, -31721i, var_2.a.a.zz, func_2(vec3<u32>(35543u, u_input.b, u_input.b), -2147483647i).b)), var_2.b, var_2.c), var_2.a, ~(~firstTrailingBit(min(var_2.a.c.x, 1i)))).x;
    var var_4 = Struct_3(func_5(func_4(var_1, Struct_4(var_2.b.x, vec4<i32>(30077i, 26332i, 44405i, 1i), vec4<i32>(-2147483647i, 10422i, var_1.c.x, var_2.a.d.c.x)), (vec4<u32>(var_0.a.b, var_2.a.d.d, 1u, 0u) << (vec4<u32>(var_0.a.d.d, 0u, 33208u, var_2.a.d.d) % vec4<u32>(32u))) | ~vec4<u32>(var_0.a.d.d, 9518u, 71389u, var_2.a.d.d), func_5(func_4(Struct_4(true, var_2.a.a, var_2.a.a), var_1, vec4<u32>(u_input.b, 0u, var_2.a.d.d, var_0.a.d.d), Struct_2(var_1.c, u_input.b, var_2.a.a.yy, var_2.a.d))).a)).a, var_0.b, func_5(var_1).c);
    let x = u_input.a;
    s_output = StorageBuffer(-11867i, var_4.a.a.yyw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1465f, var_2.a.d.a, -797f), vec3<f32>(var_4.a.d.a, var_2.a.d.a, var_2.a.d.a))) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.d.a, var_2.a.d.a, 212f), vec3<f32>(var_2.a.d.a, -174f, 1734f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d.a, var_4.a.d.a, 199f))))), vec3<f32>(-1092f, var_4.a.d.a, var_2.a.d.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a.d.a, _wgslsmith_f_op_f32(trunc(var_2.a.d.a)))))));
}

