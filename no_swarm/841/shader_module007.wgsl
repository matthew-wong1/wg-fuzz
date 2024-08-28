struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32> = vec4<f32>(-814f, -1553f, 134f, -964f);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> bool {
    global0 = arg_0;
    let var_0 = 21004i;
    global0 = arg_0;
    global1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-635f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1186f)))), 1823f, arg_0.b), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.b, 169f, global0.b, global1.x))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.b, -509f, 101f, 1118f), vec4<f32>(-1795f, global0.b, -1546f, 1072f), any(vec4<bool>(true, arg_0.a.x, false, false))))))), all(select(select(!arg_0.a, select(global0.a, global0.a, vec2<bool>(global0.a.x, global0.a.x)), true), !select(vec2<bool>(false, global0.a.x), arg_0.a, vec2<bool>(arg_0.a.x, false)), _wgslsmith_div_f32(-1103f, global1.x) >= global1.x))));
    let var_1 = vec2<i32>(var_0, firstTrailingBit(-(i32(-1i) * -1i)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global0.b, _wgslsmith_f_op_f32(f32(-1f) * -1476f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-903f - global0.b)))))) >= 2839f;
}

fn func_2(arg_0: u32) -> vec4<u32> {
    global1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_f32(-global1.x), -453f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, _wgslsmith_f_op_f32(round(536f)), 912f, global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-573f, 1637f, global1.x, global0.b) - vec4<f32>(1108f, 1000f, global0.b, -748f)) * vec4<f32>(1570f, 134f, -1000f, global1.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-784f, global1.x, global0.b, global1.x) + vec4<f32>(global0.b, global1.x, -464f, global1.x)))), !func_3(Struct_1(global0.a, 391f, global0.c), -10079i)))), func_3(Struct_1(vec2<bool>(global0.a.x, global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(161f + global0.b) + 378f), global0.c), 2147483647i >> (global0.c.x % 32u))));
    var var_0 = Struct_2(Struct_1(vec2<bool>(!global0.a.x & (false == global0.a.x), ~global0.c.x <= 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x + global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-390f + global0.b) * -1000f)), global0.c));
    global0 = var_0.a;
    global0 = var_0.a;
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, var_0.a.b, var_0.a.b, var_0.a.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.b, -1078f, global1.x, 1963f) - vec4<f32>(1000f, 1000f, 425f, var_0.a.b)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.x, global0.b, 1000f, var_0.a.b), vec4<f32>(1511f, 1323f, var_0.a.b, -168f))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, -782f, global0.b, var_0.a.b), vec4<f32>(-170f, -494f, 1096f, -976f))), select(vec4<bool>(true, true, global0.a.x, global0.a.x), vec4<bool>(var_0.a.a.x, true, true, true), vec4<bool>(true, global0.a.x, global0.a.x, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1384f, global1.x, var_0.a.b, global0.b))))));
    return ~vec4<u32>(firstLeadingBit(1u), u_input.a, ~(~_wgslsmith_add_u32(arg_0, 47308u)), 15738u);
}

fn func_1() -> vec4<f32> {
    global0 = Struct_1(global0.a, global1.x, vec4<u32>(21278u, _wgslsmith_sub_u32(u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(8772u, 4294967295u, global0.c.x), abs(global0.c.xzw))), ~1u, global0.c.x));
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1369f, _wgslsmith_f_op_f32(504f * global0.b), _wgslsmith_f_op_f32(select(global1.x, global0.b, false)), _wgslsmith_f_op_f32(-global1.x)) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1337f), _wgslsmith_div_f32(global0.b, global0.b), _wgslsmith_f_op_f32(f32(-1f) * -701f), _wgslsmith_div_f32(531f, global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, -1034f, -1800f, global1.x), vec4<f32>(-1017f, global1.x, global1.x, global0.b))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(771f, global1.x, global0.b, global0.b), vec4<f32>(global1.x, -179f, global0.b, 467f))))))));
    let var_0 = func_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 0u, global0.c.x) ^ abs(vec4<u32>(37770u, u_input.a, 106824u, global0.c.x)), max(global0.c, ~global0.c)), 6517u));
    global0 = Struct_1(vec2<bool>(~(~1i) < _wgslsmith_mult_i32(max(436i, 0i), select(0i, 2147483647i, false)), (min(1u, global0.c.x) >> (~global0.c.x % 32u)) > 1u), global1.x, _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4416u, global0.c.x, 1u, u_input.a), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, global0.c.x), var_0, var_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, 1u, 1600u), vec4<u32>(106290u, 4294967295u, 52604u, u_input.a)) | global0.c) << (var_0 % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - -499f) * -1000f), -143f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-664f * -1448f) * global1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~4294967295u;
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1()));
    var var_1 = Struct_3(Struct_1(!vec2<bool>(true, global0.a.x), _wgslsmith_f_op_f32(trunc(-2101f)), ~firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(global0.c.x, 4294967295u, 49649u, global0.c.x), vec4<u32>(3405u, 4294967295u, 1u, 31633u)))));
    let var_2 = countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, countOneBits(firstTrailingBit(14799i)), -50988i, ~(-12483i)), -(~(-vec4<i32>(15641i, -21514i, 43619i, 1i)))));
    let var_3 = Struct_2(Struct_1(!select(global0.a, select(vec2<bool>(global0.a.x, global0.a.x), var_1.a.a, global0.a), select(global0.a.x, true, false)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(150f, -474f)), ~(~_wgslsmith_sub_vec4_u32(var_1.a.c, vec4<u32>(4294967295u, 41609u, 4294967295u, 22572u)))));
    let var_4 = Struct_3(var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(-1i) * -max(vec2<i32>(2147483647i, 4850i), vec2<i32>(var_2, var_2))), _wgslsmith_div_vec3_u32(var_1.a.c.xxx, countOneBits(vec3<u32>(var_4.a.c.x, var_1.a.c.x, u_input.a)) >> (~global0.c.yzz % vec3<u32>(32u))), ~vec2<i32>(-var_2, ~0i), var_4.a.c.x);
}

