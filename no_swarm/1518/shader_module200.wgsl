struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_5 {
    a: i32,
    b: vec2<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4;

var<private> global2: array<i32, 29>;

var<private> global3: f32;

var<private> global4: Struct_2;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> bool {
    var var_0 = vec2<bool>(all(vec3<bool>(false, true, any(vec4<bool>(true, false, false, true)))), !(!(0i <= firstTrailingBit(-44067i))));
    global0 = 31820u;
    var var_1 = ~firstLeadingBit(~firstTrailingBit(_wgslsmith_sub_i32(global1.c.a, 0i)));
    let var_2 = vec3<bool>(true, var_0.x, all(!vec3<bool>(true, true, var_0.x && false)));
    global0 = firstLeadingBit(13369u);
    return true;
}

fn func_2(arg_0: u32, arg_1: i32) -> Struct_5 {
    let var_0 = u_input.a;
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(-30879i, global1.c.a, arg_1), _wgslsmith_mult_vec3_i32(max(vec3<i32>(global4.b.x, 2147483647i, arg_1), select(global4.b.yxy, vec3<i32>(-1i, global2[_wgslsmith_index_u32(arg_0, 29u)], 47682i), true)), global4.c)), global4.b.x);
    global1 = Struct_4(global1.a, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global1.b)))))), Struct_1(_wgslsmith_sub_i32(~global1.c.a >> (39075u % 32u), 2147483647i)), ~(~global1.d) | (vec3<u32>(global1.d.x ^ 22801u, _wgslsmith_mod_u32(1u, arg_0), ~1u) & vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.d.x, 22013u, 8379u), global1.d), 5502u, arg_0)));
    var var_2 = abs(_wgslsmith_mod_vec2_i32(global1.a.yy, global1.a.yx));
    let var_3 = global1.c;
    return Struct_5(-2147483647i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b.x, -990f) + vec2<f32>(global1.b.x, 1273f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.d.x, -226f) * vec2<f32>(-410f, global4.d.x))))))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-global1.b), vec4<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_div_f32(global4.d.x, global1.b.x), _wgslsmith_f_op_f32(f32(-1f) * -132f), 579f), vec4<bool>(func_3(55943i, vec3<f32>(360f, 317f, global1.b.x)), false, true, true)))));
}

fn func_4(arg_0: Struct_5) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(arg_0.c.a.xzy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.a.x + -1427f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - global1.b.x) * 239f), 312f))));
    global3 = arg_0.b.x;
    global4 = Struct_2(1i, global4.b, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(global1.a.x, reverseBits(global4.c.x), -1i), -1i, _wgslsmith_mod_i32(51852i & global4.a, global2[_wgslsmith_index_u32(global1.d.x, 29u)])), ~(-vec3<i32>(-21386i, -28729i, -1i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(global1.b * global1.b), global4.d)), global1.b)), global1.a.x);
    let var_1 = (-_wgslsmith_add_i32(-2147483647i, _wgslsmith_div_i32(global1.c.a, u_input.b)) ^ -1i) >= (i32(-1i) * -(~(-1i)));
    return min(~0u, ~min(u_input.d.x, 4294967295u));
}

