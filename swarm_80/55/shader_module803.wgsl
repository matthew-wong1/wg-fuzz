struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: vec2<bool>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: u32) -> i32 {
    var var_0 = vec3<u32>(14201u, 0u, ~8973u);
    global1 = array<vec2<f32>, 18>();
    var var_1 = arg_1;
    var_1 = Struct_1(4294967295u);
    var var_2 = Struct_1(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, ~arg_3, ~var_0.x)), firstTrailingBit(_wgslsmith_mod_vec3_u32(arg_2, arg_2) >> (vec3<u32>(arg_3, global0.a, 9145u) % vec3<u32>(32u)))));
    return -9805i;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = !global2.x;
    var_0 = all(!vec3<bool>(global2.x, _wgslsmith_f_op_f32(trunc(1660f)) <= _wgslsmith_f_op_f32(round(-612f)), global2.x));
    var_0 = global2.x;
    let var_1 = -_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 0i, func_3(Struct_1(arg_0), Struct_1(62132u), vec3<u32>(global0.a, global0.a, u_input.b.x), 4294967295u)), vec3<i32>(u_input.c, -86537i, 1i)), vec3<i32>(u_input.c << (17275u % 32u), u_input.c, 1i));
    return Struct_1(~arg_0);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> f32 {
    global1 = array<vec2<f32>, 18>();
    global2 = !select(vec2<bool>(!global2.x && global2.x, any(select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), false))), vec2<bool>(all(!vec3<bool>(global2.x, global2.x, global2.x)), true), select(vec2<bool>(all(vec4<bool>(true, true, global2.x, global2.x)), any(vec3<bool>(false, true, global2.x))), select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, global2.x), vec2<bool>(true, false)), vec2<bool>(false, global2.x)), true));
    global0 = Struct_1(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(7559u, 8983u), u_input.e.yy)));
    let var_0 = _wgslsmith_mult_vec4_u32(abs(~u_input.b) >> (firstLeadingBit(countOneBits(vec4<u32>(0u, u_input.a, u_input.b.x, 79693u) << (u_input.b % vec4<u32>(32u)))) % vec4<u32>(32u)), select(u_input.b, _wgslsmith_add_vec4_u32(vec4<u32>(arg_1.a ^ 115698u, 71562u & u_input.b.x, arg_1.a, ~0u), u_input.b), false));
    var var_1 = -455f;
    return 341f;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-538f)) + _wgslsmith_f_op_f32(f32(-1f) * -1681f));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(2468f, 1000f)))), _wgslsmith_f_op_f32(func_4(u_input.c, func_2(global0.a), 815f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -527f))))));
    return func_2(51187u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(!vec2<bool>(all(!vec2<bool>(global2.x, global2.x)), !(!global2.x)), !(!select(vec2<bool>(global2.x, global2.x), vec2<bool>(true, global2.x), global2.x)), select(select(select(!vec2<bool>(global2.x, global2.x), vec2<bool>(true, true), !vec2<bool>(false, global2.x)), select(vec2<bool>(false, false), select(vec2<bool>(false, global2.x), vec2<bool>(false, global2.x), false), true), vec2<bool>(true, true)), !(!vec2<bool>(global2.x, true)), vec2<bool>(true, true)));
    global0 = Struct_1(7284u);
    var var_0 = vec3<bool>(any(!select(select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, true), vec2<bool>(true, true)), select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), vec2<bool>(false, true)), select(vec2<bool>(global2.x, true), vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-1188f)))))) == _wgslsmith_f_op_f32(floor(-758f)), false);
    global1 = array<vec2<f32>, 18>();
    var var_1 = func_1();
    let var_2 = 846f;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(2147483647i, Struct_1(var_1.a), _wgslsmith_f_op_f32(max(-1769f, _wgslsmith_div_f32(var_2, _wgslsmith_div_f32(var_2, var_2)))))));
    let var_4 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.c, _wgslsmith_mod_i32(firstTrailingBit(min(0i, -2147483647i)), u_input.c)), ~(~var_4.a >> (var_4.a % 32u)), _wgslsmith_mod_vec2_i32(select(~vec2<i32>(45638i, 30327i), min(vec2<i32>(u_input.c, -2866i), vec2<i32>(u_input.c, u_input.c)) | _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.c, u_input.c), vec2<i32>(u_input.c, u_input.c), vec2<i32>(-45862i, u_input.c)), 4294967295u < _wgslsmith_mod_u32(global0.a, u_input.a)), vec2<i32>(0i, max(-u_input.c, -3143i))), _wgslsmith_f_op_f32(var_2 - 1720f));
}

