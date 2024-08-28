struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, vec4<u32>(0u, 1u, 72280u, 26271u), vec3<f32>(1551f, -1130f, -418f));

var<private> global1: array<Struct_1, 7>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1() -> f32 {
    let var_0 = -2147483647i;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -720f), _wgslsmith_f_op_f32(-global0.c.x))));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = vec3<u32>(countOneBits(abs(70502u)), 26538u, global0.b.x);
    return 25472u;
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: Struct_2) -> f32 {
    global0 = Struct_2(arg_3.a, vec4<u32>((~arg_2.x << (26989u % 32u)) << (firstLeadingBit(~arg_0.b.x) % 32u), func_2(arg_0), 37071u, abs(_wgslsmith_add_u32(1u, 1u)) | ~arg_0.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_3.c.x), _wgslsmith_f_op_f32(global0.c.x - global0.c.x), -438f)), global0.c, select(vec3<bool>(all(vec2<bool>(false, true)), false, !global0.a), vec3<bool>(any(vec2<bool>(true, false)), select(arg_0.a, arg_3.a, arg_0.a), all(vec2<bool>(arg_0.a, true))), !(!vec3<bool>(true, global0.a, false))))));
    let var_0 = Struct_2(!arg_0.a, vec4<u32>(4294967295u, 16101u, _wgslsmith_sub_u32(~1u, ~(global0.b.x >> (4294967295u % 32u))), ~global0.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_0.c, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-arg_0.c)))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(379f, _wgslsmith_f_op_f32(f32(-1f) * -559f), 1f), arg_3.c, arg_3.a))));
    let var_1 = arg_0;
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x << (var_0.b.x % 32u), ~(-41661i)), -u_input.b.x);
    global1 = array<Struct_1, 7>();
    return _wgslsmith_f_op_f32(abs(global0.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(false, vec4<u32>(~global0.b.x, ~(~global0.b.x), _wgslsmith_mod_u32(1u, 111800u), _wgslsmith_clamp_u32(75855u, firstTrailingBit(~44252u), 209u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.c + global0.c))));
    global1 = array<Struct_1, 7>();
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c.x, -2201f, 1010f, -1000f))) - _wgslsmith_f_op_vec4_f32(step(vec4<f32>(747f, -700f, global0.c.x, -1000f), vec4<f32>(global0.c.x, -1055f, 453f, -750f)))))), vec4<f32>(899f, 636f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c.x))), _wgslsmith_f_op_f32(func_1()), global0.a)), global0.c.x));
    let var_1 = !(!(!(!(!vec4<bool>(global0.a, false, false, true)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(1436f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1063f)) * global0.c.x)) > global0.c.x, vec4<u32>(func_2(Struct_2(false, global0.b, vec3<f32>(-646f, 346f, var_0.x))) << (4294967295u % 32u), ~(~(~global0.b.x)), global0.b.x, 5432u), vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_div_f32(-1164f, _wgslsmith_f_op_f32(func_3(Struct_2(true, global0.b, vec3<f32>(var_0.x, 1087f, -1466f)), global0.b.www >> (vec3<u32>(global0.b.x, global0.b.x, 1u) % vec3<u32>(32u)), global0.b, Struct_2(false, vec4<u32>(1u, global0.b.x, 4294967295u, global0.b.x), global0.c)))), global0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(max(~vec4<u32>(0u, global0.b.x, global0.b.x, 0u), ~vec4<u32>(62048u, 32201u, var_2.b.x, 107128u))), reverseBits(max(vec3<u32>(25984u, 4294967295u, 8982u), vec3<u32>(global0.b.x, var_2.b.x, 20321u)) ^ ~global0.b.yxw) >> (~(~_wgslsmith_add_vec3_u32(var_2.b.yxz, global0.b.xyz)) % vec3<u32>(32u)), abs(~(vec3<u32>(4294967295u, global0.b.x, 4294967295u) & firstTrailingBit(var_2.b.wyz))), abs(u_input.b.zyx));
}

