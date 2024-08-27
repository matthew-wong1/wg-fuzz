struct Struct_1 {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-300f, 180f, -1268f, 736f);

var<private> global1: Struct_1 = Struct_1(5278i, -638f, 23741u, i32(-2147483648));

var<private> global2: vec4<u32>;

var<private> global3: Struct_3;

var<private> global4: array<vec4<bool>, 16>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec3<i32>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global0.zwy)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(global0.ywy))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -201f, arg_1.d.b))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b, -379f, global0.x) - global0.ywy))));
    var var_1 = Struct_2(-arg_1.a.a, arg_1.a.c, arg_1.d);
    global1 = Struct_1(-2147483647i, _wgslsmith_div_f32(-1099f, _wgslsmith_f_op_f32(min(arg_1.d.b, -1425f))), 4294967295u, min(-arg_2.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(33481i, abs(global3.d.a)), arg_2.x)));
    let var_2 = reverseBits(countOneBits(var_1.a.zy));
    var var_3 = ~_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_1.a.b.c, max(global3.a.c.c, ~0u), _wgslsmith_sub_u32(global2.x, global3.a.c.c) ^ firstTrailingBit(var_1.c.c)), ~vec4<u32>(var_1.c.c, _wgslsmith_mod_u32(var_1.b.c, 4781u), ~1u, 18060u));
    return global3.a.a;
}

