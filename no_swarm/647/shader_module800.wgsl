struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: u32,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, false, false, true, true, false, false, false);

var<private> global1: array<Struct_2, 13>;

var<private> global2: u32 = 60917u;

var<private> global3: array<Struct_3, 11> = array<Struct_3, 11>(Struct_3(4294967295u, -1309f, vec2<f32>(-490f, -238f), -151f, Struct_1(-65234i, -187f, -1862f, vec4<bool>(true, false, false, false))), Struct_3(69820u, 1041f, vec2<f32>(-501f, 1503f), -306f, Struct_1(1i, 402f, -1539f, vec4<bool>(false, false, false, true))), Struct_3(1u, 436f, vec2<f32>(-1126f, -443f), 1043f, Struct_1(-1i, 114f, -578f, vec4<bool>(true, false, true, false))), Struct_3(6992u, -1173f, vec2<f32>(1190f, -2063f), 375f, Struct_1(-16978i, 682f, 1698f, vec4<bool>(true, true, false, false))), Struct_3(8973u, 231f, vec2<f32>(1895f, -414f), 790f, Struct_1(-1i, -392f, -1000f, vec4<bool>(false, true, false, false))), Struct_3(1u, 2587f, vec2<f32>(-114f, -1000f), 1481f, Struct_1(2147483647i, -247f, 539f, vec4<bool>(true, false, true, false))), Struct_3(391u, 1617f, vec2<f32>(-841f, -1002f), -1000f, Struct_1(1i, 891f, 1000f, vec4<bool>(true, false, true, true))), Struct_3(18069u, -233f, vec2<f32>(842f, -434f), -533f, Struct_1(0i, 293f, 1328f, vec4<bool>(false, false, false, false))), Struct_3(4294967295u, 1000f, vec2<f32>(-1000f, -131f), -212f, Struct_1(0i, 812f, -775f, vec4<bool>(false, true, false, false))), Struct_3(25115u, -275f, vec2<f32>(1868f, -853f), 679f, Struct_1(-21100i, -385f, 424f, vec4<bool>(true, true, true, true))), Struct_3(25008u, 1956f, vec2<f32>(-659f, -164f), -391f, Struct_1(42639i, -1012f, -891f, vec4<bool>(false, true, false, false))));

var<private> global4: vec3<bool>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> f32 {
    global2 = abs(~1u);
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.d, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(~(~u_input.b.x), u_input.a.x))), 11u)];
    global4 = !(!var_0.e.d.wzx);
    var var_1 = min((var_0.e.a >> (~u_input.d % 32u)) | var_0.e.a, var_0.e.a);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -2257f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b + -1453f), _wgslsmith_f_op_f32(979f + 968f)))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1984f - var_0.d), _wgslsmith_f_op_f32(-var_0.d)))), Struct_1(reverseBits(~(-var_0.e.a)), var_0.c.x, var_0.b, !var_0.e.d), u_input.c.x);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.b))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-601f + _wgslsmith_f_op_f32(abs(var_2.c.b))))));
}

fn func_2() -> bool {
    let var_0 = Struct_5(Struct_1(countOneBits(~1i), _wgslsmith_div_f32(-1000f, 1561f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(543f - _wgslsmith_f_op_f32(216f - 255f))), select(!vec4<bool>(false, false, global4.x, false), vec4<bool>(true, true, true, true), true)), _wgslsmith_mod_vec2_i32(abs(-vec2<i32>(-20674i, 1i)), select(vec2<i32>(1i, 1i), vec2<i32>(_wgslsmith_add_i32(0i, -33113i), abs(1i)), !global4.xz)), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), ~vec4<i32>(-1i, 2147483647i, 1i, 44357i)), ~(~(i32(-1i) * -1i))));
    var var_1 = var_0.a.b;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_3()), var_0.a.b)), _wgslsmith_f_op_f32(1466f * _wgslsmith_div_f32(var_0.a.b, _wgslsmith_f_op_f32(var_0.a.c + _wgslsmith_f_op_f32(floor(-655f))))));
    var var_3 = Struct_5(Struct_1(2147483647i >> (abs(countOneBits(9179u)) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1000f, 246f, global0[_wgslsmith_index_u32(18579u, 8u)]))) * -244f), 607f, vec4<bool>(any(select(var_0.a.d.wxy, vec3<bool>(false, var_0.a.d.x, global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), var_0.a.d.wyw)), global4.x, any(vec2<bool>(global4.x, false)), true)), vec2<i32>(var_0.b.x, -(~var_0.b.x) >> ((countOneBits(u_input.c.x) >> (max(u_input.c.x, 62462u) % 32u)) % 32u)), var_0.a.a);
    global3 = array<Struct_3, 11>();
    return false;
}

