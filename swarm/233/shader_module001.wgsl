struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec2<u32> = vec2<u32>(44021u, 34291u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = firstLeadingBit(vec3<i32>(u_input.c, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.d, 1i, u_input.d), vec3<i32>(u_input.c, u_input.d, u_input.c) & vec3<i32>(u_input.c, u_input.d, u_input.c)), u_input.c ^ u_input.c) << (vec3<u32>(~firstTrailingBit(1u), reverseBits(2853u >> (1u % 32u)), 1u) % vec3<u32>(32u)));
    let var_1 = arg_2.b.x;
    var var_2 = vec3<u32>(~4294967295u, countOneBits(global1.x), ~_wgslsmith_dot_vec2_u32(select(firstLeadingBit(vec2<u32>(39668u, 4294967295u)), select(vec2<u32>(26274u, 0u), vec2<u32>(7682u, 58788u), false), select(arg_2.b, vec2<bool>(true, var_1), arg_2.b)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global1.x, 1u), vec3<u32>(global1.x, 115193u, global1.x)), _wgslsmith_add_u32(u_input.a, 4294967295u))));
    var var_3 = any(select(vec3<bool>(!var_1, false, all(!vec4<bool>(false, var_1, false, arg_1.b.x))), select(!select(vec3<bool>(true, arg_0.b.x, var_1), vec3<bool>(true, false, true), vec3<bool>(true, arg_1.b.x, var_1)), select(vec3<bool>(false, var_1, arg_0.b.x), vec3<bool>(true, true, arg_0.b.x), true), select(!vec3<bool>(arg_1.b.x, arg_2.b.x, false), vec3<bool>(arg_0.b.x, arg_1.b.x, false), !vec3<bool>(true, var_1, false))), true));
    var var_4 = 50968i;
    return vec2<u32>(~82535u, ~19403u ^ u_input.a);
}

fn func_2() -> bool {
    global1 = _wgslsmith_div_vec2_u32((select(func_3(Struct_1(vec3<f32>(-1454f, global0.x, global0.x), vec2<bool>(true, false)), Struct_1(vec3<f32>(-700f, -492f, 1375f), vec2<bool>(true, true)), Struct_1(vec3<f32>(global0.x, -1842f, global0.x), vec2<bool>(false, true))), firstLeadingBit(vec2<u32>(global1.x, 60580u)), true) & vec2<u32>(u_input.e, reverseBits(1288u))) ^ select(vec2<u32>(global1.x, _wgslsmith_clamp_u32(112721u, global1.x, global1.x)), select(vec2<u32>(global1.x, 4294967295u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global1.x), vec2<u32>(38085u, u_input.a)), true), ~u_input.c > firstTrailingBit(0i)), vec2<u32>(4294967295u, global1.x));
    var var_0 = 38215u;
    var var_1 = !(!(!vec2<bool>(true, all(vec3<bool>(true, false, false)))));
    var_1 = !(!select(!(!vec2<bool>(var_1.x, var_1.x)), vec2<bool>(all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), all(vec3<bool>(var_1.x, var_1.x, var_1.x))), true));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-1513f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-637f)) - 383f)) * _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(456f, -525f, 139f, _wgslsmith_f_op_f32(-1564f - -453f))))));
    return all(vec3<bool>(var_1.x != true, select(any(vec3<bool>(true, true, true)), true, any(vec2<bool>(var_1.x, false))), var_1.x || all(vec2<bool>(false, false))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> vec2<bool> {
    var var_0 = select(!(!vec4<bool>(true, true, func_2(), true)), !(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), all(vec3<bool>(false, true, false)))), vec4<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, true), false)), any(vec3<bool>(true, true, true)) || (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 8451u, u_input.b, global1.x), vec4<u32>(0u, 17034u, 10818u, global1.x)) < (u_input.a ^ global1.x)), true, !all(vec4<bool>(true, true, false, true))));
    global0 = arg_0.wzy;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(arg_0.x * arg_0.x), 429f))))), vec2<bool>(true, !func_2()));
    let var_2 = var_1.a.x;
    let var_3 = !var_0.yzx;
    return !(!(!(!(!var_0.zx))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_u32(~global1.x, 24947u >> (global1.x % 32u));
    let var_1 = _wgslsmith_f_op_f32(ceil(global0.x));
    global1 = vec2<u32>(1u | (1u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, 0u), ~vec3<u32>(68274u, global1.x, 1u)) % 32u)), 1u);
    let var_2 = global1.x;
    global1 = vec2<u32>(u_input.b, global1.x);
    global1 = _wgslsmith_mult_vec2_u32(abs(firstLeadingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(1u, 4294967295u))) << (~(vec2<u32>(global1.x, u_input.a) << (vec2<u32>(8711u, 20287u) % vec2<u32>(32u))) % vec2<u32>(32u))), vec2<u32>(~u_input.b, _wgslsmith_dot_vec4_u32(~(vec4<u32>(4801u, global1.x, u_input.a, 70678u) << (vec4<u32>(41309u, 357u, u_input.b, u_input.e) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, u_input.a, 1u), vec4<u32>(u_input.a, global1.x, 30086u, global1.x) ^ vec4<u32>(u_input.e, 49347u, 4456u, 26150u), vec4<u32>(50965u, 1u, u_input.a, u_input.e)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, -524f, 1000f), vec3<f32>(-1178f, -467f, 772f), false)), vec3<f32>(global0.x, -416f, 1154f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1659f, var_1, -1000f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, global0.x, -686f))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(global0.x + 793f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -360f, global0.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-2820f, 779f, global0.x) * vec3<f32>(var_1, global0.x, -539f))))))), !select(func_1(vec4<f32>(-691f, global0.x, var_1, global0.x), u_input.c | 2147483647i), !func_1(vec4<f32>(-340f, global0.x, var_1, -211f), 0i), select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true))));
    global1 = ~firstTrailingBit(vec2<u32>(29015u, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(abs(1i) << (_wgslsmith_add_u32(global1.x, 4294967295u) % 32u), -1i, firstLeadingBit(2147483647i << (min(global1.x, u_input.a) % 32u)), ~(~u_input.d << (18414u % 32u))));
}

