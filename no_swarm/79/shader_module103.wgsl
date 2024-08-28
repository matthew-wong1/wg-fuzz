struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -2235i;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(vec3<f32>(-101f, -1368f, 2155f)), Struct_2(vec3<f32>(730f, 1000f, -285f)), Struct_2(vec3<f32>(808f, -1501f, -1067f)), Struct_2(vec3<f32>(640f, 1000f, 847f)));

var<private> global3: array<u32, 11> = array<u32, 11>(3864u, 95298u, 1u, 47099u, 44952u, 4294967295u, 29209u, 35696u, 20101u, 4294967295u, 26786u);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<u32> {
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(71509u, 11u)] > 5797u, ~(~(~(~vec4<u32>(1u, 0u, 26847u, 1u)))), abs(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 0u))), 11u)], global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(u_input.a.x, 50259u)), 11u)])), vec4<u32>(41631u, ~(u_input.e | 4294967295u), 0u, 1u));
    let var_1 = Struct_2(global1.a);
    global3 = array<u32, 11>();
    global1 = global2[_wgslsmith_index_u32(var_0.d.x | (_wgslsmith_dot_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.e, 1u, 0u), var_0.b.xzw, vec3<u32>(global3[_wgslsmith_index_u32(35239u, 11u)], u_input.a.x, u_input.a.x)), var_0.b.xyw) << (firstLeadingBit(min(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(var_0.c, 11u)], 55616u), 0u)) % 32u)), 4u)];
    var var_2 = _wgslsmith_dot_vec2_i32(~(-u_input.c.xz), vec2<i32>(abs(18515i), u_input.b));
    return ~(~vec4<u32>(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(56650u, var_0.d.x), vec2<u32>(8537u, global3[_wgslsmith_index_u32(4294967295u, 11u)]))), 11u)], 1603u, _wgslsmith_sub_u32(var_0.d.x, 46203u) >> (var_0.d.x % 32u), firstLeadingBit(var_0.b.x)));
}

fn func_2() -> vec4<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -228f), any(vec2<bool>(false, true)))))) == global1.a.x, ~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.e, 11u)], 11u)] ^ _wgslsmith_div_u32(global3[_wgslsmith_index_u32(1u, 11u)], u_input.e), ~(~global3[_wgslsmith_index_u32(1500u, 11u)]), ~(~37783u), global3[_wgslsmith_index_u32(u_input.e, 11u)]), ~0u, select(func_3() & _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], u_input.a.x, u_input.a.x), vec4<u32>(u_input.d, 55848u, 1u, 20986u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 11u)], 11u)]), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 7903u, 0u), vec3<u32>(global3[_wgslsmith_index_u32(73353u, 11u)], 43867u, 15734u))), 4037u, abs(countOneBits(58245u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(37647u, 11u)], u_input.d, u_input.a.x), abs(vec3<u32>(u_input.a.x, 1u, global3[_wgslsmith_index_u32(u_input.a.x, 11u)])))), any(vec4<bool>(false, false, true, true)) & true));
    let var_1 = var_0;
    global0 = u_input.c.x;
    global2 = array<Struct_2, 4>();
    var var_2 = ~vec4<u32>(~var_1.c, _wgslsmith_dot_vec3_u32(~var_0.d.wzx, ~var_1.d.wyw), ~(~(~18843u)), global3[_wgslsmith_index_u32(~abs(global3[_wgslsmith_index_u32(var_0.c, 11u)]) | func_3().x, 11u)]);
    return _wgslsmith_add_vec4_u32(reverseBits(var_1.d), var_1.b);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_1(arg_0.a, (~(~vec4<u32>(u_input.a.x, 63805u, 1u, arg_0.b.x)) << (~arg_0.b % vec4<u32>(32u))) >> (_wgslsmith_mod_vec4_u32(~arg_0.d, vec4<u32>(~0u, 10458u, ~3607u, global3[_wgslsmith_index_u32(64484u, 11u)])) % vec4<u32>(32u)), arg_0.d.x, arg_0.b);
    var_0 = Struct_1(arg_1.x > ~arg_1.x, _wgslsmith_add_vec4_u32(firstLeadingBit(var_0.d), var_0.d), u_input.d, _wgslsmith_clamp_vec4_u32(~arg_0.d, abs(~func_2()), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, arg_0.c & var_0.b.x, 0u, _wgslsmith_mult_u32(arg_0.b.x, 6477u)), _wgslsmith_mod_vec4_u32(vec4<u32>(12136u, 36368u, 6480u, u_input.a.x) & var_0.d, _wgslsmith_add_vec4_u32(arg_0.d, vec4<u32>(0u, arg_0.c, 1u, 21438u))))));
    let var_1 = 36544u;
    var_0 = arg_0;
    global1 = global2[_wgslsmith_index_u32(0u, 4u)];
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1409f, global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-638f - arg_1) * _wgslsmith_f_op_f32(f32(-1f) * -826f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 + -324f))), vec4<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1837f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2559f)), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(f32(-1f) * -691f), !arg_2))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-625f, 522f, global1.a.x, _wgslsmith_f_op_f32(-global1.a.x)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.yzz)), var_0.xyw))));
    global1 = Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1602f) * _wgslsmith_f_op_f32(-global1.a.x)), -2136f), -1047f, 1817f));
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.zww)));
    var var_3 = -609f;
    return 9938u >> (~_wgslsmith_add_u32(~abs(global3[_wgslsmith_index_u32(arg_0.d.x, 11u)]), ~_wgslsmith_add_u32(u_input.d, arg_0.b.x)) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2[_wgslsmith_index_u32(4294967295u, 4u)];
    global0 = i32(-1i) * -u_input.c.x;
    let var_0 = func_4(func_1(Struct_1(true, _wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.e, u_input.e, u_input.d, 1u)), vec4<u32>(global3[_wgslsmith_index_u32(0u, 11u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 480u, 19451u)), ~u_input.a.x << (_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(49647u, 11u)], 11u)], u_input.e) % 32u), vec4<u32>(1u, countOneBits(5165u), ~1u, global3[_wgslsmith_index_u32(~30613u, 11u)])), ~vec4<i32>(u_input.b, _wgslsmith_clamp_i32(u_input.c.x, 31012i, -84368i), -2147483647i, -u_input.c.x), !any(vec2<bool>(true, true)) || true), global1.a.x, false || select(true, true, false));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(global1.a)));
    let var_2 = _wgslsmith_mod_u32(29295u, 52358u) << (_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0, 4625u, 100568u), abs(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), vec3<u32>(var_0, 56009u, 1u)))), 0u | func_2().x) % 32u);
    var var_3 = vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(trunc(504f)), -855f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(global1.a.x, _wgslsmith_f_op_f32(637f - var_1.a.x)))), _wgslsmith_f_op_f32(trunc(-1000f))));
}

