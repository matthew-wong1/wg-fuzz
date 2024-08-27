struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec4<u32>(36855u, 1u, 4294967295u, 1u), vec2<i32>(-1603i, i32(-2147483648)), i32(-2147483648), vec3<i32>(38972i, 32589i, i32(-2147483648))), Struct_1(vec4<u32>(54591u, 11796u, 876u, 49180u), vec2<i32>(0i, i32(-2147483648)), 19521i, vec3<i32>(1i, 10548i, 1i)), Struct_1(vec4<u32>(23042u, 40408u, 4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), 1i), -4602i, vec3<i32>(-12235i, -15689i, 2147483647i)), Struct_1(vec4<u32>(16819u, 29878u, 0u, 39823u), vec2<i32>(-39284i, 2147483647i), -24404i, vec3<i32>(2147483647i, -29871i, 27043i)), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), vec2<i32>(-1i, -15250i), 0i, vec3<i32>(2147483647i, 50553i, 23162i)), Struct_1(vec4<u32>(39296u, 32242u, 4294967295u, 28882u), vec2<i32>(-83102i, 1i), -1i, vec3<i32>(-2104i, 6975i, 28722i)), Struct_1(vec4<u32>(1u, 1u, 0u, 0u), vec2<i32>(1i, 2147483647i), 95054i, vec3<i32>(48958i, 19544i, 59180i)), Struct_1(vec4<u32>(1u, 1u, 21578u, 0u), vec2<i32>(i32(-2147483648), 48853i), 25905i, vec3<i32>(21927i, 43576i, 2147483647i)), Struct_1(vec4<u32>(54175u, 69667u, 0u, 4294967295u), vec2<i32>(17729i, -34702i), 1i, vec3<i32>(1i, -20810i, 35573i)), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 4294967295u), vec2<i32>(2147483647i, 0i), 11281i, vec3<i32>(46804i, i32(-2147483648), -1i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 19605u, 76044u), vec2<i32>(0i, 0i), i32(-2147483648), vec3<i32>(31267i, -1i, 0i)), Struct_1(vec4<u32>(0u, 1u, 53668u, 21916u), vec2<i32>(i32(-2147483648), i32(-2147483648)), -1i, vec3<i32>(-28588i, 2147483647i, 2147483647i)), Struct_1(vec4<u32>(1u, 0u, 2288u, 80143u), vec2<i32>(105744i, i32(-2147483648)), -29054i, vec3<i32>(39383i, 20702i, 2147483647i)), Struct_1(vec4<u32>(85470u, 35081u, 40993u, 22012u), vec2<i32>(2147483647i, -57669i), -85452i, vec3<i32>(i32(-2147483648), 2147483647i, 74686i)), Struct_1(vec4<u32>(1u, 4294967295u, 26802u, 4687u), vec2<i32>(2147483647i, -17002i), i32(-2147483648), vec3<i32>(0i, 1i, 0i)));

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<u32>(5054u, 0u, 4294967295u, 4294967295u), vec2<i32>(15767i, 2147483647i), 1i, vec3<i32>(i32(-2147483648), 0i, -1i)), Struct_1(vec4<u32>(11382u, 24500u, 57962u, 0u), vec2<i32>(0i, i32(-2147483648)), -45782i, vec3<i32>(-16442i, -572i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1831u), vec2<i32>(1i, i32(-2147483648)), i32(-2147483648), vec3<i32>(1i, i32(-2147483648), 12436i)), Struct_1(vec4<u32>(21141u, 4294967295u, 0u, 35225u), vec2<i32>(-1i, -1i), i32(-2147483648), vec3<i32>(-1i, 1i, i32(-2147483648))), Struct_1(vec4<u32>(0u, 0u, 81u, 4294967295u), vec2<i32>(-19642i, 0i), -28662i, vec3<i32>(-1i, i32(-2147483648), -23301i)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = vec4<i32>(i32(-1i) * -22985i, _wgslsmith_dot_vec2_i32(vec2<i32>(reverseBits(i32(-1i) * -2147483647i), 1i), min(vec2<i32>(1i, 1i), -max(vec2<i32>(-5510i, 1i), vec2<i32>(8329i, -1i)))), 9199i, ~max(~countOneBits(1i), _wgslsmith_sub_i32(-1i, -10210i)));
    var_0 = vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~abs(vec3<i32>(var_0.x, 1i, var_0.x)), var_0.xxw), vec3<i32>(-(~var_0.x), firstLeadingBit(abs(-1i)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, var_0.x), var_0.x))), var_0.x, _wgslsmith_mult_i32(~_wgslsmith_mult_i32(var_0.x << (1u % 32u), max(-2147483647i, var_0.x)), ~abs(var_0.x)), var_0.x);
    let var_1 = !any(select(vec3<bool>(true, true, any(vec3<bool>(false, false, false))), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), true), !any(vec4<bool>(false, true, false, false))));
    var_0 = firstTrailingBit(vec4<i32>(countOneBits(abs(2147483647i)), var_0.x, ~_wgslsmith_mod_i32(-2147483647i, var_0.x), ~1i));
    var var_2 = select(!(!(!vec4<bool>(var_1, true, true, false))), select(vec4<bool>(true, !var_1, false, true), !select(!vec4<bool>(var_1, var_1, var_1, true), select(vec4<bool>(var_1, false, false, false), vec4<bool>(false, false, var_1, var_1), true), var_1), !vec4<bool>(false, var_1, var_1, any(vec4<bool>(true, var_1, false, false)))), vec4<bool>(all(select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, var_1, var_1), var_1)) || var_1, true, true, var_1));
    return 1i;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = func_3();
    let var_1 = countOneBits(firstLeadingBit(func_3()));
    var_0 = var_1;
    global1 = array<Struct_1, 5>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(arg_0), 56758u), 15u)];
    return ~(~(~_wgslsmith_clamp_u32(~42309u, _wgslsmith_dot_vec2_u32(vec2<u32>(40472u, var_2.a.x), vec2<u32>(arg_0, arg_0)), var_2.a.x)));
}