fn func_1(arg_0: f32) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_f32(sign(-1531f));
    let var_1 = vec2<u32>(func_4(func_2(_wgslsmith_clamp_u32(~u_input.d.x, u_input.d.x & 47096u, firstTrailingBit(u_input.c)), -min(global1.c.a, global4.a))), ~_wgslsmith_add_u32(global1.d.x, _wgslsmith_dot_vec3_u32(global1.d, global1.d) ^ ~29950u));
    let var_2 = var_0;
    let var_3 = func_3(_wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.b, -2872i), ~(~firstLeadingBit(u_input.b))), vec3<f32>(func_2(select(max(4294967295u, 15664u), _wgslsmith_sub_u32(4294967295u, var_1.x), true), ~firstTrailingBit(global4.b.x)).c.a.x, global1.b.x, global1.b.x));
    let var_4 = -reverseBits(~(~global1.a.xy));
    return ~(~select(firstTrailingBit(~vec4<u32>(4985u, 4294967295u, var_1.x, 0u)), vec4<u32>(50340u, _wgslsmith_mult_u32(1u, global1.d.x), firstLeadingBit(0u), countOneBits(113889u)), vec4<bool>(all(vec3<bool>(var_3, var_3, false)), var_3, true, var_3 & false)));
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_2 {
    global2 = array<i32, 29>();
    let var_0 = Struct_1(~39624i);
    var var_1 = Struct_5(_wgslsmith_div_i32(select(-30690i, firstTrailingBit(_wgslsmith_dot_vec4_i32(global4.b, global4.b)), all(vec4<bool>(true, false, arg_2, false))), 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(651f, -1787f), _wgslsmith_f_op_vec2_f32(arg_0.xy + global1.b.wy), false)))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(-811f, _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(sign(global1.b.x)), _wgslsmith_f_op_f32(round(-1683f))) + global4.d)));
    let var_2 = Struct_2(_wgslsmith_add_i32(u_input.b, u_input.b), vec4<i32>(countOneBits(func_2(4294967295u, var_1.a).a), reverseBits(global1.a.x), _wgslsmith_dot_vec3_i32(global4.c, _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, -29582i, global1.a.x), vec3<i32>(global1.a.x, global1.c.a, arg_1.x))), abs(~57256i)) << (_wgslsmith_div_vec4_u32(~func_1(global1.b.x), ~(vec4<u32>(103219u, 47033u, 5363u, 12624u) | vec4<u32>(arg_3.x, global1.d.x, 517u, arg_3.x))) % vec4<u32>(32u)), firstTrailingBit(_wgslsmith_sub_vec3_i32(global1.a, vec3<i32>(35142i, global2[_wgslsmith_index_u32(1u, 29u)], 0i) & global4.b.xwz)), vec4<f32>(-450f, global4.d.x, -1647f, _wgslsmith_f_op_f32(step(-131f, global1.b.x))), -82235i);
    var var_3 = Struct_5(var_0.a, var_1.c.a.wy, Struct_3(_wgslsmith_div_vec4_f32(var_1.c.a, global1.b)));
    return var_2;
}

