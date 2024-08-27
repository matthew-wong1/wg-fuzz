struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec4<i32>,
    d: Struct_1,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<i32, 3> = array<i32, 3>(-21618i, i32(-2147483648), -887i);

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global3: u32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    global2 = !global0.c;
    var var_0 = !(!any(global0.c.zxw));
    global0 = Struct_1(global0.b.xy, select(global0.b, global0.b, all(select(!vec2<bool>(global2.x, global0.c.x), !vec2<bool>(global2.x, global2.x), global2.xy))), select(select(vec4<bool>(true, true, global0.c.x, all(global0.c)), select(!vec4<bool>(global2.x, global2.x, true, global0.c.x), vec4<bool>(true, global2.x, global0.c.x, false), vec4<bool>(global0.c.x, false, global0.c.x, global2.x)), vec4<bool>(global0.c.x, true, true, all(vec3<bool>(true, global0.c.x, global2.x)))), global0.c, vec4<bool>(all(vec3<bool>(global0.c.x, false, global0.c.x)), global2.x, false, u_input.d > ~u_input.a)));
    var var_1 = Struct_2(select(!(!vec2<bool>(true, global0.c.x)), select(!vec2<bool>(false, global2.x), select(global2.yz, vec2<bool>(false, global0.c.x), global0.c.x), global0.c.x), false | (global1[_wgslsmith_index_u32(~u_input.a, 3u)] <= _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 0i, -13832i, global1[_wgslsmith_index_u32(global0.a.x, 3u)]), vec4<i32>(4560i, global1[_wgslsmith_index_u32(global0.a.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], -2868i)))), ~(~max(~global0.b.x, 92894u)), Struct_1(vec2<u32>(_wgslsmith_mod_u32(1u, u_input.c.x | 100706u), firstLeadingBit(4294967295u)), vec3<u32>(global0.b.x, _wgslsmith_sub_u32(0u, _wgslsmith_mult_u32(4294967295u, u_input.a)), min(select(1u, u_input.b, true), u_input.c.x)), select(global0.c, vec4<bool>(global0.c.x, true, any(global0.c.zwy), global0.c.x), false)), select(vec3<bool>(!global2.x, all(vec2<bool>(true, global0.c.x)) & !global2.x, ~global1[_wgslsmith_index_u32(u_input.c.x, 3u)] != -24813i), !global2.wxy, !any(select(global2.zyx, global2.wyx, vec3<bool>(global0.c.x, global2.x, true)))));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.a.x, ~u_input.a, global0.a.x, _wgslsmith_mod_u32(u_input.a, var_1.c.a.x)), select(firstTrailingBit(vec4<u32>(90602u, var_1.b, global0.b.x, global0.a.x)), ~vec4<u32>(global0.b.x, 4294967295u, u_input.b, 33680u), select(!vec4<bool>(var_1.c.c.x, var_1.c.c.x, global2.x, true), global0.c, vec4<bool>(false, false, false, var_1.a.x))));
    return select(vec4<bool>(!(true || (global1[_wgslsmith_index_u32(1u, 3u)] == global1[_wgslsmith_index_u32(var_2, 3u)])), true, var_1.a.x, any(!global0.c.zz) && !all(vec4<bool>(true, var_1.c.c.x, true, false))), vec4<bool>(false, (~var_2 >= abs(u_input.d)) || true, var_1.d.x, global0.c.x), !(!global2.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: Struct_2) -> u32 {
    var var_0 = Struct_3(true, arg_2, ~(~vec4<i32>(23678i, ~global1[_wgslsmith_index_u32(u_input.c.x, 3u)], -1i, arg_1.x)), arg_2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(830f, -268f)))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(abs(720f)), -772f)))));
    global1 = array<i32, 3>();
    let var_1 = Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(var_0.d.a.x, 76854u), min(~vec2<u32>(4294967295u, global0.a.x), (vec2<u32>(var_0.d.a.x, global0.a.x) >> (vec2<u32>(4294967295u, arg_2.c.a.x) % vec2<u32>(32u))) & var_0.d.a)), arg_2.c.b, var_0.b.c.c);
    var_0 = Struct_3(all(global2.zx), Struct_2(global2.xw, firstLeadingBit(~abs(39553u)), Struct_1(reverseBits(~var_1.b.yy), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 0u, 0u), vec3<u32>(arg_2.c.a.x, 4294967295u, var_0.b.b)), global0.c), global0.c.ywx), _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.c.x, firstLeadingBit(53820i), _wgslsmith_add_i32(arg_1.x, 44284i), 6883i), var_0.c), Struct_1(var_0.d.b.zz, var_0.d.b, !func_3()), var_0.e);
    global2 = select(func_3(), var_0.d.c, select(arg_2.c.c, func_3(), all(!select(vec2<bool>(var_1.c.x, arg_2.d.x), arg_2.c.c.zx, false))));
    return global0.a.x;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> vec4<u32> {
    let var_0 = arg_2.c.x;
    let var_1 = arg_2.e.x;
    let var_2 = Struct_2(vec2<bool>(arg_2.a, true), ~(u_input.a | func_2(global2.xyy, _wgslsmith_mod_vec3_i32(vec3<i32>(arg_2.c.x, 1743i, global1[_wgslsmith_index_u32(arg_2.b.b, 3u)]), arg_2.c.wxx), Struct_2(global2.zy, 81u, Struct_1(arg_2.b.c.b.zz, vec3<u32>(1u, 78975u, u_input.d), arg_2.d.c), vec3<bool>(true, arg_2.a, arg_2.d.c.x)))), Struct_1(((arg_0.xw >> (arg_0.wy % vec2<u32>(32u))) & _wgslsmith_add_vec2_u32(arg_1.zw, u_input.c)) >> (vec2<u32>(arg_0.x, firstLeadingBit(4294967295u)) % vec2<u32>(32u)), arg_0.wzw, !(!global0.c)), vec3<bool>(global2.x || (-57053i >= _wgslsmith_sub_i32(global1[_wgslsmith_index_u32(5619u, 3u)], global1[_wgslsmith_index_u32(arg_0.x, 3u)])), arg_2.b.c.a.x > (~global0.b.x | 1u), all(arg_2.b.d)));
    var var_3 = Struct_2(!select(global0.c.ww, vec2<bool>(global2.x, func_3().x), arg_2.b.a), 30435u, arg_2.d, !arg_2.b.d);
    let var_4 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.x, arg_2.e.x, _wgslsmith_f_op_f32(-arg_2.e.x)))));
    return ~reverseBits(arg_1);
}

