struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_1;

var<private> global3: Struct_4;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = (vec4<u32>(u_input.d.x, select(4294967295u, 1u, global2.b.x != 2147483647i), 1u, u_input.d.x) >> (~firstTrailingBit(~vec4<u32>(2796u, u_input.d.x, 37206u, u_input.d.x)) % vec4<u32>(32u))) >> (~max(~vec4<u32>(0u, 0u, arg_1.b, global3.a.a.d.x), reverseBits(_wgslsmith_sub_vec4_u32(vec4<u32>(53066u, global3.a.a.d.x, 21410u, u_input.d.x), vec4<u32>(global3.a.a.d.x, u_input.d.x, 18689u, 4294967295u)))) % vec4<u32>(32u));
    return arg_1;
}

fn func_3(arg_0: vec4<f32>, arg_1: f32) -> Struct_2 {
    var var_0 = !global2.d;
    var_0 = !(!all(select(vec4<bool>(global2.c, true, true, false), vec4<bool>(true, true, true, true), true)));
    let var_1 = ~u_input.d.x;
    var var_2 = !global3.a.a.c.c || global2.c;
    var var_3 = Struct_1(-1479f, (_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, global2.b.x, global2.b.x, global2.b.x) | global3.a.a.a.b, global2.b ^ vec4<i32>(global3.a.a.c.b.x, u_input.a, -1i, 31988i)) << (~vec4<u32>(global3.a.a.d.x, 4294967295u, var_1, 19418u) % vec4<u32>(32u))) | vec4<i32>(select(global2.b.x, min(1i, global3.a.a.c.b.x), global3.a.a.c.d), -14086i, _wgslsmith_div_i32(func_1(global3.a.a.a.b, Struct_3(Struct_2(Struct_1(global3.a.a.c.e.x, vec4<i32>(15103i, 14774i, 0i, -2147483647i), global2.c, global3.a.a.a.c, vec4<f32>(441f, 1708f, 700f, arg_0.x)), arg_0.yyz, global3.a.a.a, global3.a.a.d), u_input.d.x)).a.a.b.x, u_input.b), ~(~2147483647i)), global3.a.a.c.c, global1.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global2.e.x, 2452f, global2.a, 1000f), global2.e)))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -475f), _wgslsmith_f_op_f32(select(-2201f, 1000f, global1.x)), _wgslsmith_f_op_f32(-global2.a), _wgslsmith_f_op_f32(global2.e.x + arg_1)))));
    return Struct_2(func_1(vec4<i32>(global2.b.x, -1i, _wgslsmith_div_i32(1i, -2147483647i), -41078i) << (~abs(vec4<u32>(0u, var_1, 1u, 55838u)) % vec4<u32>(32u)), func_1(vec4<i32>(reverseBits(0i), -1i, _wgslsmith_dot_vec4_i32(global3.a.a.a.b, var_3.b), global2.b.x), Struct_3(func_1(var_3.b, global3.a).a, global3.a.a.d.x))).a.a, arg_0.ywz, Struct_1(-285f, global3.a.a.a.b, global3.a.a.c.c, global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, global3.a.a.c.e.x, -1191f, 274f), vec4<f32>(global2.e.x, -2089f, 521f, arg_0.x)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.e.x, arg_0.x, -709f, -860f))))), global3.a.a.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = func_1(-vec4<i32>(2344i, firstLeadingBit(arg_2.c.b.x), 7567i, global2.b.x), global3.a).a.c;
    var var_1 = Struct_4(Struct_3(Struct_2(Struct_1(arg_1.b.x, firstLeadingBit(global2.b), true, true, _wgslsmith_f_op_vec4_f32(trunc(global2.e))), global2.e.xwz, func_1(global2.b, func_1(vec4<i32>(global2.b.x, global3.b.x, global2.b.x, arg_2.c.b.x), Struct_3(global3.a.a, arg_2.d.x))).a.c, (arg_1.d & global3.a.a.d) & arg_2.d), 1u), vec2<i32>(1i, 2147483647i >> (u_input.d.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(global3.b.x), _wgslsmith_add_i32(2147483647i, min(global2.b.x, 1i))), -(select(vec2<i32>(51498i, arg_2.a.b.x), global2.b.zw, global2.d) >> ((vec2<u32>(u_input.d.x, 12558u) >> (u_input.d % vec2<u32>(32u))) % vec2<u32>(32u)))));
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_f_op_f32(max(arg_2.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1278f - _wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(exp2(arg_2.c.e.x)))) - _wgslsmith_f_op_f32(global2.e.x * _wgslsmith_f_op_f32(exp2(global3.a.a.b.x))))));
    var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(874f - arg_2.a.e.x)))))) * _wgslsmith_div_f32(-513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.a.a.b.x)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(var_1.a.a.c.a)))))));
    return reverseBits(-var_1.a.a.c.b.x);
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> vec4<i32> {
    global0 = array<Struct_4, 6>();
    var var_0 = Struct_3(func_3(arg_1.a.c.e, global3.a.a.c.e.x), arg_1.a.d.x);
    let var_1 = global3.a.b;
    var var_2 = -(~_wgslsmith_sub_i32(arg_1.a.a.b.x << (var_0.a.d.x % 32u), -var_0.a.a.b.x) & -2147483647i);
    let var_3 = global0[_wgslsmith_index_u32(arg_3, 6u)];
    return arg_1.a.c.b;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32) -> f32 {
    var var_0 = -567f;
    let var_1 = firstLeadingBit(vec2<i32>((-u_input.c.x & 0i) & arg_0.x, 2147483647i));
    let var_2 = func_1(abs(global2.b), global3.a).a.c.b.x;
    var var_3 = !(!(any(!vec4<bool>(false, true, global3.a.a.a.c, false)) == (global3.a.a.c.c | all(vec4<bool>(true, true, true, global3.a.a.c.d)))));
    let var_4 = func_1(func_5(vec4<i32>(-20766i, func_4(global2.b.www, func_1(global3.a.a.c.b, Struct_3(Struct_2(Struct_1(arg_1, vec4<i32>(0i, var_1.x, -1i, 1i), false, true, global2.e), vec3<f32>(global3.a.a.b.x, arg_1, 950f), Struct_1(global3.a.a.a.e.x, vec4<i32>(-43100i, global2.b.x, arg_0.x, global3.c), false, false, vec4<f32>(-204f, 892f, 770f, global3.a.a.a.e.x)), global3.a.a.d), u_input.d.x)).a, func_3(vec4<f32>(global3.a.a.c.a, arg_1, -166f, global3.a.a.b.x), 580f)), arg_0.x, _wgslsmith_clamp_i32(global3.a.a.a.b.x, var_1.x, 0i) ^ _wgslsmith_add_i32(-2147483647i, 0i)), global3.a, 0i, global3.a.b), Struct_3(Struct_2(func_1(vec4<i32>(global3.c, -14230i, global2.b.x, -1i), func_1(vec4<i32>(5859i, u_input.c.x, 1i, global3.a.a.c.b.x), global3.a)).a.a, global3.a.a.a.e.yxx, Struct_1(_wgslsmith_f_op_f32(abs(global3.a.a.b.x)), vec4<i32>(2147483647i, global3.b.x, -2147483647i, -46152i) & global2.b, false, false, _wgslsmith_f_op_vec4_f32(ceil(global2.e))), ~(global3.a.a.d & vec3<u32>(u_input.d.x, u_input.d.x, global3.a.a.d.x))), ~0u));
    return 430f;
}

