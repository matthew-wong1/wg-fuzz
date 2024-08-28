struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<bool>(false, false, false), vec4<bool>(true, true, false, false), vec3<i32>(8772i, 52600i, 14102i), 519f, Struct_1(0u, vec3<i32>(1i, 1i, 0i), vec3<u32>(59130u, 1u, 1u), 939f, vec2<bool>(false, true))), Struct_2(vec3<bool>(true, true, false), vec4<bool>(true, true, true, false), vec3<i32>(-29543i, -1i, -25595i), 325f, Struct_1(1u, vec3<i32>(-28652i, i32(-2147483648), 0i), vec3<u32>(17043u, 4294967295u, 32568u), -797f, vec2<bool>(false, true))), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, true, false, false), vec3<i32>(-12708i, 2147483647i, 1i), -651f, Struct_1(10633u, vec3<i32>(16791i, 3272i, i32(-2147483648)), vec3<u32>(25808u, 0u, 4294967295u), 100f, vec2<bool>(false, true))), Struct_2(vec3<bool>(false, true, true), vec4<bool>(true, true, false, true), vec3<i32>(20993i, 31703i, 11097i), 296f, Struct_1(0u, vec3<i32>(5791i, 1i, 32334i), vec3<u32>(4294967295u, 1u, 0u), -1626f, vec2<bool>(true, true))), Struct_2(vec3<bool>(false, false, true), vec4<bool>(false, true, false, true), vec3<i32>(10652i, 7262i, 26315i), -528f, Struct_1(1u, vec3<i32>(i32(-2147483648), -1i, i32(-2147483648)), vec3<u32>(4294967295u, 0u, 2261u), 1192f, vec2<bool>(false, false))), Struct_2(vec3<bool>(true, true, true), vec4<bool>(true, false, false, false), vec3<i32>(-1i, 1941i, -14747i), 913f, Struct_1(4803u, vec3<i32>(28057i, -65757i, -17023i), vec3<u32>(28452u, 17956u, 4294967295u), 1182f, vec2<bool>(false, true))), Struct_2(vec3<bool>(false, true, false), vec4<bool>(true, true, true, true), vec3<i32>(51767i, -29649i, 46217i), 1645f, Struct_1(12403u, vec3<i32>(i32(-2147483648), -15131i, -6291i), vec3<u32>(4294967295u, 0u, 0u), -1330f, vec2<bool>(false, false))));

