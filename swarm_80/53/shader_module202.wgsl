struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, 2147483647i, i32(-2147483648));

var<private> global1: vec2<u32>;

var<private> global2: array<vec2<bool>, 8>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1() -> Struct_1 {
    global2 = array<vec2<bool>, 8>();
    let var_0 = 0u;
    let var_1 = Struct_1(global0.x);
    let var_2 = var_1;
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-532f, 485f)))))));
    return Struct_1(_wgslsmith_add_i32(1i, -83228i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> i32 {
    global1 = countOneBits(vec2<u32>(firstTrailingBit(global1.x), ~u_input.a));
    let var_0 = arg_1;
    let var_1 = func_1();
    var var_2 = countOneBits(abs(1u));
    global0 = -vec3<i32>(i32(-1i) * -41234i, 24985i, 29680i);
    return 2147483647i;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global0 = ~(-_wgslsmith_div_vec3_i32(abs(vec3<i32>(global0.x, -2147483647i, global0.x)) & vec3<i32>(global0.x, 1i, 1i), vec3<i32>(firstLeadingBit(arg_0.a), global0.x, arg_0.a << (71567u % 32u))));
    global2 = array<vec2<bool>, 8>();
    global0 = vec3<i32>(-func_3(select(min(vec4<u32>(global1.x, global1.x, 65460u, 12350u), vec4<u32>(u_input.a, arg_1, 1u, u_input.a)), ~vec4<u32>(0u, u_input.a, u_input.a, u_input.a), false), Struct_1(arg_0.a | 0i)), select(i32(-1i) * -16456i, max(-48333i, global0.x), false), (~arg_0.a >> (u_input.a % 32u)) ^ abs(func_1().a));
    global1 = _wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(~min(reverseBits(vec2<u32>(global1.x, 6629u)), vec2<u32>(global1.x, 0u)), _wgslsmith_mult_vec2_u32(~(vec2<u32>(21662u, 14851u) & vec2<u32>(u_input.a, arg_1)), ~vec2<u32>(global1.x, 59570u) & vec2<u32>(global1.x, 1u))), _wgslsmith_clamp_vec2_u32(~_wgslsmith_mult_vec2_u32(~vec2<u32>(13059u, arg_1), ~vec2<u32>(7179u, 53423u)), abs(~firstTrailingBit(vec2<u32>(0u, 19988u))), max(_wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(global1.x, 66698u)), vec2<u32>(u_input.a, 42620u) | vec2<u32>(u_input.a, global1.x)), max(vec2<u32>(arg_1, 58883u) << (vec2<u32>(global1.x, arg_1) % vec2<u32>(32u)), vec2<u32>(1u, global1.x)))));
    var var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(1692f)), _wgslsmith_f_op_f32(f32(-1f) * -971f), true))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-357f)) + _wgslsmith_f_op_f32(trunc(-1072f)))))))));
    return Struct_1(abs(global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(func_1(), 23689u);
    global2 = array<vec2<bool>, 8>();
    var var_1 = global1.x;
    var var_2 = Struct_1(_wgslsmith_sub_i32(var_0.a << (39585u % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.a, var_0.a, 53245i, global0.x) & ~vec4<i32>(0i, global0.x, var_0.a, -16291i), vec4<i32>(-10331i, var_0.a, global0.x, 46277i) >> ((vec4<u32>(u_input.a, 0u, 76408u, 13872u) << (vec4<u32>(40145u, 24951u, 60459u, u_input.a) % vec4<u32>(32u))) % vec4<u32>(32u)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-440f, -184f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1043f, -999f) + vec2<f32>(1674f, 1000f)), true)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1159f)) - vec2<f32>(-1109f, 1052f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(317f, -802f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1277f, -1366f))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1430f, -1050f), vec2<f32>(-1000f, 555f))) + vec2<f32>(828f, 1630f))))));
    let var_4 = ~vec4<u32>(abs(~(18705u & global1.x)), ~u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 37125u, ~global1.x), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8265u, 14159u, 75113u), vec3<u32>(u_input.a, global1.x, global1.x)), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 29219u), vec3<u32>(0u, 99809u, global1.x)), 7581u | u_input.a, 24440u)), 4294967295u & _wgslsmith_clamp_u32(1u, _wgslsmith_div_u32(15913u, u_input.a), countOneBits(50324u)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(8944i, var_0.a >> (var_4.x % 32u), select(global0.x, -1i, true), 1i) ^ (vec4<i32>(-global0.x, var_2.a, 50794i, -var_2.a) << (vec4<u32>(_wgslsmith_dot_vec4_u32(var_4, vec4<u32>(0u, 51714u, u_input.a, 0u)), 42924u, global1.x, abs(var_4.x)) % vec4<u32>(32u))), ~(~var_4.zzx));
}

