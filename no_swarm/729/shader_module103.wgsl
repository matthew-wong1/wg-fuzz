struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<bool>;

var<private> global2: Struct_2;

var<private> global3: vec2<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: vec2<i32>) -> u32 {
    global0 = ~vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(global0.x, arg_3.x, -12490i, global3.x), vec4<i32>(arg_3.x & global2.a, 1i, abs(global3.x), 1i)), global3.x, countOneBits(1i), -43832i);
    let var_0 = countOneBits(vec2<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_div_u32(arg_1.x, arg_0.a.x), 5745u, ~u_input.a.x, ~58787u), abs(~vec4<u32>(26071u, u_input.a.x, 52060u, 4294967295u)))));
    let var_1 = true;
    global2 = arg_2;
    let var_2 = arg_2;
    return ~var_0.x;
}

fn func_4(arg_0: u32) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec3_u32(max(vec3<u32>(select(21919u, ~3550u, global1.x), max(4294967295u, reverseBits(u_input.a.x)), _wgslsmith_mod_u32(_wgslsmith_div_u32(arg_0, 1u), select(0u, 0u, false))), ~abs(vec3<u32>(1u, 0u, 41203u)) >> (firstLeadingBit(~vec3<u32>(arg_0, arg_0, 20814u)) % vec3<u32>(32u))), vec3<u32>(~(~(~arg_0)), select(~(~u_input.a.x), 1u, all(global1.xz)), _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0, u_input.a.x) << (vec2<u32>(1u, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 91042u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, 3210u, arg_0), vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 16589u)), 28822u >> (1u % 32u)))));
    let var_1 = _wgslsmith_dot_vec2_u32(min(_wgslsmith_mult_vec2_u32(select(countOneBits(var_0.yx), vec2<u32>(4294967295u, 606u), global1.x), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), u_input.a)), firstLeadingBit(var_0.yy)), var_0.yx);
    let var_2 = (((~global2.a >> (_wgslsmith_add_u32(1u, 0u) % 32u)) >> (_wgslsmith_mult_u32(reverseBits(arg_0), 1u) % 32u)) | global2.a) >> (1u % 32u);
    global1 = !select(vec3<bool>(true, false, all(!vec4<bool>(true, global1.x, false, global1.x))), !select(vec3<bool>(false, global1.x, true), vec3<bool>(global1.x, true, true), true), true);
    var var_3 = global1.x;
    return firstTrailingBit(select(~vec4<i32>(var_2, -1i, 0i, -32240i) >> (select(vec4<u32>(var_1, var_1, 1u, var_0.x), vec4<u32>(u_input.a.x, 13176u, var_1, 121070u), true) % vec4<u32>(32u)), -vec4<i32>(global2.a, -1i, global3.x, -2779i) | min(vec4<i32>(var_2, -1i, -2147483647i, -16251i), vec4<i32>(global0.x, 1i, 30579i, global2.a)), !select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, global1.x, false, false)))) ^ vec4<i32>(~(var_2 & _wgslsmith_mult_i32(global2.a, var_2)), _wgslsmith_add_i32(-9374i, -527i), global0.x, -1i);
}

fn func_2() -> vec2<u32> {
    let var_0 = countOneBits(global0.zzy);
    let var_1 = -1199f;
    global0 = func_4(func_3(Struct_1(vec3<u32>(43051u, _wgslsmith_add_u32(1u, u_input.a.x), ~u_input.a.x)), abs(~min(vec3<u32>(u_input.a.x, u_input.a.x, 30009u), vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x))), Struct_2(2147483647i), var_0.xx));
    var var_2 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(-1000f)), var_1, var_1), vec3<f32>(_wgslsmith_div_f32(330f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, -690f)))), _wgslsmith_f_op_f32(-var_1), 438f));
    var var_3 = -12867i;
    return ~vec2<u32>(~29463u, u_input.a.x & ~(~u_input.a.x));
}

