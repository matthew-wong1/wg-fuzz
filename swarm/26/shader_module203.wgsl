struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
    e: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_2() -> f32 {
    var var_0 = ~1123u;
    var var_1 = ~u_input.a;
    let var_2 = Struct_2(vec3<f32>(314f, -777f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1158f)), -1353f))), Struct_1(2147483647i, max(~max(u_input.a, u_input.a), 4294967295u), _wgslsmith_f_op_f32(f32(-1f) * -165f), 1757f), 1u);
    let var_3 = var_2.a;
    var var_4 = Struct_4(var_2);
    return _wgslsmith_f_op_f32(var_4.a.a.x + var_2.b.d);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> vec3<f32> {
    global0 = -reverseBits(u_input.c | u_input.c);
    global0 = select(-u_input.c, u_input.c, select(select(select(select(vec4<bool>(true, arg_3.c, arg_3.c, false), vec4<bool>(true, false, true, arg_0), vec4<bool>(true, arg_0, arg_3.c, false)), vec4<bool>(true, true, false, arg_0), select(vec4<bool>(arg_3.c, true, false, arg_3.c), vec4<bool>(false, arg_3.c, arg_3.c, false), true)), select(!vec4<bool>(arg_0, arg_3.c, false, false), !vec4<bool>(arg_3.c, arg_0, arg_3.c, arg_0), vec4<bool>(true, false, true, arg_0)), select(!vec4<bool>(arg_3.c, arg_0, false, arg_3.c), select(vec4<bool>(false, true, arg_3.c, arg_3.c), vec4<bool>(arg_3.c, arg_0, false, arg_3.c), vec4<bool>(arg_0, arg_0, arg_0, false)), !arg_3.c)), select(vec4<bool>(true, true, arg_0, true), select(!vec4<bool>(false, arg_0, true, arg_3.c), vec4<bool>(true, false, true, arg_3.c), !arg_3.c), vec4<bool>(!arg_0, !arg_3.c, arg_0, all(vec4<bool>(false, true, arg_0, arg_0)))), vec4<bool>(true, false, any(!vec4<bool>(arg_3.c, arg_0, arg_3.c, false)), arg_0 & false)));
    var var_0 = Struct_2(arg_3.d.a, arg_3.b, 4294967295u);
    var_0 = Struct_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-536f, 445f, arg_3.b.d)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-391f, 978f, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f)))), Struct_1(_wgslsmith_div_i32(var_0.b.a, _wgslsmith_mod_i32(1i, i32(-1i) * -15265i)), ~arg_3.d.b.b, -1924f, arg_3.b.d), ~var_0.c);
    global0 = vec4<i32>(-1i) * -u_input.c;
    return vec3<f32>(-579f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_3.b.d * var_0.b.d)))));
}

fn func_1() -> Struct_3 {
    var var_0 = all(select(vec4<bool>(_wgslsmith_f_op_f32(sign(-1067f)) >= _wgslsmith_f_op_f32(max(-1196f, 1024f)), any(vec2<bool>(false, true)) | true, true, all(vec3<bool>(true, true, true))), select(vec4<bool>(false, select(true, true, true), true, true), vec4<bool>(true, true, -1i <= u_input.c.x, true), true), vec4<bool>(true, true, true, false)));
    global0 = reverseBits(u_input.c);
    global0 = u_input.c;
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * 327f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(876f - 989f) + -289f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -105f) - _wgslsmith_f_op_f32(f32(-1f) * -2176f))) + _wgslsmith_f_op_vec3_f32(func_3(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(231f, 1084f) * vec2<f32>(-359f, 562f))), -1i, Struct_3(global0.zx ^ u_input.c.yx, Struct_1(1i, u_input.a, 118f, -1568f), true, Struct_2(vec3<f32>(-1000f, 1743f, -1493f), Struct_1(u_input.c.x, 1u, -327f, 1000f), u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-275f, 641f, -436f) - vec3<f32>(-1000f, 824f, -371f)))))), Struct_1(-32725i, 1u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1295f + 179f) + 1132f))), _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(151f, -770f)), _wgslsmith_f_op_f32(-334f * 774f), true))))), ~(~0u) << (reverseBits(u_input.a) % 32u));
    let var_2 = Struct_3(countOneBits(vec2<i32>(~1i, ~var_1.b.a)) ^ ~select(global0.yy, global0.wx, vec2<bool>(true, true)), Struct_1(min(~global0.x, _wgslsmith_div_i32(abs(0i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.b.a, 0i), global0.zz))), firstLeadingBit(0u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.b.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1276f * -832f))), _wgslsmith_f_op_f32(-var_1.b.c)), true, Struct_2(vec3<f32>(-2105f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3797f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.d) * 987f)), var_1.b, var_1.c), _wgslsmith_div_vec3_f32(var_1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-604f, var_1.b.c, var_1.a.x)))));
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    let var_1 = -1216f;
    var var_2 = func_1();
    var_2 = func_1();
    var_2 = Struct_3(max(vec2<i32>(22011i, -global0.x | _wgslsmith_clamp_i32(global0.x, u_input.c.x, u_input.c.x)), _wgslsmith_mult_vec2_i32(global0.zw, u_input.c.zx) & ~select(vec2<i32>(var_2.d.b.a, global0.x), vec2<i32>(1i, -93949i), true)), func_1().b, true, var_2.d, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.e) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.e + vec3<f32>(var_1, -436f, 486f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1497f, var_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -199f) - _wgslsmith_f_op_f32(1386f - _wgslsmith_f_op_f32(step(1000f, var_2.e.x)))))), ~_wgslsmith_clamp_vec3_i32(_wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-41418i, var_2.d.b.a, -55469i), global0.xyz), global0.wwy | u_input.c.xyz, _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.b.a, global0.x, global0.x), vec3<i32>(global0.x, 2147483647i, var_2.a.x))), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(u_input.c.x, global0.x, -31587i)), vec3<i32>(var_2.b.a, global0.x, global0.x)), u_input.c.wxw), ~abs(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(var_2.b.b, 38992u) >> (vec2<u32>(31766u, 4294967295u) % vec2<u32>(32u)))));
}

