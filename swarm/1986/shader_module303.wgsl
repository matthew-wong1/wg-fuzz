struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32 = -37024i;

var<private> global2: Struct_2;

var<private> global3: array<bool, 16>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = abs(abs(vec4<u32>(global4.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), global4.c.zyz), ~(~u_input.a), ~global4.b.x)));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(457f * _wgslsmith_f_op_f32(f32(-1f) * -1043f))));
    var var_2 = select(vec3<bool>(global3[_wgslsmith_index_u32(~1u, 16u)], global3[_wgslsmith_index_u32(_wgslsmith_div_u32(var_0.x | global4.c.x, ~(var_0.x ^ 1u)), 16u)], false), select(select(vec3<bool>(all(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 16u)], false)), global3[_wgslsmith_index_u32(select(9062u, var_0.x, true), 16u)], global4.a.x < -36491i), !(!vec3<bool>(false, global3[_wgslsmith_index_u32(var_0.x, 16u)], true)), (16321u | var_0.x) <= _wgslsmith_div_u32(global4.c.x, global2.c.b.x)), vec3<bool>(true, all(vec3<bool>(true, false, global3[_wgslsmith_index_u32(25958u, 16u)])), var_1 >= _wgslsmith_f_op_f32(-var_1)), global3[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~global4.c.x, global4.c.x), 16u)]), !(any(vec2<bool>(true, true)) & true));
    var var_3 = Struct_2(~global4.c.zx, global2.c, global2.b);
    return var_1;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -552f) - -222f)), 1090f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-241f + 1447f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1420f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-918f * -1197f), -320f, !global3[_wgslsmith_index_u32(0u, 16u)])), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(1i)))), 271f))));
    var var_1 = ~firstTrailingBit(u_input.b.x);
    var var_2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_2.b.a.x, arg_2.c.a.x) | -1i, _wgslsmith_div_i32(2147483647i, firstTrailingBit(-select(arg_2.b.a.x, global2.b.a.x, global3[_wgslsmith_index_u32(global2.b.c.x, 16u)]))));
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1030f, 232f)), -754f)))), _wgslsmith_f_op_f32(var_0.x * -154f));
    let var_4 = any(select(vec2<bool>((u_input.a < global2.b.c.x) && true, false), select(!(!vec2<bool>(false, global3[_wgslsmith_index_u32(arg_0.b.x, 16u)])), vec2<bool>(true, !global3[_wgslsmith_index_u32(global4.b.x, 16u)]), !(!vec2<bool>(global3[_wgslsmith_index_u32(23290u, 16u)], global3[_wgslsmith_index_u32(19623u, 16u)]))), false));
    return select(firstLeadingBit(max(global4.c, _wgslsmith_add_vec4_u32(reverseBits(vec4<u32>(1u, global2.c.c.x, 4294967295u, arg_2.c.b.x)), ~global2.b.c))), ~vec4<u32>(_wgslsmith_sub_u32(arg_1.c.x, 9310u), ~(0u ^ u_input.a), abs(min(arg_0.b.x, 8443u)), ~global4.c.x), !select(!select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 16u)], global3[_wgslsmith_index_u32(1976u, 16u)], var_4, true), vec4<bool>(true, true, true, false), global3[_wgslsmith_index_u32(20573u, 16u)]), vec4<bool>(any(vec3<bool>(var_4, false, true)), !var_4, true, true), select(vec4<bool>(false, true, var_4, true), select(vec4<bool>(false, var_4, global3[_wgslsmith_index_u32(28628u, 16u)], var_4), vec4<bool>(true, var_4, var_4, false), vec4<bool>(global3[_wgslsmith_index_u32(arg_2.a.x, 16u)], var_4, false, global3[_wgslsmith_index_u32(global4.c.x, 16u)])), global3[_wgslsmith_index_u32(firstLeadingBit(34967u), 16u)])));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: i32, arg_3: i32) -> vec2<u32> {
    let var_0 = global3[_wgslsmith_index_u32(min(~(func_2(Struct_1(global2.b.a, global4.c.wyy, vec4<u32>(global2.b.b.x, arg_1.c.b.x, global2.b.b.x, arg_0.b.x)), global2.b, Struct_2(arg_1.c.c.xw, global2.c, arg_1.c)).x | ~0u), ~global2.a.x), 16u)];
    global2 = arg_1;
    let var_1 = 0u << (_wgslsmith_div_u32(1748u, arg_1.b.c.x) % 32u);
    var var_2 = Struct_1(arg_0.a, vec3<u32>(func_2(arg_1.c, arg_1.b, Struct_2(vec2<u32>(global2.c.b.x, u_input.a), Struct_1(vec2<i32>(arg_0.a.x, 0i), vec3<u32>(global2.b.c.x, global4.b.x, 99376u), vec4<u32>(1u, 1u, global4.b.x, 1u)), global2.b)).x, _wgslsmith_sub_u32(firstLeadingBit(~arg_0.c.x), arg_0.c.x), ~(~abs(4294967295u))), ~(~arg_1.c.c));
    var var_3 = ((global3[_wgslsmith_index_u32(16980u, 16u)] == false) && true) & (any(!(!vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 16u)], false, false))) && any(!vec2<bool>(true, global3[_wgslsmith_index_u32(var_2.b.x, 16u)])));
    return _wgslsmith_sub_vec2_u32(select(~arg_1.c.c.zy, max(firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(global2.a.x, global4.b.x), var_2.b.zx)), select(~var_2.c.wy, vec2<u32>(arg_0.c.x, arg_0.b.x), vec2<bool>(false, global3[_wgslsmith_index_u32(4294967295u, 16u)]))), !select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(775u, 16u)], true), global2.b.a.x < arg_1.c.a.x)), vec2<u32>(~global2.a.x, var_2.c.x));
}