fn func_1(arg_0: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(-31582i, 1i) << (~(vec2<u32>(u_input.a.x, u_input.b.x) & u_input.b.yw) % vec2<u32>(32u))), countOneBits(vec2<i32>(_wgslsmith_mod_i32(1i, ~1i), 1i)));
    global2 = 1u;
    let var_1 = Struct_1(~21522i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -247f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.x))))), -387f, vec4<bool>(!(-1368i >= (-36312i >> (u_input.d % 32u))), all(vec3<bool>(global0[_wgslsmith_index_u32(reverseBits(1u), 8u)], func_2(), !global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), !((-33657i >> (u_input.a.x % 32u)) != 51i), global4.x || !any(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 8u)], true))));
    let var_2 = abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(var_1.a, 13246i, var_1.a, var_1.a), ~min(max(vec4<i32>(var_1.a, var_1.a, var_1.a, 0i), vec4<i32>(var_1.a, var_1.a, var_1.a, var_1.a)), min(vec4<i32>(-39101i, var_1.a, 43534i, -2147483647i), vec4<i32>(var_1.a, -47297i, var_1.a, var_1.a)))));
    var var_3 = select(select(!var_1.d.wyz, !select(vec3<bool>(global4.x, true, var_1.d.x), select(var_1.d.xwz, var_1.d.wyy, false), !vec3<bool>(var_1.d.x, true, global0[_wgslsmith_index_u32(12709u, 8u)])), !all(select(vec2<bool>(false, false), var_1.d.zw, global4.yz))), vec3<bool>(true, !all(var_1.d), !(!select(true, false, global4.x))), !vec3<bool>(true, !any(vec2<bool>(true, global0[_wgslsmith_index_u32(u_input.b.x, 8u)])), (-2552i < var_1.a) || global0[_wgslsmith_index_u32(u_input.a.x << (u_input.b.x % 32u), 8u)]));
    return Struct_1(_wgslsmith_mod_i32(-41955i, -firstTrailingBit(var_2)), var_1.b, 1676f, select(select(vec4<bool>(!global0[_wgslsmith_index_u32(u_input.b.x, 8u)], var_3.x, true, true), vec4<bool>(global4.x, global0[_wgslsmith_index_u32(33613u, 8u)], !global4.x, all(var_1.d)), true), vec4<bool>(global4.x, any(!vec3<bool>(global4.x, false, false)), _wgslsmith_clamp_u32(16106u, 809u, 0u) >= ~u_input.c.x, ~(-2147483647i) < _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.a, var_2, var_2, 1i), vec4<i32>(0i, var_2, var_1.a, 44960i))), var_1.d));
}

