struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
    e: vec3<bool>,
}

struct Struct_4 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(12077i, i32(-2147483648), 13696i, 52098i);

var<private> global1: Struct_1 = Struct_1(vec3<u32>(39990u, 1u, 0u), vec2<bool>(true, false));

var<private> global2: Struct_2 = Struct_2(vec3<f32>(-803f, -1202f, 425f), vec3<i32>(6022i, 1i, 8056i), Struct_1(vec3<u32>(0u, 39430u, 17124u), vec2<bool>(false, true)), true);

var<private> global3: vec2<f32>;

var<private> global4: array<vec3<u32>, 12>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    var var_0 = -4507i;
    var var_1 = vec3<u32>(u_input.e.x, _wgslsmith_clamp_u32(abs(global1.a.x ^ global2.c.a.x), global1.a.x, ~5491u), _wgslsmith_div_u32(_wgslsmith_add_u32(46945u, _wgslsmith_dot_vec2_u32(global1.a.xx, vec2<u32>(132369u, 60232u))), 3223u)) >> (global4[_wgslsmith_index_u32(22091u, 12u)] % vec3<u32>(32u));
    let var_2 = Struct_4(-u_input.c);
    let var_3 = vec4<u32>(select(1u, _wgslsmith_mult_u32(4294967295u, global1.a.x), true), max(~global1.a.x, global2.c.a.x), ~(~3376u), var_1.x);
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(622f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a.x, -302f)), arg_0)), global2.b >> (_wgslsmith_clamp_vec3_u32(~min(vec3<u32>(var_1.x, var_3.x, var_3.x), vec3<u32>(64048u, u_input.d.x, global2.c.a.x)), ~(~var_3.zxy), ~global1.a) % vec3<u32>(32u)), Struct_1(select((vec3<u32>(18622u, 5445u, 1u) | global4[_wgslsmith_index_u32(var_3.x, 12u)]) ^ var_3.xww, vec3<u32>(727u, var_1.x, min(77042u, var_3.x)), _wgslsmith_mult_i32(-18811i, u_input.c.x) > ~global2.b.x), !(!global1.b)), all(vec3<bool>(arg_1, all(select(vec4<bool>(false, global1.b.x, arg_1, global1.b.x), vec4<bool>(false, arg_1, false, global1.b.x), true)), true)));
    return global1.a.x;
}

fn func_2() -> Struct_2 {
    global3 = _wgslsmith_f_op_vec2_f32(-global2.a.zx);
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c.a.x, 12323u, countOneBits(~global1.a.x | ~0u), 0u), vec4<u32>(4294967295u, func_3(global3.x, global2.c.b.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(global2.a.xy, vec2<f32>(global3.x, -1000f))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global3.x, -1000f))))), ~global1.a.x, ~firstTrailingBit(1u) | 4294967295u), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.d.x, u_input.d.x) | ~global2.c.a.x, max(func_3(1734f, false, vec2<f32>(-577f, -719f)), 0u), _wgslsmith_clamp_u32(global2.c.a.x, u_input.d.x, max(global1.a.x, 37357u))), select(~global1.a.x, ~u_input.e.x, true), 4294967295u, min(1u, 0u)));
    var var_1 = var_0.x;
    var_1 = 27551u;
    let var_2 = ~(~firstTrailingBit(var_0));
    return Struct_2(global2.a, -(min(vec3<i32>(u_input.c.x, 24991i, u_input.a), vec3<i32>(global2.b.x, global0.x, 2147483647i)) << (~(u_input.e & vec3<u32>(var_0.x, global2.c.a.x, global2.c.a.x)) % vec3<u32>(32u))), Struct_1(countOneBits(~u_input.e), select(!global2.c.b, vec2<bool>(true, true), global1.b.x)), any(vec2<bool>(false, ~u_input.c.x != firstTrailingBit(1i))));
}

