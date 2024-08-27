struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-1i, -1i, 2147483647i, 0i, -37013i, 11229i, 10970i, 2147483647i, 0i, -1i, 2147483647i, 60i, -1i, -7198i, 1i, 2147483647i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_3) -> vec3<u32> {
    global0 = array<i32, 16>();
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1130f, arg_1.b.x, _wgslsmith_f_op_f32(-arg_1.b.x))));
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    return abs(~(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, 12476u, 4294967295u), ~vec3<u32>(u_input.b.x, arg_1.a, u_input.b.x))));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: Struct_1) -> Struct_2 {
    global0 = array<i32, 16>();
    let var_0 = arg_2.b.x;
    let var_1 = Struct_4(Struct_2(!select(!arg_0, vec2<bool>(false, false), select(arg_0, arg_0, false)), Struct_1(~(u_input.a.zx >> (vec2<u32>(4294967295u, arg_2.c.x) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(round(arg_2.b)), ~abs(vec3<u32>(24662u, 13787u, 49169u)), u_input.a.zz), Struct_1(abs(vec2<i32>(1i, arg_2.d.x)) << (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u)), arg_2.b, reverseBits(abs(u_input.b.zyz)), (vec2<i32>(-9320i, arg_2.d.x) << (arg_2.c.yy % vec2<u32>(32u))) | vec2<i32>(-2147483647i, -6731i)), Struct_1(-vec2<i32>(43156i, global0[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_2.b)), func_3(-vec4<i32>(33875i, global0[_wgslsmith_index_u32(arg_2.c.x, 16u)], arg_2.a.x, arg_2.a.x), Struct_3(arg_2.c.x, vec3<f32>(arg_2.b.x, 906f, 1000f))), arg_2.a), select(!(!vec3<bool>(arg_0.x, arg_0.x, arg_0.x)), select(select(vec3<bool>(false, true, arg_0.x), vec3<bool>(false, arg_0.x, true), vec3<bool>(false, arg_0.x, false)), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, arg_0.x, false), true), !vec3<bool>(arg_0.x, false, arg_0.x)), select(!vec3<bool>(true, arg_0.x, true), select(vec3<bool>(arg_0.x, arg_0.x, false), vec3<bool>(false, arg_0.x, arg_0.x), vec3<bool>(arg_0.x, false, false)), vec3<bool>(false, arg_0.x, false)))), Struct_2(!vec2<bool>(!arg_0.x, !arg_0.x), Struct_1(abs(vec2<i32>(u_input.a.x, 21386i) & vec2<i32>(-28076i, -12890i)), arg_2.b, abs(vec3<u32>(u_input.b.x, 15226u, 54864u)) << (~vec3<u32>(arg_2.c.x, u_input.b.x, arg_2.c.x) % vec3<u32>(32u)), vec2<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 2147483647i), -40325i)), arg_2, arg_2, vec3<bool>(true, true, true)));
    global0 = array<i32, 16>();
    let var_2 = Struct_3(~1u, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(var_1.b.c.b.x)), 1000f, _wgslsmith_f_op_f32(var_0 - arg_2.b.x)) * arg_2.b.wxy));
    return Struct_2(!select(arg_0, select(arg_0, var_1.a.a, arg_0), !select(var_1.b.e.yx, var_1.a.e.xy, vec2<bool>(var_1.b.e.x, arg_0.x))), arg_2, arg_2, Struct_1(arg_2.d, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1036f, 573f, -1795f, 166f) - _wgslsmith_f_op_vec4_f32(arg_2.b * vec4<f32>(-855f, var_2.b.x, var_1.b.c.b.x, -1825f))))), _wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(~vec3<u32>(19203u, var_1.b.d.c.x, var_1.a.b.c.x), vec3<u32>(4294967295u, var_2.a, u_input.b.x))), firstTrailingBit(-arg_2.d)), !select(!(!vec3<bool>(true, false, var_1.b.e.x)), !vec3<bool>(false, true, var_1.a.a.x), !select(vec3<bool>(false, var_1.a.a.x, true), var_1.a.e, true)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    let var_0 = vec2<bool>(true, arg_1.b.e.x);
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    global0 = array<i32, 16>();
    let var_1 = Struct_3(firstLeadingBit((arg_0.c.x << (u_input.b.x % 32u)) & u_input.b.x) & 52195u, arg_0.b.yxz);
    return ~arg_2.a;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(u_input.a.yy, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-527f, _wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(abs(260f)), -553f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1443f, -1350f, 1435f, -776f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1518f, -162f, -130f)), vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true)))), vec4<f32>(-214f, -412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-415f + -504f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(392f, 198f) + _wgslsmith_f_op_f32(abs(1000f)))))), vec3<u32>(_wgslsmith_mult_u32(~(~0u), ~u_input.b.x), func_4(Struct_1(vec2<i32>(-28360i, u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-105f, 1441f, 800f, -884f)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 11527u, 1u), u_input.b.wzz), vec2<i32>(1i, u_input.a.x)), Struct_4(func_2(vec2<bool>(true, true), -387f, Struct_1(vec2<i32>(35055i, 0i), vec4<f32>(-1000f, 229f, -2112f, -183f), u_input.b.wyx, u_input.a.zy)), Struct_2(vec2<bool>(false, false), Struct_1(u_input.a.yy, vec4<f32>(997f, -333f, -825f, -974f), u_input.b.wxz, u_input.a.xy), Struct_1(vec2<i32>(-5829i, 1i), vec4<f32>(1701f, 436f, 561f, -928f), vec3<u32>(u_input.b.x, 78339u, u_input.b.x), u_input.a.xy), Struct_1(vec2<i32>(1i, u_input.a.x), vec4<f32>(-631f, 509f, -424f, 176f), vec3<u32>(34360u, 13354u, u_input.b.x), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], global0[_wgslsmith_index_u32(u_input.b.x, 16u)])), vec3<bool>(true, false, false))), Struct_3(u_input.b.x << (4294967295u % 32u), vec3<f32>(-330f, 188f, 521f))), u_input.b.x), u_input.a.yy);
    let var_1 = !select(!vec3<bool>(true, any(vec4<bool>(true, false, true, false)), true), !select(func_2(vec2<bool>(true, false), var_0.b.x, var_0).e, func_2(vec2<bool>(false, false), var_0.b.x, Struct_1(vec2<i32>(var_0.a.x, u_input.a.x), var_0.b, u_input.b.zxy, u_input.a.yx)).e, select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), vec3<bool>(true, true, true));
    global0 = array<i32, 16>();
    let var_2 = _wgslsmith_div_i32(max(1i, u_input.a.x), _wgslsmith_div_i32(~(-u_input.a.x), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -8675i, -23198i), vec3<i32>(var_0.a.x, global0[_wgslsmith_index_u32(var_0.c.x, 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)])), -vec3<i32>(var_0.d.x, 0i, u_input.a.x))) ^ -1i);
    let var_3 = u_input.b.x;
    return Struct_1(_wgslsmith_mult_vec2_i32(abs(_wgslsmith_sub_vec2_i32(var_0.d, vec2<i32>(27742i, 0i)) & -var_0.d), func_2(select(vec2<bool>(var_1.x, var_1.x), var_1.zy, vec2<bool>(false, true)), _wgslsmith_f_op_f32(982f * var_0.b.x), func_2(vec2<bool>(var_1.x, var_1.x), 1000f, var_0).c).d.a & vec2<i32>(var_2, 16332i)), func_2(!func_2(func_2(var_1.xz, -199f, var_0).a, -412f, func_2(var_1.zz, var_0.b.x, var_0).c).e.xx, 548f, Struct_1(_wgslsmith_div_vec2_i32(var_0.a, vec2<i32>(var_2, var_0.a.x)) << (var_0.c.zy % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -496f), -294f, 1589f, -782f), vec3<u32>(u_input.b.x, var_0.c.x, 1u), select(countOneBits(vec2<i32>(-4697i, 1i)), firstTrailingBit(var_0.d), !var_1.x))).c.b, min(vec3<u32>((1u << (1u % 32u)) & ~var_3, func_2(var_1.yy, var_0.b.x, func_2(vec2<bool>(true, true), var_0.b.x, var_0).c).b.c.x, u_input.b.x << (max(0u, 101548u) % 32u)), _wgslsmith_clamp_vec3_u32(u_input.b.yyx, vec3<u32>(min(var_0.c.x, var_3), func_4(var_0, Struct_4(Struct_2(vec2<bool>(false, var_1.x), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(1u, 16u)], var_2), var_0.b, u_input.b.wyz, u_input.a.xy), var_0, var_0, var_1), Struct_2(var_1.xz, Struct_1(vec2<i32>(var_2, var_0.a.x), var_0.b, var_0.c, vec2<i32>(-2147483647i, var_2)), Struct_1(u_input.a.xz, vec4<f32>(753f, -799f, var_0.b.x, var_0.b.x), vec3<u32>(59662u, var_0.c.x, u_input.b.x), vec2<i32>(2147483647i, 62899i)), Struct_1(u_input.a.yy, vec4<f32>(var_0.b.x, -948f, var_0.b.x, -378f), vec3<u32>(var_3, 1u, var_3), var_0.a), vec3<bool>(false, var_1.x, true))), Struct_3(9350u, var_0.b.wyx)), firstLeadingBit(var_3)), var_0.c)), ~(firstLeadingBit(_wgslsmith_mult_vec2_i32(u_input.a.yx, vec2<i32>(global0[_wgslsmith_index_u32(var_0.c.x, 16u)], 6446i))) & (u_input.a.xx << (func_2(var_1.xz, var_0.b.x, Struct_1(var_0.a, vec4<f32>(1912f, -1366f, 1000f, -364f), var_0.c, var_0.d)).b.c.xy % vec2<u32>(32u)))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2087f, _wgslsmith_f_op_f32(f32(-1f) * -1207f), _wgslsmith_f_op_f32(arg_3.x + arg_2)) + _wgslsmith_f_op_vec3_f32(-arg_0.b.www))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-982f - _wgslsmith_f_op_f32(floor(-507f)))), _wgslsmith_f_op_f32(-arg_3.x), -927f), vec3<bool>(select(false, !any(vec2<bool>(false, true)), !any(vec4<bool>(true, true, false, true))), false, true && (_wgslsmith_f_op_f32(abs(676f)) < _wgslsmith_f_op_f32(-arg_3.x)))));
    let var_1 = 89850u;
    var var_2 = max(func_3(_wgslsmith_add_vec4_i32((vec4<i32>(-26263i, -60591i, global0[_wgslsmith_index_u32(u_input.b.x, 16u)], u_input.a.x) ^ vec4<i32>(2147483647i, 49706i, arg_0.a.x, global0[_wgslsmith_index_u32(50690u, 16u)])) | ~vec4<i32>(arg_0.a.x, arg_1, u_input.a.x, arg_1), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.a.x, arg_1, global0[_wgslsmith_index_u32(arg_0.c.x, 16u)], u_input.a.x), vec4<i32>(arg_0.d.x, 2147483647i, global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(50173u, 16u)]) | vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], arg_0.a.x, u_input.a.x, arg_0.d.x))), Struct_3(reverseBits(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_3.zwy * arg_3.xyz), arg_3.xzz))).x, (reverseBits(1u & u_input.b.x) | var_1) << (var_1 % 32u));
    return select(vec4<bool>(true, true & (_wgslsmith_f_op_f32(max(208f, arg_0.b.x)) > arg_2), !any(func_2(vec2<bool>(false, true), arg_3.x, arg_0).e.xy), select(_wgslsmith_div_i32(global0[_wgslsmith_index_u32(50710u, 16u)], arg_1), 11388i, true) <= 0i), select(vec4<bool>(13741u >= u_input.b.x, !any(vec3<bool>(false, false, true)), true | func_2(vec2<bool>(false, true), arg_3.x, arg_0).a.x, any(vec3<bool>(true, true, true))), vec4<bool>(true, true, true && all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, !(!(0u != u_input.b.x)), true, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_5(func_1(), -2147483647i, 1517f, vec4<f32>(_wgslsmith_f_op_f32(968f + -109f), -1352f, -1902f, _wgslsmith_div_f32(225f, 1317f))), !vec4<bool>(any(vec3<bool>(true, true, false)), any(vec4<bool>(true, false, true, true)), true, true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false)), !(u_input.b.x < 1u)));
    global0 = array<i32, 16>();
    var_0 = !vec4<bool>(func_2(select(var_0.zy, vec2<bool>(true, var_0.x), func_2(var_0.zx, -1629f, Struct_1(vec2<i32>(-24068i, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]), vec4<f32>(527f, 1000f, 510f, -2125f), u_input.b.www, u_input.a.yx)).e.xy), _wgslsmith_f_op_f32(abs(-1568f)), Struct_1(u_input.a.yz, _wgslsmith_f_op_vec4_f32(max(vec4<f32>(682f, 734f, 1225f, 933f), vec4<f32>(-540f, -602f, 364f, -711f))), u_input.b.zzw, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], global0[_wgslsmith_index_u32(48830u, 16u)]))).e.x, func_5(Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16308i) << (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1002f, -1769f, -1173f, -2865f) - vec4<f32>(-1077f, 516f, -1254f, 420f)), _wgslsmith_add_vec3_u32(u_input.b.zwx, u_input.b.wxw), _wgslsmith_mult_vec2_i32(u_input.a.yy, u_input.a.xy)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 5011i), u_input.a.zz), _wgslsmith_f_op_f32(f32(-1f) * -1941f), vec4<f32>(1f, 1f, 1f, 1f)).x, var_0.x, all(select(func_5(Struct_1(u_input.a.xx, vec4<f32>(-104f, 1011f, -877f, -697f), vec3<u32>(41834u, u_input.b.x, u_input.b.x), u_input.a.yy), global0[_wgslsmith_index_u32(u_input.b.x, 16u)], 1053f, vec4<f32>(1749f, 774f, 1574f, -109f)), select(vec4<bool>(false, false, var_0.x, true), vec4<bool>(true, false, true, var_0.x), var_0.x), !var_0.x)));
    let var_1 = Struct_3(_wgslsmith_sub_u32(u_input.b.x, 1u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1145f, 436f, 593f)), vec3<f32>(592f, 980f, -1000f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1719f, 202f, true)) * _wgslsmith_f_op_f32(-1150f * 389f)), -663f, -1299f))));
    var var_2 = u_input.b.x;
    let var_3 = var_0.x;
    let var_4 = func_2(var_0.yy, _wgslsmith_f_op_f32(floor(var_1.b.x)), Struct_1(vec2<i32>(firstLeadingBit(_wgslsmith_dot_vec2_i32(u_input.a.zy, vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b.x, 16u)]))), 0i), vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2230f * var_1.b.x)), func_1().b.x, -107f), u_input.b.yyy, vec2<i32>(_wgslsmith_div_i32(u_input.a.x, firstTrailingBit(u_input.a.x)), u_input.a.x))).c;
    var_0 = vec4<bool>(func_2(!(!vec2<bool>(false, var_0.x)), -1538f, Struct_1(~u_input.a.zy, vec4<f32>(_wgslsmith_f_op_f32(-1500f * -459f), _wgslsmith_f_op_f32(exp2(var_1.b.x)), -314f, -608f), firstLeadingBit(vec3<u32>(u_input.b.x, var_1.a, var_1.a) | vec3<u32>(var_4.c.x, u_input.b.x, 0u)), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), ~u_input.a.zz))).a.x, false, !all(!func_5(Struct_1(u_input.a.yy, var_4.b, var_4.c, vec2<i32>(u_input.a.x, -2147483647i)), global0[_wgslsmith_index_u32(8481u, 16u)], var_4.b.x, var_4.b)), any(select(!vec3<bool>(var_0.x, false, var_0.x), vec3<bool>(true, true, true), vec3<bool>(true, false && var_0.x, all(vec4<bool>(var_0.x, false, var_0.x, var_0.x))))));
    let var_5 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(~(~func_4(Struct_1(vec2<i32>(var_4.a.x, u_input.a.x), vec4<f32>(var_1.b.x, var_1.b.x, var_1.b.x, -1646f), vec3<u32>(53655u, 0u, 0u), vec2<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 16u)], -11131i)), Struct_4(Struct_2(var_0.wy, var_4, var_4, Struct_1(u_input.a.yy, vec4<f32>(-158f, var_5.x, 373f, var_4.b.x), u_input.b.wxy, u_input.a.xy), vec3<bool>(false, var_0.x, true)), Struct_2(vec2<bool>(var_0.x, false), var_4, var_4, var_4, vec3<bool>(false, var_0.x, var_0.x))), Struct_3(var_4.c.x, vec3<f32>(var_4.b.x, 376f, 140f)))), 16u)]);
}

