struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: bool;

var<private> global2: Struct_3;

var<private> global3: array<u32, 2>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>) -> f32 {
    global0 = array<Struct_3, 18>();
    var var_0 = !global2.c.e;
    var var_1 = vec4<f32>(-222f, 2226f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-1000f, -733f)))) * arg_1.x) * 719f), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-2276f)))));
    var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, 403f)) - _wgslsmith_f_op_f32(round(-148f))), var_1.x, -570f) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, global2.a.b.x, arg_0, arg_1.x)) + _wgslsmith_div_vec4_f32(vec4<f32>(542f, 711f, -790f, var_1.x), vec4<f32>(arg_0, arg_1.x, arg_0, 1000f))), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-arg_1.x), -1288f, _wgslsmith_f_op_f32(ceil(-207f)))))));
    var var_2 = vec2<bool>(all(global2.c.e.wx), any(!vec3<bool>(true, !var_0.x, true)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.b.x) * -617f);
}

fn func_2() -> i32 {
    let var_0 = !global2.c.e.xwz;
    let var_1 = global2.a;
    var var_2 = var_1.e;
    var var_3 = -u_input.a.xz;
    let var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) + _wgslsmith_f_op_f32(f32(-1f) * -939f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-585f * global2.a.b.x))))), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1941f + _wgslsmith_f_op_f32(-global2.a.b.x)), global2.a.b.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.b)))))));
    return _wgslsmith_dot_vec2_i32(u_input.a.xx, select(vec2<i32>(13130i, 0i) | min(vec2<i32>(u_input.a.x, global2.c.c), vec2<i32>(u_input.a.x, u_input.a.x)), ~(vec2<i32>(-1i) * -u_input.a.yz), var_0.zz));
}

fn func_4(arg_0: i32, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_2) -> Struct_3 {
    return Struct_3(global2.a, !select(true, true, global2.a.b.x < -1132f) != !((arg_3.a ^ 21371i) >= (-8569i >> (arg_3.e % 32u))), global2.c);
}

fn func_5(arg_0: Struct_3, arg_1: vec4<bool>) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec2_i32(firstTrailingBit(u_input.a.yx), vec2<i32>(22318i, abs(_wgslsmith_div_i32(-1i, _wgslsmith_add_i32(1i, u_input.a.x)))));
    var var_1 = ~vec4<u32>(countOneBits(4294967295u), global2.c.b.x, ~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(82273u, arg_0.c.d, global2.a.e), 0u << (global3[_wgslsmith_index_u32(4294967295u, 2u)] % 32u)), 1u);
    let var_2 = vec4<i32>(-65646i, i32(-1i) * -22932i, var_0, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(max(firstLeadingBit(vec4<i32>(u_input.a.x, var_0, 0i, arg_0.a.c)), -vec4<i32>(arg_0.a.c, 0i, var_0, u_input.a.x)), min(vec4<i32>(-29032i, 34887i, var_0, u_input.a.x), vec4<i32>(0i, global2.c.c, u_input.a.x, 41840i)) & firstTrailingBit(vec4<i32>(-9838i, arg_0.a.a, 1i, 0i))), ~abs(1i)));
    var var_3 = _wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(func_4(-var_0 >> (_wgslsmith_add_u32(arg_0.a.e, arg_0.c.a) % 32u), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2470f, global2.a.b.x)))), -vec3<i32>(u_input.a.x, var_2.x, 21520i), Struct_2(_wgslsmith_dot_vec4_i32(var_2, var_2), arg_0.a.b, 1857i, global2.b, 0u)).a.e, 2u)], global2.a.e >> (_wgslsmith_mult_u32(select(13302u, var_1.x, true), abs(8349u)) % 32u), ~4294967295u) << (global3[_wgslsmith_index_u32(firstTrailingBit(select(_wgslsmith_dot_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(0u, 2u)], global2.a.e, 16081u, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 2u)], 2u)], 24182u, 0u, 1u)), abs(4294967295u) | _wgslsmith_sub_u32(25748u, arg_0.a.e), true)), 2u)] % 32u);
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-758f, -1000f, 904f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(916f, arg_0.a.b.x, 1291f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b.x, arg_0.a.b.x, 932f))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-890f, global2.a.b.x, global2.a.b.x)));
    return global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_1.x, ~var_1.x), 18u)];
}

