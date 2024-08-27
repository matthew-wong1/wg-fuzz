struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 4>;

var<private> global1: array<u32, 9> = array<u32, 9>(1u, 1u, 49083u, 127421u, 7896u, 1u, 0u, 0u, 17121u);

var<private> global2: array<f32, 11> = array<f32, 11>(-457f, -188f, -1908f, -565f, 568f, 1715f, 1957f, 1073f, -2662f, 746f, 745f);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: vec3<i32>, arg_3: vec3<f32>) -> u32 {
    var var_0 = Struct_3(0u);
    global1 = array<u32, 9>();
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(0u, max(~(~var_0.a), countOneBits(4294967295u) ^ (global1[_wgslsmith_index_u32(var_0.a, 9u)] & u_input.c.x))), 9u)], 4294967295u), 11u)];
    var var_2 = _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(var_0.a & 4294967295u), 11u)] - 682f);
    var var_3 = u_input.d;
    return firstLeadingBit(var_0.a);
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: u32) -> Struct_1 {
    let var_0 = reverseBits(~arg_3);
    var var_1 = Struct_3(1u);
    return Struct_1(firstLeadingBit(func_3(i32(-1i) * -17791i, false, _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, arg_1, u_input.b), vec3<i32>(u_input.b, u_input.b, arg_1)), _wgslsmith_div_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(36332u, 11u)], 234f, 1000f), vec3<f32>(-101f, 143f, -1000f))) << ((_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29022u, 9u)], 9u)], 9u)], 9u)], var_1.a) | arg_3) % 32u)), !(true & arg_2), arg_2);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: f32) -> vec2<bool> {
    let var_0 = arg_0;
    var var_1 = reverseBits(u_input.d.zxy);
    let var_2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1284f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(57458u, 9u)], 11u)], -347f) * vec3<f32>(1678f, -451f, arg_2))))))));
    var var_3 = func_2(_wgslsmith_f_op_f32(trunc(arg_2)), -((~0i << (_wgslsmith_div_u32(var_0.a, var_0.a) % 32u)) ^ countOneBits(~2147483647i)), true, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(1u, ~u_input.c.x)) >> (_wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.c.x, u_input.d.x, 20707u, global1[_wgslsmith_index_u32(var_0.a, 9u)])) >> (reverseBits(vec4<u32>(global1[_wgslsmith_index_u32(var_1.x, 9u)], var_0.a, 0u, var_0.a)) % vec4<u32>(32u)), vec4<u32>(var_1.x, 0u, 4294967295u, 38777u) | ~vec4<u32>(var_1.x, 34847u, 97917u, var_1.x)) % 32u));
    var var_4 = _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_mod_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(30539u, 9u)], max(var_0.a, 4294967295u)), 4294967295u));
    return vec2<bool>(any(select(!vec2<bool>(var_3.b, false), select(vec2<bool>(false, false), select(vec2<bool>(var_3.b, var_3.b), vec2<bool>(false, arg_0.b), true), !vec2<bool>(arg_0.b, true)), any(!vec3<bool>(var_3.c, arg_0.c, var_3.c)))), !(arg_1 < ~u_input.a));
}

