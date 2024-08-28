struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: vec4<bool>;

var<private> global2: array<bool, 32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.x - arg_2.a.e), _wgslsmith_f_op_f32(111f * -1261f))), _wgslsmith_f_op_f32(f32(-1f) * -237f), arg_2.a.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-996f, 1000f))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-477f)), arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -964f))));
    var var_2 = select(u_input.b.x, _wgslsmith_clamp_u32(1u, u_input.c, ~(~64862u)), arg_2.a.b.x);
    let var_3 = arg_2;
    global0 = -reverseBits(abs(arg_2.a.d)) << (~(~firstLeadingBit(var_3.a.a)) % 32u);
    return any(!var_3.c);
}

fn func_2() -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.b.x), vec3<u32>(1u, 4294967295u, u_input.c)), reverseBits(vec3<u32>(4294967295u, 6172u, u_input.b.x))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, u_input.c, 4294967295u), ~vec3<u32>(61557u, u_input.b.x, u_input.c))), vec2<bool>(func_3(true, _wgslsmith_div_vec4_f32(vec4<f32>(726f, 1132f, 923f, 1964f), vec4<f32>(723f, -1511f, 1494f, -828f)), Struct_2(Struct_1(u_input.c, vec2<bool>(true, false), vec4<i32>(u_input.d, u_input.d, u_input.d, -1i), -1332i, -357f), global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global1.zzx), _wgslsmith_f_op_f32(-661f - -1000f)), !global2[_wgslsmith_index_u32(21728u, 32u)]), vec4<i32>(~24534i, max(u_input.d, -u_input.a), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.d, u_input.a), countOneBits(1i)), min(-1i, min(u_input.d, u_input.a))), _wgslsmith_add_i32(_wgslsmith_add_i32(u_input.a, u_input.d) >> (_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(4294967295u, 0u)) % 32u), firstLeadingBit(~54506i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -998f) * _wgslsmith_f_op_f32(min(242f, 1032f))))), any(!select(vec4<bool>(global2[_wgslsmith_index_u32(21076u, 32u)], global2[_wgslsmith_index_u32(u_input.b.x, 32u)], true, global2[_wgslsmith_index_u32(u_input.b.x, 32u)]), !vec4<bool>(false, global1.x, global1.x, true), select(vec4<bool>(false, global1.x, global1.x, global2[_wgslsmith_index_u32(u_input.c, 32u)]), vec4<bool>(true, false, true, false), vec4<bool>(global1.x, true, false, global1.x)))), select(global1.zwx, select(select(select(global1.zxx, global1.ywx, vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 32u)], global1.x)), select(global1.wyz, global1.wzw, global1.xyz), vec3<bool>(global1.x, false, true)), vec3<bool>(global2[_wgslsmith_index_u32(~4294967295u, 32u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, 52933u), 32u)], u_input.a >= 14029i), vec3<bool>(true, true, all(global1.yzy))), !vec3<bool>(!global2[_wgslsmith_index_u32(1u, 32u)], select(true, true, true), global1.x)));
}

fn func_1(arg_0: vec2<bool>) -> Struct_1 {
    var var_0 = func_2();
    var var_1 = Struct_1(70406u, vec2<bool>(arg_0.x, global1.x), vec4<i32>(-1i) * -func_2().a.c, _wgslsmith_mod_i32(min(u_input.a, u_input.d), ~(~abs(var_0.a.d))), -1283f);
    var var_2 = func_2();
    global0 = _wgslsmith_add_i32(reverseBits(1i >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, var_2.a.a), u_input.b) % 32u)), ~(~_wgslsmith_mod_i32(24122i, var_0.a.d))) & _wgslsmith_sub_i32(min(-10659i, u_input.d), func_2().a.d);
    var var_3 = func_3(arg_0.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1280f * var_1.e) + _wgslsmith_f_op_f32(-var_2.a.e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), var_1.e)), Struct_2(func_2().a, select(1u, _wgslsmith_add_u32(var_1.a, 104847u), func_2().a.b.x) < 1u, var_2.c), -778f);
    return var_0.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: Struct_2) -> u32 {
    global0 = _wgslsmith_sub_i32(-2039i & u_input.d, _wgslsmith_add_i32(5469i, -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.a.c.x, arg_2.a.d, arg_2.a.d, 2147483647i), arg_2.a.c))));
    var var_0 = arg_2.c;
    var_0 = !(!func_2().c);
    var var_1 = arg_0.x;
    let var_2 = vec2<u32>(abs(func_2().a.a), ~(~_wgslsmith_dot_vec2_u32(arg_0.yz >> (u_input.b % vec2<u32>(32u)), firstLeadingBit(arg_0.yx))));
    return firstTrailingBit(~_wgslsmith_mod_u32(~_wgslsmith_add_u32(85377u, arg_0.x), arg_2.a.a));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 32>();
    let var_0 = vec4<bool>(func_4(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, u_input.c, u_input.c, 0u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 1u, u_input.c, u_input.b.x), vec4<u32>(u_input.b.x, u_input.c, 78771u, 4749u))), _wgslsmith_div_vec3_f32(vec3<f32>(1009f, -290f, 1805f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(182f, 1225f, 639f))), Struct_2(func_1(global1.xw), global2[_wgslsmith_index_u32(abs(u_input.b.x), 32u)], vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 32u)], global1.x, global2[_wgslsmith_index_u32(1u, 32u)]))) > max(u_input.c, u_input.c >> (~u_input.b.x % 32u)), true, global2[_wgslsmith_index_u32(u_input.c, 32u)], global1.x);
    global1 = var_0;
    global1 = var_0;
    let var_1 = ~(~firstTrailingBit(~vec2<u32>(u_input.c, 71275u) ^ (vec2<u32>(126768u, 4294967295u) | u_input.b)));
    global0 = -1i & -u_input.d;
    let var_2 = ~4244u;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~u_input.a, u_input.d, u_input.a, 2147483647i), ~max(~vec4<u32>(52163u, 0u, 1u, var_2) | ~vec4<u32>(51798u, var_2, var_2, var_2), vec4<u32>(_wgslsmith_mod_u32(var_2, 1u), func_1(vec2<bool>(true, false)).a, ~1u, var_1.x)), var_2);
}

