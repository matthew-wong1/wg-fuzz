struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<i32, 11> = array<i32, 11>(0i, 0i, -9647i, -1i, 41156i, i32(-2147483648), -8941i, 2147483647i, 4325i, 0i, 2147483647i);

var<private> global2: array<Struct_1, 14>;

var<private> global3: array<vec2<f32>, 1>;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    global4 = vec2<bool>(true, false);
    let var_0 = Struct_1(u_input.e.x, 1i, select(_wgslsmith_sub_u32(u_input.c >> (_wgslsmith_mod_u32(52243u, 1u) % 32u), 1u), _wgslsmith_dot_vec3_u32(max(~vec3<u32>(arg_0.c, u_input.e.x, 4294967295u), vec3<u32>(arg_0.c, 10931u, u_input.e.x) << (vec3<u32>(arg_0.a, u_input.c, u_input.e.x) % vec3<u32>(32u))), ~(~u_input.e)), all(!arg_0.d)), !arg_0.d, arg_0.d.x);
    global3 = array<vec2<f32>, 1>();
    global3 = array<vec2<f32>, 1>();
    let var_1 = 1i;
    return arg_0.d;
}

fn func_4(arg_0: bool, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> i32 {
    var var_0 = !select(vec3<bool>(true, func_3(arg_3).x, arg_0), select(vec3<bool>(global4.x, true, true), !select(vec3<bool>(true, false, arg_3.e), vec3<bool>(false, false, arg_3.d.x), vec3<bool>(false, arg_3.d.x, global4.x)), !(!global4.x)), vec3<bool>(!(!arg_3.e), false, arg_0));
    global3 = array<vec2<f32>, 1>();
    return 34691i;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: f32) -> f32 {
    global1 = array<i32, 11>();
    global2 = array<Struct_1, 14>();
    let var_0 = arg_0;
    var var_1 = Struct_1(u_input.e.x, func_4(!any(func_3(global2[_wgslsmith_index_u32(1u, 14u)])), u_input.e.x, 1i, Struct_1(firstTrailingBit(~40010u), -34746i, _wgslsmith_div_u32(~81790u, u_input.c), select(func_3(Struct_1(50950u, -34529i, 62336u, vec2<bool>(true, global4.x), var_0.x)), !vec2<bool>(var_0.x, true), false), var_0.x && !global4.x)), ~arg_1.x, select(select(var_0.yz, var_0.yy, var_0.ww), !select(vec2<bool>(true, arg_0.x), !arg_0.yx, false), (var_0.x || (arg_0.x && arg_0.x)) | global4.x), all(vec3<bool>(true, all(arg_0), true)) == true);
    let var_2 = arg_2;
    return var_2;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<u32>) -> u32 {
    global4 = !select(arg_0.d, arg_0.d, arg_0.e == global4.x);
    var var_0 = i32(-1i) * -1i;
    global1 = array<i32, 11>();
    global2 = array<Struct_1, 14>();
    global1 = array<i32, 11>();
    return max(arg_0.c, 0u);
}

fn func_1(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_1(func_5(Struct_1(4294967295u, firstLeadingBit(u_input.b & u_input.d.x), _wgslsmith_div_u32(u_input.c, ~1u), vec2<bool>(true, true), false), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(425f - -339f), _wgslsmith_f_op_f32(sign(1051f)), _wgslsmith_f_op_f32(f32(-1f) * -815f), _wgslsmith_f_op_f32(func_2(vec4<bool>(global4.x, true, true, global4.x), u_input.e.yy, 401f))) * _wgslsmith_div_vec4_f32(vec4<f32>(340f, 1000f, -366f, 1359f), vec4<f32>(-480f, -1106f, -807f, -1400f))), firstLeadingBit(u_input.e | u_input.e) | ~vec3<u32>(u_input.e.x, u_input.e.x, 1u)), global1[_wgslsmith_index_u32(u_input.e.x, 11u)], 1u, select(!(!func_3(global2[_wgslsmith_index_u32(0u, 14u)])), !vec2<bool>(arg_0 || true, global4.x), select(select(vec2<bool>(false, true), !vec2<bool>(global4.x, arg_0), !global4.x), select(!vec2<bool>(false, arg_0), vec2<bool>(true, true), false), !(!vec2<bool>(global4.x, global4.x)))), any(select(vec3<bool>(false, true, arg_0), select(vec3<bool>(global4.x, false, true), vec3<bool>(arg_0, true, global4.x), true), global4.x)) && false);
    var var_1 = vec4<i32>(firstTrailingBit(max(global1[_wgslsmith_index_u32(0u, 11u)], 0i) | ~(-1i)), -40792i, -11599i, -(~_wgslsmith_dot_vec4_i32(u_input.d, u_input.d))) >> (countOneBits(vec4<u32>(u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 14710u, 0u, u_input.c) << (vec4<u32>(u_input.e.x, u_input.c, u_input.c, var_0.c) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(vec4<u32>(22625u, 17219u, 1u, u_input.e.x), vec4<u32>(1u, u_input.c, u_input.e.x, 35042u))), ~(~u_input.c), ~0u)) % vec4<u32>(32u));
    var var_2 = max(firstTrailingBit(vec3<i32>(-abs(var_1.x), _wgslsmith_dot_vec4_i32(u_input.d, u_input.d), abs(u_input.d.x))), _wgslsmith_clamp_vec3_i32(var_1.zyz, max(u_input.d.zxy, var_1.yww), (var_1.yyw << ((vec3<u32>(20806u, var_0.c, 52674u) | u_input.e) % vec3<u32>(32u))) << (~(~u_input.e) % vec3<u32>(32u))));
    let var_3 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 17123u, var_0.a, 41683u), vec4<u32>(1u, var_0.c, 74902u, var_0.a)), ~u_input.c, var_0.c)), i32(-1i) * -2147483647i, abs(~(~u_input.c)), select(var_0.d, !select(vec2<bool>(global4.x, global4.x), var_0.d, global4.x), vec2<bool>(!global4.x, false & var_0.e)), !arg_0), ~countOneBits(var_0.c));
    let var_4 = Struct_1(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~u_input.e.yz, max(u_input.e.zz, u_input.e.zx)), ~(~var_0.a)), select(4294967295u, 29868u, all(!vec4<bool>(var_3.a.e, false, true, true)))), 2147483647i, 23260u, vec2<bool>(true, true), select(true, func_3(global2[_wgslsmith_index_u32(~(~var_0.a), 14u)]).x, func_3(var_0).x));
    return var_3;
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_2 {
    let var_0 = vec4<bool>(arg_2.a.e, arg_2.a.d.x, global4.x, !(select(u_input.e.x, arg_1, all(vec2<bool>(false, arg_3.e))) <= _wgslsmith_sub_u32(func_5(arg_2.a, vec4<f32>(871f, 1267f, 736f, 840f), u_input.e), select(1164u, arg_3.a, arg_2.a.d.x))));
    global1 = array<i32, 11>();
    let var_1 = 1u;
    let var_2 = arg_3.e;
    var var_3 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -659f)) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(673f)), _wgslsmith_f_op_f32(ceil(-1094f)))), -1282f), (2444f >= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1399f)))) || var_0.x, !(!(true && arg_2.a.d.x)), false);
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(~2642i, u_input.c, func_1(!(!(global4.x & global4.x))), func_1(!select(u_input.e.x != 4294967295u, any(vec3<bool>(true, global4.x, true)), true)).a);
    var var_1 = global1[_wgslsmith_index_u32(firstLeadingBit(11290u), 11u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-728f)));
    let var_3 = _wgslsmith_add_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(~(~0u), 11u)], max(_wgslsmith_dot_vec4_i32(u_input.d, vec4<i32>(-35859i, global1[_wgslsmith_index_u32(23868u, 11u)], -2147483647i, global1[_wgslsmith_index_u32(39187u, 11u)])), var_0.a.b ^ 0i), var_0.a.b) << ((vec3<u32>(_wgslsmith_mod_u32(u_input.e.x, var_0.a.c), 42376u, var_0.a.c) & vec3<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(38443u, 0u), u_input.e.zz), firstLeadingBit(var_0.a.a))) % vec3<u32>(32u)), vec3<i32>(31201i, 14658i, 1i));
    let var_4 = vec3<bool>(false, !func_1((false && global4.x) & global4.x).a.e, global4.x);
    var_0 = func_6(~max(_wgslsmith_div_i32(var_3.x ^ -17959i, 1i), -abs(1i)), 6336u, Struct_2(func_1(firstTrailingBit(u_input.d.x) <= 2147483647i).a, 1u), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.e, ~(~vec3<u32>(7254u, var_0.b, 78497u))), 14u)]);
    var var_5 = Struct_2(func_1(_wgslsmith_sub_i32(abs(global1[_wgslsmith_index_u32(1u, 11u)]), firstLeadingBit(-69589i)) <= -24642i).a, ~select(1u, countOneBits(8720u), var_4.x || global4.x) >> (_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, u_input.c), _wgslsmith_clamp_u32(~u_input.e.x, u_input.c, ~4434u)) % 32u));
    var var_6 = -1979f;
    global0 = false;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(143f, _wgslsmith_f_op_f32(-1f), 1162f), ~(-2147483647i));
}