fn func_1(arg_0: vec4<f32>, arg_1: f32) -> Struct_3 {
    global2 = array<f32, 11>();
    let var_0 = abs(vec2<u32>(min(~select(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 1u, false), u_input.c.x), u_input.c.x));
    global2 = array<f32, 11>();
    var var_1 = func_4(func_2(864f, 12297i, _wgslsmith_f_op_f32(f32(-1f) * -231f) >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))), 51163u), u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - -626f) + 252f)), -974f));
    let var_2 = Struct_3(var_0.x);
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: vec3<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(u_input.c.xz, ~u_input.d.zx);
    return Struct_2(countOneBits(u_input.b), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(362f)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec3<bool>) -> vec2<u32> {
    global2 = array<f32, 11>();
    var var_0 = select(arg_3, select(select(arg_3, vec3<bool>(arg_3.x, true, true), !arg_3), !(!(!arg_3)), vec3<bool>(func_2(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.c.x, 11u)] * -160f), -u_input.b, !arg_2.c, func_1(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], arg_0.b, arg_1.b, arg_1.b), arg_1.b).a).c, all(!vec2<bool>(false, arg_3.x)), arg_2.b)), true);
    let var_1 = max(countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-1i, 9247i), 1i, 24309i, firstLeadingBit(u_input.a)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, arg_0.a, arg_1.a, 2147483647i), vec4<i32>(14627i, arg_1.a, u_input.a, 1i)) ^ (vec4<i32>(u_input.b, 1i, u_input.a, u_input.a) & vec4<i32>(arg_0.a, arg_0.a, -2401i, -8349i)))), -abs(firstLeadingBit(vec4<i32>(arg_1.a, -2147483647i, -2147483647i, -2176i))));
    var var_2 = u_input.d;
    let var_3 = ~(arg_1.a & ~0i);
    return ~(~u_input.d.xw);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 11>();
    global0 = array<vec4<bool>, 4>();
    var var_0 = abs(countOneBits(vec2<i32>(-1i) * -vec2<i32>(1i, u_input.b))) >> (~func_6(func_5(func_1(vec4<f32>(-335f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 11u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51453u, 9u)], 9u)], 9u)], 11u)], -2393f), global2[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec3<f32>(global2[_wgslsmith_index_u32(u_input.c.x, 11u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 11u)], global2[_wgslsmith_index_u32(u_input.c.x, 11u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(139f, global2[_wgslsmith_index_u32(u_input.d.x, 11u)], 740f))), func_5(func_1(vec4<f32>(194f, 442f, 1162f, 971f), global2[_wgslsmith_index_u32(0u, 11u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(27559u, 11u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], 11u)], -1320f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1076f, -170f, global2[_wgslsmith_index_u32(8146u, 11u)]))), Struct_1(0u, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 11u)] <= 123f, true), vec3<bool>(true, true, true)) % vec2<u32>(32u));
    let var_1 = true & func_4(Struct_1(~(~u_input.d.x), func_2(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 11u)], 39710i, true, 69979u).c & true, true & any(global0[_wgslsmith_index_u32(1u, 4u)])), var_0.x, _wgslsmith_f_op_f32(exp2(1f))).x;
    var var_2 = select(all(!vec3<bool>(false, u_input.b == 22561i, true)), var_1, !any(!global0[_wgslsmith_index_u32(u_input.c.x << (49190u % 32u), 4u)]));
    global2 = array<f32, 11>();
    let var_3 = select(~(vec3<i32>(u_input.b, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, u_input.b, -1i), vec3<i32>(-1697i, 2147483647i, 34250i))) ^ vec3<i32>(_wgslsmith_mod_i32(var_0.x, -2147483647i), 0i, var_0.x)), vec3<i32>(_wgslsmith_sub_i32(abs(-20017i), 2147483647i), _wgslsmith_add_i32(abs(-26262i), _wgslsmith_sub_i32(var_0.x, var_0.x)), var_0.x) << (firstTrailingBit(u_input.d.zzw) % vec3<u32>(32u)), !(!vec3<bool>(func_2(1370f, -1i, var_1, 4270u).c, var_1, !var_1)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(vec2<u32>(select(24978u, 4294967295u, false) << (u_input.d.x % 32u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.c.x, 9u)] >> (u_input.d.x % 32u), global1[_wgslsmith_index_u32(func_3(0i, var_1, vec3<i32>(var_3.x, u_input.b, -2147483647i), vec3<f32>(-598f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27060u, 9u)], 11u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 11u)])), 9u)])), ~vec2<u32>(global1[_wgslsmith_index_u32(~0u, 9u)], ~4294967295u)), ~(u_input.d | ~(~u_input.d)), abs(var_0.x));
}

