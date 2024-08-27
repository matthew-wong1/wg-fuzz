struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: array<i32, 30> = array<i32, 30>(8553i, 2147483647i, 1i, -13482i, 0i, -21088i, -3623i, -1i, -46926i, i32(-2147483648), 2147483647i, -6766i, 0i, 0i, i32(-2147483648), -33180i, -999i, 1i, 14461i, -1i, 13548i, 34438i, i32(-2147483648), -25679i, 2147483647i, -1i, -1i, -84621i, -1i, -63755i);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<f32>) -> bool {
    var var_0 = Struct_1(vec2<u32>(4948u, _wgslsmith_div_u32(4294967295u, ~(~arg_1.x))));
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(40748u, var_0.a.x), 30u)];
    var var_2 = arg_0;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_3.zzw) + _wgslsmith_f_op_vec3_f32(-arg_3.wxx)) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, 2990f)), arg_3.xzy))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_3.x, 1298f)) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_3.x, -1000f, arg_3.x), arg_3.zxy)))));
    let var_4 = i32(-1i) * -u_input.a.x;
    return (~arg_1.x >> (_wgslsmith_add_u32(36001u, arg_0.a.x) % 32u)) < (firstTrailingBit(var_2.a.x) >> (~reverseBits(abs(19534u)) % 32u));
}

fn func_2() -> vec2<i32> {
    global0 = Struct_1(global0.a);
    global1 = select(u_input.a.x, 2536i, func_3(Struct_1(vec2<u32>(~global0.a.x, ~57141u)), ~firstLeadingBit(vec2<u32>(99859u, 18086u)), true, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-142f, -1892f, -475f, 875f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-314f, -366f, 236f, -1000f) + vec4<f32>(1362f, 803f, 440f, -248f)))))));
    let var_0 = Struct_1(global0.a);
    global2 = array<i32, 30>();
    let var_1 = ~((vec3<u32>(59629u, _wgslsmith_mult_u32(global0.a.x, global0.a.x), ~53647u) << (abs(~vec3<u32>(3945u, global0.a.x, global0.a.x)) % vec3<u32>(32u))) | ~vec3<u32>(reverseBits(var_0.a.x), ~global0.a.x, 1u));
    return u_input.a.wx;
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = ~0u;
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-341f, -714f, 904f) * vec3<f32>(-560f, -397f, -1831f)))), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(select(-816f, 446f, true)), -177f, -1088f)))))));
    let var_3 = select(vec3<bool>((select(global0.a.x, 1u, false) > 1u) != all(select(vec2<bool>(false, true), vec2<bool>(true, true), false)), false, false), vec3<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2.x))) >= 497f, any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(false, true), all(vec3<bool>(false, false, false)))), false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-542f, var_2.x, true))))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, var_2.x)))));
    global1 = var_1.x;
    return Struct_1(~global0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec2_u32(~(~select(global0.a, vec2<u32>(1u, global0.a.x), true)), ~_wgslsmith_div_vec2_u32(vec2<u32>(1u, global0.a.x) >> (global0.a % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(global0.a.x, 1u)))));
    let var_1 = global0.a;
    global1 = u_input.a.x;
    global0 = Struct_1(~var_0.a >> (vec2<u32>(abs(10673u), 1u) % vec2<u32>(32u)));
    let var_2 = func_1(u_input.a.zx >> ((var_0.a | global0.a) % vec2<u32>(32u)));
    let var_3 = Struct_1(~(~_wgslsmith_add_vec2_u32(var_0.a, ~vec2<u32>(var_1.x, var_1.x))));
    let var_4 = func_1(vec2<i32>(firstLeadingBit(1i), ~u_input.a.x));
    let var_5 = Struct_1(vec2<u32>(global0.a.x, ~41080u));
    let var_6 = ~(~(~(-(u_input.a >> (vec4<u32>(103260u, var_0.a.x, 40783u, 1u) % vec4<u32>(32u))))));
    let x = u_input.a;
    s_output = StorageBuffer(~global2[_wgslsmith_index_u32(11305u >> (firstTrailingBit(4294967295u) % 32u), 30u)], _wgslsmith_add_i32(~1i, global2[_wgslsmith_index_u32(~(~func_1(var_6.yz).a.x), 30u)]), select(_wgslsmith_add_vec3_u32(~vec3<u32>(var_2.a.x, global0.a.x, var_2.a.x), max(vec3<u32>(18090u, 0u, var_4.a.x), vec3<u32>(4294967295u, var_2.a.x, 34113u))) & vec3<u32>(_wgslsmith_clamp_u32(var_5.a.x, var_4.a.x, 31898u), 1u, _wgslsmith_mult_u32(var_0.a.x, var_3.a.x)), ~(~select(vec3<u32>(4294967295u, var_4.a.x, var_2.a.x), vec3<u32>(var_0.a.x, 31840u, var_2.a.x), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, true, true, true)))));
}

