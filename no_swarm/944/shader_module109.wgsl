struct Struct_1 {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(-arg_0.a, -vec3<i32>(~u_input.a, select(-25254i, -50295i, true), arg_1.a.x), -vec3<i32>(select(-19305i, 4414i, true), arg_1.a.x, -arg_0.a.x)), select(~vec2<u32>(~arg_1.b.x, 0u >> (arg_0.b.x % 32u)), vec2<u32>(arg_1.b.x, arg_1.b.x), true));
    var var_1 = Struct_1(arg_1.a, vec2<u32>(var_0.b.x, 66218u));
    let var_2 = Struct_1(var_0.a ^ -vec3<i32>(var_1.a.x, arg_0.a.x, 4630i), var_0.b);
    var_1 = arg_1;
    var var_3 = true;
    return _wgslsmith_mult_u32(var_1.b.x, 22194u | var_1.b.x);
}

fn func_2(arg_0: f32, arg_1: f32) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~(~75345u)), abs(1u)), vec2<u32>(func_3(Struct_1(vec3<i32>(2147483647i, -2098i, u_input.a), ~vec2<u32>(45943u, 52987u)), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(-50854i, u_input.a, -5114i), vec3<i32>(u_input.a, -17904i, u_input.a)), vec2<u32>(1u, 1u))), ~21060u));
    let var_1 = ~(~vec2<u32>(~1u, ~max(14668u, 94861u)));
    var_0 = _wgslsmith_clamp_u32(countOneBits(var_1.x), reverseBits(var_1.x), ~_wgslsmith_mod_u32(~8709u, 10105u));
    let var_2 = Struct_1(min(~(~vec3<i32>(u_input.a, u_input.a, u_input.a)) | vec3<i32>(_wgslsmith_add_i32(u_input.a, u_input.a), reverseBits(u_input.a), ~0i), _wgslsmith_sub_vec3_i32(vec3<i32>(15059i, min(u_input.a, -57727i), abs(0i)), (vec3<i32>(u_input.a, 0i, u_input.a) << (vec3<u32>(var_1.x, var_1.x, var_1.x) % vec3<u32>(32u))) >> (~vec3<u32>(48498u, 1u, var_1.x) % vec3<u32>(32u)))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(var_1, vec2<u32>(var_1.x, 1u)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), var_1, var_1), vec2<u32>(1u, _wgslsmith_add_u32(var_1.x, var_1.x))), vec2<u32>(0u, ~_wgslsmith_div_u32(4294967295u, 96117u))));
    var_0 = 4294967295u;
    return var_2.a.x;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var var_1 = Struct_1(~(vec3<i32>(-21957i, -2147483647i, func_2(1044f, 385f)) ^ var_0.a), vec2<u32>(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.b.x, 0u, 1u), select(vec3<u32>(arg_1.b.x, 23882u, var_0.b.x), vec3<u32>(arg_1.b.x, 4294967295u, var_0.b.x), true))), arg_1.b.x));
    let var_2 = arg_0;
    var_1 = Struct_1(vec3<i32>(var_0.a.x, ~arg_1.a.x, 35006i), var_0.b);
    var_1 = arg_0;
    return -325f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2840f, _wgslsmith_f_op_f32(select(-233f, -363f, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec3<i32>(-1i, 9100i, -53119i), vec2<u32>(60646u, 45166u)), Struct_1(vec3<i32>(u_input.a, 1i, u_input.a), vec2<u32>(1u, 1u)))))), -1734f))));
    var var_1 = Struct_1(max(vec3<i32>(~countOneBits(35042i), 0i, ~1i), reverseBits(vec3<i32>(min(u_input.a, u_input.a), -u_input.a, 6150i))), ~vec2<u32>(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(14753u, 12078u), vec2<u32>(14857u, 31416u)), ~vec2<u32>(13434u, 20927u))));
    let var_2 = firstTrailingBit(4294967295u) & var_1.b.x;
    var var_3 = Struct_1(_wgslsmith_mult_vec3_i32(vec3<i32>((u_input.a | u_input.a) & 7815i, u_input.a, -1i), -vec3<i32>(var_1.a.x, _wgslsmith_sub_i32(u_input.a, u_input.a), 35484i)), vec2<u32>(var_1.b.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 59662u, var_1.b.x) ^ vec3<u32>(var_2, 82093u, var_2), vec3<u32>(var_2, var_1.b.x, var_1.b.x))));
    var_0 = -1847f;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(var_1.a.yx));
}