fn func_6(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, global4.d.x)) * _wgslsmith_f_op_vec2_f32(-global4.d.yz)) - arg_0.a.wy) * _wgslsmith_f_op_vec2_f32(-func_5(global4.d.wxw, min(global4.b.wx, arg_1.c.xz), all(vec4<bool>(false, false, false, true)), min(arg_2, vec4<u32>(u_input.a, 1u, 36642u, 4294967295u))).d.zx)));
    var var_1 = 2147483647i >> (~_wgslsmith_mod_u32(1u, u_input.a) % 32u);
    var var_2 = global4.b.yyy;
    var var_3 = func_1(2244f).x;
    var var_4 = Struct_4(vec3<i32>(global1.c.a, 1i, _wgslsmith_add_i32(global1.c.a, func_5(func_2(arg_2.x, 2147483647i).c.a.xxw, vec2<i32>(1016i, u_input.b), global1.b.x >= arg_0.a.x, min(arg_2, arg_2)).a)), func_5(arg_0.a.zwz, vec2<i32>(-1638i, u_input.b), false, ~arg_2).d, global1.c, ~max(global1.d & vec3<u32>(u_input.c, global1.d.x, arg_2.x), (global1.d << (arg_2.yzw % vec3<u32>(32u))) | arg_2.wxy));
    return Struct_2(global1.c.a, vec4<i32>(1i, select(global4.a, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(global4.b, vec4<i32>(u_input.b, global1.c.a, 2147483647i, -2147483647i)), max(global4.c.x, var_4.a.x)), false), -1i, 2147483647i), global4.b.wzx, arg_1.d, reverseBits(-26451i));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_2(global2[_wgslsmith_index_u32(1u, 29u)], _wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(global4.b, vec4<i32>(u_input.b, global4.c.x, global1.a.x, global1.a.x))) >> (min(vec4<u32>(u_input.a, 0u, 9510u, global1.d.x) ^ vec4<u32>(global1.d.x, global1.d.x, 4294967295u, 1u), vec4<u32>(u_input.c, global1.d.x, 26070u, global1.d.x) >> (vec4<u32>(global1.d.x, global1.d.x, 95473u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(global4.b, _wgslsmith_mult_vec4_i32(vec4<i32>(15769i, 0i, 20384i, global4.c.x), countOneBits(vec4<i32>(41289i, 14707i, global2[_wgslsmith_index_u32(47972u, 29u)], -2147483647i))), vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 47875u), u_input.d), 29u)], 0i, global4.e, _wgslsmith_mod_i32(global2[_wgslsmith_index_u32(u_input.d.x, 29u)], 0i))), -_wgslsmith_div_vec4_i32(global4.b & vec4<i32>(0i, u_input.b, global4.c.x, 0i), global4.b)), _wgslsmith_mod_vec3_i32(~global4.c, _wgslsmith_add_vec3_i32(vec3<i32>(32722i, global2[_wgslsmith_index_u32(1u, 29u)], 0i), vec3<i32>(global1.a.x, -global4.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global4.c.x, -2004i, global4.a), vec3<i32>(global4.a, 1i, -2147483647i))))), _wgslsmith_div_vec4_f32(global4.d, global1.b), 1i);
    let var_0 = ~(u_input.c & ~u_input.a);
    global4 = func_6(Struct_3(_wgslsmith_f_op_vec4_f32(global1.b - vec4<f32>(_wgslsmith_f_op_f32(-372f * -110f), global1.b.x, _wgslsmith_f_op_f32(global4.d.x + global1.b.x), _wgslsmith_f_op_f32(global4.d.x * -1000f)))), func_5(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.d.x, 905f, -739f))), global1.b.ywy)), -_wgslsmith_add_vec2_i32(global1.a.yx >> (vec2<u32>(global1.d.x, 15826u) % vec2<u32>(32u)), ~vec2<i32>(-20150i, global4.a)), true, vec4<u32>(_wgslsmith_dot_vec2_u32(global1.d.yz, vec2<u32>(global1.d.x, u_input.a)), abs(var_0), ~global1.d.x, select(u_input.a, 31113u, true)) ^ func_1(_wgslsmith_f_op_f32(-global1.b.x))), _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(u_input.d.x, u_input.d.x), func_4(Struct_5(0i, vec2<f32>(global1.b.x, -268f), Struct_3(vec4<f32>(-796f, 959f, -1108f, -875f)))), 37029u ^ var_0, 51344u), func_1(-1320f)), ~(~vec4<u32>(global1.d.x, global1.d.x, u_input.c, u_input.a) ^ (vec4<u32>(0u, var_0, 1u, 5942u) | vec4<u32>(18235u, global1.d.x, 47298u, 4294967295u)))));
    var var_1 = true;
    global4 = Struct_2(1i, global4.b, vec3<i32>(countOneBits(42938i), 2147483647i >> (countOneBits(~33930u) % 32u), 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1333f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(-1556f, global4.d.x, false)), -280f)))), global4.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -2508f), vec4<u32>(_wgslsmith_sub_u32(68303u, _wgslsmith_clamp_u32(4294967295u, 0u, global1.d.x) | (global1.d.x & 1u)), var_0, u_input.c, _wgslsmith_add_u32(~_wgslsmith_mult_u32(4294967295u, global1.d.x), ~u_input.c)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(61739u, var_0, global1.d.x, 73670u), ~vec4<u32>(50779u, global1.d.x, 3659u, 62199u)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, u_input.a, global1.d.x, 1603u), vec4<u32>(4294967295u, 49302u, 24829u, 1u))) & ~(~0u), _wgslsmith_clamp_u32(~0u, 1u, ~1u), global4.b);
}

