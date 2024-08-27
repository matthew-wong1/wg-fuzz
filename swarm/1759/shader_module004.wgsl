struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: array<u32, 3> = array<u32, 3>(0u, 4294967295u, 4294967295u);

var<private> global2: array<vec4<f32>, 9>;

var<private> global3: i32 = 1i;

var<private> global4: vec3<u32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global3 = -_wgslsmith_dot_vec2_i32(~max(vec2<i32>(1i, u_input.a.x), ~vec2<i32>(-2147483647i, u_input.b.x)), _wgslsmith_mult_vec2_i32(~(~vec2<i32>(u_input.b.x, -8700i)), select(vec2<i32>(-20191i, -1i), vec2<i32>(-1i, u_input.b.x), arg_0.zz) << (reverseBits(global4.zy) % vec2<u32>(32u))));
    let var_0 = abs(_wgslsmith_div_vec4_i32(u_input.a, abs(u_input.a)));
    global1 = array<u32, 3>();
    var var_1 = Struct_3(var_0.yww, _wgslsmith_dot_vec2_i32(u_input.a.yx, countOneBits(-u_input.a.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-157f, _wgslsmith_f_op_f32(f32(-1f) * -134f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(890f, 337f), vec2<f32>(556f, -1823f), arg_0.x)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1364f, -1337f) + vec2<f32>(-259f, 2620f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-270f, 426f) - vec2<f32>(737f, -1000f))))), vec2<u32>(~global1[_wgslsmith_index_u32(~u_input.c.x, 3u)], global4.x));
    let var_2 = _wgslsmith_f_op_f32(ceil(731f));
    return ~(~(4294967295u & firstLeadingBit(global4.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: u32, arg_2: u32) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(1303f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x)))), 0i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -286f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))));
    var var_1 = 54883u;
    global4 = ~u_input.c.xxy;
    var var_2 = arg_0;
    global2 = array<vec4<f32>, 9>();
    return arg_0.x;
}

fn func_5(arg_0: vec2<bool>, arg_1: f32) -> f32 {
    var var_0 = u_input.c;
    var var_1 = arg_0;
    var_0 = ~max(min(_wgslsmith_mult_vec4_u32(select(u_input.c, vec4<u32>(4294967295u, 0u, 23997u, 4294967295u), vec4<bool>(false, arg_0.x, false, var_1.x)), u_input.c >> (u_input.c % vec4<u32>(32u))), u_input.c), u_input.c);
    var var_2 = Struct_1(-424f, ~(-38697i));
    global2 = array<vec4<f32>, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), 575f)))));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(func_5(select(select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(func_4(vec2<f32>(-114f, -1111f), ~global1[_wgslsmith_index_u32(1u, 3u)], func_3(vec3<bool>(true, false, false)))))), -1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(3533f, -496f)) - _wgslsmith_f_op_f32(floor(702f))), 1000f))));
    return _wgslsmith_dot_vec2_u32(min(vec2<u32>(global4.x, 1u) | vec2<u32>(25648u, global1[_wgslsmith_index_u32(4294967295u, 3u)]), global4.xz), max(countOneBits(vec2<u32>(global4.x, global4.x)), vec2<u32>(_wgslsmith_mult_u32(95595u, global4.x), select(u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 3u)], true)))) ^ func_3(select(select(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false), vec3<bool>(false, true, true), all(vec2<bool>(true, false))), vec3<bool>(any(vec2<bool>(false, true)), true, true), true));
}

fn func_1() -> Struct_3 {
    var var_0 = vec4<u32>(~20665u, 24754u << (select(max(20564u, 0u), abs(0u), select(true, false, true)) % 32u), _wgslsmith_div_u32(firstLeadingBit(~(~u_input.c.x)), global4.x), _wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(func_2()), u_input.c.x, 1u), global4.x << (~_wgslsmith_clamp_u32(1u, 1u, global4.x) % 32u)));
    var var_1 = _wgslsmith_sub_vec3_u32(~(~var_0.yww), reverseBits(vec3<u32>(u_input.c.x, ~(u_input.c.x | global1[_wgslsmith_index_u32(13817u, 3u)]), 23720u)));
    var var_2 = abs((global1[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, 1u) | u_input.c.x, 3u)] & (~global4.x >> (_wgslsmith_mod_u32(32849u, 75709u) % 32u))) >> (_wgslsmith_dot_vec4_u32(abs(~u_input.c), ~select(vec4<u32>(global1[_wgslsmith_index_u32(var_0.x, 3u)], 1u, 59211u, u_input.c.x), u_input.c, false)) % 32u));
    let var_3 = Struct_3(~u_input.a.yww, countOneBits(-33582i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-455f, _wgslsmith_f_op_f32(f32(-1f) * -385f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-520f, 2354f)))))))), firstLeadingBit(abs(var_1.zz)));
    var_0 = min(u_input.c, _wgslsmith_div_vec4_u32((firstLeadingBit(u_input.c) << (_wgslsmith_div_vec4_u32(vec4<u32>(1u, 1u, var_0.x, 4294967295u), vec4<u32>(1u, 65788u, var_3.d.x, u_input.c.x)) % vec4<u32>(32u))) << (countOneBits(u_input.c) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(11530u, 2804u, 0u, 1u), vec4<u32>(global1[_wgslsmith_index_u32(19232u, 3u)], 6149u, global1[_wgslsmith_index_u32(0u, 3u)], u_input.c.x), vec4<bool>(false, false, false, true)), vec4<u32>(1u, var_3.d.x, var_1.x, u_input.c.x) << (vec4<u32>(1u, u_input.c.x, 4294967295u, 0u) % vec4<u32>(32u)))));
    return var_3;
}

fn func_6(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_2) -> StorageBuffer {
    let var_0 = _wgslsmith_clamp_i32(~min(arg_3.a.b, u_input.a.x), ~arg_2.b, countOneBits(abs(~func_1().b)));
    global2 = array<vec4<f32>, 9>();
    var var_1 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(false, false, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true & all(vec3<bool>(true, true, true))), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -319f) + _wgslsmith_f_op_f32(trunc(arg_3.b))) < _wgslsmith_f_op_f32(exp2(arg_0.c.x)), any(vec4<bool>(true, true, true, true)), true), !vec3<bool>(!any(vec4<bool>(false, false, false, false)), select(true, 4211u == global1[_wgslsmith_index_u32(63946u, 3u)], true), false));
    let var_2 = ~(~select(vec4<u32>(u_input.c.x, 4294967295u >> (1u % 32u), 91116u, _wgslsmith_mult_u32(11740u, arg_0.d.x)), u_input.c, false));
    let var_3 = vec2<i32>(2147483647i, ~_wgslsmith_add_i32(abs(arg_3.a.b) << (countOneBits(4294967295u) % 32u), -1i));
    return StorageBuffer(vec3<i32>(-1i, -29644i, 0i), vec2<f32>(-779f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2360f - arg_2.a)), arg_3.b))), _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_3.a.b, 57049i, -19269i, -241i), u_input.a), _wgslsmith_mod_i32(select(arg_1.x & arg_3.a.b, -40664i, !var_1.x), var_3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 3>();
    let var_0 = -u_input.a.yyx;
    global0 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = func_6(func_1(), firstLeadingBit(firstLeadingBit(u_input.a)), Struct_1(_wgslsmith_f_op_f32(sign(-1732f)), ~0i), Struct_2(Struct_1(_wgslsmith_f_op_f32(func_5(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), -1015f)), ~(var_0.x << (global4.x % 32u))), _wgslsmith_div_f32(388f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -734f) - -983f))));
}

