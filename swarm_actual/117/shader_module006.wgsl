struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = arg_2;
    var var_1 = arg_2;
    global0 = arg_2;
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-638f, 544f)))), max(var_1.b, firstLeadingBit(select(~var_0.b, vec3<i32>(15602i, u_input.c.x, 6331i), true))));
    var var_2 = true || !arg_3.x;
    return vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_div_f32(2014f, var_0.a.x), true))), _wgslsmith_div_f32(1291f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1337f), arg_2.a.x)), any(select(vec2<bool>(arg_3.x, arg_3.x), arg_3, true)) | !arg_3.x)), 831f);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: bool) -> vec3<i32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(arg_0.wz)), global0.b);
    var var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0.a.x), var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) - -1552f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec2<i32>(u_input.d.x, -6988i), ~vec3<u32>(u_input.b.x, 4294967295u, 4294967295u), Struct_1(arg_0.zx, u_input.c.zzw), vec2<bool>(arg_2, true)))), any(vec3<bool>(arg_2, arg_2, arg_2)) && (!arg_2 & true))), _wgslsmith_mod_vec3_i32((_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, 2147483647i, var_0.b.x), u_input.c.xxx) ^ firstTrailingBit(global0.b)) >> (~(vec3<u32>(1u, 4294967295u, u_input.b.x) << (vec3<u32>(1u, 0u, 4294967295u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(~2147483647i, 1i, ~14836i), select(select(vec3<i32>(u_input.c.x, u_input.d.x, var_0.b.x), vec3<i32>(10762i, var_0.b.x, global0.b.x), vec3<bool>(true, false, false)), _wgslsmith_sub_vec3_i32(var_0.b, vec3<i32>(global0.b.x, u_input.c.x, -2147483647i)), vec3<bool>(true, true, false)))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-arg_0.yw))), var_2.b);
    return u_input.c.zzx;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    var var_0 = max(-_wgslsmith_mult_vec3_i32(global0.b, func_2(vec4<f32>(global0.a.x, 1000f, global0.a.x, 1407f), global0.a.x, false) >> (vec3<u32>(28484u, u_input.a.x, u_input.b.x) % vec3<u32>(32u))), -vec3<i32>(global0.b.x, 60841i | ~global0.b.x, 6364i));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(412f, global0.a.x)), global0.a)))), vec3<i32>(-var_0.x, -select(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.b.x, global0.b.x), vec2<i32>(-17727i, var_0.x)), func_2(vec4<f32>(arg_0.a.x, -1154f, arg_0.a.x, 806f), 1244f, true).x, true), -global0.b.x));
    var var_1 = ~vec4<u32>(max(~firstLeadingBit(9963u), 0u), _wgslsmith_sub_u32(u_input.a.x, ~(~u_input.b.x)), countOneBits(countOneBits(arg_1)), firstTrailingBit(~countOneBits(20828u)));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-2884f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(227f)))) + global0.a.x)), _wgslsmith_f_op_f32(global0.a.x - global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.a.x)) + -416f) + 576f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(274f + _wgslsmith_f_op_f32(687f - -229f)), _wgslsmith_f_op_f32(-215f - global0.a.x))));
    var_0 = min(vec3<i32>(u_input.c.x, select(0i, 2147483647i, true), _wgslsmith_mod_i32(2147483647i, -45230i)), (vec3<i32>(-1i) * -_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.x, arg_0.b.x, -19595i), arg_0.b)) >> (vec3<u32>(1u, ~u_input.b.x, 0u) % vec3<u32>(32u)));
    return Struct_1(arg_0.a, ~vec3<i32>(var_0.x, 0i, var_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = firstLeadingBit(~abs(max(vec4<i32>(u_input.d.x, global0.b.x, global0.b.x, u_input.d.x) >> (vec4<u32>(67780u, u_input.a.x, u_input.b.x, 58413u) % vec4<u32>(32u)), u_input.c)));
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), -vec3<i32>(-21533i, var_0.x >> (u_input.b.x % 32u), -1i)), 5663u);
    var var_2 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.a - global0.a))), vec3<i32>(~var_1.b.x, 0i, -var_0.x)), 4294967295u);
    let var_3 = var_1;
    let var_4 = !(!vec3<bool>(true, !all(vec4<bool>(true, false, false, true)), true));
    let var_5 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a.x - var_2.a.x)), var_2.a.x)), func_1(Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(1000f, 648f), vec2<f32>(-562f, 308f)), var_2.b ^ ~vec3<i32>(u_input.c.x, var_1.b.x, 1i)), u_input.a.x).b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(44938u, 4294967295u, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, u_input.b.x, u_input.b.x), vec3<u32>(4294967295u, 4294967295u, u_input.a.x))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b.x, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(16183u, 0u, u_input.a.x), vec3<u32>(u_input.b.x, u_input.a.x, u_input.b.x)))), 31655u), u_input.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(846f, var_3.a.x, var_3.a.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a.x, -1320f, -388f)))) + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_2.a.x, -636f)))))));
}

