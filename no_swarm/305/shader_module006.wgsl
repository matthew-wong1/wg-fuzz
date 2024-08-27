struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec2<i32>,
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

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(0i), Struct_1(-62402i), Struct_1(-80027i), Struct_1(1i), Struct_1(-1i), Struct_1(23386i));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> vec2<i32> {
    let var_0 = vec3<f32>(_wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(arg_1)), _wgslsmith_f_op_f32(944f + arg_1))))), arg_1, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1000f, arg_1)))), -465f));
    let var_1 = 7311i;
    return vec2<i32>(arg_2.a.x, 80582i);
}

fn func_2() -> i32 {
    global0 = Struct_2(func_3(global0.a.x, -544f, Struct_2(vec2<i32>(max(-2147483647i, 21755i), 1i), select(!global0.b, !global0.b, global0.b.x))), vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(113f)), _wgslsmith_f_op_f32(426f * 116f))) == _wgslsmith_f_op_f32(-468f * 175f), any(global0.b.zzx), all(vec2<bool>(5899i >= u_input.b.x, global0.b.x)), false));
    global1 = array<Struct_1, 6>();
    var var_0 = firstTrailingBit(global0.a);
    let var_1 = abs(-(~max(global0.a.x | u_input.b.x, global0.a.x)));
    let var_2 = vec3<bool>(!all(select(vec2<bool>(global0.b.x, true), global0.b.yz, global0.b.yx)), global0.b.x, all(global0.b.xx));
    return _wgslsmith_dot_vec4_i32(-max(-abs(vec4<i32>(u_input.e.x, 0i, 1i, -30173i)), vec4<i32>(-1i, ~(-27947i), 16203i, -var_1)), min(_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i, 9719i, -1i, global0.a.x)), max(vec4<i32>(-51710i, u_input.e.x, var_0.x, u_input.e.x), vec4<i32>(var_0.x, 14777i, 1389i, global0.a.x)), countOneBits(vec4<i32>(var_1, var_0.x, 49194i, u_input.e.x))), ~firstLeadingBit(vec4<i32>(1i, -1i, 2147483647i, -27149i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 1i, 2147483647i, 0i), vec4<i32>(u_input.b.x, global0.a.x, -2147483647i, -2147483647i)) | -_wgslsmith_add_vec4_i32(vec4<i32>(1i, global0.a.x, -1i, -2147483647i), vec4<i32>(var_1, 22180i, 24919i, var_0.x))));
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec4<i32>) -> vec2<i32> {
    var var_0 = u_input.a;
    global0 = Struct_2(-(arg_2 | (-vec2<i32>(arg_3.x, -31239i) >> (vec2<u32>(0u, u_input.d.x) % vec2<u32>(32u)))), global0.b);
    global0 = Struct_2(vec2<i32>(_wgslsmith_sub_i32(~u_input.b.x, _wgslsmith_dot_vec4_i32(select(arg_3, vec4<i32>(-9099i, arg_3.x, arg_2.x, arg_3.x), global0.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_2.x, -27010i, -2147483647i, arg_3.x), arg_3))), -1i), select(!select(select(vec4<bool>(false, false, arg_1.x, arg_0), global0.b, global0.b), global0.b, !global0.b.x), arg_1, true));
    var var_1 = Struct_2(vec2<i32>(-32597i & -func_2(), arg_2.x), select(global0.b, select(arg_1, vec4<bool>(true, !global0.b.x, global0.b.x, true), true), arg_1));
    var_1 = Struct_2(-vec2<i32>(_wgslsmith_dot_vec2_i32(~var_1.a, u_input.e), 42725i), !vec4<bool>(true, !any(global0.b), false, false));
    return countOneBits(min(select(global0.a, select(vec2<i32>(27356i, arg_2.x), -u_input.b.zy, vec2<bool>(arg_0, var_1.b.x)), select(arg_1.yx, global0.b.wy, vec2<bool>(arg_1.x, var_1.b.x))), arg_2));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(select(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, 13040u), vec3<u32>(4294967295u, u_input.c.x, 1u)), firstTrailingBit(~vec3<u32>(u_input.a, 0u, u_input.d.x)), global0.b.zyx) & (_wgslsmith_add_vec3_u32(vec3<u32>(1u, u_input.d.x, 8077u), vec3<u32>(u_input.d.x, 0u, 0u) & vec3<u32>(u_input.a, u_input.c.x, 1u)) | _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 6029u), ~vec3<u32>(u_input.c.x, u_input.a, 3801u))));
    var var_1 = Struct_3(~_wgslsmith_mult_vec3_u32(~_wgslsmith_sub_vec3_u32(var_0, vec3<u32>(var_0.x, var_0.x, u_input.d.x)), countOneBits(vec3<u32>(u_input.d.x, var_0.x, 0u))), func_1(true, !(!select(vec4<bool>(true, true, global0.b.x, global0.b.x), global0.b, global0.b.x)), min(global0.a, vec2<i32>(reverseBits(0i), _wgslsmith_dot_vec3_i32(u_input.b, u_input.b))), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(-vec4<i32>(u_input.e.x, u_input.e.x, global0.a.x, -8162i), vec4<i32>(u_input.e.x, -2147483647i, global0.a.x, global0.a.x)), _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.e.x, global0.a.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.e.x, global0.a.x, -1i), vec4<i32>(-35560i, -15104i, -1i, u_input.b.x)), vec4<i32>(1i, global0.a.x, -1i, u_input.e.x) & vec4<i32>(global0.a.x, 1683i, -4096i, -1i), -vec4<i32>(-1i, -21653i, global0.a.x, -24329i)))), var_0);
    var var_2 = Struct_1((abs(global0.a.x) << (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, u_input.d.x, var_0.x), vec4<u32>(u_input.d.x, 48068u, u_input.c.x, var_1.c.x) ^ vec4<u32>(4294967295u, u_input.c.x, 34845u, var_0.x)) % 32u)) >> (var_1.a.x % 32u));
    global1 = array<Struct_1, 6>();
    var var_3 = 0i;
    global1 = array<Struct_1, 6>();
    var_3 = global0.a.x;
    var var_4 = vec4<f32>(-270f, -3355f, _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(step(-196f, -1389f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-156f - 535f), 1522f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x);
}

