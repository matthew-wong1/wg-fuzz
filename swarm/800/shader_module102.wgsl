struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: i32,
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

var<private> global0: Struct_1 = Struct_1(vec4<u32>(31977u, 5990u, 83339u, 1u));

var<private> global1: vec3<i32> = vec3<i32>(0i, i32(-2147483648), -71363i);

var<private> global2: u32;

var<private> global3: array<vec4<i32>, 24>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>) -> u32 {
    var var_0 = global1.zz;
    return 4294967295u;
}

fn func_3(arg_0: i32) -> vec3<f32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-152f + _wgslsmith_f_op_f32(round(-1891f)))), _wgslsmith_f_op_f32(f32(-1f) * -706f));
    let var_1 = ~73099i;
    let var_2 = !select(select(!select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), select(true, all(vec4<bool>(true, true, false, false)), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true && (~4362u == global0.a.x));
    let var_3 = Struct_3(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x)), true, _wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, 22647u), ~u_input.c.yw), reverseBits(u_input.a)), firstLeadingBit(firstTrailingBit(global1.x)), 1f);
    global0 = Struct_1((~min(vec4<u32>(1u, var_3.c, 1u, var_3.c), global0.a) >> (u_input.c % vec4<u32>(32u))) >> ((vec4<u32>(var_3.c, _wgslsmith_dot_vec2_u32(u_input.c.yw, vec2<u32>(var_3.c, 0u)), 0u, 4500u) ^ ~u_input.c) % vec4<u32>(32u)));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-262f, -1147f, -441f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.e, -981f, var_0.x) * vec3<f32>(var_0.x, 507f, -443f))))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.x + var_3.e), _wgslsmith_f_op_f32(var_0.x - 456f))), _wgslsmith_f_op_f32(-var_3.a.x), var_0.x))));
}

fn func_1(arg_0: f32) -> i32 {
    let var_0 = Struct_1(~_wgslsmith_div_vec4_u32(global0.a, vec4<u32>(global0.a.x, 4294967295u, ~0u, 1u)));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -475f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -805f)))))), all(vec4<bool>(!(arg_0 >= 2028f), true, true, true)), ~func_2(~(~vec3<i32>(global1.x, 14938i, 77754i))), 1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1167f, -1117f) * arg_0))) - _wgslsmith_f_op_f32(round(arg_0))));
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_3 = _wgslsmith_f_op_vec3_f32(func_3(25847i));
    let var_4 = ~vec3<i32>((global1.x & ~(-2147483647i)) ^ _wgslsmith_div_i32(13193i >> (global0.a.x % 32u), -2147483647i), -42492i, ~1i);
    return 0i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global0.a.x;
    let var_0 = !(!vec3<bool>(!select(true, false, false), all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false))), (global1.x << (0u % 32u)) >= (u_input.b.x & 29487i)));
    let var_1 = reverseBits(-(~func_1(-868f)));
    let var_2 = Struct_2(Struct_1(global0.a), -vec4<i32>(global1.x << (~global0.a.x % 32u), (-14073i ^ var_1) << (global0.a.x % 32u), -u_input.b.x | 1i, -var_1));
    let var_3 = Struct_2(Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 69617u, ~121215u, 1u), max(vec4<u32>(1u, var_2.a.a.x, 0u, global0.a.x), u_input.c))), ~vec4<i32>(u_input.b.x, 1i, -15533i, global1.x) << (global0.a % vec4<u32>(32u)));
    global3 = array<vec4<i32>, 24>();
    global0 = var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(757f);
}