fn func_1(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = select(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(func_2(), _wgslsmith_add_vec2_u32(arg_0.a.xy, arg_0.a.yz)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, u_input.a.x), _wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, arg_0.a.x)), ~vec2<u32>(u_input.a.x, 0u)) % vec2<u32>(32u)), arg_0.a.yz), select(vec2<u32>(u_input.a.x, ~firstLeadingBit(u_input.a.x)), _wgslsmith_div_vec2_u32(arg_0.a.zy, arg_0.a.yy), select(global1.xy, vec2<bool>(global1.x, true), select(!vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), select(global1.xy, vec2<bool>(global1.x, true), global1.xz)))), true);
    var var_1 = true;
    let var_2 = -abs(1i);
    global2 = Struct_2(23070i | _wgslsmith_dot_vec2_i32(-(global0.yw ^ vec2<i32>(1i, 24276i)), global0.xx));
    var_0 = vec2<u32>(max(1u, _wgslsmith_mod_u32(_wgslsmith_mult_u32(u_input.a.x, 1u), var_0.x)), var_0.x);
    return vec4<bool>(false & (reverseBits(0u ^ u_input.a.x) < ~arg_0.a.x), global1.x, all(vec2<bool>(true, true)) & true, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 47205u;
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(222f * 185f))), 992f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -181f) + _wgslsmith_f_op_f32(step(-583f, 1073f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(249f, -856f), _wgslsmith_f_op_f32(f32(-1f) * -906f), 1178f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(638f, 2017f, -467f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-975f, 1602f, -320f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-103f + -846f)), 1f, 869f)))));
    var_0 = 34914u;
    global1 = vec3<bool>(!all(vec4<bool>(false, !global1.x, any(global1.yx), global1.x | false)), any(select(!(!vec4<bool>(true, global1.x, false, false)), select(vec4<bool>(global1.x, true, true, global1.x), vec4<bool>(true, true, true, true), func_1(Struct_1(vec3<u32>(1u, 29838u, 85138u)))), true)), func_1(Struct_1(vec3<u32>(~26677u, _wgslsmith_div_u32(10633u, u_input.a.x), 1u))).x);
    global1 = select(vec3<bool>(true, false, !any(global1.xy)), select(select(!select(vec3<bool>(false, true, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, global1.x, false)), vec3<bool>(true, true, global1.x), select(!vec3<bool>(false, true, global1.x), vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x))), vec3<bool>((0u >= u_input.a.x) && (1i <= global3.x), (var_1.x > var_1.x) | true, global1.x), global1.x), !(select(!global1.x, global1.x, global1.x) & false));
    global3 = -_wgslsmith_div_vec2_i32(select(-vec2<i32>(-1381i, -2147483647i), _wgslsmith_sub_vec2_i32(global0.wy, global0.zy), global1.yy) | global0.yz, _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_div_vec2_i32(global0.yx, global0.zw), min(global0.wy, global0.xz)), global0.xw));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1460f)), vec2<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-877f, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), var_1.x, vec4<u32>(func_3(Struct_1(vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x) & vec3<u32>(u_input.a.x, 1u, u_input.a.x)), ~(vec3<u32>(u_input.a.x, 4294967295u, 1460u) & vec3<u32>(u_input.a.x, u_input.a.x, 0u)), Struct_2(~16116i), _wgslsmith_add_vec2_i32(~global0.zz, _wgslsmith_mod_vec2_i32(global0.xx, vec2<i32>(global2.a, global0.x)))), ~u_input.a.x, select(firstTrailingBit(u_input.a.x), 37305u, func_1(Struct_1(vec3<u32>(1u, 11447u, 4294967295u))).x), func_3(Struct_1(abs(vec3<u32>(1u, 7967u, 4294967295u))), firstTrailingBit(~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x)), Struct_2(-25122i), -_wgslsmith_sub_vec2_i32(vec2<i32>(global3.x, 2147483647i), global0.xy))), 21371u);
}

