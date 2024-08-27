struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: i32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
    d: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: f32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7>;

var<private> global1: u32;

var<private> global2: array<Struct_3, 26> = array<Struct_3, 26>(Struct_3(Struct_1(41587u, vec3<u32>(0u, 22639u, 46179u), 1284f), Struct_2(false, true, -52047i, vec4<u32>(29819u, 62136u, 1u, 0u), 365f), true, 1u), Struct_3(Struct_1(64219u, vec3<u32>(1u, 0u, 4294967295u), 817f), Struct_2(false, false, 21871i, vec4<u32>(84504u, 1u, 50468u, 5066u), 1456f), true, 1u), Struct_3(Struct_1(15979u, vec3<u32>(1u, 1u, 76154u), -583f), Struct_2(false, true, -1i, vec4<u32>(38594u, 0u, 11559u, 1u), 1096f), false, 4294967295u), Struct_3(Struct_1(1u, vec3<u32>(0u, 47973u, 41266u), -1138f), Struct_2(true, true, -1i, vec4<u32>(0u, 34000u, 0u, 0u), -151f), true, 1u), Struct_3(Struct_1(1u, vec3<u32>(4294967295u, 1u, 13017u), -202f), Struct_2(true, true, 2147483647i, vec4<u32>(44255u, 46133u, 22979u, 4294967295u), -1668f), true, 0u), Struct_3(Struct_1(0u, vec3<u32>(29980u, 16174u, 0u), -2179f), Struct_2(false, false, i32(-2147483648), vec4<u32>(122u, 32088u, 40382u, 4294967295u), 1082f), false, 0u), Struct_3(Struct_1(12026u, vec3<u32>(36926u, 0u, 36967u), 1366f), Struct_2(true, false, -1i, vec4<u32>(0u, 67151u, 30817u, 1u), -1000f), false, 43571u), Struct_3(Struct_1(0u, vec3<u32>(1u, 55974u, 4294967295u), -361f), Struct_2(true, true, -1i, vec4<u32>(4294967295u, 4294967295u, 0u, 45307u), 764f), false, 1u), Struct_3(Struct_1(0u, vec3<u32>(0u, 4294967295u, 0u), -391f), Struct_2(true, false, 0i, vec4<u32>(4294967295u, 1u, 40804u, 37846u), 755f), true, 1u), Struct_3(Struct_1(113079u, vec3<u32>(8745u, 4294967295u, 37789u), 488f), Struct_2(true, true, -16322i, vec4<u32>(38475u, 1u, 15375u, 43408u), -307f), false, 80398u), Struct_3(Struct_1(8115u, vec3<u32>(31411u, 4294967295u, 58826u), 155f), Struct_2(true, true, i32(-2147483648), vec4<u32>(4294967295u, 4294967295u, 50798u, 53351u), 153f), true, 4294967295u), Struct_3(Struct_1(11300u, vec3<u32>(4294967295u, 1u, 25513u), -886f), Struct_2(true, true, -55804i, vec4<u32>(45395u, 0u, 4294967295u, 4294967295u), -1000f), false, 1u), Struct_3(Struct_1(1u, vec3<u32>(1u, 13701u, 19591u), 2111f), Struct_2(false, true, -39335i, vec4<u32>(1u, 21772u, 1830u, 77813u), 1273f), true, 4294967295u), Struct_3(Struct_1(2429u, vec3<u32>(33837u, 47046u, 4294967295u), -1040f), Struct_2(false, false, 5240i, vec4<u32>(5919u, 4294967295u, 1u, 70521u), -1000f), false, 36570u), Struct_3(Struct_1(19844u, vec3<u32>(52436u, 23413u, 36382u), 1002f), Struct_2(false, true, -19411i, vec4<u32>(1u, 79691u, 8207u, 1u), -650f), true, 1u), Struct_3(Struct_1(0u, vec3<u32>(96278u, 40062u, 97478u), -542f), Struct_2(false, false, 1i, vec4<u32>(51170u, 26261u, 39688u, 27372u), 657f), true, 67376u), Struct_3(Struct_1(24911u, vec3<u32>(1u, 0u, 4294967295u), 1000f), Struct_2(false, true, i32(-2147483648), vec4<u32>(0u, 1u, 15120u, 44958u), 2141f), true, 47382u), Struct_3(Struct_1(27957u, vec3<u32>(4294967295u, 55840u, 1u), -222f), Struct_2(false, false, i32(-2147483648), vec4<u32>(1u, 14333u, 15716u, 62792u), 1300f), true, 0u), Struct_3(Struct_1(1u, vec3<u32>(0u, 1u, 15007u), 2105f), Struct_2(false, false, -1i, vec4<u32>(53271u, 40053u, 1u, 1u), -1007f), false, 3476u), Struct_3(Struct_1(4558u, vec3<u32>(0u, 38825u, 1u), 797f), Struct_2(true, false, 3993i, vec4<u32>(1u, 4294967295u, 90816u, 4294967295u), -230f), true, 48036u), Struct_3(Struct_1(115106u, vec3<u32>(1u, 0u, 1666u), -1240f), Struct_2(false, false, 0i, vec4<u32>(0u, 33617u, 4294967295u, 3888u), -101f), false, 3285u), Struct_3(Struct_1(0u, vec3<u32>(4294967295u, 5063u, 1u), -843f), Struct_2(true, true, -1i, vec4<u32>(12768u, 43701u, 4294967295u, 83655u), -1155f), false, 0u), Struct_3(Struct_1(1u, vec3<u32>(4294967295u, 1u, 28084u), -126f), Struct_2(true, true, 39163i, vec4<u32>(4294967295u, 54173u, 14165u, 15693u), -1000f), false, 1u), Struct_3(Struct_1(0u, vec3<u32>(40288u, 34766u, 1u), -161f), Struct_2(false, true, -1i, vec4<u32>(0u, 4294967295u, 1288u, 1u), -308f), true, 27557u), Struct_3(Struct_1(1u, vec3<u32>(0u, 5555u, 15998u), -598f), Struct_2(false, false, i32(-2147483648), vec4<u32>(48744u, 92359u, 0u, 0u), -658f), false, 0u), Struct_3(Struct_1(59718u, vec3<u32>(4294967295u, 40398u, 1u), -682f), Struct_2(true, true, 18970i, vec4<u32>(46372u, 4294967295u, 11792u, 0u), -623f), true, 4294967295u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_5) -> vec2<u32> {
    global0 = array<u32, 7>();
    var var_0 = vec4<bool>(!(arg_0.c.b != (arg_0.c.b & true)), arg_0.c.a, false, arg_0.c.a);
    var var_1 = select(select(vec4<bool>(true, false, arg_0.c.a, var_0.x), vec4<bool>(arg_0.c.b, true, var_0.x, any(vec4<bool>(arg_0.c.b, var_0.x, var_0.x, arg_0.c.b))), vec4<bool>(true, !var_0.x, !all(vec2<bool>(var_0.x, var_0.x)), arg_0.d <= (i32(-1i) * -2147483647i))), vec4<bool>(!(~arg_0.d > min(-955i, 2147483647i)), any(var_0.xx), true || var_0.x, arg_0.b <= _wgslsmith_f_op_f32(-arg_0.c.e)), all(!vec2<bool>(1666u == u_input.a.x, arg_0.c.b)));
    let var_2 = all(select(select(select(vec4<bool>(arg_0.c.a, var_1.x, arg_0.c.b, false), vec4<bool>(true, arg_0.c.a, var_0.x, true), vec4<bool>(arg_0.c.a, false, false, var_1.x)), vec4<bool>(var_0.x, false, true, false), !vec4<bool>(true, arg_0.c.a, true, false)), select(!vec4<bool>(var_1.x, var_1.x, false, false), !vec4<bool>(var_1.x, true, var_0.x, true), any(vec4<bool>(false, arg_0.c.a, var_1.x, false))), var_1.x)) || true;
    var_0 = vec4<bool>(any(!select(var_0.xxx, var_1.yxw, vec3<bool>(true, var_2, arg_0.c.b))) & true, all(vec4<bool>(true, true, all(vec4<bool>(false, true, true, var_1.x)), any(var_0.yxw))) == false, var_0.x, true);
    return _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(13734u, ~arg_0.c.d.x), 39768u) ^ arg_0.c.d.wz, ~(~(~reverseBits(u_input.a))));
}

