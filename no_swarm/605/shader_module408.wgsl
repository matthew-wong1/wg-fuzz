struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(i32(-2147483648), 32212i, -42667i, 24474i, 43979i, 0i, 1i, 1i, 2147483647i, 0i, 37975i, 1i, 5329i, -8717i, 0i, i32(-2147483648), 54837i, 2147483647i, -882i, 2147483647i, 1i, -34804i, -52606i, -31190i, -68236i, 2147483647i, 1i, 60299i, 2147483647i);

var<private> global1: array<Struct_3, 3>;

var<private> global2: f32 = 157f;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec3<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = (~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, 75803u, 4294967295u, 1u) >> (vec4<u32>(12961u, arg_2.a, arg_2.a, arg_2.a) % vec4<u32>(32u)), vec4<u32>(arg_2.a, 54898u, arg_2.a, 14799u)) ^ min(vec4<u32>(~arg_2.a, u_input.c, 1u, ~arg_2.a), ~vec4<u32>(u_input.c, u_input.c, u_input.c, 1u))) << (~(~(~(~vec4<u32>(88619u, 0u, 4294967295u, u_input.c)))) % vec4<u32>(32u));
    let var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(0u, _wgslsmith_mod_u32(~arg_2.a, arg_2.a)), vec2<u32>(106788u, 4294967295u), ~select(~vec2<u32>(60976u, arg_2.a), countOneBits(var_0.wy & var_0.wy), true & all(vec2<bool>(arg_2.b, arg_2.b))));
    return arg_2;
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = -vec2<i32>(arg_2.c, max(arg_2.c, -2147483647i));
    var var_1 = select(!arg_2.e, vec4<bool>(-1948f > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(922f, 669f))), all(vec3<bool>(!arg_0, arg_0, arg_0)), false, true), true);
    global2 = -314f;
    global2 = 506f;
    global1 = array<Struct_3, 3>();
    return Struct_2(-418f, Struct_1(56517u, true, arg_2.d.c), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(1i, 2147483647i), -8602i, global0[_wgslsmith_index_u32(31734u, 29u)]), var_0.x), arg_2.b, !select(arg_2.e, !vec4<bool>(true, true, var_1.x, true), select(false, true, true)));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<f32>, arg_2: i32, arg_3: vec3<f32>) -> Struct_2 {
    global1 = array<Struct_3, 3>();
    var var_0 = Struct_3(_wgslsmith_f_op_f32(select(arg_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))), !any(vec2<bool>(true, true)))), Struct_2(_wgslsmith_f_op_f32(ceil(-492f)), Struct_1(58371u, true, _wgslsmith_f_op_f32(floor(-320f))), arg_2, Struct_1(0u, false, arg_3.x), !select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true)), true)), func_3(true, abs(abs(vec3<u32>(u_input.c, u_input.c, 44149u)) & _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 21451u, u_input.c), vec3<u32>(u_input.c, 4294967295u, u_input.c))), Struct_2(arg_1.x, Struct_1(u_input.c, false, _wgslsmith_f_op_f32(-arg_3.x)), ~(-1i), func_2(vec3<i32>(arg_0.x, -3390i, arg_0.x), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 21591i, -14765i, 0i), vec4<i32>(-50624i, global0[_wgslsmith_index_u32(31617u, 29u)], arg_0.x, -62176i)), Struct_1(u_input.c, true, 565f)), vec4<bool>(true, true, true, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(899f, arg_1.x)) * arg_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -500f)));
    var_0 = global1[_wgslsmith_index_u32(func_3(all(!var_0.c.e), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.c.d.a, var_0.c.d.a, var_0.c.b.a), vec3<u32>(var_0.c.b.a, 43243u, 7211u))), ~(~vec3<u32>(0u, u_input.c, 1u))), vec3<u32>(select(1u, 69450u, false) >> (~u_input.c % 32u), ~var_0.b.b.a << (~var_0.c.d.a % 32u), firstTrailingBit(4294967295u))), func_3(all(!(!var_0.c.e.zww)), ~(max(vec3<u32>(var_0.b.d.a, u_input.c, u_input.c), vec3<u32>(var_0.b.b.a, var_0.c.d.a, var_0.b.d.a)) >> (vec3<u32>(0u, 60145u, var_0.b.b.a) % vec3<u32>(32u))), func_3(!var_0.c.b.b, min(vec3<u32>(1u, var_0.c.d.a, 0u), vec3<u32>(var_0.b.d.a, var_0.b.d.a, var_0.c.d.a)), Struct_2(1039f, Struct_1(u_input.c, true, arg_3.x), -9327i, Struct_1(u_input.c, var_0.b.e.x, arg_3.x), !var_0.b.e)))).b.a, 3u)];
    return var_0.c;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: bool, arg_3: Struct_2) -> Struct_3 {
    var var_0 = arg_0.c;
    var var_1 = arg_0.c;
    var_0 = u_input.a;
    global1 = array<Struct_3, 3>();
    let var_2 = arg_3;
    return global1[_wgslsmith_index_u32(~(~134227u), 3u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(vec2<i32>(u_input.b, max(u_input.d, -38443i)), vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1373f) + _wgslsmith_f_op_f32(min(-374f, 1177f))), _wgslsmith_f_op_f32(round(-607f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1614f * 776f))), reverseBits(~u_input.d), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(-329f, -1003f), _wgslsmith_f_op_f32(149f + 1217f), _wgslsmith_f_op_f32(229f * -1221f))))), 198f, !any(select(vec4<bool>(false, false, false, false), func_1(vec2<i32>(-1i, u_input.b), vec4<f32>(447f, -1000f, -851f, 949f), global0[_wgslsmith_index_u32(u_input.c, 29u)], vec3<f32>(1182f, -374f, 2555f)).e, select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true)))), func_3(all(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true)), _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 14369u, 1u), vec3<u32>(u_input.c, u_input.c, u_input.c)) & ~vec3<u32>(u_input.c, u_input.c, u_input.c), vec3<u32>(11442u, ~4294967295u, ~u_input.c)), Struct_2(_wgslsmith_f_op_f32(454f * _wgslsmith_f_op_f32(f32(-1f) * -967f)), Struct_1(0u, true, 391f), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(u_input.c, u_input.c)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(0u, u_input.c))), 29u)], Struct_1(21497u, true, _wgslsmith_f_op_f32(round(-812f))), vec4<bool>(true, true, true, true))));
    var var_1 = select(select(vec2<bool>(true, true), vec2<bool>(select(true, !var_0.c.d.b, true), !(!var_0.c.d.b)), var_0.b.e.yw), var_0.c.e.zz, var_0.b.e.yz);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.c, 647f, var_0.a)) * vec3<f32>(-414f, var_0.c.d.c, var_0.b.d.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.a, 770f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.b.c, 1569f, -435f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(999f, var_0.d, var_0.c.a))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.b.b.c, var_0.d, -207f))))), !var_0.b.e.zyz)), vec3<bool>(var_1.x, false, !(u_input.c >= u_input.c)))));
    var var_3 = false;
    global0 = array<i32, 29>();
    var var_4 = func_4(func_4(func_4(var_0.b, func_4(func_1(vec2<i32>(0i, var_0.b.c), vec4<f32>(var_0.b.d.c, 708f, var_2.x, 1388f), u_input.b, vec3<f32>(-321f, -1061f, var_2.x)), -1407f, true, func_4(Struct_2(var_2.x, var_0.b.d, u_input.b, Struct_1(4294967295u, var_0.c.b.b, var_2.x), vec4<bool>(true, true, true, false)), -1687f, var_1.x, Struct_2(var_0.b.b.c, var_0.b.d, 21970i, var_0.c.b, vec4<bool>(true, true, false, var_1.x))).c).c.d.c, true, func_4(func_4(var_0.b, -1034f, var_0.c.d.b, var_0.b).b, -1000f, true, func_3(false, vec3<u32>(56107u, 1u, 1u), Struct_2(269f, var_0.c.b, u_input.b, var_0.b.b, var_0.c.e))).b).b, -1000f, any(func_3(true, vec3<u32>(1u, u_input.c, var_0.c.d.a) ^ vec3<u32>(10392u, 4294967295u, 17893u), Struct_2(137f, var_0.b.d, 1i, var_0.b.b, vec4<bool>(false, true, var_0.c.b.b, true))).e), func_1(vec2<i32>(reverseBits(global0[_wgslsmith_index_u32(u_input.c, 29u)]), 1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-503f, var_0.a, -788f, 1262f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -1466f, var_0.c.d.c) + vec4<f32>(var_0.d, var_0.c.b.c, var_0.b.b.c, -1133f)), var_1.x & false)), abs(-u_input.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-295f, var_0.c.b.c, var_2.x)) * vec3<f32>(var_0.a, var_0.d, var_0.d)))).c, -1000f, true, var_0.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a, var_2.x, -1000f, var_2.x)))));
}