var<private> global2: array<i32, 29> = array<i32, 29>(-20321i, -18190i, 0i, 1i, -43435i, 29256i, 1i, 30349i, -1i, 2147483647i, 45762i, 63457i, -20592i, 62227i, -38815i, 0i, -20647i, 767i, -8194i, -62208i, 2147483647i, -9146i, 2147483647i, -6194i, -7146i, -1i, 2147483647i, -16820i, 1i);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: vec3<bool>) -> f32 {
    let var_0 = Struct_2(!select(!(!vec3<bool>(arg_3.x, global0.a.e.x, arg_3.x)), arg_3, arg_3.x), select(vec4<bool>(global0.b, all(!vec4<bool>(global0.a.e.x, global0.b, global0.a.e.x, true)), ~32324u > global0.a.a, global0.b), !vec4<bool>(true, false, true, all(vec4<bool>(true, true, arg_3.x, true))), vec4<bool>(!all(arg_3.yz), !any(arg_3), global0.b, select(arg_3.x, arg_3.x, true))), ~_wgslsmith_sub_vec3_i32(~global0.a.b, abs(arg_1.ywz)) & firstTrailingBit(max(select(vec3<i32>(global0.a.b.x, u_input.a, 36479i), global0.a.b, arg_3), -global0.a.b)), global0.a.d, Struct_1(select(0u, _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, u_input.c.x), 81809u), any(!vec4<bool>(arg_3.x, global0.b, false, arg_3.x))), -((arg_1.wzx | vec3<i32>(global0.c, global0.a.b.x, -2147483647i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(global0.a.b.x, 2147483647i, arg_1.x), global0.a.b, global0.a.b)), select(global0.a.c, max(vec3<u32>(1u, arg_2.x, 4294967295u), u_input.c & vec3<u32>(global0.a.a, 31454u, 45306u)), !(!arg_3.x)), -295f, select(!global0.a.e, global0.a.e, !arg_3.yx)));
    var var_1 = vec4<bool>(select(311f > global0.a.d, arg_3.x, var_0.d <= 166f) | global0.b, !(!var_0.a.x & !var_0.b.x), var_0.e.e.x, var_0.e.e.x);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(432f, -537f, _wgslsmith_f_op_f32(-global0.a.d), -182f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(219f, 698f, global0.a.d, arg_0), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.e.d, -1000f, 314f, 139f)), !arg_3.x)))));
    let var_3 = -select(var_0.e.b.x, ~arg_1.x, arg_3.x != global0.a.e.x);
    var var_4 = Struct_3(~abs(vec3<u32>(select(u_input.c.x, arg_2.x, false), 1u, ~global0.a.c.x)), u_input.c);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_5 {
    global2 = array<i32, 29>();
    global2 = array<i32, 29>();
    let var_0 = vec4<u32>(1u, select(max(~u_input.b.x << (54864u % 32u), u_input.b.x), global0.a.c.x, global0.b), arg_1, _wgslsmith_clamp_u32(global0.a.a, arg_1, 17368u));
    global0 = Struct_4(Struct_1(global0.a.a, vec3<i32>(2147483647i, i32(-1i) * -2147483647i, 9683i), abs(var_0.yzy) ^ firstLeadingBit(u_input.d), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.d * global0.a.d), _wgslsmith_f_op_f32(-global0.a.d))), _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(4317i, 1i, arg_0, -41233i)), vec4<i32>(u_input.a, arg_0, global2[_wgslsmith_index_u32(global0.a.a, 29u)], 29184i)), firstLeadingBit(vec2<u32>(0u, 38196u)) >> (~global0.a.c.xz % vec2<u32>(32u)), !vec3<bool>(global0.a.e.x, global0.b, true))), select(vec2<bool>(true, true), global0.a.e, !select(vec2<bool>(global0.a.e.x, true), vec2<bool>(false, global0.a.e.x), global0.a.e))), !select(!global0.b, !any(global0.a.e), false), ~(-25044i));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-535f, global0.a.d, 310f, -1048f) * vec4<f32>(1000f, global0.a.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.d)), _wgslsmith_f_op_f32(-global0.a.d))));
    return Struct_5(Struct_1(0u & (var_0.x >> (0u % 32u)), vec3<i32>(2147483647i, global2[_wgslsmith_index_u32(u_input.c.x, 29u)], ~global0.c), reverseBits(select(vec3<u32>(var_0.x, 0u, 34696u) | global0.a.c, u_input.c, select(vec3<bool>(true, global0.b, global0.b), vec3<bool>(global0.b, true, true), global0.a.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-892f)) + -1141f)), !global0.a.e), -1043f, _wgslsmith_f_op_vec3_f32(floor(var_1.xyx)), _wgslsmith_f_op_f32(-global0.a.d), _wgslsmith_f_op_vec3_f32(-var_1.xxx));
}

fn func_4(arg_0: i32, arg_1: Struct_5, arg_2: f32) -> u32 {
    let var_0 = vec4<i32>(min(_wgslsmith_add_i32(~(-19062i), select(global0.a.b.x, arg_0, false)), -(arg_1.a.b.x >> (45501u % 32u))), -((i32(-1i) * -6492i) & ~arg_0), ~_wgslsmith_mod_i32(_wgslsmith_mult_i32(-23537i, 5092i), global2[_wgslsmith_index_u32(4294967295u, 29u)] & 2147483647i), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(1u), arg_1.a.a), 29u)] >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a.a, 61741u), global0.a.c) % 32u)) | (vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(903u, u_input.d.x), u_input.d.zy), 29u)], -6022i, 33474i, _wgslsmith_clamp_i32(global2[_wgslsmith_index_u32(firstLeadingBit(0u), 29u)], global2[_wgslsmith_index_u32(~arg_1.a.c.x, 29u)], global0.c)) & vec4<i32>(2147483647i << (firstLeadingBit(global0.a.a) % 32u), func_2(~81973i, arg_1.a.c.x).a.b.x, 24050i >> (_wgslsmith_div_u32(arg_1.a.c.x, global0.a.a) % 32u), ~global0.a.b.x));
    let var_1 = func_2(arg_0, firstLeadingBit(arg_1.a.c.x) >> (global0.a.c.x % 32u)).a;
    var var_2 = Struct_3(vec3<u32>(_wgslsmith_mod_u32(92042u << (arg_1.a.a % 32u), u_input.c.x) ^ _wgslsmith_add_u32(1u, _wgslsmith_dot_vec2_u32(u_input.c.zy, var_1.c.zz)), var_1.c.x, (~arg_1.a.a >> (56223u % 32u)) << (50317u % 32u)), vec3<u32>(~(~24168u), global0.a.a, var_1.a) ^ vec3<u32>(~(~var_1.c.x), arg_1.a.c.x, arg_1.a.c.x));
    global2 = array<i32, 29>();
    var var_3 = vec3<bool>(global0.a.d >= global0.a.d, var_1.e.x, u_input.a < -1i);
    return _wgslsmith_dot_vec3_u32(~reverseBits(global0.a.c), reverseBits(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, arg_1.a.c.x, arg_1.a.c.x)), _wgslsmith_mod_vec3_u32(arg_1.a.c, u_input.c)) | (global0.a.c >> (firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 14777u)) % vec3<u32>(32u)))));
}