fn func_2() -> u32 {
    let var_0 = select(_wgslsmith_div_vec2_u32(u_input.a, ~u_input.a), ~vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_3(Struct_5(62828u, 411f, Struct_2(true, true, 0i, vec4<u32>(global0[_wgslsmith_index_u32(8896u, 7u)], global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], u_input.b), -981f), -2147483647i)), ~u_input.a), 7u)], ~41823u), vec2<bool>(true, func_3(Struct_5(1u, 1000f, Struct_2(true, false, 2147483647i, vec4<u32>(4294967295u, u_input.a.x, 16644u, 0u), -542f), -2147483647i)).x < (global0[_wgslsmith_index_u32(u_input.b, 7u)] ^ u_input.a.x)));
    var var_1 = min(vec3<i32>(~1i, firstTrailingBit(~0i), ~1i), vec3<i32>(-1i, ~(~33461i), 2147483647i)) | vec3<i32>(select(-select(-35038i, -2147483647i, true), -(~2147483647i), !any(vec4<bool>(false, false, true, false))), 0i, ~(33656i << (u_input.b % 32u)) ^ 0i);
    global0 = array<u32, 7>();
    global2 = array<Struct_3, 26>();
    var var_2 = Struct_5(var_0.x, -1342f, Struct_2(!(!(global0[_wgslsmith_index_u32(21471u, 7u)] < var_0.x)), select(!(var_1.x > var_1.x), _wgslsmith_f_op_f32(step(-443f, 839f)) > _wgslsmith_f_op_f32(step(676f, -181f)), false), _wgslsmith_mult_i32(var_1.x, ~var_1.x) << (~(~var_0.x) % 32u), ~firstLeadingBit(~vec4<u32>(71134u, u_input.b, 52386u, global0[_wgslsmith_index_u32(4294967295u, 7u)])), _wgslsmith_f_op_f32(-1f)), ~var_1.x);
    return 19278u;
}

