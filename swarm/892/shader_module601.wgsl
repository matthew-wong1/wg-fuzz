struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec3<u32>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(-758f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.a.x - global0.a.a.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.c), 2278f))));
}

fn func_2() -> f32 {
    var var_0 = 1i;
    let var_1 = 18907u;
    var_0 = -20806i;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2043f, 1000f)), _wgslsmith_f_op_vec2_f32(func_3())), _wgslsmith_f_op_vec2_f32(-global0.a.a))), countOneBits(~vec3<i32>(-1i, global0.a.b.x, u_input.a) | vec3<i32>(u_input.b.x, -20445i, -22660i)), global0.a.c));
    global0 = Struct_2(global0.a);
    return _wgslsmith_f_op_f32(-global0.a.c);
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-443f, -1000f)), _wgslsmith_f_op_f32(ceil(global0.a.c))))), _wgslsmith_f_op_f32(sign(-1401f)));
    var var_1 = _wgslsmith_mult_vec2_u32(min(vec2<u32>(_wgslsmith_div_u32(~42141u, u_input.d & global1.x), ~0u), global1.xx), ~_wgslsmith_mult_vec2_u32(~global1.xz, _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 80485u), vec2<u32>(4294967295u, 47858u), vec2<u32>(1u, 1u)), global1.xx, min(global1.zx, vec2<u32>(1u, u_input.d)))));
    var var_2 = global0.a.b.xx;
    var_1 = vec2<u32>(var_1.x, _wgslsmith_dot_vec2_u32(abs(global1.yy) ^ max(vec2<u32>(u_input.d, global1.x), vec2<u32>(0u, u_input.d)), ~vec2<u32>(u_input.d >> (global1.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 12614u, global1.x), vec3<u32>(global1.x, u_input.d, 71859u)))));
    let var_3 = var_0;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.a), global0.a.a)), -global0.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a.a.x, _wgslsmith_f_op_f32(sign(576f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = abs(~(~countOneBits(~vec3<u32>(global1.x, 41916u, global1.x))));
    let var_1 = _wgslsmith_mod_vec3_u32(~_wgslsmith_clamp_vec3_u32(~vec3<u32>(23798u, u_input.d, global1.x), ~vec3<u32>(global1.x, u_input.d, 38485u), _wgslsmith_sub_vec3_u32(vec3<u32>(5083u, u_input.d, u_input.d), vec3<u32>(global1.x, 23637u, global1.x))) | select(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(12170u, global1.x, 4294967295u), vec3<u32>(34863u, 32840u, u_input.d), false), ~vec3<u32>(0u, global1.x, 38716u), vec3<u32>(1u, 0u, 0u)), abs(vec3<u32>(u_input.d, 4294967295u, 22527u)) | ~vec3<u32>(u_input.d, global1.x, 34823u), abs(global1.x) > ~global1.x), (abs(~vec3<u32>(u_input.d, global1.x, 0u)) ^ countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, u_input.d, 14507u), vec3<u32>(0u, 4294967295u, 31361u)))) >> (~(~vec3<u32>(global1.x, global1.x, 1u) >> ((vec3<u32>(0u, u_input.d, u_input.d) & vec3<u32>(u_input.d, 1u, global1.x)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_2 = var_0;
    global0 = var_0;
    let var_3 = abs(var_0.a.b.xy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(var_2.a.c)), ~(-vec2<i32>(11913i, max(-27554i, 2147483647i))), firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_u32(global1.x, 31808u ^ global1.x, reverseBits(u_input.d)))));
}

