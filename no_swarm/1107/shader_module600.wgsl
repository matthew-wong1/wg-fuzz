struct Struct_1 {
    a: f32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: vec3<f32> = vec3<f32>(1196f, -551f, -1241f);

var<private> global2: u32 = 7653u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> f32 {
    var var_0 = vec2<bool>(true, false);
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(15978i, arg_0, -21545i, 8781i), -abs(firstLeadingBit(vec4<i32>(1i, -76510i, -49221i, arg_0)))) & abs(vec4<i32>(-8821i, ~arg_0, ~(~arg_0), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0, arg_0, arg_0), vec3<i32>(0i, -7000i, arg_0))));
    var var_2 = -141f;
    let var_3 = _wgslsmith_div_vec2_i32(var_1.zx, -var_1.wz << (~firstTrailingBit(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 16898u), vec2<bool>(false, true))) % vec2<u32>(32u)));
    let var_4 = vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(16960u, ~u_input.a, ~u_input.a, ~2180u), vec4<u32>(u_input.a & 7452u, u_input.a, ~0u, reverseBits(12260u))) ^ _wgslsmith_div_u32(1u, 2701u), abs(103839u));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-2113f, _wgslsmith_div_f32(global1.x, -802f)), -1000f, true || (true || var_0.x))), -1342f))));
}

fn func_2(arg_0: u32, arg_1: i32) -> f32 {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), 1736f, _wgslsmith_div_f32(-605f, global1.x));
    let var_0 = Struct_3(Struct_1(318f, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.x)) - _wgslsmith_f_op_f32(f32(-1f) * -608f))), _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(func_3(-arg_1)))), Struct_2(arg_0, arg_1, ~vec2<u32>(4294967295u, _wgslsmith_div_u32(u_input.a, arg_0)), vec3<u32>(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(187u, 0u, 0u)), vec3<u32>(arg_0, arg_0, 4294967295u) << (vec3<u32>(u_input.a, u_input.a, 4294967295u) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), max(vec2<u32>(4294967295u, arg_0), vec2<u32>(34667u, 39704u))), u_input.a)));
    global2 = ~countOneBits(_wgslsmith_div_u32(_wgslsmith_div_u32(min(0u, var_0.b.a), var_0.b.c.x), ~countOneBits(27497u)));
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.x * 620f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(-50642i ^ var_0.b.b)))), _wgslsmith_f_op_f32(ceil(var_0.a.b)), _wgslsmith_f_op_f32(-376f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -433f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_0.a.b, global0.x, var_0.a.c, -1135f))))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -928f), _wgslsmith_f_op_f32(f32(-1f) * -1624f), _wgslsmith_f_op_f32(global0.x * var_0.a.c), _wgslsmith_f_op_f32(step(var_0.a.c, var_0.a.a)))) - vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + -892f), 248f)));
    let var_1 = global0.x;
    return _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-var_0.a.a));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1213f, global1.x, 1452f, global1.x), vec4<f32>(global0.x, global0.x, global1.x, global0.x), vec4<bool>(false, true, false, true))) * vec4<f32>(272f, -997f, 486f, -120f)))) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(func_2(u_input.a, 22840i)), 1077f, _wgslsmith_f_op_f32(round(global0.x)))));
    var var_0 = abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(48087u, 0u)), vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 4294967295u) % vec2<u32>(32u))) ^ ~firstTrailingBit(vec2<u32>(u_input.a, 1u)), vec2<u32>(0u, ~0u)));
    let var_1 = Struct_2(~u_input.a, ~0i, vec2<u32>(1u, abs(var_0.x)), vec3<u32>(_wgslsmith_add_u32(0u, min(_wgslsmith_sub_u32(var_0.x, 28834u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, var_0.x, var_0.x), vec4<u32>(18689u, var_0.x, var_0.x, 1u)))), var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, abs(u_input.a)), vec2<u32>(u_input.a & 5907u, 27794u))));
    let var_2 = 2147483647i;
    var var_3 = Struct_2(~_wgslsmith_div_u32(var_0.x, 0u), -25213i, vec2<u32>(3967u, min(firstLeadingBit(var_1.d.x), reverseBits(var_1.c.x))), var_1.d << (var_1.d % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1412f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1156f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), global0.x);
}

fn func_4(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.yxx * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1284f, global1.x, global1.x)) + _wgslsmith_f_op_vec3_f32(global0.zzx * global0.zyx))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.x, -968f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(655f, global0.x, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1383f + _wgslsmith_f_op_f32(-1000f - 581f)) * _wgslsmith_f_op_f32(-global1.x))));
    var var_1 = max(countOneBits(~(~vec3<u32>(u_input.a, u_input.a, 4294967295u))) << (vec3<u32>(4294967295u, ~max(4294967295u, u_input.a), u_input.a) % vec3<u32>(32u)), ~(~select(vec3<u32>(0u, 27352u, u_input.a), vec3<u32>(u_input.a, 1u, 37844u), false)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_div_u32(100155u, u_input.a), u_input.a, u_input.a), vec3<u32>(u_input.a, ~u_input.a, ~u_input.a)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(~(-2980i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-316f + global0.x)) * arg_0.b), _wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(-global1.x)), global1.x);
    var var_2 = 21219u & abs(_wgslsmith_clamp_u32(u_input.a, min(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, u_input.a), vec4<u32>(32604u, 36794u, 0u, var_1.x)), 4980u), u_input.a));
    return vec4<bool>(select(!(all(vec3<bool>(true, true, true)) && true), true, 1u != u_input.a), true, !all(vec3<bool>(true, true, true)), ~(~firstLeadingBit(var_1.x)) > abs(_wgslsmith_mult_u32(u_input.a, var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !select(func_4(func_1()), vec4<bool>(select(true, true, false), all(vec3<bool>(true, true, true)), select(true, any(vec3<bool>(true, false, false)), true), true), !vec4<bool>(true, false, 1429f > global0.x, any(vec2<bool>(false, true))));
    let var_1 = func_1();
    let var_2 = func_1();
    var var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(0u, 25284u, var_0.x), ~4973i))), -682f, _wgslsmith_f_op_f32(1000f - -1000f)), Struct_2(54221u, _wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, -2147483647i, 29063i, 21689i) << (vec4<u32>(u_input.a, 0u, 0u, 1674u) % vec4<u32>(32u))) >> (abs(vec4<u32>(4294967295u, u_input.a, u_input.a, 14498u)) % vec4<u32>(32u)), max(vec4<i32>(1i, 1i, 1i, 1i), firstLeadingBit(vec4<i32>(-1i, -1i, 52465i, -51475i)))), vec2<u32>(1u, 1u), select(firstLeadingBit(abs(vec3<u32>(4253u, 0u, 45718u))), vec3<u32>(0u, ~u_input.a, _wgslsmith_div_u32(4294967295u, u_input.a)), all(!var_0.yz))));
    global2 = _wgslsmith_mult_u32(~u_input.a >> (var_3.b.c.x % 32u), 50439u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_3(1i | min(-11458i, var_3.b.b))))));
}

