struct Struct_1 {
    a: i32,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19> = array<vec4<u32>, 19>(vec4<u32>(4294967295u, 1u, 94507u, 0u), vec4<u32>(5642u, 43458u, 4294967295u, 1u), vec4<u32>(1u, 6513u, 1u, 1u), vec4<u32>(91307u, 34089u, 1u, 34314u), vec4<u32>(36725u, 4294967295u, 4294967295u, 34607u), vec4<u32>(0u, 0u, 1u, 4294967295u), vec4<u32>(0u, 0u, 15997u, 76711u), vec4<u32>(56180u, 4294967295u, 4294967295u, 72432u), vec4<u32>(6501u, 1u, 28196u, 1u), vec4<u32>(66349u, 88165u, 9835u, 3734u), vec4<u32>(21407u, 1u, 81503u, 46944u), vec4<u32>(1u, 1u, 0u, 35197u), vec4<u32>(35137u, 67510u, 66834u, 4294967295u), vec4<u32>(4294967295u, 57718u, 41218u, 689u), vec4<u32>(23810u, 4294967295u, 1u, 58311u), vec4<u32>(46974u, 4294967295u, 1u, 1u), vec4<u32>(1u, 33915u, 1u, 15842u), vec4<u32>(47386u, 99774u, 0u, 1u), vec4<u32>(1u, 43663u, 27936u, 14184u));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = arg_1;
    global0 = array<vec4<u32>, 19>();
    let var_1 = !(!vec4<bool>(true, arg_1.d, true, any(vec3<bool>(var_0.d, true, false))));
    let var_2 = 0i;
    var var_3 = -1i << (~u_input.e.x % 32u);
    return _wgslsmith_f_op_f32(f32(-1f) * -586f);
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    var var_0 = vec2<i32>(max(_wgslsmith_clamp_i32((2147483647i & arg_0.a) >> (_wgslsmith_mod_u32(4294967295u, 95521u) % 32u), -_wgslsmith_add_i32(arg_0.c, arg_0.a), ~(~1i)), ~(countOneBits(arg_0.c) & ~(-33889i))), _wgslsmith_dot_vec4_i32(-vec4<i32>(arg_0.c, ~arg_0.a, 2147483647i, -arg_0.c), ~vec4<i32>(arg_0.a, select(1i, 1i, true), 1i, -3590i)));
    var_0 = reverseBits(reverseBits(vec2<i32>(-var_0.x, firstTrailingBit(1i)))) ^ -(~vec2<i32>(19659i, _wgslsmith_sub_i32(u_input.c, arg_0.a)));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(806f * arg_0.b.x));
    var_0 = vec2<i32>(select(~1i << (u_input.e.x % 32u), firstTrailingBit(countOneBits(var_0.x & 2147483647i)), !all(!vec4<bool>(arg_0.d, arg_0.d, false, arg_0.d))), 1i);
    var_0 = vec2<i32>(~arg_0.c, 0i);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1, arg_0.b.x, 1040f, var_1)))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1114f, 1095f, arg_0.b.x))))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_3;
    var var_1 = -385f;
    var_1 = _wgslsmith_f_op_f32(-arg_2.x);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1193f + 321f) - -251f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_1.x, _wgslsmith_div_f32(arg_1.x, 233f)))) + -1057f));
    global0 = array<vec4<u32>, 19>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(171f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-983f, -282f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, 1045f), _wgslsmith_f_op_f32(func_1(vec4<u32>(u_input.e.x, 4294967295u, u_input.a.x, 18386u), Struct_1(var_0.c, vec3<f32>(-204f, arg_2.x, 782f), 10128i, false), vec2<f32>(arg_3.b.x, var_0.b.x)))))))), arg_3.b.x);
}

fn func_2() -> f32 {
    global0 = array<vec4<u32>, 19>();
    let var_0 = u_input.e.xy;
    let var_1 = select(~u_input.b & u_input.a.x, var_0.x, true && any(vec4<bool>(true, true, true, true))) > 4294967295u;
    var var_2 = 0u;
    var var_3 = var_1;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(192f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(u_input.c, vec3<f32>(-835f, -934f, -1424f), -12860i, true), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(953f, 1716f, -215f))), _wgslsmith_f_op_vec4_f32(func_3(Struct_1(1i, vec3<f32>(861f, -330f, -276f), 9589i, var_1))), Struct_1(u_input.c, vec3<f32>(-406f, 1098f, 366f), u_input.c, var_1))) - _wgslsmith_f_op_f32(min(-758f, -886f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(~(~4294967295u), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(~u_input.b, max(u_input.d, u_input.d), u_input.a.x), 4294967295u));
    var var_1 = Struct_1(u_input.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(-170f, -682f)), _wgslsmith_f_op_f32(min(1324f, -885f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(971f, 1466f))))), 1i, true);
    var var_2 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(4294967295u, 19u)], Struct_1(u_input.c, var_1.b, -1i, false), vec2<f32>(var_1.b.x, -459f))) - var_1.b.x) - _wgslsmith_f_op_f32(var_1.b.x * -1135f)) < _wgslsmith_f_op_f32(1464f - _wgslsmith_f_op_f32(func_2()))) & var_1.d;
    var_1 = Struct_1(-1i, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.b), vec3<f32>(283f, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(func_1(~vec4<u32>(1u, u_input.e.x, u_input.b, 19350u), Struct_1(-1i, var_1.b, u_input.c, var_1.d), _wgslsmith_f_op_vec2_f32(-var_1.b.zx))))), ~1i, all(select(!select(vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(true, var_1.d, var_1.d)), !vec3<bool>(true, var_1.d, var_1.d), select(select(vec3<bool>(var_1.d, false, var_1.d), vec3<bool>(true, var_1.d, false), vec3<bool>(false, var_1.d, var_1.d)), select(vec3<bool>(true, true, var_1.d), vec3<bool>(false, var_1.d, var_1.d), var_1.d), false && var_1.d))));
    var_0 = ~vec2<u32>((countOneBits(var_0.x) & _wgslsmith_add_u32(5068u, u_input.d)) | abs(countOneBits(u_input.e.x)), u_input.b & _wgslsmith_mod_u32(u_input.e.x, ~58909u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_div_f32(var_1.b.x, var_1.b.x));
}

