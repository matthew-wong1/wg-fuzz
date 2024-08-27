struct Struct_1 {
    a: vec3<bool>,
    b: vec2<f32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(46814u, 0u);

var<private> global1: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(1340f, -1373f), vec2<f32>(452f, -324f), vec2<f32>(-737f, -875f), vec2<f32>(429f, 1156f), vec2<f32>(-2468f, 1133f), vec2<f32>(1033f, -103f), vec2<f32>(-580f, 1000f), vec2<f32>(957f, -497f), vec2<f32>(-1323f, -565f), vec2<f32>(472f, 762f), vec2<f32>(1540f, -196f), vec2<f32>(-1000f, -939f), vec2<f32>(941f, -552f), vec2<f32>(2271f, -860f), vec2<f32>(522f, -117f), vec2<f32>(1000f, -875f), vec2<f32>(-1056f, 254f), vec2<f32>(997f, 1255f), vec2<f32>(-194f, 1000f));

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, false, false), vec2<f32>(843f, -268f), 1i, vec2<f32>(162f, -1000f));

var<private> global3: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(1i, 2147483647i, 1636i), vec3<i32>(-29382i, -1i, -21465i), vec3<i32>(-17412i, 0i, 1i), vec3<i32>(-1199i, -5485i, 3755i), vec3<i32>(29549i, 1i, 2147483647i), vec3<i32>(0i, 19233i, -1i), vec3<i32>(-3918i, -39507i, 29488i), vec3<i32>(i32(-2147483648), 1i, 21462i), vec3<i32>(2628i, 2147483647i, 70408i), vec3<i32>(-1i, 0i, 32401i), vec3<i32>(0i, -33307i, i32(-2147483648)), vec3<i32>(7740i, 1i, 18574i), vec3<i32>(1i, 14962i, -34681i), vec3<i32>(-1i, 2147483647i, -1i), vec3<i32>(1i, -1i, 32087i), vec3<i32>(-32322i, -103843i, -22594i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> bool {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-409f, global2.b.x, arg_0))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(780f, 507f, global2.b.x)) + vec3<f32>(arg_2.x, 1247f, 415f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_2.x, 1141f, -553f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.d.x, arg_2.x, -766f) * vec3<f32>(arg_0, 440f, global2.d.x))))), !(26719u == _wgslsmith_mult_u32(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 2u)])))), _wgslsmith_sub_i32(reverseBits(global2.c), ~firstLeadingBit(abs(global2.c))), global2.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, _wgslsmith_f_op_f32(arg_0 + global2.d.x)) * _wgslsmith_f_op_vec2_f32(global2.b * _wgslsmith_f_op_vec2_f32(floor(arg_2))))));
    var var_1 = vec3<i32>(firstTrailingBit(max(i32(-1i) * -2147483647i, 18233i)), ~var_0.b, 0i);
    let var_2 = -(~var_1.yz);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-487f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2738f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.d)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, 739f)))));
    let var_4 = Struct_2(Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, _wgslsmith_f_op_f32(arg_0 + -1437f))), 2147483647i, arg_2));
    return true;
}

