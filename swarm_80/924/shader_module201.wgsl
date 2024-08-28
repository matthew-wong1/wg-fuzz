struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec2<bool>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: Struct_1,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
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

var<private> global0: vec2<bool>;

var<private> global1: array<vec4<bool>, 3>;

var<private> global2: array<bool, 22> = array<bool, 22>(true, true, true, false, false, false, false, false, false, true, true, false, false, true, true, true, true, true, false, false, true, false);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    let var_0 = countOneBits(~(~(~(u_input.a << (24361u % 32u)))));
    var var_1 = Struct_4(select(select(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 22u)], global0.x), !vec2<bool>(global2[_wgslsmith_index_u32(47920u, 22u)], global2[_wgslsmith_index_u32(0u, 22u)]), select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.b, 22u)]))), vec2<bool>(true, true), all(!vec3<bool>(global0.x, true, true))), vec2<bool>(global2[_wgslsmith_index_u32(min(4294967295u, 74027u), 22u)], global0.x == true), vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(select(39288u, u_input.b, false), 0u >> (1u % 32u)), 22u)], select(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 21041u), 22u)], global0.x, any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b, 22u)], global0.x))))), _wgslsmith_div_vec2_i32(vec2<i32>(-51044i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, var_0, 2147483647i), -vec3<i32>(var_0, u_input.a, var_0))), -firstLeadingBit(vec2<i32>(0i, var_0) >> (vec2<u32>(u_input.b, 77146u) % vec2<u32>(32u)))), Struct_1(vec4<i32>(~(~var_0), var_0, u_input.a, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-11363i, -22056i), vec2<i32>(-24800i, 14663i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, var_0), vec2<i32>(var_0, -2147483647i), vec2<i32>(u_input.a, u_input.a)))), ~4294967295u, select(select(select(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.d.x, 22u)]), vec2<bool>(true, true), global0.x), vec2<bool>(true, global2[_wgslsmith_index_u32(u_input.c.x, 22u)]), !global0.x), select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.c.x, 22u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(77613u, 22u)]), vec2<bool>(false, true)), vec2<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.b, 22u)])), vec2<bool>(any(vec4<bool>(true, global0.x, false, global0.x)), any(vec4<bool>(false, false, global2[_wgslsmith_index_u32(u_input.c.x, 22u)], global0.x)))), max(~vec4<i32>(0i, u_input.a, 0i, 14613i) << ((vec4<u32>(4294967295u, u_input.b, u_input.d.x, u_input.b) << (vec4<u32>(u_input.b, 4294967295u, u_input.d.x, u_input.d.x) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(-56101i, u_input.a, 26645i, var_0) >> (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, u_input.d.x, 1u), vec4<u32>(u_input.c.x, 4294967295u, 0u, 7690u)) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, ~1i, max(1i, 39405i), _wgslsmith_dot_vec4_i32(vec4<i32>(-38617i, var_0, var_0, var_0), vec4<i32>(var_0, 33433i, -19965i, 1i))), ~vec4<i32>(var_0, u_input.a, var_0, 0i))), Struct_3(~abs(u_input.b)), abs(abs(vec4<u32>(reverseBits(u_input.c.x), min(u_input.c.x, u_input.d.x), 1u, select(u_input.c.x, 0u, false)))));
    var var_2 = var_1.e.x;
    let var_3 = all(!(!select(var_1.c.c, vec2<bool>(false, true), var_1.a))) && true;
    let var_4 = Struct_4(vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1604f)) - _wgslsmith_f_op_f32(f32(-1f) * -368f)) >= 1404f, var_1.c.c.x), -(~_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.a.x, 1i), vec2<i32>(var_0, u_input.a)) << (~(var_1.e.zx << (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u))), var_1.c, Struct_3(_wgslsmith_mult_u32(1u >> (u_input.b % 32u), _wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, 1u), ~var_1.e.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(var_1.e, vec4<u32>(1u, 4294967295u, u_input.c.x, _wgslsmith_dot_vec4_u32(var_1.e, vec4<u32>(30024u, var_1.e.x, var_1.d.a, 0u)))), var_1.e, firstLeadingBit(var_1.e)));
    return max(10793u, 4294967295u);
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> Struct_2 {
    let var_0 = Struct_4(vec2<bool>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(18891u, u_input.c.x >> (~4294967295u % 32u)), 22u)], true), abs(_wgslsmith_div_vec2_i32(-(vec2<i32>(u_input.a, u_input.a) & vec2<i32>(u_input.a, 1i)), vec2<i32>(u_input.a, -45601i))), Struct_1(countOneBits(vec4<i32>(-10163i, u_input.a, -49939i, 10264i)), reverseBits(6033u), select(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, arg_1)), vec2<bool>(any(vec4<bool>(arg_1, true, true, true)), all(vec3<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.d.x, 22u)], global2[_wgslsmith_index_u32(u_input.d.x, 22u)]))), all(vec3<bool>(true, global2[_wgslsmith_index_u32(21688u, 22u)], true))), -max(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), -vec4<i32>(u_input.a, u_input.a, u_input.a, -1773i)), max(abs(-vec4<i32>(u_input.a, 2147483647i, 1257i, u_input.a)), _wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, 0i, u_input.a, 2549i), vec4<i32>(-2147483647i, u_input.a, 14784i, 0i)))), Struct_3(arg_0.x), vec4<u32>(37397u, ~(~1u), 33418u, 11221u >> (func_3() % 32u)));
    let var_1 = -788f;
    global1 = array<vec4<bool>, 3>();
    var var_2 = select(var_0.c.c, !(!(!select(var_0.c.c, vec2<bool>(true, var_0.c.c.x), true))), select(var_0.c.c, vec2<bool>(_wgslsmith_f_op_f32(-var_1) <= _wgslsmith_f_op_f32(min(var_1, 818f)), true), !any(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, global0.x, false)))));
    var_2 = vec2<bool>(!all(!vec2<bool>(var_0.a.x, false)), !any(select(!var_0.c.c, vec2<bool>(true, false), !var_0.a)));
    return Struct_2(25530u, var_0.c, var_0.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: bool) -> Struct_4 {
    let var_0 = func_2(u_input.c, arg_2.b.c.x).c.c.x;
    global1 = array<vec4<bool>, 3>();
    let var_1 = -1i;
    global2 = array<bool, 22>();
    let var_2 = -43010i;
    return Struct_4(!(!arg_1.xy), arg_0, arg_2.c, Struct_3(6161u), ~vec4<u32>(1u, u_input.c.x, func_2(u_input.d >> (u_input.d % vec2<u32>(32u)), !arg_3).b.b, abs(23409u)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    var var_0 = func_4(vec2<i32>(u_input.a, 0i), vec4<bool>(all(!(!vec2<bool>(arg_2.x, arg_1.c.c.x))), !all(select(arg_2, vec3<bool>(global0.x, false, arg_2.x), arg_1.a.x)), global2[_wgslsmith_index_u32(4294967295u, 22u)], all(arg_2.xz)), func_2(vec2<u32>(1u, ~1u), true), true | arg_2.x);
    let var_1 = func_2(vec2<u32>(0u & arg_1.c.b, _wgslsmith_dot_vec2_u32(u_input.c, ~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 23421u), vec2<u32>(57107u, 1u)))), select(!arg_3, arg_2.x, true)).c;
    let var_2 = ~var_0.b;
    var var_3 = func_2(vec2<u32>(~(var_1.b & (u_input.d.x << (34733u % 32u))), firstTrailingBit(arg_1.d.a)), all(!arg_1.a));
    var var_4 = Struct_4(!func_2(_wgslsmith_add_vec2_u32(var_0.e.xx, vec2<u32>(var_0.d.a, u_input.d.x)) & (arg_1.e.yz >> (var_0.e.ww % vec2<u32>(32u))), any(vec3<bool>(true, true, arg_3))).b.c, ~vec2<i32>(func_4(var_0.c.d.xw, global1[_wgslsmith_index_u32(var_1.b, 3u)], func_2(var_0.e.zz, var_0.a.x), any(vec4<bool>(arg_3, var_0.c.c.x, var_0.c.c.x, false))).c.d.x, 2147483647i), Struct_1(~min(countOneBits(var_1.e), ~vec4<i32>(-21007i, arg_1.b.x, -1076i, -1i)), 45346u, arg_2.xx, -(_wgslsmith_mod_vec4_i32(vec4<i32>(32085i, -2147483647i, 2147483647i, var_1.a.x), vec4<i32>(var_2.x, var_1.d.x, u_input.a, var_2.x)) | var_3.b.a), arg_1.c.a), func_4(vec2<i32>(_wgslsmith_dot_vec4_i32(var_0.c.e, vec4<i32>(var_1.d.x, u_input.a, var_1.d.x, u_input.a)) ^ ~arg_1.b.x, -reverseBits(-1i)), !vec4<bool>(any(vec3<bool>(false, true, true)), arg_2.x, select(arg_1.a.x, true, var_0.a.x), false & var_0.a.x), Struct_2(_wgslsmith_add_u32(var_3.c.b, ~arg_1.c.b), Struct_1(-vec4<i32>(0i, var_3.b.d.x, var_2.x, var_2.x), ~0u, vec2<bool>(true, true), ~arg_1.c.a, abs(vec4<i32>(2147483647i, var_3.c.a.x, var_0.b.x, var_2.x))), var_3.b), arg_2.x).d, vec4<u32>(func_2(vec2<u32>(29881u, func_2(u_input.d, arg_2.x).c.b), 0i >= (var_0.b.x | -2147483647i)).c.b, abs(0u) >> (func_2(min(vec2<u32>(55140u, 1u), vec2<u32>(var_0.d.a, 6636u)), func_4(vec2<i32>(-1i, var_0.c.d.x), vec4<bool>(global2[_wgslsmith_index_u32(arg_1.d.a, 22u)], true, true, false), Struct_2(55489u, var_1, Struct_1(var_3.b.e, 5089u, var_1.c, var_1.d, var_0.c.e)), false).a.x).b.b % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.e.zxx, _wgslsmith_mult_vec3_u32(vec3<u32>(18547u, u_input.c.x, 1u), arg_1.e.yzz)), vec3<u32>(4294967295u, 4294967295u, ~45135u)), _wgslsmith_dot_vec2_u32(func_4(~var_1.e.wy, select(global1[_wgslsmith_index_u32(var_3.c.b, 3u)], vec4<bool>(var_0.c.c.x, true, false, arg_3), arg_1.c.c.x), Struct_2(var_3.b.b, Struct_1(vec4<i32>(-1i, var_1.d.x, var_2.x, arg_1.b.x), 35322u, vec2<bool>(var_1.c.x, var_0.c.c.x), var_0.c.a, vec4<i32>(var_3.c.e.x, -53335i, arg_1.b.x, var_0.b.x)), Struct_1(vec4<i32>(1i, -23825i, -32957i, var_1.a.x), var_1.b, var_1.c, var_0.c.d, vec4<i32>(27172i, 1i, -7554i, -1i))), global2[_wgslsmith_index_u32(~u_input.d.x, 22u)]).e.yw, var_0.e.xx)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) * -802f)) + _wgslsmith_f_op_f32(sign(796f)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 22>();
    global1 = array<vec4<bool>, 3>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(521f * -320f), _wgslsmith_f_op_f32(197f * 1149f)))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(500f, -223f), vec2<f32>(-566f, -1280f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1573f, 418f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(261f, 1228f)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(306f, 485f)))))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(var_0 + vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(277f, var_0.x, var_0.x, 1603f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x))), Struct_4(select(vec2<bool>(global0.x, true), vec2<bool>(global2[_wgslsmith_index_u32(u_input.d.x, 22u)], global0.x), vec2<bool>(false, global0.x)), -vec2<i32>(u_input.a, u_input.a), Struct_1(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), u_input.b, vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 22u)], true), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, 2147483647i)), Struct_3(u_input.c.x), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, u_input.d.x, u_input.d.x), vec4<u32>(u_input.b, 33579u, u_input.c.x, u_input.b))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, global0.x), false), vec3<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.b, 22u)], global2[_wgslsmith_index_u32(1668u, 22u)]), any(vec4<bool>(true, true, global0.x, true))), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_0.x, 1000f)), _wgslsmith_f_op_f32(ceil(var_0.x)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x))))));
    global2 = array<bool, 22>();
    global2 = array<bool, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

