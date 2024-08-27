struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec3<bool>,
    d: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<u32, 11> = array<u32, 11>(1647u, 1u, 1u, 14712u, 84124u, 85352u, 1u, 114696u, 4294967295u, 15696u, 42218u);

var<private> global2: array<f32, 16> = array<f32, 16>(-502f, 408f, 925f, 812f, -1010f, -287f, -1317f, -1073f, 1026f, 613f, -336f, -769f, 678f, 126f, -858f, 963f);

var<private> global3: vec4<bool>;

var<private> global4: vec2<i32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<f32>) -> vec4<f32> {
    let var_0 = global1[_wgslsmith_index_u32(firstTrailingBit(max(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(19645u, 11u)], 11u)], 11u)], 11u)] ^ _wgslsmith_mod_u32(~38889u, select(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49189u, 11u)], 11u)], 11u)], 11u)], 24818u, global0.x)), select(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 11u)]), global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~53270u, 11u)], 11u)], true))), 11u)];
    let var_1 = Struct_4(vec3<bool>(~1u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], true, global4.x == ~arg_0.x), global3.ww, Struct_1(~vec2<u32>(global1[_wgslsmith_index_u32(reverseBits(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 11u)], 11u)], 11u)]), 11u)], 35894u)), vec2<f32>(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(71122u, global1[_wgslsmith_index_u32(67390u, 11u)], 53233u), vec3<u32>(72501u, global1[_wgslsmith_index_u32(1u, 11u)], 50982u)), 16u)], -1000f));
    let var_2 = Struct_5(var_1.c);
    var var_3 = Struct_2(firstTrailingBit(4294967295u << ((_wgslsmith_mult_u32(var_1.c.a.x, var_2.a.a.x) >> (0u % 32u)) % 32u)), Struct_1(var_1.c.a), arg_1.zz);
    var var_4 = _wgslsmith_f_op_vec3_f32(-arg_2.xxx);
    return _wgslsmith_f_op_vec4_f32(-arg_2);
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<u32>) -> bool {
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(0i, arg_1.d), vec3<bool>(var_0.a.x, arg_0.b.x, true), vec4<f32>(1000f, var_0.d.x, 339f, var_0.d.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, global2[_wgslsmith_index_u32(4294967295u, 16u)], 1027f, var_0.d.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, 1001f, var_0.d.x, var_0.d.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1884f, var_0.d.x, 1321f, 919f), vec4<f32>(1381f, arg_0.d.x, arg_0.d.x, global2[_wgslsmith_index_u32(arg_0.c.a.x, 16u)])), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(142f, arg_0.d.x, var_0.d.x, 774f))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, var_0.d.x, global2[_wgslsmith_index_u32(arg_1.a.a.x, 16u)], -446f) - vec4<f32>(arg_0.d.x, arg_0.d.x, -115f, var_0.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-223f, 1288f, -761f, -160f)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.x, arg_0.d.x, -535f, global2[_wgslsmith_index_u32(0u, 16u)]) - vec4<f32>(-1000f, -634f, -338f, 1992f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(335f, -451f, 1428f, 507f))))))), arg_2.x < global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(min(0u, arg_1.a.a.x), min(63953u, 1264u), _wgslsmith_mult_u32(arg_2.x, 4294967295u) >> (1u % 32u)), 11u)]));
    global1 = array<u32, 11>();
    let var_2 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(max(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(var_0.c.a.x, 11u)], var_0.c.a.x, 4294967295u) >> (vec3<u32>(1u, arg_2.x, 4294967295u) % vec3<u32>(32u)), max(arg_2, arg_2), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 79694u, var_0.c.a.x), vec3<u32>(arg_2.x, 46668u, 4294967295u))), arg_2), reverseBits(reverseBits(vec3<u32>(1u, arg_0.c.a.x, global1[_wgslsmith_index_u32(0u, 11u)]))) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_2.x, arg_2.x, 1274u), arg_2, vec3<u32>(arg_2.x, 1u, arg_1.a.a.x)) % vec3<u32>(32u))), ~min(abs(1u), _wgslsmith_dot_vec2_u32(select(arg_1.a.a, arg_2.yz, var_0.b.x), vec2<u32>(global1[_wgslsmith_index_u32(1u, 11u)], 4294967295u))), ~_wgslsmith_mod_u32(~(~global1[_wgslsmith_index_u32(22804u, 11u)]), 46393u));
    global4 = -firstLeadingBit(countOneBits(u_input.a.wz));
    return true;
}

