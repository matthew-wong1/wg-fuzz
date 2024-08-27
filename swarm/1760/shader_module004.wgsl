struct Struct_1 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: bool,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<i32, 7> = array<i32, 7>(2219i, -34739i, 1i, 1i, 1i, 1i, i32(-2147483648));

var<private> global2: vec4<f32> = vec4<f32>(1871f, -553f, -1024f, -367f);

var<private> global3: array<f32, 20>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 7>();
    var var_0 = u_input.c;
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_1 = vec4<bool>(!(!all(select(vec2<bool>(true, true), vec2<bool>(true, true), true))), true, false, false);
    return global0[_wgslsmith_index_u32(~(~u_input.b.x) << (u_input.c % 32u), 12u)];
}

fn func_3(arg_0: Struct_1) -> vec3<f32> {
    global1 = array<i32, 7>();
    global3 = array<f32, 20>();
    let var_0 = !(!any(!vec2<bool>(arg_0.c, arg_0.c)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(select(global2.wxz, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(4294967295u, 20u)], -1000f, global2.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.wyw + vec3<f32>(global3[_wgslsmith_index_u32(0u, 20u)], global2.x, -633f)))), select(vec3<bool>(false, true, false), select(vec3<bool>(false, arg_0.c, arg_0.d.x), vec3<bool>(true, arg_0.d.x, var_0), vec3<bool>(true, true, arg_0.c)), true))), vec3<bool>(!(!var_0), var_0, all(arg_0.d)))), Struct_1(vec4<i32>(select(-20123i, arg_0.a.x, var_0), arg_0.a.x, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.b.yzz, arg_0.e.zwy), 7u)], -global1[_wgslsmith_index_u32(18564u, 7u)]) >> (~firstTrailingBit(u_input.b) % vec4<u32>(32u)), ~((arg_0.e >> (u_input.b % vec4<u32>(32u))) | ~arg_0.b), false, select(!(!vec2<bool>(arg_0.d.x, arg_0.d.x)), arg_0.d, arg_0.c), firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0.e.x, u_input.b.x, u_input.b.x, u_input.b.x), vec4<u32>(4294967295u, 16664u, arg_0.e.x, u_input.b.x) | u_input.b))), vec4<i32>(~(~u_input.a.x), -1i, -abs(u_input.a.x), ~u_input.a.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3[_wgslsmith_index_u32(countOneBits(0u), 20u)], _wgslsmith_f_op_f32(-215f + 1000f), _wgslsmith_f_op_f32(ceil(643f)), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, -652f, -1212f))))))));
    var var_2 = (-2147483647i << (arg_0.b.x % 32u)) < -2147483647i;
    return _wgslsmith_f_op_vec3_f32(-var_1.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: Struct_2) -> Struct_1 {
    global2 = _wgslsmith_div_vec4_f32(arg_3.d, arg_0.d);
    global0 = array<Struct_2, 12>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_0.b))))))));
    let var_1 = -(arg_3.c << (arg_1.b % vec4<u32>(32u)));
    var var_2 = Struct_2(vec3<f32>(-373f, -1894f, var_0.x), arg_0.b, _wgslsmith_add_vec4_i32(firstLeadingBit(~vec4<i32>(54285i, arg_0.b.a.x, arg_3.c.x, -6659i)) & _wgslsmith_mult_vec4_i32(-arg_1.a, vec4<i32>(-33081i, u_input.a.x, var_1.x, 10113i)), ~reverseBits(~vec4<i32>(arg_1.a.x, arg_0.b.a.x, arg_1.a.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(arg_0.d + arg_0.d));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> vec3<i32> {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 20u)]), _wgslsmith_f_op_f32(1563f + 450f), _wgslsmith_f_op_f32(max(1259f, 784f)), _wgslsmith_f_op_vec3_f32(func_3(arg_0)).x), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3[_wgslsmith_index_u32(arg_0.b.x, 20u)], 1000f, global3[_wgslsmith_index_u32(14443u, 20u)], -300f))))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(61806u, 20u)] + global3[_wgslsmith_index_u32(arg_0.e.x, 20u)]), -506f, true)))), -1572f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(56075u, 20u)] - global3[_wgslsmith_index_u32(u_input.c, 20u)]), _wgslsmith_f_op_f32(-global2.x), false)), _wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(reverseBits(345u), 20u)]))), _wgslsmith_f_op_f32(-896f - -566f)));
    var var_0 = !vec3<bool>(arg_0.d.x, arg_0.d.x, func_1().b.c);
    let var_1 = global2.x;
    global1 = array<i32, 7>();
    var var_2 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_1 ^ u_input.a.x, ~global1[_wgslsmith_index_u32(1u, 7u)], _wgslsmith_add_i32(-2147483647i, 1i), min(u_input.a.x, arg_1)) | _wgslsmith_div_vec4_i32(arg_0.a, vec4<i32>(arg_0.a.x, global1[_wgslsmith_index_u32(1u, 7u)], 80220i, u_input.a.x)), arg_0.a), u_input.b, false, func_1().b.d, arg_0.e);
    return vec3<i32>(-abs(_wgslsmith_add_i32(-19829i, global1[_wgslsmith_index_u32(arg_0.e.x, 7u)])), ~_wgslsmith_sub_i32(max(abs(u_input.a.x), var_2.a.x << (7992u % 32u)), global1[_wgslsmith_index_u32(arg_0.e.x, 7u)]), 19213i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(63113u, ~0u >> (0u % 32u), reverseBits(u_input.b.x));
    var var_1 = var_0.x;
    let var_2 = -1000f;
    let var_3 = global0[_wgslsmith_index_u32(reverseBits(countOneBits(~_wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.xyy, u_input.b.zyy)))), 12u)];
    var_0 = firstTrailingBit(var_3.b.b.zzx);
    let x = u_input.a;
    s_output = StorageBuffer(func_4(func_2(func_1(), var_3.b, select(select(vec3<bool>(true, true, true), vec3<bool>(true, var_3.b.c, var_3.b.d.x), var_3.b.c), vec3<bool>(false, var_3.b.d.x, true), select(vec3<bool>(var_3.b.d.x, false, false), vec3<bool>(var_3.b.c, false, true), var_3.b.c)), global0[_wgslsmith_index_u32(var_0.x, 12u)]), -(var_3.c.x << ((u_input.b.x & 20506u) % 32u))), -12960i, abs(var_3.b.b.zyy), ~countOneBits(var_3.b.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global2.x), -205f, _wgslsmith_f_op_f32(ceil(global2.x)), global3[_wgslsmith_index_u32(~38704u, 20u)]) - var_3.d) - vec4<f32>(-1338f, var_3.a.x, -462f, _wgslsmith_f_op_f32(step(var_3.a.x, _wgslsmith_f_op_f32(-global2.x))))));
}