fn func_4(arg_0: vec4<u32>, arg_1: u32) -> i32 {
    global2 = func_3();
    global0 = Struct_1(func_1(~_wgslsmith_mult_vec4_u32(~arg_0, arg_0), reverseBits(vec4<u32>(arg_1, ~4294967295u, 38766u, ~38855u)), Struct_3(global0.c.x, Struct_2(global0.c.zy, ~14496u, Struct_1(arg_0.xw, vec3<u32>(6092u, arg_0.x, arg_0.x), global0.c), !vec3<bool>(global2.x, false, false)), select(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, global1[_wgslsmith_index_u32(global0.b.x, 3u)], global1[_wgslsmith_index_u32(79940u, 3u)], global1[_wgslsmith_index_u32(arg_0.x, 3u)]), vec4<i32>(15041i, global1[_wgslsmith_index_u32(global0.a.x, 3u)], -41475i, 0i)), countOneBits(vec4<i32>(global1[_wgslsmith_index_u32(global0.b.x, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(1u, 3u)])), vec4<bool>(false, global0.c.x, true, global2.x)), Struct_1(vec2<u32>(1u, arg_0.x), global0.b ^ vec3<u32>(4294967295u, u_input.b, 1u), !vec4<bool>(true, global2.x, false, global0.c.x)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -732f), 488f))).xy, _wgslsmith_div_vec3_u32(~min(global0.b, global0.b), vec3<u32>(max(func_2(global0.c.wzy, vec3<i32>(5924i, global1[_wgslsmith_index_u32(arg_1, 3u)], global1[_wgslsmith_index_u32(u_input.d, 3u)]), Struct_2(global2.xx, u_input.d, Struct_1(vec2<u32>(4294967295u, 4294967295u), vec3<u32>(global0.a.x, 70836u, 112220u), vec4<bool>(false, global0.c.x, false, true)), global2.xzz)), firstLeadingBit(4294967295u)), arg_1, arg_1)), select(vec4<bool>(!(!global0.c.x), any(vec2<bool>(false, global0.c.x)) & false, true, global2.x), global0.c, global0.c));
    global3 = _wgslsmith_dot_vec2_u32(vec2<u32>(abs(_wgslsmith_mult_u32(global0.b.x << (global0.b.x % 32u), 4294967295u)), ~19567u), u_input.c);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), vec2<f32>(_wgslsmith_f_op_f32(round(-1155f)), _wgslsmith_f_op_f32(131f + 222f)))));
    global3 = ~arg_0.x;
    return global1[_wgslsmith_index_u32(1u, 3u)];
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: i32) -> Struct_3 {
    global0 = Struct_1(global0.b.zz, min(abs(select(global0.b << (global0.b % vec3<u32>(32u)), ~vec3<u32>(4294967295u, 4294967295u, 4294967295u), global0.c.zyy)), max(global0.b, ~(vec3<u32>(global0.b.x, u_input.a, 0u) << (vec3<u32>(16908u, 0u, u_input.a) % vec3<u32>(32u))))), vec4<bool>(any(!global0.c.wxw), !(all(global0.c.yy) | true), false, false));
    global2 = global0.c;
    var var_0 = select(!(!select(vec3<bool>(true, false, global0.c.x), global0.c.wwy, global2.x)), global0.c.zyx, func_3().yyw);
    return Struct_3(!(_wgslsmith_add_u32(~global0.a.x, global0.b.x) != ~(~global0.a.x)), Struct_2(vec2<bool>(var_0.x, any(vec2<bool>(arg_0, arg_0))), global0.b.x, Struct_1(select(_wgslsmith_sub_vec2_u32(global0.a, global0.a), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global0.a.x, 1u)), false & global2.x), firstLeadingBit(~global0.b), vec4<bool>(false, global0.b.x > 4294967295u, arg_2 > -1i, var_0.x)), global0.c.wxx), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_2, arg_2, min(-1i, -arg_2), -1i), max(-(~vec4<i32>(18110i, arg_1, arg_1, global1[_wgslsmith_index_u32(global0.b.x, 3u)])), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 45903i), vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 3u)], -57453i)), ~arg_1, _wgslsmith_sub_i32(arg_2, arg_1), 47630i))), Struct_1(~vec2<u32>(~u_input.b, 4294967295u), _wgslsmith_mult_vec3_u32(~(~global0.b), global0.b << (reverseBits(global0.b) % vec3<u32>(32u))), vec4<bool>(global1[_wgslsmith_index_u32(~global0.a.x, 3u)] != (arg_2 & global1[_wgslsmith_index_u32(global0.b.x, 3u)]), global2.x, all(global2.wy), var_0.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1572f, _wgslsmith_f_op_f32(min(-1000f, 2010f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1287f + -749f), _wgslsmith_f_op_f32(-781f * 406f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(616f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!select(vec2<bool>(true, global2.x), vec2<bool>(global0.c.x, global2.x), any(vec2<bool>(false, global0.c.x)) && true));
    let var_1 = func_5(!(!(!var_0.x || var_0.x)), -_wgslsmith_mult_i32(-26872i, 78265i), func_4(select(vec4<u32>(~23082u, 4294967295u, 52664u, global0.a.x), _wgslsmith_mult_vec4_u32(select(vec4<u32>(u_input.a, 0u, global0.b.x, global0.b.x), vec4<u32>(4294967295u, 34783u, 1u, 0u), global0.c.x), func_1(vec4<u32>(global0.b.x, u_input.c.x, 74068u, u_input.c.x), vec4<u32>(global0.b.x, u_input.c.x, 32950u, u_input.b), Struct_3(global2.x, Struct_2(global0.c.zw, u_input.a, Struct_1(u_input.c, global0.b, global0.c), global2.xyw), vec4<i32>(7378i, -30216i, global1[_wgslsmith_index_u32(global0.a.x, 3u)], global1[_wgslsmith_index_u32(u_input.c.x, 3u)]), Struct_1(vec2<u32>(34995u, u_input.d), vec3<u32>(58248u, 4294967295u, 25444u), vec4<bool>(global0.c.x, global2.x, global2.x, true)), vec2<f32>(957f, 913f)))), var_0.x), u_input.b << (u_input.c.x % 32u)));
    var var_2 = _wgslsmith_f_op_f32(sign(var_1.e.x)) == 1000f;
    let var_3 = var_1;
    let var_4 = global2.x;
    let var_5 = Struct_2(func_3().zz, 46379u >> (0u % 32u), var_3.d, !var_1.b.c.c.xyz);
    let var_6 = var_1.b.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e.x, vec4<f32>(var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.e.x))), -872f, -1397f), -reverseBits(var_1.c.yy ^ reverseBits(vec2<i32>(global1[_wgslsmith_index_u32(0u, 3u)], 1i))));
}