fn func_4(arg_0: Struct_1) -> bool {
    let var_0 = arg_0.d;
    var var_1 = vec4<u32>(35276u, u_input.b.x, ~_wgslsmith_dot_vec4_u32(max(u_input.b, firstTrailingBit(vec4<u32>(68385u, u_input.d, 4294967295u, u_input.b.x))), abs(~vec4<u32>(u_input.d, u_input.b.x, u_input.c.x, u_input.b.x))), 11312u);
    global0 = array<bool, 8>();
    let var_2 = Struct_2(arg_0.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1195f - 431f))), arg_0.c)), func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1028f, 716f, arg_0.c, arg_0.b))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1027f, 280f, -1000f, 1150f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-547f, arg_0.c, arg_0.b, 206f) + vec4<f32>(arg_0.c, arg_0.b, arg_0.b, -1047f))))), ~u_input.b.x);
    var var_3 = Struct_4(Struct_3(0u, _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.b, var_2.c.b, var_2.a, arg_0.c), vec4<f32>(-668f, arg_0.c, arg_0.b, arg_0.c)))).b + _wgslsmith_f_op_f32(-arg_0.c)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, arg_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, -977f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.c, var_2.b)))), _wgslsmith_f_op_f32(f32(-1f) * -205f), Struct_1(reverseBits(arg_0.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_2.a), arg_0.c)), _wgslsmith_div_f32(-960f, arg_0.c), !(!var_0))), vec4<f32>(_wgslsmith_f_op_f32(arg_0.c * _wgslsmith_div_f32(179f, _wgslsmith_f_op_f32(select(arg_0.c, var_2.c.b, arg_0.d.x)))), arg_0.b, func_1(vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.c, -1337f, true)), _wgslsmith_f_op_f32(max(var_2.a, var_2.a)), 260f, -323f)).c, arg_0.c), ~_wgslsmith_mod_vec4_i32(max(vec4<i32>(1i, -1i, var_2.c.a, -24102i), vec4<i32>(arg_0.a, 2147483647i, 18449i, arg_0.a)) & ~vec4<i32>(1i, var_2.c.a, var_2.c.a, 68579i), select(vec4<i32>(arg_0.a, 33831i, 1i, arg_0.a), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_2.c.a, 13078i, var_2.c.a), vec4<i32>(arg_0.a, var_2.c.a, 1i, 16734i)), !var_2.c.d.x)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.c, -960f, arg_0.c, 971f)))), vec4<f32>(_wgslsmith_f_op_f32(-576f + -276f), -681f, -881f, var_2.a), global0[_wgslsmith_index_u32(~select(u_input.b.x, firstLeadingBit(31312u), true), 8u)])), arg_0);
    return arg_0.d.x && !(true & !all(vec2<bool>(true, var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = abs(~1u);
    let var_0 = vec3<bool>(func_4(func_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(416f, 848f, -1239f, -700f) - vec4<f32>(980f, 210f, -1313f, -1000f)) - vec4<f32>(-432f, 979f, 1000f, 1000f)))), any(func_1(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-597f, -1209f, 289f, 1005f), vec4<f32>(-190f, -484f, 660f, 243f)))).d) && false, all(select(vec3<bool>(true, all(vec4<bool>(global4.x, false, true, global0[_wgslsmith_index_u32(1u, 8u)])), false), vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), all(select(global4.yz, vec2<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 8u)]), global4.x)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f)));
    var var_2 = abs(abs(vec2<i32>(1i, 1i)));
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(247f, 2485f)))))), -580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-635f + 262f), -1031f)), _wgslsmith_f_op_f32(-513f * _wgslsmith_f_op_f32(max(456f, 1295f))))) - 363f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(168f * 1000f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(667f)))))));
    var var_4 = select(func_1(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1746f, -717f, _wgslsmith_f_op_f32(exp2(var_3.x)), -498f)))).d, !vec4<bool>(!(!global4.x), false, func_4(Struct_1(var_2.x, 190f, var_3.x, vec4<bool>(var_0.x, true, false, false))), global0[_wgslsmith_index_u32(u_input.a.x << ((1u >> (u_input.d % 32u)) % 32u), 8u)]), !vec4<bool>(all(func_1(var_3).d.xz), any(global4.yy), !all(vec2<bool>(false, true)), var_0.x));
    global3 = array<Struct_3, 11>();
    let var_5 = firstTrailingBit(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_vec3_i32(~(-vec3<i32>(78575i, 0i, var_2.x)), vec3<i32>(~var_2.x, 0i, -16573i)), 2575u, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(148f + var_3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_3.x, var_3.x, var_0.x)) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-145f, var_3.x) - _wgslsmith_f_op_f32(-var_3.x)))), -firstTrailingBit(reverseBits(-vec3<i32>(var_2.x, 0i, var_2.x))));
}