fn func_2() -> Struct_1 {
    let var_0 = abs(vec2<i32>(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, global2.c, 63011i, -28475i), u_input.b)), ~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.b.xz, u_input.b.xz), u_input.b.yx)));
    var var_1 = global2.a;
    let var_2 = Struct_1(select(select(vec3<bool>(true, true, true), global2.a, vec3<bool>(!global2.a.x, true, all(global2.a))), !(!(!global2.a)), var_1.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1127f, -1198f), _wgslsmith_f_op_vec2_f32(global2.d - _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(32991u, 19u)] * global1[_wgslsmith_index_u32(0u, 19u)])), global2.a.x))), -(~_wgslsmith_dot_vec3_i32(vec3<i32>(global2.c, global2.c, 1i), reverseBits(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 2u)], 16u)]))), global2.d);
    var_1 = var_2.a;
    let var_3 = Struct_2(Struct_1(select(vec3<bool>(func_3(1026f, global2.a.x, var_2.b), var_1.x || var_1.x, true), !(!global2.a), all(!var_2.a)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(7811u, 19u)] + vec2<f32>(-975f, global2.d.x)))), var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b))));
    return Struct_1(select(select(var_2.a, vec3<bool>(global2.a.x, !var_1.x, select(var_3.a.a.x, true, true)), !(!vec3<bool>(false, true, var_2.a.x))), !select(vec3<bool>(var_1.x, global2.a.x, global2.a.x), var_2.a, select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_3.a.a.x, var_3.a.a.x, false), var_2.a.x)), !var_3.a.a.x), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.a.b.x, global2.b.x))), ~u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_2.d.x)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -122f) + _wgslsmith_f_op_f32(-global2.d.x))), -1308f));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> vec2<f32> {
    global3 = array<vec3<i32>, 16>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1167f * _wgslsmith_f_op_f32(arg_2.a.x * _wgslsmith_f_op_f32(exp2(arg_2.d.x)))) - _wgslsmith_f_op_f32(abs(1457f)));
    global3 = array<vec3<i32>, 16>();
    var var_1 = func_2();
    var_1 = Struct_1(!(!func_2().a), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.b.x, arg_1.a.x))), select(_wgslsmith_mult_i32(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.b, var_1.c), u_input.b.zy)), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, 1i), u_input.b.wy), 1i)), _wgslsmith_mod_i32(1i, -1i), true), vec2<f32>(801f, _wgslsmith_f_op_f32(trunc(global2.b.x))));
    return vec2<f32>(arg_1.d.x, _wgslsmith_f_op_f32(var_1.b.x - _wgslsmith_f_op_f32(1437f * 974f)));
}

fn func_4(arg_0: Struct_3, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_2(func_2());
    var var_1 = ~countOneBits(~(~(~vec2<u32>(4294967295u, 4294967295u))));
    let var_2 = arg_0.c;
    global2 = var_0.a;
    var var_3 = select(~7705u > global0[_wgslsmith_index_u32(~9068u, 2u)], func_2().a.x, var_2);
    return var_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a, 2u)];
    let var_1 = u_input.b.yz;
    let var_2 = func_4(Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, global2.d.x, global2.d.x)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b.x, -588f, global2.b.x)))))), -global2.c, global2.a.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(!global2.a.x, Struct_3(vec3<f32>(-392f, 1750f, global2.d.x), 6832i, global2.a.x, global2.b), Struct_3(vec3<f32>(820f, 800f, global2.b.x), -21193i, global2.a.x, global1[_wgslsmith_index_u32(u_input.a, 19u)])))))), -1000f);
    var var_3 = func_4(Struct_3(vec3<f32>(-1496f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x - -1597f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2.d.x))))), select(1i, _wgslsmith_mult_i32(countOneBits(u_input.b.x), ~(-941i)), !(!var_2.a.x)), true, vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2002f))), global2.b.x);
    let var_4 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-109f, _wgslsmith_div_f32(var_2.d.x, 1208f), _wgslsmith_f_op_f32(var_3.d.x + 1584f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(284f, global2.d.x, 1852f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-176f, 1000f, global2.b.x), vec3<f32>(292f, var_3.b.x, 1508f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.b.x, global2.b.x, var_3.d.x), vec3<f32>(884f, -974f, -190f))))))));
    global1 = array<vec2<f32>, 19>();
    let var_5 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-742f - 435f), _wgslsmith_f_op_f32(exp2(var_4.x))))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_4.x, 136f)), var_3.b.x), 304f)), global2.d.x, _wgslsmith_f_op_f32(min(global2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(46722i >= global2.c, Struct_3(var_4, -2082i, var_3.a.x, var_2.d), Struct_3(var_4, global2.c, false, vec2<f32>(-653f, var_4.x)))).x + var_3.d.x))));
    var_3 = Struct_1(var_3.a, var_2.d, -1i, vec2<f32>(_wgslsmith_f_op_f32(func_4(Struct_3(vec3<f32>(-137f, 523f, var_4.x), var_3.c, var_2.a.x, global1[_wgslsmith_index_u32(u_input.a, 19u)]), 634f).d.x + 114f), var_5.x));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<i32>(firstTrailingBit(var_3.c), u_input.b.x, -_wgslsmith_clamp_i32(var_3.c, var_2.c, 17070i)), ~(~abs(vec4<i32>(30413i, var_3.c, global2.c, 22489i))));
}