fn func_1(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = select(!vec3<bool>(any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true, (15286u >= u_input.a.x) & true), select(vec3<bool>(false, func_2(40048u) >= abs(31851u), true), vec3<bool>(false, false, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !all(vec2<bool>(true, true)))), !select(!select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), true));
    var_0 = vec3<bool>(true, true, var_0.x);
    global0 = array<Struct_1, 15>();
    var_0 = select(!vec3<bool>(false, _wgslsmith_f_op_f32(round(1247f)) != 1560f, var_0.x | true), select(!select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, false, false), vec3<bool>(var_0.x, true, true)), !vec3<bool>(false, var_0.x, var_0.x), !var_0.x), !(!(!vec3<bool>(false, false, var_0.x))), false), vec3<bool>(true, true, true));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1231f, _wgslsmith_f_op_f32(ceil(-796f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f * _wgslsmith_f_op_f32(f32(-1f) * -142f))))), -800f));
    return vec3<i32>(select(-36056i, arg_0.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_1)))) >= _wgslsmith_f_op_f32(var_1 + -1971f)), arg_0.b.x >> (u_input.a.x % 32u), -countOneBits(arg_0.b.x ^ arg_0.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~16419u, 5u)];
    let var_1 = global1[_wgslsmith_index_u32(~var_0.a.x, 5u)];
    global0 = array<Struct_1, 15>();
    let var_2 = Struct_1(vec4<u32>(4294967295u, _wgslsmith_clamp_u32(52379u & firstTrailingBit(2243u), u_input.a.x << (abs(u_input.a.x) % 32u), 11535u), 0u, var_1.a.x), var_1.b << (var_1.a.yz % vec2<u32>(32u)), _wgslsmith_mod_i32(var_0.c, firstTrailingBit(~_wgslsmith_dot_vec2_i32(vec2<i32>(-9222i, -24097i), var_0.d.xz))), func_1(global1[_wgslsmith_index_u32(var_1.a.x, 5u)]));
    global1 = array<Struct_1, 5>();
    var var_3 = Struct_1(vec4<u32>(42540u, u_input.a.x, countOneBits(var_1.a.x), _wgslsmith_clamp_u32(reverseBits(~var_2.a.x), max(var_2.a.x, 42514u) & 1u, ~(~45521u))), abs(var_1.b) >> (vec2<u32>(var_1.a.x, u_input.a.x) % vec2<u32>(32u)), ~var_0.d.x, vec3<i32>(var_0.c, ~func_1(global1[_wgslsmith_index_u32(56765u, 5u)]).x, firstTrailingBit(-1i)));
    global1 = array<Struct_1, 5>();
    var_3 = Struct_1(~min(~vec4<u32>(u_input.a.x, var_1.a.x, 17149u, var_0.a.x) << (firstLeadingBit(var_0.a) % vec4<u32>(32u)), select(max(vec4<u32>(21365u, 21046u, var_2.a.x, 38468u), vec4<u32>(1u, 1u, 1u, var_1.a.x)), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_3.a.x, 1u, 4294967295u, 1u), vec4<u32>(var_3.a.x, var_0.a.x, var_3.a.x, var_3.a.x), vec4<u32>(17502u, u_input.a.x, var_1.a.x, 1u)), vec4<bool>(true, true, true, true))), var_1.d.yy, ~(~func_1(Struct_1(var_3.a, var_0.d.zz, var_2.d.x, vec3<i32>(0i, -2147483647i, var_1.b.x))).x), vec3<i32>(min(-835i, var_0.b.x), firstTrailingBit(var_1.d.x), _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(var_3.b.x, var_0.b.x, var_0.d.x, 0i) | vec4<i32>(var_3.d.x, var_2.d.x, var_0.b.x, -1368i)), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, -1i, var_2.c, 48354i), vec4<i32>(var_2.c, var_0.c, var_0.c, 14749i)), vec4<i32>(-38899i, var_0.c, 7686i, var_0.b.x) & vec4<i32>(var_0.d.x, 31582i, var_3.c, -2147483647i)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1000f, 491f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1119f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-140f, -1000f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(232f, -643f)) * -699f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(918f - -244f))))), _wgslsmith_clamp_u32(~var_1.a.x << (4294967295u % 32u), ~u_input.a.x, ~var_1.a.x));
}

