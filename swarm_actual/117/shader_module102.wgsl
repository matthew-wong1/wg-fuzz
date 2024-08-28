struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec3<i32>;

var<private> global2: array<vec2<bool>, 13>;

var<private> global3: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(2147483647i, 1i, -10121i, 0i), vec4<i32>(1i, 1i, 18599i, -1i), vec4<i32>(i32(-2147483648), -12302i, i32(-2147483648), -4307i));

var<private> global4: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(667f, -104f))))))), _wgslsmith_sub_i32(~global1.x, _wgslsmith_add_i32(u_input.a.x, abs(-2147483647i))), global0.x);
    global3 = array<vec4<i32>, 3>();
    let var_1 = false;
    let var_2 = _wgslsmith_f_op_f32(-var_0.a.x);
    return countOneBits(~abs(_wgslsmith_div_vec3_u32(min(vec3<u32>(0u, global0.x, global0.x), vec3<u32>(39968u, var_0.c, global0.x)), vec3<u32>(var_0.c, 4294967295u, global0.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>) -> f32 {
    global4 = true;
    global0 = ~((func_3() ^ ~vec3<u32>(4294967295u, global0.x, global0.x)) << (select(~(~vec3<u32>(global0.x, global0.x, global0.x)), reverseBits(vec3<u32>(45795u, 0u, global0.x) << (vec3<u32>(arg_0.c, global0.x, arg_0.c) % vec3<u32>(32u))), arg_1.zww) % vec3<u32>(32u)));
    global0 = vec3<u32>(0u & ~arg_0.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, arg_0.c, arg_0.c, 13097u), min(vec4<u32>(38194u, arg_0.c, 76786u, 0u), vec4<u32>(arg_0.c, global0.x, arg_0.c, 1u)) ^ ~vec4<u32>(4294967295u, global0.x, 0u, global0.x)), abs(vec4<u32>(~arg_0.c, 1u, ~39619u, ~arg_0.c))), select(abs(~(global0.x >> (arg_0.c % 32u))), ~global0.x, any(!vec3<bool>(false, arg_1.x, false))));
    global0 = _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(arg_0.c, arg_0.c), firstTrailingBit(10887u), ~1u), ~(~vec3<u32>(30021u, 1u, 3909u)), select(vec3<u32>(arg_0.c, 0u, 0u), vec3<u32>(global0.x, 1u, arg_0.c) & vec3<u32>(3160u, 51449u, 1u), arg_1.x)), vec3<u32>(_wgslsmith_clamp_u32(arg_0.c, 1u, arg_0.c), ~(~1u), firstTrailingBit(arg_0.c << (0u % 32u)))) ^ abs(~vec3<u32>(arg_0.c, ~arg_0.c, global0.x));
    global4 = true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.x)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_1 {
    let var_0 = -251f;
    var var_1 = vec3<bool>(arg_1, false, arg_1);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-arg_2.a)))) - vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(var_0)), _wgslsmith_f_op_f32(var_0 - arg_2.a.x))))));
    var var_3 = abs(func_3().zz);
    let var_4 = abs(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(countOneBits(var_3.x), firstLeadingBit(4294967295u), arg_2.c, firstLeadingBit(global0.x)), vec4<u32>(_wgslsmith_add_u32(19481u, 774u), reverseBits(2867u), select(arg_2.c, 0u, true), _wgslsmith_mult_u32(global0.x, 22601u)))));
    return arg_2;
}

