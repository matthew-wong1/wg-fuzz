struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<i32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<Struct_1, 19>;

var<private> global1: vec3<f32> = vec3<f32>(314f, -2108f, 124f);

var<private> global2: array<i32, 23>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec2<bool>) -> u32 {
    let var_0 = ~(-arg_0.d.xxz | arg_0.d.zxz);
    let var_1 = ~(~_wgslsmith_clamp_vec4_i32(-vec4<i32>(34876i, -9421i, arg_0.d.x, 1i), ~vec4<i32>(global2[_wgslsmith_index_u32(63160u, 23u)], var_0.x, arg_0.e, 0i) | (arg_0.d << (vec4<u32>(arg_0.c.x, arg_0.c.x, 0u, u_input.a.x) % vec4<u32>(32u))), ~_wgslsmith_mult_vec4_i32(arg_0.d, vec4<i32>(0i, -1i, var_0.x, arg_0.e))));
    var var_2 = arg_0.a.zyx;
    var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1351f, global1.x, global1.x)), vec3<f32>(global1.x, arg_1, 1000f)))) - vec3<f32>(-185f, -1166f, _wgslsmith_f_op_f32(trunc(arg_0.a.x)))), arg_0.a.zzw));
    global2 = array<i32, 23>();
    return ~arg_0.c.x;
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>, arg_3: Struct_1) -> bool {
    let var_0 = select(u_input.a.zz, vec2<u32>(u_input.a.x, 1u), arg_0.b) >> (~arg_3.c % vec2<u32>(32u));
    global1 = _wgslsmith_f_op_vec3_f32(-arg_3.a.ywx);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -410f);
    let var_2 = arg_0.a;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(-184f, var_1, false)), _wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_f_op_f32(-arg_3.a.x), _wgslsmith_f_op_f32(-638f * 370f)) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, var_1, arg_1, var_2.x)))))), all(select(arg_2.wzx, arg_2.wyx, arg_2.wzy)) || any(select(!vec2<bool>(arg_2.x, true), vec2<bool>(arg_3.b, arg_3.b), arg_2.zw)), ~(~(abs(arg_0.c) << (~arg_3.c % vec2<u32>(32u)))), _wgslsmith_mult_vec4_i32(arg_3.d, vec4<i32>(2147483647i, abs(arg_3.d.x), firstTrailingBit(-2147483647i), -49187i) >> ((firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, 78355u, arg_0.c.x)) ^ (vec4<u32>(arg_3.c.x, 41360u, 0u, arg_0.c.x) & vec4<u32>(1u, 123356u, u_input.a.x, arg_3.c.x))) % vec4<u32>(32u))), abs(~(-_wgslsmith_mult_i32(global2[_wgslsmith_index_u32(arg_3.c.x, 23u)], 0i))));
    return !arg_0.b;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = ~abs(vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(u_input.a.x), firstTrailingBit(1u)), 47148u ^ u_input.a.x, u_input.a.x | (8981u | u_input.a.x), u_input.a.x));
    var_0 = ~vec4<u32>(31158u, ~u_input.a.x, 1u, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), reverseBits(vec2<u32>(30181u, 9510u))), select(~u_input.a.zz, u_input.a.yz, true)));
    let var_1 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-424f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.x))), _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -302f) * 365f), -389f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(291f, _wgslsmith_f_op_f32(global1.x - -1000f), global1.x, _wgslsmith_f_op_f32(floor(-436f))) + arg_0))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.x, u_input.a.x, 4294967295u, var_0.x), vec4<u32>(u_input.a.x, var_0.x, u_input.a.x, var_0.x)), ~(vec4<u32>(4294967295u, var_0.x, 0u, 50194u) >> (vec4<u32>(43606u, var_0.x, 1u, var_0.x) % vec4<u32>(32u)))), reverseBits(vec4<u32>(~41931u, var_0.x | 1u, func_2(Struct_1(arg_0, true, var_0.ww, vec4<i32>(-1i, global2[_wgslsmith_index_u32(var_0.x, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(1u, 23u)]), global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), arg_0.x, vec2<bool>(true, false)), 6132u)));
    var var_3 = !(any(vec3<bool>(false, true, true)) || !func_3(Struct_1(var_1, true, vec2<u32>(var_0.x, var_0.x), vec4<i32>(15472i, 0i, -27081i, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_f_op_f32(144f - global1.x), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false), Struct_1(vec4<f32>(544f, -542f, arg_0.x, global1.x), true, vec2<u32>(var_0.x, u_input.a.x), vec4<i32>(global2[_wgslsmith_index_u32(var_2, 23u)], global2[_wgslsmith_index_u32(82749u, 23u)], 16007i, global2[_wgslsmith_index_u32(var_0.x, 23u)]), global2[_wgslsmith_index_u32(0u, 23u)])));
    return global0[_wgslsmith_index_u32(abs(4294967295u), 19u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(~arg_1.e), ~(reverseBits(arg_2.e) | (-18806i ^ arg_2.d.x))), -arg_2.d.zx, ~select(arg_2.d.zx, -(~arg_1.d.ww), vec2<bool>(any(vec4<bool>(false, false, false, arg_0.b)), !arg_1.b)));
    global2 = array<i32, 23>();
    let var_1 = 69215u | _wgslsmith_dot_vec4_u32(~vec4<u32>(37636u, ~36249u, _wgslsmith_clamp_u32(38307u, 29158u, 8480u), ~19724u), countOneBits(vec4<u32>(arg_2.c.x, 1u, arg_2.c.x, 53751u) ^ firstTrailingBit(vec4<u32>(arg_2.c.x, arg_1.c.x, 13540u, arg_0.c.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_2.a))))), true, _wgslsmith_mod_vec2_u32(arg_1.c, vec2<u32>(_wgslsmith_add_u32(max(u_input.a.x, 0u), ~arg_1.c.x), abs(24038u))), firstLeadingBit(arg_1.d), arg_2.e);
    var_0 = (arg_2.d.yw >> (max(vec2<u32>(arg_1.c.x, 82300u) & ~vec2<u32>(1u, 0u), (arg_2.c << (vec2<u32>(u_input.a.x, 27257u) % vec2<u32>(32u))) << (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u))) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(firstTrailingBit(arg_0.d.ww), var_2.d.zw << (abs(arg_2.c) % vec2<u32>(32u))), vec2<i32>(-14489i, arg_2.d.x));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    var var_1 = vec4<bool>(true, true, !any(select(vec2<bool>(false, true), vec2<bool>(false, true), all(vec2<bool>(true, true)))), global1.x > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global1.x))));
    var var_2 = func_4(func_1(vec4<f32>(-204f, global1.x, -1000f, 326f)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1602f)) + global1.x), global1.x, -523f, _wgslsmith_f_op_f32(ceil(global1.x))), -308f <= func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, global1.x, 539f))).a.x, vec2<u32>(~1u, u_input.a.x), vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(2452i, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(17833u, 23u)]), vec4<i32>(1i, global2[_wgslsmith_index_u32(4294967295u, 23u)], -20920i, global2[_wgslsmith_index_u32(4294967295u, 23u)])), ~(-69869i)), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1335f, 208f, global1.x, -735f)) + vec4<f32>(-1498f, 170f, global1.x, 535f)))), !(!select(var_1.x, false, false)), abs((u_input.a.zz | u_input.a.zy) ^ u_input.a.xz), vec4<i32>(-1i) * -(vec4<i32>(-34552i, 55387i, -1i, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]) << (vec4<u32>(u_input.a.x, u_input.a.x, 77058u, u_input.a.x) % vec4<u32>(32u))), -(~min(60820i, -37771i))));
    global2 = array<i32, 23>();
    let var_3 = func_4(func_1(func_4(func_4(func_1(vec4<f32>(984f, 612f, var_2.a.x, 1327f)), Struct_1(var_2.a, false, u_input.a.zy, vec4<i32>(0i, -1i, -1i, 13611i), 1i), func_4(Struct_1(var_2.a, var_1.x, u_input.a.xz, var_2.d, 1i), Struct_1(vec4<f32>(548f, var_2.a.x, -1262f, 713f), var_2.b, var_2.c, vec4<i32>(1i, 12610i, 1i, var_2.e), 0i), Struct_1(vec4<f32>(1456f, 1367f, var_2.a.x, global1.x), var_1.x, vec2<u32>(1u, 2683u), var_2.d, global2[_wgslsmith_index_u32(var_2.c.x, 23u)]))), Struct_1(_wgslsmith_f_op_vec4_f32(var_2.a + vec4<f32>(982f, 185f, var_2.a.x, var_2.a.x)), var_2.b, select(u_input.a.xz, u_input.a.yy, true), var_2.d, -global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), global0[_wgslsmith_index_u32(var_2.c.x, 19u)]).a), func_4(Struct_1(vec4<f32>(1000f, var_2.a.x, _wgslsmith_f_op_f32(553f * var_2.a.x), _wgslsmith_f_op_f32(186f * var_2.a.x)), false, _wgslsmith_mod_vec2_u32(var_2.c, ~var_2.c), reverseBits(var_2.d >> (vec4<u32>(u_input.a.x, var_2.c.x, 0u, 0u) % vec4<u32>(32u))), var_2.d.x ^ _wgslsmith_clamp_i32(-7013i, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(36813u, 23u)])), func_1(vec4<f32>(_wgslsmith_f_op_f32(floor(2001f)), var_2.a.x, global1.x, -110f)), func_4(Struct_1(func_4(Struct_1(vec4<f32>(global1.x, -543f, var_2.a.x, 1125f), var_2.b, u_input.a.yx, var_2.d, var_2.d.x), Struct_1(var_2.a, var_1.x, u_input.a.zx, vec4<i32>(var_2.e, -37879i, var_2.e, var_2.d.x), -9509i), global0[_wgslsmith_index_u32(86719u, 19u)]).a, func_4(Struct_1(var_2.a, true, var_2.c, var_2.d, 2147483647i), Struct_1(vec4<f32>(var_2.a.x, global1.x, global1.x, 865f), var_1.x, vec2<u32>(var_2.c.x, var_2.c.x), var_2.d, global2[_wgslsmith_index_u32(31473u, 23u)]), global0[_wgslsmith_index_u32(39436u, 19u)]).b, _wgslsmith_add_vec2_u32(vec2<u32>(0u, var_2.c.x), var_2.c), -var_2.d, -40462i), func_1(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-351f, var_2.a.x, -1000f, global1.x)))), Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(1590f, var_2.a.x, -968f, 859f), vec4<f32>(119f, var_2.a.x, -543f, global1.x)), select(false, var_2.b, true), vec2<u32>(0u, 4294967295u) & vec2<u32>(1u, u_input.a.x), vec4<i32>(-24640i, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], var_2.d.x, global2[_wgslsmith_index_u32(u_input.a.x, 23u)]), 2147483647i << (var_2.c.x % 32u)))), Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a.x, 912f, global1.x, -225f)))), var_1.x, var_2.c, abs(vec4<i32>(-2147483647i, -66667i, global2[_wgslsmith_index_u32(var_2.c.x, 23u)], var_2.d.x)) & min(vec4<i32>(-1i, var_2.d.x, var_2.d.x, 1i), abs(var_2.d)), -2147483647i));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~(~1u), 1160u & ~(u_input.a.x << (var_3.c.x % 32u)), ~0u | max(max(1u, var_2.c.x), _wgslsmith_mod_u32(u_input.a.x, u_input.a.x))));
}