fn func_1(arg_0: vec2<u32>, arg_1: u32) -> Struct_2 {
    var var_0 = global2.c;
    global1 = global2.b.a.x;
    global4 = global2.c;
    var_0 = global2.c;
    global3 = array<bool, 16>();
    return Struct_2(func_4(global2.b, Struct_2(var_0.c.zz, global2.b, Struct_1(max(vec2<i32>(-15160i, global2.c.a.x), var_0.a), ~vec3<u32>(34735u, 11339u, 7634u), func_2(global2.b, Struct_1(var_0.a, global4.c.yxw, global4.c), Struct_2(global2.a, Struct_1(var_0.a, var_0.b, global4.c), global2.b)))), 1i, global4.a.x | 5047i), global2.b, Struct_1(_wgslsmith_div_vec2_i32(global2.c.a, global4.a), _wgslsmith_add_vec3_u32(countOneBits(abs(vec3<u32>(1u, var_0.b.x, 50319u))), _wgslsmith_div_vec3_u32(global2.c.b | vec3<u32>(47536u, 4294967295u, 0u), vec3<u32>(33338u, 1u, var_0.c.x))), abs(~vec4<u32>(0u, 40941u, global2.b.c.x, 23217u))));
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<f32>) -> Struct_2 {
    global3 = array<bool, 16>();
    let var_0 = arg_0;
    let var_1 = Struct_1(~var_0.b.a, ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.c.c.x, ~global4.b.x, func_2(arg_0.b, Struct_1(global4.a, global2.c.b, var_0.c.c), arg_0).x), (vec3<u32>(global2.a.x, 1u, arg_0.c.c.x) << (vec3<u32>(62984u, 4294967295u, 0u) % vec3<u32>(32u))) >> (global2.b.b % vec3<u32>(32u))), ~(~(~vec4<u32>(u_input.a, u_input.b.x, u_input.a, 40860u)) & arg_0.b.c));
    global1 = arg_0.c.a.x;
    let var_2 = Struct_2(~arg_0.c.c.xw, func_1(~abs(vec2<u32>(u_input.b.x, global2.b.b.x)), _wgslsmith_sub_u32(26654u, _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), var_0.b.c.wz), 4294967295u >> (var_0.b.b.x % 32u)))).b, Struct_1(_wgslsmith_div_vec2_i32(-vec2<i32>(39620i, 26754i), var_0.c.a << (_wgslsmith_div_vec2_u32(arg_0.c.b.xx, u_input.b) % vec2<u32>(32u))), ~vec3<u32>(global2.b.b.x, arg_0.c.b.x | 1u, abs(4294967295u)), vec4<u32>(0u, 1u, func_2(arg_0.b, var_0.b, var_0).x, _wgslsmith_mult_u32(global2.c.c.x, global4.b.x))));
    return Struct_2(max(_wgslsmith_sub_vec2_u32(var_2.a ^ (vec2<u32>(250u, 24017u) >> (var_1.c.wz % vec2<u32>(32u))), u_input.b), u_input.b), Struct_1(global2.c.a, vec3<u32>(global4.c.x, var_1.c.x, ~4017u), reverseBits(vec4<u32>(u_input.a, 1u, 0u, u_input.a)) << (vec4<u32>(~u_input.a, reverseBits(42641u), ~4294967295u, ~global4.b.x) % vec4<u32>(32u))), var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.c;
    global4 = Struct_1(vec2<i32>(~max(2147483647i, _wgslsmith_mult_i32(0i, global2.c.a.x)), -2147483647i), var_0.c.zzw, global4.c);
    var var_1 = func_5(func_1(vec2<u32>(1u, ~var_0.c.x) | global4.b.xy, ~select(~15231u, global2.b.c.x, !global3[_wgslsmith_index_u32(var_0.b.x, 16u)])), vec2<i32>(global4.a.x, -1i), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-840f, 1f, -101f))) * vec3<f32>(-817f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1236f))))));
    var var_2 = func_5(Struct_2(u_input.b, Struct_1(vec2<i32>(~2762i, -global2.c.a.x), countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(var_1.c.b.x, 79963u, 51636u), var_1.c.c.wxy)), vec4<u32>(_wgslsmith_div_u32(global4.b.x, global2.a.x), ~var_1.a.x, 34842u, ~var_0.c.x)), func_5(func_1(var_1.c.b.zy, 37926u), -(~global4.a), (-98481i & var_0.a.x) > var_1.b.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1611f, -156f, 918f)))).b), vec2<i32>(~var_1.c.a.x, func_1(var_0.c.wy, 29468u).b.a.x & (countOneBits(-16026i) | ~global2.b.a.x)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(~4294967295u, ~9833u), abs(vec2<u32>(0u, _wgslsmith_add_u32(global2.b.b.x, 1u)))), 16u)], vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(161f)), _wgslsmith_f_op_f32(f32(-1f) * -386f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1255f + -1132f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1146f * -2302f))), any(vec4<bool>(global3[_wgslsmith_index_u32(1u, 16u)], true, false, global3[_wgslsmith_index_u32(25126u, 16u)])) & (global3[_wgslsmith_index_u32(1u, 16u)] || global3[_wgslsmith_index_u32(59600u, 16u)]))), 694f)).c;
    let var_3 = _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(select(var_2.a, -var_0.a, false || global3[_wgslsmith_index_u32(8374u, 16u)]), vec2<i32>(firstTrailingBit(var_0.a.x), _wgslsmith_add_i32(2147483647i, var_1.c.a.x))) >> ((~_wgslsmith_div_vec2_u32(vec2<u32>(16511u, 0u), u_input.b) >> (global4.c.zz % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(49899i, 0i, global4.a.x, 1i), vec4<i32>(24487i, var_2.a.x, var_2.a.x, -27233i)) & -30846i, global4.a.x));
    let var_4 = -2147483647i;
    let var_5 = _wgslsmith_sub_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(2147483647i, 1608i, var_3.x, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-19767i, var_3.x, global2.c.a.x, var_3.x), vec4<i32>(var_4, var_4, var_1.c.a.x, global4.a.x)), _wgslsmith_add_vec4_i32(vec4<i32>(var_3.x, 11564i, global2.b.a.x, global4.a.x), vec4<i32>(-31533i, var_2.a.x, -1i, var_4))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.a.x, 66370i, 56410i), vec4<i32>(1i, -2147483647i, global2.b.a.x, var_4)), ~(-1i), _wgslsmith_sub_i32(var_2.a.x, global4.a.x), i32(-1i) * -20533i)), _wgslsmith_add_i32(max(-67461i, 2147483647i), ~(-var_1.b.a.x)), reverseBits(31172i >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, global4.b.x, 4294967295u), var_2.c) % 32u)), var_1.c.a.x), vec4<i32>(2147483647i, min(1166i, _wgslsmith_sub_i32(~var_1.b.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, var_1.b.a.x, var_1.b.a.x), vec3<i32>(global4.a.x, global2.c.a.x, var_3.x)))), _wgslsmith_add_i32(_wgslsmith_add_i32(var_0.a.x, 2147483647i) >> (1u % 32u), abs(0i)), firstTrailingBit(1i >> ((global2.b.c.x >> (var_0.c.x % 32u)) % 32u))));
    var var_6 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(0u, vec2<u32>(var_2.b.x, _wgslsmith_add_u32(~var_0.b.x, _wgslsmith_mod_u32(4294967295u, var_0.c.x)) >> (abs(~u_input.b.x) % 32u)), countOneBits(countOneBits(13629u) & ~var_0.b.x));
}

