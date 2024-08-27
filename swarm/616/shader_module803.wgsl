struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec4<i32>;

var<private> global2: vec4<f32>;

var<private> global3: Struct_2;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>, arg_2: i32, arg_3: u32) -> f32 {
    return _wgslsmith_f_op_f32(step(global2.x, 1343f));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = arg_0.b.x;
    let var_1 = arg_0;
    let var_2 = Struct_2(-countOneBits(-(~global0.x)));
    let var_3 = firstLeadingBit(~68175u);
    var var_4 = Struct_1(~vec3<u32>(_wgslsmith_sub_u32(4294967295u | arg_0.a.x, ~0u), 64285u, var_1.a.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.b.x, -510f, var_1.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(2640f, arg_0.b.x, var_0) + var_1.b))))));
    return arg_0.b.x;
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: bool) -> bool {
    global0 = -vec4<i32>(-45199i << (1u % 32u), ~_wgslsmith_div_i32(arg_1.x, reverseBits(global1.x)), ~2147483647i, 14827i & -firstLeadingBit(global1.x));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-509f))), _wgslsmith_f_op_f32(-global2.x), 659f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(min(646f, global2.x)))), vec4<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(func_2(global2.x, vec4<u32>(u_input.a.x, u_input.a.x, 59178u, u_input.a.x), global0.x, 5461u))), global2.x))) + vec4<f32>(global2.x, _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(2601f, -583f, global2.x), vec3<f32>(-1000f, global2.x, -138f)))))), _wgslsmith_f_op_f32(step(-245f, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(333f * 916f), -830f))))));
    let var_0 = arg_2 | (u_input.a.x != _wgslsmith_dot_vec4_u32(~(~vec4<u32>(584u, u_input.a.x, 47010u, u_input.a.x)), firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 13575u))));
    global2 = vec4<f32>(-252f, -710f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(144f, _wgslsmith_f_op_f32(trunc(global2.x))))), max(~(~vec4<u32>(4294967295u, 4294967295u, 44992u, 34104u)), vec4<u32>(max(u_input.a.x, u_input.a.x), ~0u, u_input.a.x, u_input.a.x)), 10362i, reverseBits(max(~u_input.a.x, u_input.a.x)))), _wgslsmith_f_op_f32(step(global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.x, global2.x, true)))))));
    global1 = -(vec4<i32>(-1i) * -(vec4<i32>(31764i, -22977i, 14075i, 1i) | vec4<i32>(-952i, global3.a, u_input.b, -343i))) >> (~vec4<u32>(select(~u_input.a.x, 19671u, true), _wgslsmith_mult_u32(u_input.a.x | 53173u, u_input.a.x), u_input.a.x, ~firstTrailingBit(u_input.a.x)) % vec4<u32>(32u));
    return (42432u << ((reverseBits(~u_input.a.x) & _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(u_input.a.x, 0u, u_input.a.x))) % 32u)) >= ~u_input.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(any(vec3<bool>(true, true, true)), false, func_1(true, vec3<i32>(global0.x, u_input.b, -1i), false), all(vec2<bool>(reverseBits(global3.a) > ~global1.x, func_1(true, vec3<i32>(global1.x, global0.x, 72354i), true))));
    global2 = vec4<f32>(-838f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_div_vec3_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec3_f32(floor(global2.zwz))))))), _wgslsmith_f_op_f32(max(global2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 731f);
    let var_1 = Struct_2(~30107i);
    var_0 = !(!select(vec4<bool>(false, any(var_0.xxy), select(false, false, true), !var_0.x), vec4<bool>(true, all(vec4<bool>(true, true, false, true)), var_0.x, var_0.x), !vec4<bool>(var_0.x, var_0.x, true, var_0.x)));
    var var_2 = var_1;
    var var_3 = 4294967295u;
    let var_4 = ~7728i;
    let x = u_input.a;
    s_output = StorageBuffer(max(~vec4<u32>(countOneBits(u_input.a.x), 652u, u_input.a.x, u_input.a.x), max(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 0u), vec4<u32>(4294967295u, 0u, u_input.a.x, 1u)), abs(select(vec4<u32>(7478u, 4294967295u, 0u, u_input.a.x), vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), vec4<bool>(var_0.x, false, var_0.x, false))))));
}