fn func_6(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: bool, arg_3: Struct_4) -> StorageBuffer {
    let var_0 = Struct_2(Struct_1(535f, vec4<i32>(func_1(vec4<i32>(global3.b.x, -3542i, global2.b.x, -30843i), arg_3.a).a.c.b.x, ~0i, _wgslsmith_mod_i32(_wgslsmith_sub_i32(global2.b.x, 24775i), global3.c), -reverseBits(arg_3.a.a.c.b.x)), !(-49334i >= _wgslsmith_dot_vec2_i32(vec2<i32>(16620i, 10318i), u_input.e)), global1.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global3.a.a.a.e, global3.a.a.a.e) - _wgslsmith_f_op_vec4_f32(-arg_3.a.a.c.e)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.x, -931f, global3.a.a.b.x, 491f) - global3.a.a.a.e))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-448f, arg_3.a.a.a.a), 613f, 1088f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global2.e.ywx)) * _wgslsmith_f_op_vec3_f32(-global3.a.a.a.e.xzw)))), global3.a.a.c, _wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(23516u, 4294967295u, 0u)) >> (max(max(vec3<u32>(92055u, 1u, 0u), vec3<u32>(1u, 36984u, arg_3.a.b)), _wgslsmith_add_vec3_u32(arg_3.a.a.d, arg_3.a.a.d)) % vec3<u32>(32u)), global3.a.a.d));
    let var_1 = _wgslsmith_div_i32(1i, func_3(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x * global2.a) * 1298f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1513f)))), _wgslsmith_f_op_f32(f32(-1f) * -117f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2.a)) + -1587f)), -232f).c.b.x);
    let var_2 = ~arg_3.a.b;
    return StorageBuffer(func_5(_wgslsmith_div_vec4_i32(~(~var_0.a.b), vec4<i32>(-1i) * -var_0.c.b), arg_3.a, 2147483647i >> (1u % 32u), _wgslsmith_mult_u32(min(24975u, ~61672u), ~(~0u))).x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!vec4<bool>(~0u <= _wgslsmith_dot_vec2_u32(global3.a.a.d.yy, global3.a.a.d.zy), global3.a.a.a.d, true, false));
    var var_0 = func_1(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-global3.a.a.c.b, global3.a.a.c.b ^ _wgslsmith_mod_vec4_i32(global3.a.a.a.b, global3.a.a.c.b)), ~vec4<i32>(_wgslsmith_div_i32(u_input.b, -2147483647i), u_input.c.x, 3593i >> (0u % 32u), reverseBits(global3.a.a.a.b.x))), global3.a);
    let x = u_input.a;
    s_output = func_6(global1.zw, vec4<f32>(_wgslsmith_f_op_f32(-410f + _wgslsmith_f_op_f32(-func_1(vec4<i32>(var_0.a.a.b.x, var_0.a.c.b.x, var_0.a.a.b.x, u_input.b), global3.a).a.c.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a.a + 1025f) + _wgslsmith_f_op_f32(func_2(var_0.a.a.b.wyx, var_0.a.b.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-global3.a.a.c.e.x)) + global3.a.a.c.a), _wgslsmith_f_op_f32(-global2.a)), true, global0[_wgslsmith_index_u32(u_input.d.x, 6u)]);
}

