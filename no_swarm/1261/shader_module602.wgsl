struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
    c: vec4<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1853i, vec2<u32>(0u, 1u), vec4<f32>(848f, 1088f, -263f, 1378f), Struct_1(8604i), Struct_1(i32(-2147483648)));

var<private> global1: array<bool, 30> = array<bool, 30>(false, false, false, true, true, true, false, false, true, true, true, true, true, false, true, true, false, true, false, false, true, true, true, true, false, false, true, false, true, true);

var<private> global2: array<Struct_2, 14>;

var<private> global3: vec2<f32>;

var<private> global4: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec3<bool>) -> vec3<bool> {
    global4 = _wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_div_i32(-(arg_1.a & arg_1.a), 11413i)), -1i >> (global0.b.x % 32u));
    global0 = global2[_wgslsmith_index_u32(22667u, 14u)];
    var var_0 = vec3<u32>(global0.b.x, ~global0.b.x, u_input.c);
    var_0 = ~vec3<u32>(1u, ~_wgslsmith_div_u32(global0.b.x, firstTrailingBit(global0.b.x)), reverseBits(0u));
    var var_1 = select(global1[_wgslsmith_index_u32(var_0.x, 30u)], global1[_wgslsmith_index_u32(~1u >> (var_0.x % 32u), 30u)], false);
    return !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], true, select(arg_0, all(select(vec4<bool>(true, false, true, arg_2.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], false, arg_0, true), global1[_wgslsmith_index_u32(var_0.x, 30u)])), false));
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> bool {
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.wx * vec2<f32>(-1416f, arg_0.b.c.x)))))));
    var var_0 = vec3<i32>(select(-min(~(-8595i), 1i), -arg_0.c >> (_wgslsmith_mult_u32(0u, 83622u) % 32u), all(func_3(false, arg_0.b.e, vec3<bool>(global1[_wgslsmith_index_u32(57465u, 30u)], global1[_wgslsmith_index_u32(arg_0.b.b.x, 30u)], true)))), global0.e.a, arg_1);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-594f, 1605f) * _wgslsmith_div_f32(arg_0.b.c.x, _wgslsmith_f_op_f32(arg_0.b.c.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-424f, 253f)) * _wgslsmith_f_op_f32(abs(global3.x))))));
    var var_2 = Struct_3(select(_wgslsmith_mod_i32(min(-1i, _wgslsmith_div_i32(var_0.x, global0.d.a)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.zz, var_0.zz), var_0.x, 2065i)), ~arg_1, global1[_wgslsmith_index_u32(~arg_0.b.b.x, 30u)]), Struct_2(_wgslsmith_mult_i32(25259i, arg_1), ~vec2<u32>(global0.b.x, ~arg_0.b.b.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.c)), Struct_1(var_0.x), Struct_1(1i ^ ~arg_0.c)), reverseBits(_wgslsmith_sub_i32(u_input.b.x, var_0.x)));
    let var_3 = global1[_wgslsmith_index_u32(select(_wgslsmith_div_u32(min((global0.b.x | 0u) >> ((4294967295u & global0.b.x) % 32u), ~global0.b.x), arg_0.b.b.x), _wgslsmith_dot_vec3_u32(countOneBits(~vec3<u32>(1u, 4294967295u, arg_0.b.b.x) & (vec3<u32>(arg_0.b.b.x, 155448u, 4294967295u) | vec3<u32>(var_2.b.b.x, 6471u, global0.b.x))), vec3<u32>(4294967295u >> ((global0.b.x >> (23553u % 32u)) % 32u), ~(~31617u), _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, global0.b.x), global0.b))), true | any(select(vec4<bool>(global1[_wgslsmith_index_u32(34866u, 30u)], false, false, global1[_wgslsmith_index_u32(u_input.c, 30u)]), !vec4<bool>(global1[_wgslsmith_index_u32(var_2.b.b.x, 30u)], false, false, global1[_wgslsmith_index_u32(arg_0.b.b.x, 30u)]), !vec4<bool>(global1[_wgslsmith_index_u32(107542u, 30u)], global1[_wgslsmith_index_u32(4294967295u, 30u)], true, true)))), 30u)];
    return global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(abs((vec3<u32>(var_2.b.b.x, 1u, global0.b.x) | vec3<u32>(arg_0.b.b.x, global0.b.x, 4294967295u)) | select(vec3<u32>(var_2.b.b.x, 48776u, 0u), vec3<u32>(0u, u_input.c, arg_0.b.b.x), vec3<bool>(true, false, global1[_wgslsmith_index_u32(30104u, 30u)]))), abs(vec3<u32>(4294967295u, 0u, 4294967295u)) | ~vec3<u32>(11528u, 1u, var_2.b.b.x)), ~(~(~4294967295u)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.b.b.x, ~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, 50438u), vec2<u32>(993u, u_input.a)), 30433u), var_2.b.b.x), 30u)]), 30u)];
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_1) -> u32 {
    let var_0 = any(select(vec2<bool>(!global1[_wgslsmith_index_u32(global0.b.x, 30u)], false), vec2<bool>(global1[_wgslsmith_index_u32(0u, 30u)], true), !vec2<bool>(func_2(Struct_3(21541i, global2[_wgslsmith_index_u32(arg_0.x, 14u)], u_input.b.x), -54821i), global1[_wgslsmith_index_u32(1u, 30u)])));
    let var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, _wgslsmith_f_op_f32(sign(-192f))) + global0.c.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global3.x, global3.x)), _wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(step(global0.c.x, -741f))))))));
    let var_2 = global0.e;
    let var_3 = vec3<i32>(max(_wgslsmith_clamp_i32(abs(~u_input.b.x), firstLeadingBit(21528i) ^ var_2.a, _wgslsmith_sub_i32(arg_1.a ^ -14519i, -2147483647i ^ arg_1.a)), _wgslsmith_div_i32(-2147483647i, (18104i << (0u % 32u)) >> (~4294967295u % 32u))), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(10127i, global0.a)), ~u_input.b.yy), -u_input.b.zx >> (global0.b % vec2<u32>(32u))) | (~global0.d.a >> (global0.b.x % 32u)), _wgslsmith_sub_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(23943i, 2147483647i, 67426i), -vec3<i32>(25215i, -8668i, arg_1.a)), u_input.b.x));
    let var_4 = firstTrailingBit(vec4<i32>(arg_1.a, var_2.a, select(-2147483647i, var_2.a, arg_0.x == 18916u), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_1.a, ~(-2147483647i)), ~(vec3<i32>(var_3.x, var_3.x, arg_1.a) << (arg_0 % vec3<u32>(32u))))));
    return ~(~global0.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global2[_wgslsmith_index_u32(min(82912u, ~_wgslsmith_div_u32(4294967295u, ~44579u) | ~func_1(vec3<u32>(u_input.a, u_input.c, global0.b.x) | vec3<u32>(u_input.c, u_input.c, global0.b.x), global0.d)), 14u)];
    global3 = global0.c.zz;
    global0 = global2[_wgslsmith_index_u32(34759u, 14u)];
    var var_0 = !global1[_wgslsmith_index_u32(~41699u, 30u)];
    var var_1 = Struct_3(~min(1i, -17768i), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~1u, _wgslsmith_div_u32(max(4294967295u, 1576u), firstLeadingBit(1u))) << (_wgslsmith_dot_vec2_u32(select(~global0.b, vec2<u32>(u_input.c, u_input.a), !vec2<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 30u)])), ~(~vec2<u32>(1u, 0u))) % 32u), 14u)], -31532i);
    global0 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(~41041u, var_1.b.c.x, global0.c.zw, reverseBits(countOneBits(vec3<u32>(_wgslsmith_mult_u32(4294967295u, global0.b.x), ~u_input.a, ~1u))));
}

