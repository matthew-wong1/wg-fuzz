struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: vec3<i32> = vec3<i32>(1i, -12697i, 2147483647i);

var<private> global1: i32 = 2147483647i;

var<private> global2: array<f32, 15> = array<f32, 15>(353f, 1620f, 333f, -159f, 1000f, 854f, -1216f, -495f, 1024f, 542f, 808f, -975f, -906f, 1418f, 333f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(~(~_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, 9340u, u_input.b.x), max(u_input.b.yxz, u_input.b.xxx))), 1026f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-480f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-629f, global2[_wgslsmith_index_u32(1u, 15u)])))), 20467i, u_input.b);
    let var_1 = Struct_1(u_input.b.yxx | _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.b.x, 1u, 1u), ~vec3<u32>(1u, 1u, 1u)), var_0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(214f, -1891f))))), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 4507i, global0.x, ~1i), _wgslsmith_div_vec4_i32(vec4<i32>(countOneBits(global0.x), u_input.a.x, _wgslsmith_div_i32(1i, -11913i), 2878i), countOneBits(~vec4<i32>(var_0.d, -1i, 2147483647i, -30126i)))), _wgslsmith_div_vec4_u32(var_0.e, vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 1u), var_0.a), ~_wgslsmith_div_u32(17649u, 4294967295u), u_input.b.x, 34982u)));
    var var_2 = 0i;
    var var_3 = var_1;
    var var_4 = i32(-1i) * -1i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_1.b, 1f))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<bool>, arg_3: i32) -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(~3158u, arg_0.e.x, ~109182u), abs(~vec3<u32>(19537u, 61160u, u_input.b.x))), global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b.x << ((4294967295u & u_input.b.x) % 32u), 37265u), 15u)], _wgslsmith_f_op_f32(func_3()), arg_0.d, u_input.b);
    let var_1 = Struct_1(abs(vec3<u32>(~var_0.e.x, ~(~1u), ~_wgslsmith_add_u32(u_input.b.x, 1u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-159f - _wgslsmith_f_op_f32(f32(-1f) * -1262f)) + arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), ~abs(-2147483647i), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(7195u, 10295u, u_input.b.x >> (1u % 32u), 1u), min(min(var_0.e, arg_0.e), u_input.b), min(_wgslsmith_add_vec4_u32(arg_0.e, vec4<u32>(0u, 0u, u_input.b.x, u_input.b.x)), arg_0.e)));
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b, var_0.b, var_1.c, 473f))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-555f, var_0.b, global2[_wgslsmith_index_u32(68280u, 15u)], -655f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, arg_0.c, -730f, var_0.c)), select(vec4<bool>(true, false, arg_2.x, false), vec4<bool>(true, true, arg_2.x, false), arg_2.x)))))));
    let var_3 = u_input.b.x;
    let var_4 = Struct_1(~(vec3<u32>(~var_0.e.x, var_3, ~u_input.b.x) | _wgslsmith_add_vec3_u32(var_1.e.wxw, vec3<u32>(0u, var_1.a.x, 4294967295u))), _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(reverseBits(65027u | var_0.a.x), 15u)] + -1048f)), global2[_wgslsmith_index_u32(4294967295u, 15u)], arg_0.d, vec4<u32>(abs(~0u), var_1.e.x >> (_wgslsmith_dot_vec3_u32(arg_0.a, vec3<u32>(8750u, var_0.e.x, 4294967295u)) % 32u), arg_0.e.x, ~1u) & ~select(~arg_0.e, u_input.b, all(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x))));
    return u_input.a ^ u_input.a;
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<f32, 15>();
    global0 = vec3<i32>(_wgslsmith_div_i32(u_input.c, firstLeadingBit(i32(-1i) * -global0.x)), _wgslsmith_mod_i32(2147483647i >> (_wgslsmith_sub_u32(arg_0, 6651u) % 32u), _wgslsmith_dot_vec3_i32(func_2(Struct_1(u_input.b.zyy, -164f, global2[_wgslsmith_index_u32(arg_0, 15u)], u_input.c, vec4<u32>(4294967295u, arg_0, u_input.b.x, arg_0)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(u_input.b.x, 15u)], global2[_wgslsmith_index_u32(26388u, 15u)]) - vec3<f32>(global2[_wgslsmith_index_u32(16564u, 15u)], 1539f, 751f)), vec2<bool>(true, true), ~(-1i)), vec3<i32>(u_input.a.x, firstTrailingBit(global0.x), _wgslsmith_clamp_i32(global0.x, global0.x, 2800i)))), ~(~reverseBits(u_input.c << (5370u % 32u))));
    global1 = u_input.c;
    let var_0 = 4946i;
    global0 = vec3<i32>(reverseBits(select(1i, i32(-1i) * -1i, true)), countOneBits(u_input.a.x), -_wgslsmith_mult_i32(var_0, var_0));
    return Struct_1(u_input.b.zwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(firstLeadingBit(16388u), 15u)])) - global2[_wgslsmith_index_u32(~22803u, 15u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(63019u, 15u)]))), -283f)), -_wgslsmith_mult_i32(global0.x, -21777i), firstTrailingBit(vec4<u32>(arg_0, _wgslsmith_sub_u32(u_input.b.x, firstTrailingBit(4294967295u)), ~arg_0, _wgslsmith_mod_u32(select(u_input.b.x, u_input.b.x, false), ~u_input.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 15>();
    global2 = array<f32, 15>();
    global1 = global0.x;
    let var_0 = func_1(countOneBits(~(~u_input.b.x >> (min(u_input.b.x, u_input.b.x) % 32u))));
    global2 = array<f32, 15>();
    global1 = ~_wgslsmith_mod_i32(~u_input.a.x, var_0.d >> (_wgslsmith_div_u32(u_input.b.x, ~u_input.b.x) % 32u));
    global2 = array<f32, 15>();
    global2 = array<f32, 15>();
    let var_1 = var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(max(53945i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(7092i, u_input.c), u_input.c), abs(u_input.a) >> ((var_0.e.zyx >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) % vec3<u32>(32u)))));
}

