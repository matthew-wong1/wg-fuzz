struct Struct_1 {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec4<f32>,
    e: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec3<bool> {
    let var_0 = ~countOneBits(max(~0u, u_input.c));
    let var_1 = _wgslsmith_mult_i32(u_input.b, reverseBits(abs(~u_input.b)));
    let var_2 = Struct_1(countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(10717u, 0u), vec2<u32>(1u, 51615u)), vec2<u32>(0u, 1u)) >> (var_0 % 32u)), u_input.d.x, firstLeadingBit(~vec3<i32>(1i, -29145i, var_1)) ^ reverseBits(u_input.d.wxy), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -842f))), 728f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -602f))), _wgslsmith_f_op_f32(604f + -489f)) - vec4<f32>(_wgslsmith_f_op_f32(-1840f + _wgslsmith_f_op_f32(824f + -120f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1454f, -1395f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1958f))))));
    var var_3 = Struct_1(5571u, 6254i, reverseBits(~(var_2.c << ((vec3<u32>(0u, 44771u, var_2.a) & vec3<u32>(u_input.a, 98175u, 4206u)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(var_2.d)), vec4<f32>(var_2.d.x, 312f, -1623f, var_2.d.x), u_input.d.x != var_1))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.e, var_2.d.x, var_2.d.x, var_2.e)), _wgslsmith_f_op_vec4_f32(var_2.d - var_2.d))), -169f);
    return vec3<bool>(select(!(!select(false, false, true)), select(true, false, true) & false, true), true, any(vec2<bool>(true, true)));
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<bool>) -> u32 {
    return _wgslsmith_dot_vec2_u32(arg_2, arg_2);
}

fn func_2(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = select(_wgslsmith_mult_u32(_wgslsmith_div_u32(max(0u, _wgslsmith_mod_u32(u_input.c, 84221u)), abs(~u_input.c)), func_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-269f, arg_0.x, -168f), vec3<f32>(300f, 1000f, arg_0.x), vec3<bool>(true, true, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1477f, 641f))), _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.yzx, vec3<i32>(-10999i, u_input.d.x, -13267i)), -vec3<i32>(u_input.d.x, u_input.b, -18033i)), ~vec2<u32>(u_input.a, 25003u), func_3())), u_input.c, !any(func_3().yz));
    global0 = 34419u;
    let var_1 = _wgslsmith_f_op_f32(round(1386f));
    global0 = u_input.c;
    var_0 = u_input.a;
    return StorageBuffer(u_input.d, _wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(46401u, 4294967295u | u_input.a, abs(u_input.a), ~63222u), firstLeadingBit(~vec4<u32>(1u, u_input.a, u_input.a, u_input.c))), vec4<u32>(15889u, 78715u, ~(~u_input.c), 1u)), u_input.b, _wgslsmith_mult_vec3_i32(~(~(-u_input.d.wyw)), u_input.d.xzx), -1837f);
}

fn func_1(arg_0: i32, arg_1: vec4<f32>) -> StorageBuffer {
    global0 = 66539u;
    return func_2(arg_1.zw);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_mod_i32(u_input.b >> (u_input.a % 32u), _wgslsmith_sub_i32(2147483647i >> (_wgslsmith_sub_u32(u_input.a, 25190u) % 32u), firstLeadingBit(~u_input.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1659f, -189f, 833f, 243f)))))));
}