fn func_4(arg_0: Struct_5, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_5) -> Struct_5 {
    let var_0 = Struct_4(2147483647i, Struct_2(all(!vec3<bool>(true, arg_0.c.b, true)), true, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, arg_0.d, arg_0.c.c) ^ ~vec3<i32>(arg_0.c.c, -1488i, 20010i), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(arg_3.d, 18412i, arg_0.d)), vec3<i32>(-14235i, -2147483647i, -1i) ^ vec3<i32>(arg_3.c.c, -1i, -1i))), vec4<u32>(firstLeadingBit(arg_3.c.d.x | 4294967295u), ~global0[_wgslsmith_index_u32(4294967295u, 7u)], func_2(), arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -1042f)), arg_3.a, -(vec3<i32>(arg_0.d, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -26057i, 0i, -15173i), vec4<i32>(25208i, 1i, arg_0.c.c, -81267i)), arg_1) << (abs(_wgslsmith_add_vec3_u32(arg_3.c.d.xwz, arg_2)) % vec3<u32>(32u))));
    let var_1 = var_0.b;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_0.b.e) + vec2<f32>(arg_3.c.e, 996f))) + vec2<f32>(-551f, -216f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1104f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.e) + _wgslsmith_f_op_f32(f32(-1f) * -657f))))));
    let var_4 = -abs(vec3<i32>(0i, -1i, reverseBits(i32(-1i) * -73357i)));
    return Struct_5(~0u, 1045f, Struct_2(any(vec3<bool>(all(vec3<bool>(var_2, arg_0.c.a, var_1.a)), !arg_3.c.b, 1147f > var_0.b.e)), var_1.b, var_4.x, firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.c.d.x, arg_3.c.d.x, 4294967295u, 0u), ~vec4<u32>(53401u, var_0.b.d.x, 1u, 4294967295u))), -548f), _wgslsmith_dot_vec4_i32(-(~vec4<i32>(18608i, -30481i, arg_3.d, arg_1)), -_wgslsmith_sub_vec4_i32(vec4<i32>(-15427i, var_0.d.x, -2147483647i, var_4.x), vec4<i32>(26233i, var_1.c, var_0.b.c, -8519i))) >> (u_input.a.x % 32u));
}