fn func_1(arg_0: f32, arg_1: Struct_3, arg_2: u32) -> vec4<bool> {
    global4 = array<vec3<u32>, 12>();
    var var_0 = func_2();
    global0 = u_input.c << (select(~vec4<u32>(arg_1.b.c.a.x, arg_1.b.c.a.x, 32666u, u_input.e.x) >> (vec4<u32>(0u >> (1u % 32u), ~39210u, _wgslsmith_sub_u32(8797u, arg_2), ~0u) % vec4<u32>(32u)), select(abs(vec4<u32>(39608u, u_input.d.x, global1.a.x, 60509u)) << (vec4<u32>(arg_2, arg_1.d.c.a.x, 65532u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(~vec4<u32>(66287u, u_input.d.x, 4780u, 0u), ~vec4<u32>(global1.a.x, var_0.c.a.x, var_0.c.a.x, global2.c.a.x)), any(select(vec4<bool>(global2.c.b.x, false, var_0.d, true), vec4<bool>(global2.c.b.x, true, false, global2.d), vec4<bool>(true, false, false, var_0.c.b.x)))), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, var_0.d, true, var_0.d), false), select(select(vec4<bool>(arg_1.a.b.x, arg_1.d.d, var_0.d, var_0.c.b.x), vec4<bool>(false, false, false, global2.c.b.x), vec4<bool>(global2.c.b.x, global1.b.x, true, arg_1.d.d)), vec4<bool>(global1.b.x, global1.b.x, false, false), true), select(select(vec4<bool>(global2.d, false, var_0.d, global1.b.x), vec4<bool>(true, var_0.c.b.x, true, true), var_0.d), vec4<bool>(false, arg_1.d.c.b.x, false, false), !global2.d))) % vec4<u32>(32u));
    var var_1 = Struct_4(vec4<i32>(-_wgslsmith_div_i32(1i, max(0i, global0.x)), -_wgslsmith_dot_vec2_i32(global0.zw, global0.wz), _wgslsmith_dot_vec2_i32(~(-vec2<i32>(0i, var_0.b.x)), select(vec2<i32>(1i, arg_1.b.b.x), abs(u_input.c.wx), global1.b.x | false)), _wgslsmith_div_i32(_wgslsmith_mult_i32(~(-1i), 2147483647i), u_input.a)));
    var var_2 = func_2().c;
    return !select(select(!(!vec4<bool>(true, global1.b.x, true, true)), select(select(vec4<bool>(arg_1.b.c.b.x, true, var_2.b.x, false), vec4<bool>(var_0.d, true, var_0.d, true), global2.d), select(vec4<bool>(var_0.d, true, true, var_2.b.x), vec4<bool>(global2.c.b.x, true, var_0.d, global2.d), true), true), !(!vec4<bool>(var_2.b.x, true, global2.c.b.x, global2.c.b.x))), vec4<bool>(arg_1.d.c.a.x >= ~10689u, func_2().c.b.x, false, arg_1.d.c.b.x), !(!(!global2.c.b.x)));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_4 {
    let var_0 = global2.b.x;
    var var_1 = true;
    var var_2 = 1u;
    var var_3 = ~(~4294967295u);
    let var_4 = ~arg_0.x;
    return Struct_4(_wgslsmith_sub_vec4_i32(abs(u_input.c), vec4<i32>(~20507i, -global0.x, arg_1.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-20740i, global2.b.x, 2595i), vec3<i32>(arg_1.b.x, 2147483647i, 16837i))) >> (arg_0 % vec4<u32>(32u))));
}