fn func_1() -> f32 {
    global1 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_clamp_vec2_i32(global0.a.b.zx, global0.a.b.zy, reverseBits(global0.a.b.yz)) >> (~vec2<u32>(func_4(11582i, func_2(-2147483647i, global0.a.c.x), -1100f), 1u) % vec2<u32>(32u));
    global1 = array<Struct_2, 7>();
    return 1462f;
}

fn func_5(arg_0: f32, arg_1: vec4<i32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -606f))))));
    let var_1 = 6115i;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-769f))));
    var var_2 = func_2(13475i, ~1u).a;
    global1 = array<Struct_2, 7>();
    return vec4<u32>(var_2.c.x, abs(~(~(~var_2.a))), ~(~global0.a.c.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(var_2.c.x, 4294967295u) >> (vec2<u32>(11415u, 4294967295u) % vec2<u32>(32u))), vec2<u32>(~1u, ~global0.a.c.x)), _wgslsmith_div_u32(_wgslsmith_add_u32(min(global0.a.a, var_2.a), 1u), u_input.b.x | 10161u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_vec4_u32(firstLeadingBit(min(u_input.b, firstTrailingBit(u_input.b))), ~((u_input.b ^ u_input.b) | _wgslsmith_add_vec4_u32(u_input.b, u_input.b))) << ((countOneBits(func_5(_wgslsmith_f_op_f32(func_1()), vec4<i32>(global2[_wgslsmith_index_u32(0u, 29u)], -2147483647i, 36537i, global2[_wgslsmith_index_u32(global0.a.c.x, 29u)]) << (u_input.b % vec4<u32>(32u)))) >> (u_input.b % vec4<u32>(32u))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.d * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -481f), 911f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1473f)) * global0.a.d));
    global2 = array<i32, 29>();
    var var_2 = global1[_wgslsmith_index_u32(1u, 7u)];
    let var_3 = var_2.a;
    var var_4 = !func_2(min(i32(-1i) * -847i, select(u_input.a, var_2.e.b.x, true)), 0u & ~_wgslsmith_sub_u32(global0.a.a, var_0.x)).a.e;
    global0 = Struct_4(Struct_1(~func_2(firstLeadingBit(-2147483647i), 1u).a.c.x, countOneBits(~(~vec3<i32>(u_input.a, var_2.e.b.x, u_input.a))), _wgslsmith_mult_vec3_u32(countOneBits(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.a.a, 50128u, 104745u), vec3<u32>(var_0.x, 62964u, var_0.x))), vec3<u32>(min(global0.a.c.x, var_0.x), global0.a.c.x, abs(4294967295u))), var_2.d, global0.a.e), var_4.x, 1i);
    var var_5 = 1i;
    global0 = Struct_4(Struct_1(func_5(_wgslsmith_f_op_f32(-var_2.e.d), -select(vec4<i32>(u_input.a, global0.a.b.x, 46992i, 0i), vec4<i32>(var_2.c.x, var_2.c.x, 0i, 2147483647i), var_4.x)).x, _wgslsmith_mod_vec3_i32(global0.a.b, select(vec3<i32>(u_input.a, var_2.e.b.x, global2[_wgslsmith_index_u32(0u, 29u)]), global0.a.b, var_2.a)) << (~global0.a.c % vec3<u32>(32u)), vec3<u32>(~_wgslsmith_clamp_u32(4294967295u, var_0.x, 57764u), global0.a.c.x, (u_input.d.x | global0.a.c.x) >> (1u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.d), -1389f)), global0.a.e), var_2.b.x, 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~global0.a.c.x);
}