fn func_1() -> bool {
    let var_0 = reverseBits(~(-(~vec4<i32>(global2.c.c, 47168i, 0i, 48424i)))) << ((~_wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, global3[_wgslsmith_index_u32(global2.c.b.x, 2u)], global2.c.b.x), ~vec4<u32>(global3[_wgslsmith_index_u32(30872u, 2u)], 4294967295u, 0u, 7979u)) >> (~vec4<u32>(firstTrailingBit(56500u), global2.a.e, global2.a.e, firstLeadingBit(4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_1 = global2.a;
    global1 = !(global2.a.d & all(global2.c.e.wx));
    global2 = func_5(func_4(max(_wgslsmith_add_i32(~0i, u_input.a.x), func_2()), vec2<f32>(811f, -1572f), var_0.xww, global2.a), global2.c.e);
    var var_2 = Struct_2(0i, _wgslsmith_div_vec2_f32(var_1.b, func_5(Struct_3(func_4(global2.a.a, vec2<f32>(var_1.b.x, var_1.b.x), var_0.zzy, Struct_2(-2147483647i, global2.a.b, -7574i, false, 19528u)).a, false, global2.c), vec4<bool>(true, any(global2.c.e.wx), false, var_1.d || global2.c.e.x)).a.b), var_0.x, !((var_1.e << (~3243u % 32u)) >= 8903u), _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, global2.c.b.x, 0u, var_1.e), abs(vec4<u32>(var_1.e, 55345u, 4294967295u, var_1.e))) | firstLeadingBit(99568u));
    return any(select(global2.c.e.yw, select(global2.c.e.zx, global2.c.e.xx, !(var_1.d || true)), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(1u, 0u);
    var var_1 = select(select(global2.c.e, vec4<bool>(global2.b, select(any(vec4<bool>(true, false, global2.b, false)), false, !global2.a.d), global2.c.e.x, global2.a.d), global2.b), select(vec4<bool>(global2.a.d, true, global2.a.d, false), vec4<bool>(!global2.c.e.x, global2.a.d, global2.b, any(vec2<bool>(global2.c.e.x, global2.c.e.x))), global2.c.e.x), select(!(!global2.c.e), vec4<bool>(global2.c.e.x, global2.a.d, global2.c.e.x, func_1()), global2.a.d));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(global2.a.b))), global2.a.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1809f * global2.a.b.x), _wgslsmith_div_f32(975f, global2.a.b.x)) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(global2.a.b))))))));
    var_0 = _wgslsmith_div_vec2_u32(~_wgslsmith_mult_vec2_u32(~global2.c.b, global2.c.b), (~global2.c.b << (~firstLeadingBit(global2.c.b) % vec2<u32>(32u))) ^ func_4((-39859i | global2.c.c) ^ -global2.a.a, global2.a.b, reverseBits(vec3<i32>(u_input.a.x, -32922i, global2.a.c)), func_4(global2.c.c, vec2<f32>(var_2.x, -384f), max(vec3<i32>(44721i, u_input.a.x, global2.a.a), vec3<i32>(u_input.a.x, 16401i, 2147483647i)), Struct_2(global2.c.c, vec2<f32>(1261f, 1600f), -20392i, false, 4656u)).a).c.b);
    var var_3 = var_2;
    let var_4 = ~(abs(~global3[_wgslsmith_index_u32(var_0.x, 2u)] >> (~8445u % 32u)) << (12550u % 32u));
    global3 = array<u32, 2>();
    var var_5 = ~reverseBits(countOneBits(min(_wgslsmith_div_vec3_u32(vec3<u32>(global2.c.d, 4294967295u, global3[_wgslsmith_index_u32(global2.c.b.x, 2u)]), vec3<u32>(3597u, var_0.x, 1u)), vec3<u32>(1u, 4294967295u, global2.c.a))));
    let var_6 = 45661u;
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(22510i, global2.c.c), u_input.a.xy, var_1.xw), u_input.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x - global2.a.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -769f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1332f, var_2.x), vec2<f32>(_wgslsmith_f_op_f32(ceil(610f)), 778f)))));
}

