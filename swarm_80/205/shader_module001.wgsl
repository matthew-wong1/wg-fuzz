struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_4, 11> = array<Struct_4, 11>(Struct_4(41660u, Struct_1(true, vec4<i32>(-1609i, 1i, 52755i, -13147i), -352f)), Struct_4(49553u, Struct_1(false, vec4<i32>(55089i, i32(-2147483648), -1i, -17785i), -203f)), Struct_4(53111u, Struct_1(true, vec4<i32>(-12523i, i32(-2147483648), -1i, -31978i), -2395f)), Struct_4(4294967295u, Struct_1(true, vec4<i32>(i32(-2147483648), i32(-2147483648), 1874i, 7224i), -743f)), Struct_4(43093u, Struct_1(true, vec4<i32>(-1i, -7019i, -1i, 42076i), -830f)), Struct_4(1u, Struct_1(false, vec4<i32>(-1i, -1i, -52964i, -23076i), 2211f)), Struct_4(0u, Struct_1(false, vec4<i32>(-1i, 60893i, 25350i, 45512i), -623f)), Struct_4(1u, Struct_1(false, vec4<i32>(-11694i, 1i, i32(-2147483648), 18330i), -444f)), Struct_4(1u, Struct_1(false, vec4<i32>(40789i, -23632i, 1i, 10305i), 1710f)), Struct_4(7880u, Struct_1(false, vec4<i32>(-48226i, 12209i, 2147483647i, i32(-2147483648)), -810f)), Struct_4(1u, Struct_1(false, vec4<i32>(2147483647i, 62411i, 2147483647i, 2147483647i), -341f)));

var<private> global2: vec2<f32>;

var<private> global3: u32 = 4294967295u;

var<private> global4: array<vec2<u32>, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = select(!((_wgslsmith_dot_vec2_i32(vec2<i32>(32812i, 2147483647i), vec2<i32>(0i, 0i)) | reverseBits(-18084i)) == _wgslsmith_mod_i32(1i, select(-6883i, -24500i, true))), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), !all(vec4<bool>(global2.x == global2.x, true, true, true)));
    var var_1 = ~(global4[_wgslsmith_index_u32(1u, 20u)] | vec2<u32>(abs(1u), u_input.a.x));
    global3 = 0u;
    var var_2 = select(select(!select(vec3<bool>(var_0, var_0, var_0), !vec3<bool>(false, false, var_0), vec3<bool>(var_0, false, true)), select(vec3<bool>(true, true, true), !(!vec3<bool>(false, var_0, var_0)), var_0), vec3<bool>(all(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, true), vec2<bool>(true, var_0))), select(var_0, true, var_0), var_0)), vec3<bool>(!any(!vec4<bool>(false, var_0, var_0, var_0)), true, var_0), true);
    global0 = -countOneBits(29151i);
    return _wgslsmith_f_op_f32(-1f);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: Struct_1) -> i32 {
    global3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_add_u32(max(u_input.a.x, u_input.a.x), 4294967295u) ^ ~countOneBits(u_input.a.x), u_input.a.x & ~(~u_input.a.x)), abs(~(~u_input.a.x)));
    var var_0 = Struct_3(Struct_2(vec2<u32>(u_input.a.x, firstTrailingBit(u_input.a.x | u_input.a.x)), Struct_1(1i > (0i << (u_input.a.x % 32u)), -arg_0, 1675f), arg_2, 53718u, arg_2), Struct_2(~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a.zw) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), Struct_1(false, select(vec4<i32>(arg_2.b.x, arg_2.b.x, arg_0.x, -1i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), any(vec2<bool>(arg_2.a, arg_2.a))), _wgslsmith_f_op_f32(-global2.x)), Struct_1(any(!vec3<bool>(arg_2.a, true, arg_2.a)), arg_0, arg_2.c), ((u_input.a.x & 0u) << (u_input.a.x % 32u)) | u_input.a.x, arg_2), ~arg_0.xy, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(global2.x, 1590f, arg_2.c, -698f))) - _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1.x, arg_2.c, global2.x, global2.x))))))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, _wgslsmith_f_op_f32(-457f * _wgslsmith_f_op_f32(arg_2.c * arg_1.x)), _wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, arg_1.x, global2.x) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_1.x, -376f, arg_1.x), vec3<f32>(2191f, -196f, global2.x)))) * vec3<f32>(global2.x, arg_2.c, 708f)))));
    let var_1 = select(vec4<bool>(!(var_0.a.e.b.x != (arg_2.b.x & arg_0.x)), arg_2.a, var_0.a.b.a & var_0.b.b.a, false & var_0.b.b.a), select(select(!(!vec4<bool>(false, false, false, arg_2.a)), select(select(vec4<bool>(false, var_0.b.b.a, var_0.b.e.a, true), vec4<bool>(false, false, var_0.a.e.a, arg_2.a), var_0.b.b.a), select(vec4<bool>(var_0.a.e.a, arg_2.a, var_0.a.b.a, true), vec4<bool>(true, false, var_0.b.b.a, arg_2.a), vec4<bool>(true, var_0.a.c.a, var_0.b.c.a, true)), true), all(vec2<bool>(false, var_0.b.c.a))), select(vec4<bool>(true, true, false, any(vec3<bool>(var_0.a.b.a, true, var_0.b.e.a))), vec4<bool>(var_0.b.a.x >= var_0.b.d, !arg_2.a, true, arg_2.a), var_0.b.c.a), var_0.b.b.a), select(select(vec4<bool>(var_0.a.b.a, var_0.a.e.a, var_0.a.c.a, var_0.b.e.a), vec4<bool>(true, var_0.a.e.a, true, true), select(select(vec4<bool>(arg_2.a, var_0.b.c.a, false, false), vec4<bool>(false, var_0.b.c.a, true, var_0.b.c.a), false), !vec4<bool>(arg_2.a, var_0.a.b.a, true, var_0.b.e.a), arg_0.x >= -25726i)), vec4<bool>(all(!vec4<bool>(var_0.a.c.a, arg_2.a, arg_2.a, arg_2.a)), arg_2.a, false, false), var_0.a.b.a));
    let var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-613f, arg_1.x) + -1206f), arg_1.x)), arg_2.c) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.c))), _wgslsmith_f_op_f32(func_2())));
    let var_3 = reverseBits(vec3<u32>(u_input.a.x << (~var_0.b.d % 32u), var_0.a.d, _wgslsmith_clamp_u32(~(~u_input.a.x), var_0.a.a.x, ~61540u)));
    return -_wgslsmith_mult_i32(0i >> (var_0.a.d % 32u), arg_0.x);
}