fn func_4(arg_0: vec4<f32>, arg_1: bool, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = 40864i >> (_wgslsmith_dot_vec2_u32(max(arg_2.b.a, reverseBits(arg_2.b.a)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(30180u, 0u), max(arg_2.b.a, arg_2.b.a))) % 32u);
    var var_1 = Struct_3(Struct_1(select(abs(vec2<u32>(arg_2.b.a.x, 33343u)), _wgslsmith_sub_vec2_u32(~arg_2.b.a, arg_2.b.a & vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(59250u, 11u)], 11u)], 11u)], arg_2.b.a.x)), false)), arg_1, global3.zwz, countOneBits(min(~u_input.b.x, -1i)));
    let var_2 = ~(-1i);
    let var_3 = ~27220u;
    global4 = u_input.b.yx;
    return select(!(!select(select(vec4<bool>(false, global3.x, arg_1, false), vec4<bool>(global0.x, var_1.c.x, false, arg_2.c.x), global0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_1, false, false), vec4<bool>(arg_1, true, true, global0.x)), arg_1)), !(!vec4<bool>(any(global3.wy), u_input.a.x >= -48889i, var_1.c.x, true)), all(select(global3.yyy, vec3<bool>(!arg_1, false, func_2(Struct_4(vec3<bool>(var_1.b, true, var_1.c.x), arg_2.c, Struct_1(arg_2.b.a), vec2<f32>(global2[_wgslsmith_index_u32(0u, 16u)], global2[_wgslsmith_index_u32(4294967295u, 16u)])), Struct_3(var_1.a, true, vec3<bool>(false, false, true), -9797i), vec3<u32>(var_3, 4294967295u, arg_2.a))), !(-823f < arg_0.x))));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_1) -> i32 {
    global3 = !select(func_4(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-445f, global2[_wgslsmith_index_u32(25647u, 16u)], -1013f, global2[_wgslsmith_index_u32(arg_1.a.x, 16u)]), vec4<f32>(-816f, global2[_wgslsmith_index_u32(arg_1.a.x, 16u)], -561f, -620f), false)))), select(global3.x, global0.x, func_2(Struct_4(global3.zwy, vec2<bool>(global0.x, global3.x), Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(arg_0.a.a.x, 11u)], 4294967295u)), vec2<f32>(global2[_wgslsmith_index_u32(70304u, 16u)], global2[_wgslsmith_index_u32(arg_1.a.x, 16u)])), Struct_3(arg_1, global0.x, global3.xww, u_input.b.x), vec3<u32>(55686u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 1u))), Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, 40761u, arg_1.a.x, 28315u), vec4<u32>(arg_0.a.a.x, arg_1.a.x, global1[_wgslsmith_index_u32(arg_0.a.a.x, 11u)], 1u)), Struct_1(vec2<u32>(9255u, arg_1.a.x)), select(global3.xx, global3.xz, global3.x))), !func_4(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(309f, global2[_wgslsmith_index_u32(0u, 16u)], 1000f, 682f), vec4<f32>(209f, 432f, 672f, global2[_wgslsmith_index_u32(0u, 16u)]), vec4<bool>(false, global3.x, true, global3.x))), !global3.x, Struct_2(arg_1.a.x, Struct_1(arg_1.a), vec2<bool>(true, global0.x))), !func_4(vec4<f32>(global2[_wgslsmith_index_u32(arg_1.a.x, 16u)], global2[_wgslsmith_index_u32(38647u, 16u)], global2[_wgslsmith_index_u32(73197u, 16u)], global2[_wgslsmith_index_u32(arg_1.a.x, 16u)]), false | global3.x, Struct_2(0u, arg_1, vec2<bool>(false, global0.x))).x);
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(vec2<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.b.xx, -vec2<i32>(global4.x, 1i), _wgslsmith_mod_vec2_i32(u_input.b.xz, u_input.a.xx)), vec2<i32>(_wgslsmith_mult_i32(u_input.a.x, 0i), u_input.b.x)), (1i | (1i << (arg_1.a.x % 32u))) << (global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(49645u, 87418u), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.x, arg_1.a.x, arg_0.a.a.x, 4294967295u), vec4<u32>(67365u, arg_0.a.a.x, 13265u, 19470u))), 11u)] % 32u)), !(!vec3<bool>(global0.x, global0.x, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(0u, 16u)], 1001f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_1.a.x, 11u)], 11u)], 16u)], -620f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(791f, global2[_wgslsmith_index_u32(26742u, 16u)], global2[_wgslsmith_index_u32(1u, 16u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 16u)]), vec4<f32>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_0.a.a.x, 11u)], 16u)], -1533f, -1971f, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9829u, 11u)], 16u)])))))))).ww;
    var var_1 = _wgslsmith_dot_vec3_u32(~vec3<u32>(~arg_0.a.a.x, arg_1.a.x, 1u), ~(~vec3<u32>(4294967295u, 0u, 0u))) | abs(~arg_1.a.x);
    let var_2 = Struct_1(~_wgslsmith_mult_vec2_u32(~arg_0.a.a, arg_0.a.a));
    var var_3 = ~abs(vec4<u32>(var_2.a.x, 1u, reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 30298u, arg_1.a.x), vec3<u32>(18171u, 1u, var_2.a.x))), arg_0.a.a.x));
    return 32500i;
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: i32) -> Struct_1 {
    var var_0 = abs(~(global1[_wgslsmith_index_u32(~50031u, 11u)] & global1[_wgslsmith_index_u32(1u, 11u)]));
    global2 = array<f32, 16>();
    let var_1 = _wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(select(u_input.b.zwy, reverseBits(vec3<i32>(17847i, arg_1.x, arg_1.x)) & ~vec3<i32>(2147483647i, 2147483647i, 1i), false && !global3.x), u_input.a.yyz), vec3<i32>(-27486i, -(~u_input.b.x), ~_wgslsmith_dot_vec4_i32(-vec4<i32>(global4.x, arg_2, arg_1.x, 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(15547i, u_input.a.x, arg_2, -2147483647i), u_input.b))));
    global2 = array<f32, 16>();
    global3 = vec4<bool>(false, true != !(!global3.x), global3.x, false);
    return Struct_1(~countOneBits(~firstLeadingBit(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79816u, 11u)], 11u)], 11u)], 11u)], 11u)], 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = vec2<i32>(~(~2147483647i ^ global4.x), _wgslsmith_div_i32(-11353i, global4.x));
    var var_0 = func_5(-1670f, _wgslsmith_mult_vec2_i32(-abs(_wgslsmith_add_vec2_i32(vec2<i32>(2147483647i, global4.x), vec2<i32>(-2147483647i, 9837i))), u_input.a.ww), -func_1(Struct_5(Struct_1(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)], 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29370u, 11u)], 11u)]))), Struct_1(abs(vec2<u32>(50722u, 4294967295u)))));
    var_0 = Struct_1(_wgslsmith_add_vec2_u32(~(~var_0.a), ~_wgslsmith_div_vec2_u32(vec2<u32>(495u, var_0.a.x) >> (var_0.a % vec2<u32>(32u)), vec2<u32>(0u, var_0.a.x) | vec2<u32>(global1[_wgslsmith_index_u32(59818u, 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 11u)], 11u)]))));
    let var_1 = Struct_3(func_5(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1000f)), _wgslsmith_div_f32(-597f, 917f)) + _wgslsmith_f_op_vec4_f32(func_3(u_input.a.zw >> (vec2<u32>(var_0.a.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 11u)], 11u)], 11u)]) % vec2<u32>(32u)), global3.yyz, vec4<f32>(global2[_wgslsmith_index_u32(3862u, 16u)], global2[_wgslsmith_index_u32(var_0.a.x, 16u)], global2[_wgslsmith_index_u32(20777u, 16u)], global2[_wgslsmith_index_u32(45266u, 16u)]))).x), select(u_input.b.zy, vec2<i32>(select(-1i, -7091i, global3.x), global4.x << (var_0.a.x % 32u)), all(!vec4<bool>(false, global0.x, false, true))), u_input.b.x), !(!global0.x), select(global3.ywx, global3.wwy, !select(global3.zyw, global3.zxy, global0.x)), 2147483647i);
    let var_2 = var_1.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(firstLeadingBit(var_2), 11u)]);
}

