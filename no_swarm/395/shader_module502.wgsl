struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 25> = array<vec3<bool>, 25>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

var<private> global1: vec3<f32>;

var<private> global2: Struct_1;

var<private> global3: vec3<u32> = vec3<u32>(50252u, 0u, 3962u);

var<private> global4: vec4<i32>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: u32, arg_1: u32) -> i32 {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)));
    var var_2 = Struct_1(global2.a, vec4<i32>(_wgslsmith_sub_i32(select(-26548i, max(global4.x, global4.x), false), ~(-global2.d.x)), -2147483647i, abs(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(global4.x, 1i)), ~global4.wz)), -1i), vec3<u32>(0u, ~(~(~arg_0)), u_input.a.x), global4.wx);
    global3 = vec3<u32>(arg_0, 30723u, arg_1);
    let var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(global1.x)), global1.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global1.x)))), _wgslsmith_f_op_f32(exp2(global1.x))));
    return min(global2.d.x, global2.d.x);
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = u_input.a << ((~reverseBits(~vec4<u32>(global2.a.x, global2.a.x, global2.c.x, u_input.a.x)) | vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(global3.x, arg_0.a.c.x), ~vec2<u32>(4294967295u, 4294967295u)), reverseBits(arg_0.a.c.x), _wgslsmith_mod_u32(_wgslsmith_add_u32(26613u, global2.a.x), 1u), firstTrailingBit(countOneBits(4294967295u)))) % vec4<u32>(32u));
    var var_1 = arg_0;
    var var_2 = arg_0.a.d;
    var var_3 = global1.x;
    var var_4 = var_1.a;
    return _wgslsmith_dot_vec2_u32(var_1.a.a, ~min(var_0.zy, select(firstTrailingBit(vec2<u32>(u_input.a.x, 0u)), var_1.a.a, select(vec2<bool>(false, false), vec2<bool>(true, true), false))));
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: i32) -> Struct_1 {
    var var_0 = ~firstTrailingBit(global2.c << (~(global2.c ^ global2.c) % vec3<u32>(32u)));
    let var_1 = Struct_1(vec2<u32>(1u, 42909u), (vec4<i32>(-1i) * -global2.b) ^ _wgslsmith_sub_vec4_i32(abs(global2.b), global2.b), firstLeadingBit(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, global3.x, 52200u), vec3<u32>(global2.a.x, var_0.x, global2.c.x)), vec3<u32>(u_input.a.x, global3.x, 61228u) & (vec3<u32>(3714u, u_input.a.x, var_0.x) | vec3<u32>(0u, 22956u, global2.c.x)), firstTrailingBit(global2.c) & countOneBits(u_input.a.xxz))), _wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -1i, _wgslsmith_sub_i32(abs(arg_0), _wgslsmith_div_i32(12825i, arg_2))), vec2<i32>(arg_2, 2147483647i)));
    var var_2 = ~(-(~(select(global4.zzw, global4.zwx, true) ^ -vec3<i32>(44660i, arg_2, arg_0))));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, -1892f, 261f))) * vec3<f32>(global1.x, global1.x, global1.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-381f, global1.x, 1189f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-127f, 1000f, global1.x))), false))));
    var var_3 = var_1.d.x;
    return Struct_1(_wgslsmith_add_vec2_u32(firstTrailingBit(select(~vec2<u32>(u_input.a.x, var_0.x), ~vec2<u32>(0u, 0u), vec2<bool>(true, true))), ~(~(~u_input.a.yx))), vec4<i32>(select(~arg_1, reverseBits(global2.d.x), true), func_2(36596u, 29559u), 2147483647i, 0i), vec3<u32>(_wgslsmith_add_u32(18500u, 0u), global3.x, ~(~func_3(Struct_2(Struct_1(vec2<u32>(4294967295u, 71256u), vec4<i32>(var_1.d.x, arg_0, var_1.d.x, 1i), global2.c, vec2<i32>(-15591i, -20166i)))))), global4.yw);
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_add_vec2_i32(-_wgslsmith_clamp_vec2_i32(arg_0.b.zy, global2.d, vec2<i32>(global2.b.x, global2.b.x)), vec2<i32>(_wgslsmith_sub_i32(arg_0.d.x, ~(-1i)), global4.x)) << (select(firstLeadingBit(select(firstTrailingBit(vec2<u32>(global3.x, 87919u)), _wgslsmith_sub_vec2_u32(global2.a, global2.c.xz), true)), arg_0.a, any(select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, true)))) % vec2<u32>(32u));
    global2 = arg_0;
    let var_1 = arg_0;
    let var_2 = -26788i;
    var var_3 = firstLeadingBit(~(global3.x << (var_1.c.x % 32u)));
    return Struct_2(Struct_1(_wgslsmith_add_vec2_u32(~(u_input.a.wy << (vec2<u32>(36621u, 108331u) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(~vec2<u32>(var_1.a.x, global2.c.x), vec2<u32>(var_1.c.x, var_1.c.x) & vec2<u32>(4294967295u, 12075u))), ~(vec4<i32>(var_0.x, 13612i, -17015i, global2.d.x) >> (u_input.a % vec4<u32>(32u))), ~u_input.a.yxx, var_0));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = Struct_2(func_4(arg_0).a);
    var var_1 = func_4(var_0.a);
    var var_2 = -399f;
    let var_3 = arg_1;
    var var_4 = _wgslsmith_dot_vec4_i32(reverseBits(-reverseBits(func_4(Struct_1(u_input.a.wx, var_1.a.b, vec3<u32>(global3.x, var_3.a.c.x, 66247u), vec2<i32>(var_0.a.d.x, 693i))).a.b)), _wgslsmith_mult_vec4_i32(countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(global4.x, arg_0.d.x, 1i, -77511i), arg_2.b)) ^ vec4<i32>(-2147483647i, ~var_1.a.b.x, ~arg_2.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.b.x, 2147483647i, var_3.a.d.x), vec3<i32>(59861i, 45961i, -9981i))), countOneBits(_wgslsmith_mult_vec4_i32(abs(arg_0.b), abs(arg_1.a.b)))));
    return var_3.a.c.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global4.wy;
    let var_1 = global3.zz;
    var var_2 = Struct_1(abs(countOneBits(~u_input.a.zw)) << (func_5(Struct_1(global2.c.yz ^ u_input.a.zw, ~global2.b, countOneBits(vec3<u32>(var_1.x, var_1.x, 62487u)), global4.xy), func_4(func_1(global2.b.x, 16776i, var_0.x)), func_1(firstTrailingBit(var_0.x), _wgslsmith_mod_i32(global4.x, var_0.x), _wgslsmith_div_i32(-30264i, global4.x))) % vec2<u32>(32u)), vec4<i32>(_wgslsmith_add_i32(global4.x, global2.b.x), 6611i, 20241i, abs(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, var_0.x), vec2<i32>(37412i, -31823i)))), vec3<u32>(min(86320u, firstTrailingBit(select(global2.c.x, 58348u, true))), 4294967295u, _wgslsmith_mult_u32((21444u ^ global2.a.x) | 48086u, _wgslsmith_sub_u32(~24771u, _wgslsmith_add_u32(0u, 64683u)))), global2.d);
    global3 = _wgslsmith_mod_vec3_u32(_wgslsmith_sub_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a.x, 4294967295u, global2.c.x), vec3<u32>(68309u, 6881u, 0u), u_input.a.zyz)), global2.c), ~u_input.a.yxx);
    let var_3 = func_4(func_1(var_0.x >> (firstTrailingBit(var_1.x ^ 51238u) % 32u), 1i, -4830i));
    let var_4 = abs(vec2<u32>(~(~31114u), 1u)) & _wgslsmith_sub_vec2_u32((abs(global2.a) >> (var_2.a % vec2<u32>(32u))) >> (vec2<u32>(u_input.a.x, 1u) % vec2<u32>(32u)), u_input.a.wz);
    var_2 = var_3.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-614f * _wgslsmith_f_op_f32(step(-1000f, -101f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-global1.x)), -1000f, _wgslsmith_f_op_f32(global1.x - 451f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(abs(-1262f)), _wgslsmith_f_op_f32(1000f * -1514f), -1083f, _wgslsmith_f_op_f32(max(global1.x, 1022f))), vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(trunc(-1146f)), _wgslsmith_f_op_f32(global1.x * 521f)))))), _wgslsmith_f_op_f32(411f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-133f - global1.x), _wgslsmith_f_op_f32(step(global1.x, -250f))))), -627f);
}