fn func_1() -> vec4<u32> {
    var var_0 = 1f;
    var_0 = _wgslsmith_div_f32(108f, _wgslsmith_f_op_f32(func_2()));
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(-1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(73297i, -1i, -34915i, 22656i), -vec4<i32>(-25152i, -1i, -408i, 2147483647i)) ^ -firstTrailingBit(-22342i)), 954i, _wgslsmith_add_i32(_wgslsmith_div_i32(-func_3(vec4<i32>(-35161i, -30024i, -2147483647i, 19635i), vec2<f32>(global2.x, global2.x), Struct_1(false, vec4<i32>(-10177i, -4137i, -2147483647i, 0i), global2.x)), firstTrailingBit(2147483647i)), 1i));
    global2 = vec2<f32>(1733f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-489f)))))));
    var var_2 = reverseBits(select(-_wgslsmith_mod_i32(1i, var_1.x >> (u_input.a.x % 32u)), -2147483647i, all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(true, true, false, true))))));
    return _wgslsmith_add_vec4_u32(~(u_input.a << (vec4<u32>(u_input.a.x, 29835u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) | vec4<u32>(abs(countOneBits(u_input.a.x)), countOneBits(~1u), ~max(u_input.a.x, 91525u), 1u), u_input.a);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = array<Struct_4, 11>();
    let var_0 = vec4<u32>(19302u, _wgslsmith_sub_u32(reverseBits(func_1().x), ~(~(35616u & u_input.a.x))), ~reverseBits(~max(u_input.a.x, 0u)), 62108u);
    let var_1 = Struct_3(Struct_2(global4[_wgslsmith_index_u32(func_1().x, 20u)], Struct_1(true, _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 39122i, 3029i, arg_0.b.x), arg_0.b, vec4<i32>(-2147483647i, arg_0.b.x, -2147483647i, arg_0.b.x)), reverseBits(arg_0.b)), _wgslsmith_f_op_f32(sign(-314f))), Struct_1(!(!arg_0.a), ~abs(arg_0.b), global2.x), _wgslsmith_mod_u32(24780u, u_input.a.x), arg_0), Struct_2(vec2<u32>(~func_1().x, ~var_0.x), arg_0, Struct_1(true, _wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b, arg_0.b), vec4<i32>(1i, arg_0.b.x, -6139i, arg_0.b.x)), -528f), ~1u, arg_0), -arg_0.b.wz, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -443f, -546f, arg_0.c)), vec4<f32>(226f, 988f, arg_0.c, 1750f))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(883f, -1088f, 1654f), vec3<f32>(global2.x, global2.x, arg_0.c), vec3<bool>(arg_0.a, false, arg_0.a))))), vec3<f32>(global2.x, _wgslsmith_f_op_f32(sign(global2.x)), 162f), select(vec3<bool>(true, true, arg_0.a), vec3<bool>(arg_0.a, true, arg_0.a), !vec3<bool>(false, arg_0.a, arg_0.a)))))));
    global3 = 10720u;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(~_wgslsmith_sub_u32(~1u, _wgslsmith_clamp_u32(33590u, var_0.x, u_input.a.x))), _wgslsmith_div_u32(4294967295u, 1u)), 11u)];
    return Struct_1(!(!select(all(vec3<bool>(true, var_2.b.a, var_2.b.a)), 845f == global2.x, !arg_0.a)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-21541i, arg_0.b.x, ~var_1.b.c.b.x, ~0i), vec4<i32>(var_2.b.b.x, -47384i, 26082i, var_1.b.e.b.x) ^ var_2.b.b), min(-1i, _wgslsmith_mod_i32(2147483647i, var_2.b.b.x)), ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1535i, 0i, 16893i), var_1.b.c.b.wzx)), -1i), _wgslsmith_f_op_f32(f32(-1f) * -164f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, global2.x) - vec2<f32>(778f, 732f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, global2.x), vec2<f32>(584f, global2.x)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global2.x)), -274f), true)));
    global3 = 77042u;
    global3 = 20296u;
    global1 = array<Struct_4, 11>();
    var var_0 = u_input.a.x;
    global4 = array<vec2<u32>, 20>();
    var var_1 = func_4(Struct_1(false, -vec4<i32>(-1i, 1i, 3277i, -12233i) << (func_1() % vec4<u32>(32u)), -631f));
    global3 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2.x, 1719f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c, var_1.c)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, var_1.c), vec2<f32>(-1000f, 464f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(358f)), var_1.c)), !(!vec2<bool>(var_1.a, true)))));
}