fn func_1(arg_0: bool) -> Struct_2 {
    var var_0 = func_4(Struct_5(abs(~global0[_wgslsmith_index_u32(u_input.b, 7u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -468f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1015f))), Struct_2(arg_0, true, i32(-1i) * -46089i, vec4<u32>(28505u, u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 7u)]) >> (min(vec4<u32>(global0[_wgslsmith_index_u32(40285u, 7u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 7u)], 7u)], 8661u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], u_input.b, 1u)) % vec4<u32>(32u)), 105f), _wgslsmith_sub_i32(-16760i, -abs(-27062i))), ~(-17838i) >> (reverseBits(func_2()) % 32u), ~min(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, 4294967295u, 23073u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15780u, 7u)], 7u)], 49603u, 35534u)), vec3<u32>(~1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(323u, 7u)] | global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 7u)], 7u)], global0[_wgslsmith_index_u32(~u_input.b, 7u)])), Struct_5(22124u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2007f)) + _wgslsmith_f_op_f32(1360f * _wgslsmith_f_op_f32(trunc(599f)))), Struct_2(arg_0, true, -36837i, vec4<u32>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 7u)], 7u)], 4294967295u), global0[_wgslsmith_index_u32(~1u, 7u)], u_input.b, ~53935u), _wgslsmith_f_op_f32(f32(-1f) * -679f)), 21528i));
    global2 = array<Struct_3, 26>();
    global0 = array<u32, 7>();
    var var_1 = vec2<i32>(-1i) * -(~abs(-vec2<i32>(var_0.d, var_0.d)));
    let var_2 = global0[_wgslsmith_index_u32(u_input.b, 7u)];
    return Struct_2(!(~4294967295u == u_input.b), true, _wgslsmith_add_i32(var_1.x, _wgslsmith_clamp_i32(~(-1i >> (0u % 32u)), -1i >> (u_input.b % 32u), max(var_1.x, var_1.x))), ~var_0.c.d, var_0.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~abs(vec4<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(-1i, 14674i)), -2147483647i, abs(firstTrailingBit(-23187i)), firstTrailingBit(-80449i)));
    var var_1 = func_1(all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)));
    var var_2 = Struct_1(~_wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_mult_vec3_u32(var_1.d.wyy, vec3<u32>(_wgslsmith_mult_u32(u_input.b, 16260u) << (global0[_wgslsmith_index_u32(1u, 7u)] % 32u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstTrailingBit(0u), abs(var_1.d.x)), 7u)], _wgslsmith_sub_u32(u_input.a.x, 17139u))), func_1(any(vec2<bool>(all(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)), true))).e);
    var_1 = Struct_2(select(true, true, !select(var_1.a, var_1.a, true)) & (_wgslsmith_sub_i32(firstLeadingBit(var_0.x), _wgslsmith_sub_i32(var_1.c, -44343i)) >= _wgslsmith_dot_vec3_i32(max(vec3<i32>(-32582i, var_1.c, 1i), var_0.zxz), _wgslsmith_div_vec3_i32(var_0.xxz, vec3<i32>(2147483647i, var_0.x, 92735i)))), 1u > _wgslsmith_sub_u32(_wgslsmith_sub_u32(min(38888u, 9615u), var_1.d.x), u_input.a.x), ~firstTrailingBit(-_wgslsmith_mult_i32(var_1.c, 0i)), var_1.d, var_2.c);
    var var_3 = vec2<i32>(-29826i, func_4(Struct_5(26722u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.e)), Struct_2(var_1.a, var_1.a, _wgslsmith_mod_i32(-16195i, var_0.x), firstTrailingBit(vec4<u32>(0u, 32493u, 27821u, 1u)), var_1.e), -13860i), ~abs(countOneBits(var_1.c)), var_2.b & var_2.b, func_4(func_4(Struct_5(0u, -256f, Struct_2(var_1.a, var_1.a, 2942i, vec4<u32>(0u, 4294967295u, 85127u, 13191u), 607f), var_0.x), 0i, min(var_1.d.zww, vec3<u32>(4294967295u, var_2.b.x, 4294967295u)), func_4(Struct_5(1u, var_1.e, Struct_2(var_1.a, true, -22858i, var_1.d, 872f), 0i), 0i, vec3<u32>(2880u, 4294967295u, 1u), Struct_5(global0[_wgslsmith_index_u32(38819u, 7u)], var_2.c, Struct_2(true, false, var_1.c, var_1.d, -1062f), var_0.x))), ~(-16087i) << (reverseBits(global0[_wgslsmith_index_u32(0u, 7u)]) % 32u), _wgslsmith_add_vec3_u32(var_1.d.wzz, vec3<u32>(var_2.a, global0[_wgslsmith_index_u32(var_2.a, 7u)], 0u)), Struct_5(u_input.a.x, _wgslsmith_f_op_f32(-var_1.e), Struct_2(var_1.b, var_1.a, -36769i, vec4<u32>(4294967295u, 0u, 54853u, 1u), var_2.c), firstLeadingBit(-1i)))).d);
    var_1 = func_1(func_1(!func_1(var_1.b).a).b);
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.c), 49360u ^ (var_2.a | ~var_2.a));
}

