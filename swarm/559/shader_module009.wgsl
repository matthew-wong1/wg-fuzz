struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<bool>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: vec2<bool>) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(arg_1.a)))))) + 477f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -682f))));
    return ~countOneBits(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -1i, 14832i, -19198i) >> (vec4<u32>(4294967295u, 4294967295u, 14933u, 1u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, u_input.a, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, -1i, -2147483647i)))));
}

fn func_3(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(_wgslsmith_mult_u32(_wgslsmith_mod_u32(6304u, 4294967295u), 6093u)), ~(~13030u), _wgslsmith_add_u32(firstLeadingBit(~1u), 1u)), vec3<u32>(_wgslsmith_div_u32(15070u, ~_wgslsmith_add_u32(39728u, 0u)), 1u, 43745u));
    let var_1 = false;
    let var_2 = vec2<i32>(1i >> (var_0 % 32u), ~u_input.a);
    let var_3 = Struct_1(vec4<f32>(global0.a, _wgslsmith_f_op_f32(-arg_0.c), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-667f - _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(round(global0.c))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, _wgslsmith_f_op_f32(-global0.c)))), abs(~abs(_wgslsmith_clamp_u32(76489u, 0u, var_0))), global1.x);
    var var_4 = _wgslsmith_add_u32(abs(var_3.c), _wgslsmith_add_u32(~(var_0 >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_0), vec2<u32>(27865u, var_0)) % 32u)), var_0 << (14333u % 32u)));
    return !any(global1.xzz);
}

fn func_2(arg_0: vec4<i32>, arg_1: u32) -> Struct_1 {
    global1 = vec4<bool>(func_3(Struct_2(212f, _wgslsmith_f_op_f32(f32(-1f) * -487f), -379f)), true, func_3(Struct_2(global0.c, _wgslsmith_f_op_f32(-1081f * _wgslsmith_f_op_f32(-global0.a)), -812f)), any(vec2<bool>(any(!vec3<bool>(global1.x, global1.x, false)), global1.x)));
    var var_0 = Struct_2(-496f, _wgslsmith_f_op_f32(-1157f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.c, global0.b))), -1004f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-335f, global0.a))))))));
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(f32(-1f) * -1518f)))), -105f);
    var var_1 = Struct_1(vec4<f32>(-1560f, var_0.a, -521f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -281f)), global0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1935f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.c, -362f), vec2<f32>(var_0.b, var_0.b)))))), ~_wgslsmith_sub_u32(1u, _wgslsmith_mod_u32(~1u, arg_1 << (1u % 32u))), !any(select(global1.yx, global1.zz, !global1.x)));
    var_0 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a, _wgslsmith_f_op_f32(round(-1024f)))) - -271f), _wgslsmith_f_op_f32(trunc(1388f)), _wgslsmith_f_op_f32(global0.c + -1042f));
    return Struct_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1.a))))), vec2<f32>(_wgslsmith_f_op_f32(round(1012f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -352f) * -191f)), ~countOneBits(~4294967295u), all(!vec2<bool>(-68999i != u_input.a, global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(-1653f, _wgslsmith_f_op_f32(global0.a + global0.b));
    let var_1 = func_2(-(~func_1(-vec3<i32>(u_input.a, u_input.a, u_input.a), Struct_2(1508f, var_0.x, global0.b), select(global1.yy, global1.xz, false))), 23493u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(var_1.c, var_1.c ^ 4294967295u, 49379u), ~reverseBits(var_1.c), ~var_1.c, var_1.c, -162f);
}