fn func_2() -> Struct_2 {
    global3 = Struct_3(Struct_2(vec4<i32>(1i, reverseBits(~global3.a.a.x), _wgslsmith_add_i32(-global3.c, u_input.a | 1i), reverseBits(global1.a)), Struct_1(1i, global3.a.c.b, (50124u ^ global1.c) >> (905u % 32u), -2147483647i), global3.a.c), global3.b | !(_wgslsmith_div_f32(global0.x, 695f) <= -395f), reverseBits(firstLeadingBit(~global3.d.a)), Struct_1(reverseBits(_wgslsmith_add_i32(~1i, global3.d.d)), 1268f, ~firstTrailingBit(global1.c << (9979u % 32u)), reverseBits(~(u_input.a | 1i))), 2147483647i);
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - -1108f), -113f)), global1.b, _wgslsmith_f_op_f32(-1594f + global1.b))))));
    let var_1 = global0.xz;
    global2 = vec4<u32>(~global2.x, global2.x, min(global1.c, global2.x), _wgslsmith_add_u32(reverseBits(global3.d.c), ~global1.c ^ countOneBits(~global2.x)));
    global3 = Struct_3(Struct_2(_wgslsmith_div_vec4_i32(~func_3(vec3<bool>(global3.b, true, true), Struct_3(global3.a, global3.b, global1.d, Struct_1(54616i, -606f, 19274u, global1.a), global3.e), global3.a.a.xwz), ~_wgslsmith_add_vec4_i32(global3.a.a, global3.a.a)), Struct_1(func_3(vec3<bool>(global3.b, true, true), Struct_3(Struct_2(global3.a.a, global3.d, global3.a.b), global3.b, 34004i, Struct_1(global1.d, -602f, 4294967295u, u_input.a), -122041i), global3.a.a.xyx).x, -493f, _wgslsmith_dot_vec2_u32(global2.yw, vec2<u32>(1u, global2.x) & global2.zz), global1.d), Struct_1(~global1.d | -2147483647i, global0.x, 0u, 1i)), all(vec4<bool>(true, select(global3.b, all(global4[_wgslsmith_index_u32(global1.c, 16u)]), var_0.x <= -1562f), global3.b, u_input.a >= ~global3.a.a.x)), u_input.a & 1i, global3.d, global3.c);
    return global3.a;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: vec3<f32>, arg_3: Struct_4) -> vec4<f32> {
    let var_0 = arg_2;
    global1 = func_2().b;
    var var_1 = global3.a;
    var var_2 = vec2<bool>(global3.b, all(!vec2<bool>(global3.b, any(global4[_wgslsmith_index_u32(1u, 16u)]))));
    let var_3 = -279f;
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1494f))), var_0.x, _wgslsmith_f_op_f32(-global3.d.b), 585f));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec4<i32>) -> vec4<f32> {
    var var_0 = Struct_1(~global1.a, global0.x, min(1u, global2.x), -11331i);
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.b.b, global1.b, global1.b, 354f)) - vec4<f32>(global3.a.c.b, -282f, -343f, 180f))), _wgslsmith_f_op_vec4_f32(func_4(reverseBits(~vec4<u32>(1u, global1.c, 1u, 24263u)), arg_2 & (arg_2 | vec4<i32>(arg_1.c.a, var_0.a, u_input.a, 9642i)), global0.yyy, Struct_4(func_2()))), vec4<bool>(any(select(arg_0.xz, vec2<bool>(global3.b, arg_0.x), global3.b)), any(arg_0), true, global3.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(-1220f, var_0.b)), _wgslsmith_f_op_f32(global0.x + -709f), 1325f, _wgslsmith_f_op_f32(-global1.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1359f, arg_1.b.b, 567f, arg_1.c.b))))))));
    var var_1 = select(_wgslsmith_mult_vec4_u32(firstLeadingBit(select(firstTrailingBit(vec4<u32>(18981u, 24968u, global3.d.c, global2.x)), ~vec4<u32>(1u, 22741u, var_0.c, global3.d.c), arg_0.x)), _wgslsmith_mult_vec4_u32(firstTrailingBit(vec4<u32>(55932u, 28834u, var_0.c, 4294967295u)), ~(~vec4<u32>(global1.c, var_0.c, global3.a.b.c, 31550u)))), select(vec4<u32>(countOneBits(arg_1.b.c), 98862u, var_0.c, ~global2.x | ~1u), vec4<u32>(~(~var_0.c), 4294967295u, 1u, 4294967295u), vec4<bool>(true, all(vec2<bool>(false, false)), any(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, global3.b)), false)), global3.b);
    let var_2 = Struct_2(~max(arg_1.a, _wgslsmith_div_vec4_i32(arg_2, vec4<i32>(3988i, 64746i, 0i, global3.a.b.d)) << (~vec4<u32>(37101u, 4294967295u, 4294967295u, 22497u) % vec4<u32>(32u))), global3.a.b, Struct_1(firstLeadingBit(67399i), global1.b, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(global3.a.c.c, global3.d.c, 3923u, global2.x), vec4<u32>(0u, 19216u, 26072u, 0u)), ~vec4<u32>(0u, global2.x, 9236u, var_0.c)), -12770i));
    var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(12312u, select(global2.x, ~(~global3.a.b.c), !arg_0.x), ~(~40263u), arg_1.b.c), vec4<u32>(~var_1.x ^ max(var_1.x ^ 0u, global3.a.c.c), min(13625u & var_2.b.c, global2.x), 33458u, select(9315u, 14948u, arg_0.x)), _wgslsmith_mod_vec4_u32(abs(vec4<u32>(1u, _wgslsmith_add_u32(var_0.c, 1u), ~1u, firstTrailingBit(var_2.c.c))), ~(~vec4<u32>(arg_1.b.c, global1.c, 68103u, global3.a.c.c) & (vec4<u32>(var_2.b.c, arg_1.c.c, global3.a.c.c, var_1.x) << (vec4<u32>(var_1.x, 10553u, 0u, 1u) % vec4<u32>(32u))))));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(639f, global0.x, global3.a.b.b, global3.d.b)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1.b, 704f, arg_1.c.b, global0.x)))) - vec4<f32>(_wgslsmith_f_op_f32(-global3.a.b.b), 1000f, _wgslsmith_f_op_f32(floor(-1000f)), arg_1.b.b)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.b, 1000f, global1.b, global0.x) * vec4<f32>(1107f, -558f, 534f, -345f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(168f, global3.a.b.b, -259f, arg_1.c.b) * vec4<f32>(2125f, global3.a.c.b, -276f, -996f))))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(min(global3.a.c.b, _wgslsmith_f_op_f32(var_2.c.b * 2125f))), var_2.b.b, func_2().c.b, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) - func_2().b.b), 423f, _wgslsmith_f_op_f32(-func_2().c.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(var_0.c, 37495u, 2834u, 4874u), vec4<i32>(-16327i, 56414i, 31917i, -96057i), global0.xyw, Struct_4(Struct_2(arg_2, global3.a.c, Struct_1(2147483647i, 1240f, 90927u, arg_1.b.a))))).x + var_0.b)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(false, true, true), all(!(!select(vec2<bool>(true, global3.b), vec2<bool>(true, global3.b), true))), global3.b);
    global0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(global4[_wgslsmith_index_u32(4294967295u, 16u)], Struct_2(vec4<i32>(1i, -1i, global3.d.a, u_input.a), global3.a.b, Struct_1(5054i, -654f, 1u, u_input.a)), vec4<i32>(global3.c, 2147483647i, -40253i, -31692i))) - _wgslsmith_f_op_vec4_f32(func_1(global4[_wgslsmith_index_u32(global1.c, 16u)], Struct_2(global3.a.a, global3.a.c, global3.d), vec4<i32>(u_input.a, u_input.a, u_input.a, -17782i)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(global3.a.c.b)), -540f, global1.b, _wgslsmith_f_op_f32(-1045f - 1447f))))), vec4<f32>(_wgslsmith_f_op_f32(-func_2().b.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -228f)) + 287f), _wgslsmith_div_f32(func_2().b.b, _wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(true, global3.b, false, global3.b), Struct_2(global3.a.a, global3.d, Struct_1(u_input.a, global3.d.b, global2.x, -1i)), _wgslsmith_div_vec4_i32(global3.a.a, vec4<i32>(u_input.a, 57481i, global3.e, global1.d)))).x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(vec4<u32>(global2.x, 7389u, 4294967295u, global1.c) | vec4<u32>(4294967295u, 4294967295u, 39847u, 73u), -vec4<i32>(1i, global1.a, -1i, global1.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(268f, 246f, global0.x) * vec3<f32>(1765f, global1.b, global3.d.b)), Struct_4(Struct_2(global3.a.a, Struct_1(-25039i, global3.d.b, 1u, global1.a), global3.d)))).x))));
    var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-378f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.c.b))) - global1.b) >= -1931f;
    let var_1 = Struct_4(global3.a);
    var var_2 = Struct_3(func_2(), global3.b, -global3.d.d, func_2().c, abs(-global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2().b.b, var_1.a.c.b)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.b, global0.x, 526f, 127f))) - vec4<f32>(-1582f, _wgslsmith_f_op_f32(min(var_2.d.b, -695f)), 1124f, _wgslsmith_f_op_f32(var_2.d.b * var_1.a.b.b))), vec4<f32>(_wgslsmith_f_op_f32(923f + _wgslsmith_f_op_f32(-global1.b)), func_2().b.b, 977f, 1302f))));
}