fn func_5(arg_0: Struct_4, arg_1: u32) -> vec4<bool> {
    let var_0 = Struct_4(_wgslsmith_sub_vec4_i32(-firstLeadingBit(-arg_0.a), u_input.c));
    let var_1 = -(~(~16300i));
    global4 = array<vec3<u32>, 12>();
    let var_2 = Struct_4(~firstLeadingBit(_wgslsmith_add_vec4_i32(vec4<i32>(1221i, 1i, 2147483647i, 21183i), vec4<i32>(var_0.a.x, var_1, global2.b.x, var_1))));
    global2 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * global2.a.x) - global2.a.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), func_2().a.x) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global2.a + global2.a))))), -(~vec3<i32>(-45925i, _wgslsmith_sub_i32(var_1, var_1), -u_input.a)), Struct_1(firstLeadingBit(global1.a), global1.b), true);
    return !vec4<bool>(all(select(select(vec4<bool>(false, true, global2.c.b.x, global1.b.x), vec4<bool>(true, true, false, global1.b.x), vec4<bool>(true, true, false, false)), !vec4<bool>(true, false, global1.b.x, global2.d), any(vec3<bool>(true, global2.d, true)))), any(vec3<bool>(global2.c.b.x != false, global2.c.b.x, global1.b.x)), false, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(func_5(func_4(vec4<u32>(75421u, global2.c.a.x, 0u, 1u) | vec4<u32>(1u, 1u, 33568u, u_input.d.x), Struct_2(vec3<f32>(108f, global2.a.x, 554f), global2.b, Struct_1(u_input.e, global2.c.b), global1.b.x), Struct_3(Struct_1(vec3<u32>(2663u, 1u, u_input.d.x), vec2<bool>(global2.c.b.x, global2.c.b.x)), Struct_2(vec3<f32>(global3.x, -110f, global2.a.x), vec3<i32>(u_input.b, global0.x, global2.b.x), global2.c, true), u_input.c.wyz, Struct_2(global2.a, vec3<i32>(global0.x, 44713i, global2.b.x), Struct_1(u_input.e, vec2<bool>(global1.b.x, global1.b.x)), true), vec3<bool>(false, false, global2.d)), func_1(global2.a.x, Struct_3(global2.c, Struct_2(vec3<f32>(global2.a.x, -1000f, global2.a.x), u_input.c.wxz, global2.c, true), global0.wxx, Struct_2(vec3<f32>(-1000f, global3.x, global2.a.x), global0.zxy, global2.c, false), vec3<bool>(true, global1.b.x, global1.b.x)), global1.a.x)), ~global2.c.a.x)) & !global1.b.x;
    var_0 = !(33890u < abs(_wgslsmith_dot_vec2_u32(u_input.e.zz, global1.a.zx))) || false;
    var var_1 = !global1.b.x;
    global4 = array<vec3<u32>, 12>();
    var var_2 = func_2().c;
    global0 = _wgslsmith_div_vec4_i32(min(~u_input.c, _wgslsmith_sub_vec4_i32(u_input.c, u_input.c) >> (vec4<u32>(41655u, 4294967295u, 65842u, 4294967295u) % vec4<u32>(32u))), -u_input.c) << (~vec4<u32>(~u_input.e.x, 4294967295u, (global2.c.a.x | 20637u) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(27581u, var_2.a.x, global1.a.x), vec3<u32>(global1.a.x, 1u, 33053u)), ~(~1u)) % vec4<u32>(32u));
    let var_3 = global2.c;
    var var_4 = global2.a.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - var_4.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(global3.x, 1445f)))), global2.a.x, 636f) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.x, -249f, global2.a.x, global3.x))))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~global2.c.a.zz, abs(~global2.c.a.xy)), var_2.a.xx | ~max(global2.c.a.xy, global1.a.yx)), global4[_wgslsmith_index_u32(global2.c.a.x, 12u)], _wgslsmith_f_op_f32(exp2(global3.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1332f, -826f, var_4.x, global3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, global2.a.x, 1675f, global3.x) + vec4<f32>(var_4.x, -290f, 968f, 483f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(177f)), _wgslsmith_f_op_f32(floor(-144f)), 1628f, _wgslsmith_f_op_f32(-var_4.x)))));
}

