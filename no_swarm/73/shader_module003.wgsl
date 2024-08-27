struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec3<i32>(-17830i, 60423i, 4903i), -908f, 1000f);

var<private> global1: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<i32>(2147483647i, 25344i, 8986i), 717f, 452f), Struct_1(vec3<i32>(1i, 1i, 2147483647i), -309f, -256f), Struct_1(vec3<i32>(43903i, -40615i, -2763i), -598f, -1059f), Struct_1(vec3<i32>(52104i, 37302i, 21732i), 625f, 513f));

var<private> global2: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = vec3<bool>(true == (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.b)) * _wgslsmith_f_op_f32(-global0.c)) > _wgslsmith_f_op_f32(-544f * global0.c)), false, !any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false))));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(max(1219f, global2.x)), _wgslsmith_f_op_f32(trunc(749f)))) - vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global2.x, 451f))), global0.c)) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(730f, global2.x)))))));
    global1 = array<Struct_1, 4>();
    let var_1 = 46225i | ~_wgslsmith_dot_vec3_i32(arg_0.a, reverseBits(vec3<i32>(1i, arg_2.a.x, u_input.b)));
    var var_2 = Struct_1(arg_2.a, -642f, _wgslsmith_f_op_f32(arg_1.c + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1358f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -217f))))));
    return ~vec2<u32>(min(4294967295u, min(~32833u, 1u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 1u, 47444u, 1u), vec4<u32>(0u, 4294967295u, 88079u, 35487u)), vec4<u32>(0u, 1u, 16027u, 71493u)) ^ reverseBits(~1u));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>) -> bool {
    var var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.c))), _wgslsmith_f_op_f32(-global2.x));
    let var_1 = firstLeadingBit(~vec2<u32>(12724u, arg_0.x)) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(~arg_0.x, _wgslsmith_dot_vec3_u32(arg_0.zxy, vec3<u32>(49004u, arg_0.x, arg_0.x))) | func_3(global1[_wgslsmith_index_u32(30569u, 4u)], Struct_1(global0.a, 293f, var_0.b), global1[_wgslsmith_index_u32(reverseBits(4294967295u), 4u)], Struct_1(arg_1, 1000f, 1011f)), ~abs(~arg_0.yw)) % vec2<u32>(32u));
    var var_2 = Struct_1(vec3<i32>(-20710i, _wgslsmith_mult_i32(-global0.a.x, arg_1.x), -global0.a.x), 563f, _wgslsmith_f_op_f32(abs(-1052f)));
    var var_3 = 494f;
    var var_4 = _wgslsmith_dot_vec4_i32(max(select(~vec4<i32>(-15978i, -1i, global0.a.x, arg_1.x), -vec4<i32>(global0.a.x, u_input.c.x, arg_1.x, global0.a.x), vec4<bool>(true, false, false, false)), vec4<i32>(~(-10310i), -arg_1.x, firstLeadingBit(-2147483647i), u_input.a)), ~abs(countOneBits(vec4<i32>(u_input.a, global0.a.x, 2147483647i, -17921i)))) > 6173i;
    return true;
}

fn func_1() -> vec2<f32> {
    global1 = array<Struct_1, 4>();
    var var_0 = !any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), func_2(vec4<u32>(44022u, 1u, 1u, 0u), vec3<i32>(353i, -10798i, global0.a.x))));
    var var_1 = vec2<bool>(true && ((~global0.a.x >= -1i) == false), ((-30419i ^ ~global0.a.x) >= (_wgslsmith_dot_vec2_i32(u_input.c.xy, vec2<i32>(1i, u_input.b)) & ~global0.a.x)) && any(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~(~select(vec3<u32>(6698u, 1u, 0u), vec3<u32>(0u, 46235u, 4294967295u), false))), vec3<u32>(_wgslsmith_clamp_u32(0u, 1u, reverseBits(0u)), 1u, 27830u)), 4u)];
    global1 = array<Struct_1, 4>();
    return vec2<f32>(_wgslsmith_f_op_f32(max(-2345f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * 1283f), _wgslsmith_f_op_f32(step(global0.c, global2.x))))))), _wgslsmith_f_op_f32(f32(-1f) * -487f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1864f) - vec2<f32>(-810f, global0.c))))) + vec2<f32>(_wgslsmith_div_f32(global2.x, 476f), -1708f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global0.c)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1039f, global2.x), vec2<f32>(1000f, 396f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))) - vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -736f))), _wgslsmith_f_op_f32(sign(global2.x)))));
    var var_0 = global0.a.xz;
    let var_1 = !((_wgslsmith_div_u32(_wgslsmith_clamp_u32(8839u, 0u, 32090u), 1u) < 0u) | true);
    global1 = array<Struct_1, 4>();
    global1 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-1285f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global2.x, 143f)))), -1831f))));
}

