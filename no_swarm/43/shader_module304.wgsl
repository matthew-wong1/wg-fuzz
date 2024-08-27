struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
    d: vec2<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(-8143i, 1i, 8209i, -8947i, -57842i, 25650i, -21581i, -11333i, i32(-2147483648), 23078i, 21167i, -1i, -25054i, 0i, -15256i, -1366i, -1i, i32(-2147483648), 2147483647i);

var<private> global1: array<vec2<i32>, 4>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, true);

var<private> global3: array<vec2<u32>, 32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: i32) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_i32(min(-3795i, _wgslsmith_add_i32(arg_2 ^ arg_2, firstTrailingBit(arg_3)) | _wgslsmith_mult_i32(i32(-1i) * -36643i, _wgslsmith_mod_i32(1i, 3745i))), firstLeadingBit(firstLeadingBit(-1i)));
    global3 = array<vec2<u32>, 32>();
    let var_1 = Struct_1(false);
    var var_2 = Struct_2(vec4<i32>(~1i, u_input.c >> (_wgslsmith_sub_u32(4294967295u, u_input.a.x) % 32u), -4737i, firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(u_input.d.x, -1i, global0[_wgslsmith_index_u32(4294967295u, 19u)])))) >> (u_input.b % vec4<u32>(32u)), Struct_1(!global2.x & any(global2.xz)));
    let var_3 = min(u_input.a.x, max(~u_input.a.x, ~17410u) >> (u_input.a.x % 32u)) & _wgslsmith_dot_vec4_u32(~u_input.b, u_input.b);
    return var_2.a;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    var var_0 = vec3<i32>(0i, _wgslsmith_dot_vec4_i32(func_3(min(vec2<i32>(-39238i, 7235i), arg_0.e.a.xy) ^ (vec2<i32>(u_input.c, u_input.d.x) & arg_0.c.a.a.yw), false, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, -57777i, u_input.c), vec4<i32>(27744i, arg_0.c.a.a.x, arg_0.e.a.x, global0[_wgslsmith_index_u32(1143u, 19u)]), arg_0.e.a), -arg_0.c.a.a)), -select(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(1u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 1i, u_input.d.x), arg_0.c.a.a, vec4<i32>(arg_0.e.a.x, u_input.c, 0i, u_input.d.x)), vec4<i32>(42666i, -50915i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), global2.x)), ~(-1i));
    return ~_wgslsmith_dot_vec4_i32(arg_0.c.a.a, arg_0.c.a.a & vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.x, 1i, global0[_wgslsmith_index_u32(4294967295u, 19u)]), arg_0.e.a), 2782i, func_3(u_input.d.yy, arg_1.a, 1i, -48852i).x, i32(-1i) * -48507i));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_mult_vec2_i32(countOneBits(_wgslsmith_mult_vec2_i32(-(~u_input.d.xz), vec2<i32>(min(global0[_wgslsmith_index_u32(59292u, 19u)], u_input.c), func_2(Struct_4(Struct_1(false), Struct_1(true), Struct_3(Struct_2(vec4<i32>(16268i, -39654i, u_input.c, global0[_wgslsmith_index_u32(17642u, 19u)]), Struct_1(true))), global2.xx, Struct_2(vec4<i32>(1826i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(0u, 19u)], 10586i), Struct_1(global2.x))), Struct_1(true), Struct_1(true))))), global1[_wgslsmith_index_u32(4294967295u ^ ~(~u_input.a.x), 4u)] >> (_wgslsmith_add_vec2_u32(vec2<u32>(~u_input.a.x, select(u_input.a.x, 0u, false)), ~(~vec2<u32>(1u, 60850u))) % vec2<u32>(32u)));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(283f, -1639f, 222f, 1394f) * vec4<f32>(-137f, -1221f, 1000f, -1422f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1764f, 773f, 496f, -549f), vec4<f32>(-1204f, -367f, -314f, 1423f))), !vec4<bool>(global2.x, global2.x, global2.x, global2.x)))))));
    let var_4 = Struct_1(false);
    return Struct_1(false);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2) -> Struct_3 {
    global2 = select(select(vec4<bool>(true, !arg_1.b.a, select(all(vec4<bool>(arg_1.b.a, arg_1.b.a, false, global2.x)), select(true, arg_1.b.a, true), arg_1.b.a | global2.x), all(arg_0.d) | true), !(!vec4<bool>(arg_0.e.b.a, true, arg_0.d.x, arg_1.b.a)), vec4<bool>(global2.x, all(select(vec4<bool>(global2.x, arg_1.b.a, arg_1.b.a, arg_1.b.a), vec4<bool>(global2.x, true, true, arg_0.b.a), vec4<bool>(global2.x, arg_1.b.a, false, true))), !all(global2.zy), all(global2.zww))), select(select(!select(vec4<bool>(global2.x, arg_1.b.a, true, arg_0.c.a.b.a), vec4<bool>(false, arg_1.b.a, true, false), global2.x), vec4<bool>(arg_0.e.b.a || false, true, any(global2.ywy), false), true), !select(select(vec4<bool>(arg_1.b.a, arg_0.e.b.a, global2.x, true), vec4<bool>(arg_1.b.a, true, global2.x, false), arg_0.a.a), vec4<bool>(false, true, arg_0.c.a.b.a, global2.x), false && global2.x), !vec4<bool>(true, true, arg_0.b.a, global2.x)), true);
    let var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u, min(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), u_input.b.x) & ~17796u), ~(u_input.b.xz & vec2<u32>(u_input.b.x << (u_input.a.x % 32u), ~u_input.a.x)));
    var var_1 = !vec4<bool>(select(arg_0.c.a.b.a, true, global2.x), true, arg_1.b.a, global2.x);
    let var_2 = Struct_3(arg_1);
    var var_3 = ~vec2<i32>(abs(arg_0.c.a.a.x), ~_wgslsmith_clamp_i32(u_input.d.x, arg_1.a.x >> (u_input.a.x % 32u), func_2(Struct_4(Struct_1(true), arg_0.e.b, arg_0.c, global2.xz, Struct_2(arg_1.a, arg_0.e.b)), var_2.a.b, var_2.a.b)));
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x;
    let var_1 = Struct_4(Struct_1(!select(!global2.x, true, true)), Struct_1(!(!all(vec2<bool>(global2.x, global2.x)))), func_4(Struct_4(Struct_1(all(vec2<bool>(false, false))), func_1(), Struct_3(Struct_2(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.c, -5735i, 2147483647i), Struct_1(false))), vec2<bool>(true, global2.x), Struct_2(-vec4<i32>(37654i, u_input.d.x, u_input.d.x, 2147483647i), Struct_1(false))), Struct_2(abs(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.d.x, u_input.c), vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 19u)], -23321i, -36100i))), Struct_1(true))), select(global2.zx, vec2<bool>(global2.x, global2.x), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, global2.x), vec2<bool>(true, global2.x)), vec2<bool>(global2.x, global2.x))), Struct_2(~max(-vec4<i32>(u_input.d.x, 20039i, 17187i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), countOneBits(vec4<i32>(1i, -18140i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], u_input.d.x))), func_4(Struct_4(Struct_1(global2.x), Struct_1(true), Struct_3(Struct_2(vec4<i32>(u_input.c, global0[_wgslsmith_index_u32(0u, 19u)], u_input.d.x, -1i), Struct_1(true))), vec2<bool>(global2.x, global2.x), Struct_2(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(4294967295u, 19u)], global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -1i), Struct_1(global2.x))), Struct_2(vec4<i32>(u_input.d.x, global0[_wgslsmith_index_u32(0u, 19u)], -15723i, u_input.c), Struct_1(global2.x))).a.b));
    let var_2 = select(!(_wgslsmith_add_i32(i32(-1i) * -2147483647i, var_1.c.a.a.x) > global0[_wgslsmith_index_u32(8330u | u_input.a.x, 19u)]), all(vec3<bool>(func_4(Struct_4(Struct_1(global2.x), var_1.c.a.b, Struct_3(var_1.c.a), vec2<bool>(true, true), Struct_2(vec4<i32>(var_1.e.a.x, u_input.d.x, global0[_wgslsmith_index_u32(u_input.a.x, 19u)], 0i), var_1.a)), func_4(var_1, var_1.e).a).a.b.a, var_1.c.a.b.a, -1i != global0[_wgslsmith_index_u32(u_input.a.x, 19u)])), var_1.c.a.b.a);
    var var_3 = func_4(var_1, Struct_2(var_1.e.a, func_4(Struct_4(Struct_1(false), func_1(), Struct_3(Struct_2(vec4<i32>(18320i, u_input.d.x, var_1.e.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 19u)]), var_1.e.b)), vec2<bool>(true, false), Struct_2(var_1.e.a, Struct_1(var_1.c.a.b.a))), func_4(var_1, Struct_2(vec4<i32>(var_1.c.a.a.x, -2147483647i, 2147483647i, global0[_wgslsmith_index_u32(1u, 19u)]), var_1.a)).a).a.b));
    let var_4 = Struct_4(func_4(var_1, Struct_2(func_3(select(vec2<i32>(1i, -1i), u_input.d.yz, false), true, var_1.e.a.x, 2147483647i << (u_input.a.x % 32u)), var_3.a.b)).a.b, Struct_1(true), func_4(Struct_4(var_1.a, func_1(), var_1.c, !select(global2.xw, vec2<bool>(global2.x, var_3.a.b.a), vec2<bool>(var_2, false)), func_4(var_1, var_1.c.a).a), var_1.c.a), var_1.d, func_4(Struct_4(func_4(var_1, Struct_2(var_3.a.a, var_1.a)).a.b, Struct_1(var_1.c.a.b.a & true), Struct_3(Struct_2(vec4<i32>(var_3.a.a.x, -67250i, -2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), Struct_1(true))), var_1.d, var_1.e), var_1.c.a).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(200f + 1169f) * _wgslsmith_f_op_f32(-341f + -1874f)), _wgslsmith_f_op_f32(f32(-1f) * -1952f), 905f) * vec3<f32>(177f, _wgslsmith_f_op_f32(1375f * _wgslsmith_f_op_f32(floor(863f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -579f) * _wgslsmith_f_op_f32(f32(-1f) * -245f)))), 56267u, vec3<i32>(-(i32(-1i) * -9681i) | _wgslsmith_sub_i32(~(-15521i), _wgslsmith_mod_i32(1i, var_1.e.a.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(var_3.a.a, -vec4<i32>(var_1.c.a.a.x, var_1.c.a.a.x, -2147483647i, u_input.d.x)), vec4<i32>(_wgslsmith_mult_i32(-18749i, var_4.c.a.a.x), -var_4.c.a.a.x, -u_input.c, var_4.c.a.a.x)), -27233i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1928f, -253f), vec2<f32>(-564f, 1000f), vec2<bool>(true, false))) + vec2<f32>(1f, 1f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2015f, 282f), vec2<f32>(656f, 1742f), var_1.e.b.a)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(533f, -738f), vec2<f32>(811f, 591f))))))));
}