fn func_5(arg_0: Struct_1) -> f32 {
    var var_0 = arg_0;
    var_0 = func_4(var_0.a.x, true, Struct_1(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -448f)), any(global2[_wgslsmith_index_u32(26032u, 13u)]), func_4(-501f, global0.x < 4294967295u, Struct_1(arg_0.a, 0i, 45157u), vec2<u32>(var_0.c, var_0.c)), select(vec2<u32>(arg_0.c, arg_0.c) << (global0.yy % vec2<u32>(32u)), vec2<u32>(13102u, var_0.c), select(global2[_wgslsmith_index_u32(var_0.c, 13u)], vec2<bool>(true, false), true))).a, arg_0.b, ~global0.x), _wgslsmith_sub_vec2_u32(global0.yx, global0.yz & ~_wgslsmith_sub_vec2_u32(global0.zz, vec2<u32>(var_0.c, 0u))));
    let var_1 = arg_0;
    var var_2 = vec2<u32>(arg_0.c, _wgslsmith_mod_u32(~_wgslsmith_div_u32(1u, var_1.c), 17398u) | abs(1u));
    global3 = array<vec4<i32>, 3>();
    return _wgslsmith_f_op_f32(ceil(-674f));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> u32 {
    global3 = array<vec4<i32>, 3>();
    let var_0 = -66159i;
    var var_1 = vec2<bool>(true, _wgslsmith_f_op_f32(func_5(func_4(_wgslsmith_f_op_f32(func_2(arg_1, vec4<bool>(false, false, false, false))), true, arg_1, global0.xx))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), 1101f))));
    global4 = !all(global2[_wgslsmith_index_u32(~58705u, 13u)]);
    let var_2 = 4294967295u;
    return ~abs(arg_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.a.x, i32(-1i) * -global1.x);
    global4 = false;
    var var_1 = vec3<u32>(abs(_wgslsmith_dot_vec3_u32(~(vec3<u32>(1u, 4294967295u, global0.x) | vec3<u32>(1u, global0.x, 40462u)), ~vec3<u32>(1u, 0u, 66441u) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 1u, 4294967295u), vec3<u32>(59311u, 4294967295u, 0u)))), _wgslsmith_dot_vec3_u32(vec3<u32>(~0u, func_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1578f, -932f), vec2<f32>(-364f, 612f), false)), Struct_1(vec2<f32>(-924f, -479f), u_input.a.x, global0.x), 32714u, Struct_1(vec2<f32>(-306f, -1462f), global1.x, global0.x)), global0.x >> ((14892u << (global0.x % 32u)) % 32u)), min(vec3<u32>(reverseBits(94731u), global0.x, 20458u), select(vec3<u32>(global0.x, global0.x, global0.x), abs(vec3<u32>(18049u, 1u, 28292u)), false))), 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(max(628f, 164f));
    global0 = _wgslsmith_mod_vec3_u32(~countOneBits(vec3<u32>(var_1.x, ~35806u, global0.x)), vec3<u32>(66150u, _wgslsmith_clamp_u32(var_1.x, global0.x, firstTrailingBit(var_1.x)) | ~(~1u), ~global0.x));
    var var_3 = _wgslsmith_f_op_f32(1548f * 321f);
    var var_4 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(979f, -2049f) * vec2<f32>(-627f, 482f)), vec2<f32>(-569f, 221f), true)), vec2<f32>(_wgslsmith_f_op_f32(max(208f, 1078f)), _wgslsmith_f_op_f32(-815f * -128f))))), -1i, func_4(-1010f, true, func_4(_wgslsmith_f_op_f32(max(-1415f, 1433f)), any(vec2<bool>(true, true)), func_4(631f, false, Struct_1(vec2<f32>(-418f, -1691f), -2147483647i, 0u), vec2<u32>(var_1.x, 1u)), ~global0.zx), vec2<u32>(18335u >> (0u % 32u), firstTrailingBit(var_1.x))).c & ~var_1.x);
    var_4 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x)) - var_4.a.x)), all(!vec3<bool>(select(true, true, true), var_0.x >= u_input.a.x, any(vec2<bool>(false, false)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(var_4.a, var_4.a, true)), 2147483647i, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.c, 0u) | firstLeadingBit(global0.zy), global0.xy)), global0.zx);
    var var_5 = false;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_4.a.x + _wgslsmith_f_op_f32(func_2(Struct_1(_wgslsmith_f_op_vec2_f32(-var_4.a), 26316i, global0.x), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-518f, 165f, -113f, 283f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.a.x, -1734f, var_4.a.x, 388f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_4.a.x, var_4.a.x, var_4.a.x, var_4.a.x))) + vec4<f32>(-1717f, var_4.a.x, var_4.a.x, 992f)))), vec4<i32>(_wgslsmith_mult_i32(func_4(253f, false, Struct_1(var_4.a, -2147483647i, global0.x), global0.zz).b, var_4.b) ^ (i32(-1i) * -u_input.a.x), u_input.a.x, 25317i, ~max(-global1.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, global1.x, global1.x), u_input.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.a.x) * var_4.a.x), _wgslsmith_f_op_f32(var_4.a.x + var_4.a.x), -249f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(399f + -2375f)))), select(func_4(var_4.a.x, any(vec4<bool>(true, true, true, true)), func_4(-1000f, true, func_4(var_4.a.x, true, Struct_1(vec2<f32>(var_4.a.x, -1279f), var_0.x, var_1.x), global0.yy), vec2<u32>(var_1.x, var_1.x)), vec2<u32>(_wgslsmith_div_u32(4294967295u, 4294967295u), 53471u)).b, abs(-24713i), (var_4.c | ~1u) < _wgslsmith_div_u32(abs(global0.x), ~4294967295u)));
}

