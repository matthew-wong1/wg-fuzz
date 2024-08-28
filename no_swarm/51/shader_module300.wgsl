struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
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

var<private> global0: Struct_1 = Struct_1(vec4<u32>(39u, 4294967295u, 4261u, 4294967295u));

var<private> global1: vec3<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(112f, -1000f))) + -1554f), 360f))));
    global0 = Struct_1(vec4<u32>(0u, _wgslsmith_mod_u32(~global0.a.x, select(0u, arg_0.b.a.x << (4294967295u % 32u), any(vec2<bool>(true, global1.x)))), global0.a.x, ~(_wgslsmith_sub_u32(arg_0.b.a.x, arg_0.b.a.x) & ~global0.a.x)));
    let var_1 = arg_0.b;
    var var_2 = ~(~(~min(_wgslsmith_sub_vec3_u32(vec3<u32>(3443u, 75567u, var_1.a.x), var_1.a.xxz), global0.a.wwy)));
    var var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1479f, var_0, 401f) * vec3<f32>(var_0, 641f, -1000f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(439f, var_0, var_0), vec3<f32>(var_0, 1000f, var_0), global1.x))))))));
    return ~countOneBits(-min(vec3<i32>(arg_0.a, -72051i, -20398i), vec3<i32>(arg_0.a, -7134i, u_input.b.x)));
}

fn func_2(arg_0: i32, arg_1: i32) -> bool {
    var var_0 = !(!(_wgslsmith_sub_i32(4686i, arg_1) == ~arg_0)) && (global0.a.x == _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~global0.a.wz, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a.x, global0.a.x), vec2<u32>(global0.a.x, 3185u)), ~global0.a.zx), vec2<u32>(global0.a.x << (global0.a.x % 32u), 39786u)));
    var var_1 = vec3<i32>(-1i) * -max(func_3(Struct_4(54443i, Struct_1(vec4<u32>(0u, 1u, global0.a.x, 91739u)))), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, 0i, 0i) ^ vec3<i32>(u_input.a, -2147483647i, arg_1), func_3(Struct_4(arg_1, Struct_1(global0.a)))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-1051f * 830f), Struct_1(~(~global0.a >> (vec4<u32>(global0.a.x, 0u, global0.a.x, global0.a.x) % vec4<u32>(32u)))), Struct_1(~global0.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1648f, -799f, 1019f) + vec3<f32>(-838f, 522f, -389f)), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-685f, 1246f, -2581f))))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-648f, -397f, 1346f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1592f, 1000f, 2008f), vec3<f32>(2378f, -1338f, -631f)))))));
    let var_3 = var_2.b.a.x | max(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(var_2.c.a, var_2.b.a), global0.a.x | 55933u), var_2.c.a.x), var_2.b.a.x);
    var var_4 = global1.x;
    return global1.x;
}

fn func_1() -> Struct_1 {
    global1 = vec3<bool>(func_2(reverseBits(_wgslsmith_clamp_i32(u_input.a, u_input.b.x, u_input.b.x) & -43992i), u_input.b.x), global1.x, abs(u_input.a) < (_wgslsmith_mod_i32(i32(-1i) * -10711i, countOneBits(-1i)) | u_input.b.x));
    let var_0 = func_3(Struct_4(select(_wgslsmith_dot_vec3_i32(u_input.b, min(u_input.b, vec3<i32>(-1513i, 31524i, u_input.b.x))), 1i, true), Struct_1(global0.a))).zz;
    global0 = Struct_1(~(~(~global0.a)));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1325f, -1498f) * 271f))) * -1173f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-924f, _wgslsmith_div_f32(-333f, -1275f))))))), 1000f, -997f);
    let var_2 = ~_wgslsmith_dot_vec3_i32(vec3<i32>(8549i, 1i, var_0.x ^ 29583i) << (_wgslsmith_mod_vec3_u32(global0.a.zww & global0.a.wxx, ~vec3<u32>(0u, 55446u, global0.a.x)) % vec3<u32>(32u)), u_input.b);
    return Struct_1(~vec4<u32>(reverseBits(_wgslsmith_div_u32(96465u, 35084u)), 32225u, ~(global0.a.x ^ global0.a.x), ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(global0.a, min(select(global0.a, global0.a, vec4<bool>(global1.x, true, global1.x, false)), select(vec4<u32>(1u, 5545u, global0.a.x, global0.a.x), global0.a, global1.x))) >> ((_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.a.x, global0.a.x, global0.a.x, global0.a.x), global0.a), _wgslsmith_sub_vec4_u32(vec4<u32>(global0.a.x, 83042u, 4294967295u, 28849u), global0.a)) >> (~global0.a % vec4<u32>(32u))) % vec4<u32>(32u)));
}

