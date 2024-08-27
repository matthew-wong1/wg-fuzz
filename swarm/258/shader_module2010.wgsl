struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 1> = array<f32, 1>(2087f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<bool>) -> vec4<i32> {
    var var_0 = 0u;
    var var_1 = Struct_3(Struct_2(any(select(select(arg_3.zx, arg_3.xz, vec2<bool>(true, false)), select(arg_3.yy, arg_3.zz, arg_3.xx), vec2<bool>(true, arg_3.x))), u_input.e, arg_0), arg_0, vec3<u32>(abs(0u), u_input.e, _wgslsmith_mod_u32(arg_0.d.x >> (arg_0.a % 32u), ~u_input.b.x)) >> (_wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(3554u, u_input.e, 18379u)), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(42376u, arg_0.d.x, arg_0.d.x), vec3<u32>(20178u, 4294967295u, arg_0.a)))) % vec3<u32>(32u)), firstTrailingBit(vec3<i32>(1i, 1i, 1i) << ((~vec3<u32>(4294967295u, arg_0.d.x, u_input.e) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, arg_0.d.x, u_input.b.x), vec3<u32>(u_input.b.x, 31540u, 1u))) % vec3<u32>(32u))), ~(~(~vec3<u32>(u_input.b.x, 1u, u_input.b.x))));
    let var_2 = vec3<bool>(var_1.a.a, all(vec4<bool>(all(vec2<bool>(arg_3.x, true)) && !var_1.a.a, 618f > _wgslsmith_f_op_f32(min(-528f, global1[_wgslsmith_index_u32(1u, 1u)])), all(vec4<bool>(true, var_1.a.a, var_1.a.a, var_1.a.a)), arg_3.x)), false);
    var var_3 = Struct_3(Struct_2(all(!(!vec4<bool>(arg_3.x, false, var_1.a.a, arg_3.x))), arg_0.d.x, Struct_1(var_1.e.x, arg_2.x, var_1.b.c >> (var_1.a.b % 32u), vec2<u32>(var_1.a.b, _wgslsmith_sub_u32(u_input.b.x, u_input.b.x)))), Struct_1(~(~0u), global1[_wgslsmith_index_u32(3279u, 1u)], 52780i, vec2<u32>(min(_wgslsmith_dot_vec2_u32(vec2<u32>(41631u, 4294967295u), vec2<u32>(33694u, var_1.a.c.d.x)), 1u), ~(~1u))), _wgslsmith_sub_vec3_u32(~min(var_1.c, var_1.c), vec3<u32>(_wgslsmith_clamp_u32(117314u, arg_0.d.x, 1u), _wgslsmith_sub_u32(1u, var_1.b.a), select(arg_0.d.x, u_input.b.x, arg_3.x))) & abs(vec3<u32>(reverseBits(u_input.e), var_1.a.b | 4294967295u, ~var_1.c.x)), ~firstLeadingBit(var_1.d), ~var_1.e);
    global0 = -2147483647i;
    return firstTrailingBit((vec4<i32>(-2147483647i, arg_0.c ^ 2147483647i, _wgslsmith_clamp_i32(arg_0.c, u_input.c, var_3.a.c.c), _wgslsmith_mod_i32(var_3.b.c, u_input.a)) | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(-13136i, var_3.d.x, -1i, arg_1), vec4<i32>(-1372i, -10659i, -32470i, 18843i), vec4<i32>(2147483647i, arg_1, u_input.d, 1i))) ^ ~(~vec4<i32>(-2147483647i, 2147483647i, -1i, 2147483647i)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.c, -1i, arg_0.c, arg_1.c), vec4<i32>(8522i, arg_0.c, 1i, 26804i)), reverseBits(arg_1.c), arg_0.c & -3488i), _wgslsmith_mod_vec4_i32(func_3(Struct_1(102439u, arg_0.b, 1i, u_input.b), -2147483647i, vec2<f32>(arg_1.b, global1[_wgslsmith_index_u32(u_input.e, 1u)]), vec3<bool>(true, true, true)), vec4<i32>(-1i, 0i, -73291i, arg_0.c))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(25257i, arg_0.c, -48673i, 2147483647i) ^ vec4<i32>(1i, arg_1.c, 1i, 1i), vec4<i32>(11002i & u_input.c, -38637i, u_input.d, -24930i), ~(~vec4<i32>(15285i, arg_1.c, arg_1.c, -49260i)))), ~(-max(~vec4<i32>(u_input.a, 20694i, u_input.a, -27725i), ~vec4<i32>(u_input.d, arg_1.c, u_input.a, 2147483647i))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-933f))))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-799f * _wgslsmith_f_op_f32(-arg_1.b))))), 639f);
    let var_2 = max(-(u_input.a << (~1u % 32u)), var_0.x);
    var var_3 = -36274i;
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(arg_1.a, 1u)])), global1[_wgslsmith_index_u32(21473u, 1u)], false))))));
    return Struct_1(_wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_1.d.x, arg_1.a, 1u), vec4<u32>(13790u, 1u, 1u, 19841u), vec4<u32>(41889u, 48141u, arg_0.d.x, 69994u))) << (vec4<u32>(arg_1.d.x, select(arg_0.a, 4468u, true), arg_0.d.x, ~arg_0.d.x) % vec4<u32>(32u)), vec4<u32>(arg_1.a, 2007u, ~(~4294967295u), _wgslsmith_add_u32(63238u, arg_1.d.x | 4294967295u))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-676f)) - _wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_1.d.x, 1u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)])))))), var_0.x, ~arg_2);
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = Struct_2(!any(vec3<bool>(true, any(vec2<bool>(false, false)), 1i < arg_0.c)), firstLeadingBit(arg_0.a ^ 4294967295u), func_2(func_2(func_2(func_2(Struct_1(u_input.e, global1[_wgslsmith_index_u32(83948u, 1u)], arg_0.c, vec2<u32>(61010u, arg_0.d.x)), arg_0, vec2<u32>(u_input.b.x, u_input.b.x)), Struct_1(arg_0.a, global1[_wgslsmith_index_u32(4294967295u, 1u)], arg_0.c, vec2<u32>(65438u, u_input.b.x)), vec2<u32>(42267u, 55763u)), func_2(Struct_1(1u, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], arg_0.c, arg_0.d), arg_0, countOneBits(vec2<u32>(arg_0.d.x, 0u))), ~(~arg_0.d)), arg_0, ~u_input.b));
    var_0 = Struct_2(!var_0.a, _wgslsmith_clamp_u32(u_input.e, 10003u, func_2(func_2(Struct_1(4294967295u, global1[_wgslsmith_index_u32(10820u, 1u)], 29343i, vec2<u32>(0u, u_input.b.x)), var_0.c, abs(vec2<u32>(arg_0.d.x, 43034u))), Struct_1(~0u, _wgslsmith_f_op_f32(-693f - var_0.c.b), u_input.c, _wgslsmith_clamp_vec2_u32(u_input.b, u_input.b, vec2<u32>(16703u, var_0.b))), vec2<u32>(38174u, func_2(Struct_1(43525u, var_0.c.b, 0i, vec2<u32>(44319u, 4952u)), var_0.c, arg_0.d).d.x)).a), func_2(arg_0, Struct_1(min(~1u, ~u_input.b.x), -870f, arg_0.c, func_2(Struct_1(arg_0.d.x, arg_0.b, 0i, vec2<u32>(1u, arg_0.a)), Struct_1(var_0.c.a, -134f, -10559i, vec2<u32>(arg_0.a, 6721u)), u_input.b).d), ~vec2<u32>(var_0.c.d.x, 5479u)));
    var_0 = Struct_2(!var_0.a, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(14840u, 35624u), u_input.b), _wgslsmith_mod_u32(arg_0.a, 1u)), arg_0);
    return _wgslsmith_mult_vec3_i32(~(~_wgslsmith_sub_vec3_i32(min(vec3<i32>(1i, var_0.c.c, -31502i), vec3<i32>(-27838i, -50827i, 0i)), min(vec3<i32>(var_0.c.c, arg_0.c, arg_0.c), vec3<i32>(2147483647i, u_input.c, 1699i)))), abs(vec3<i32>(_wgslsmith_add_i32(-17915i, var_0.c.c), 1i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(-2147483647i, u_input.c), vec2<i32>(arg_0.c, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(-48728i, -2746i), vec2<i32>(-14707i, 1i))))));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = true;
    global1 = array<f32, 1>();
    var var_1 = _wgslsmith_sub_vec3_i32(select(firstLeadingBit(func_4(func_2(arg_2.c, arg_2.c, arg_2.c.d))), vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -2147483647i, arg_2.c.c), ~2147483647i, abs(countOneBits(u_input.d))), arg_2.a || (arg_0 == _wgslsmith_sub_u32(arg_0, 58741u))), arg_1.xyz);
    var_1 = min(arg_1.xyw, vec3<i32>(~_wgslsmith_dot_vec4_i32(arg_1, countOneBits(arg_1)), arg_1.x, ~_wgslsmith_mult_i32(u_input.d, -2147483647i) ^ ~1i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -306f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(13682u, 1u)] * arg_2.c.b)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c.b)) * global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(u_input.b.x, u_input.b.x), 1u)])));
    return arg_2.c;
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: bool) -> vec3<f32> {
    var var_0 = ~arg_1.b.c;
    var var_1 = arg_1.a;
    var var_2 = arg_1.a.c.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_1.a.c.b);
    var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.d.x, u_input.d), ~vec2<i32>(func_4(func_1(u_input.e, vec4<i32>(0i, -1i, -1i, -21206i), Struct_2(true, u_input.e, Struct_1(8969u, var_1.c.b, 2147483647i, vec2<u32>(1u, 70100u))))).x, u_input.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(-func_2(var_1.c, Struct_1(882u, global1[_wgslsmith_index_u32(var_1.b, 1u)], u_input.a, vec2<u32>(0u, arg_1.e.x)), vec2<u32>(u_input.e, var_1.c.d.x)).b), -381f)));
}

fn func_6(arg_0: vec3<f32>) -> StorageBuffer {
    let var_0 = !(!select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), any(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false)))));
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    global1 = array<f32, 1>();
    return StorageBuffer(-vec2<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, u_input.c, u_input.d, 31786i) << (vec4<u32>(u_input.e, 0u, 33634u, u_input.b.x) % vec4<u32>(32u)), ~vec4<i32>(2147483647i, u_input.a, u_input.c, 12174i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_6(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(7489u, Struct_3(Struct_2(false, 35302u, Struct_1(4294967295u, 2313f, u_input.a, vec2<u32>(u_input.e, u_input.b.x))), func_1(5369u, vec4<i32>(11172i, u_input.a, 1i, u_input.a), Struct_2(true, u_input.e, Struct_1(0u, global1[_wgslsmith_index_u32(u_input.b.x, 1u)], -40245i, vec2<u32>(11012u, 4294967295u)))), vec3<u32>(1u, u_input.e, 1u), ~vec3<i32>(u_input.d, u_input.c, u_input.d), vec3<u32>(133542u, 38462u, 18709u)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(65082u, 1u)], -914f, 658f, global1[_wgslsmith_index_u32(36984u, 1u)])))), any(vec3<bool>(true, true, true))))));
}

