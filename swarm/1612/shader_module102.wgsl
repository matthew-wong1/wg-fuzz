struct Struct_1 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(-822f, -1661f, 486f, -417f, -184f, 726f, -1010f, -318f, 1904f, -1716f, 267f, -506f, -864f, -588f, 785f);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1450f) + -1000f);
    var_1 = global0[_wgslsmith_index_u32(abs(arg_0.c), 15u)];
    let var_2 = select(select(select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), vec2<bool>(true, true), countOneBits(arg_0.b.x) <= arg_0.b.x), !(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), false))), select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true)), vec2<bool>(true, all(vec3<bool>(false, true, false))), vec2<bool>(49653i > arg_0.b.x, all(vec3<bool>(true, true, true)))), select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), false), vec2<bool>(true, true)), vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(16803u, 15u)], global0[_wgslsmith_index_u32(4294967295u, 15u)], -1284f)), vec3<f32>(2162f, global0[_wgslsmith_index_u32(arg_0.c, 15u)], 329f))))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_0.c << (arg_0.c % 32u), 15u)] - -411f)), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(17851u, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, global0[_wgslsmith_index_u32(var_0.c, 15u)])) - _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(0u, 15u)]))))));
    return i32(-1i) * -1i;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec2<u32>(_wgslsmith_mult_u32(4294967295u & (u_input.a | u_input.a), 1u), _wgslsmith_mult_u32(4294967295u, 0u)), vec2<i32>(1i, 1i), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.a, u_input.a), ~1u)));
    var var_1 = select(vec4<bool>(!all(vec2<bool>(false, true)), (func_3(Struct_1(var_0.a, var_0.b, 1u)) >> (8364u % 32u)) == (0i ^ ~var_0.b.x), any(vec3<bool>(true, true, var_0.c <= 45306u)), select(true, true, select(true, any(vec3<bool>(true, true, true)), true))), vec4<bool>(true, true, true, true), -_wgslsmith_mult_i32(var_0.b.x, var_0.b.x) != 6151i);
    var var_2 = var_1.xz;
    let var_3 = var_0;
    var var_4 = Struct_1(var_3.a, var_0.b, min(var_3.c, var_0.a.x));
    return _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(var_3.a | ~abs(var_3.a), var_3.a), ~_wgslsmith_clamp_u32(0u, _wgslsmith_add_u32(4294967295u, var_3.a.x), select(var_0.c, 0u, var_2.x)) << (_wgslsmith_div_u32(_wgslsmith_mult_u32(60570u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 17256u, 61370u, var_3.c), vec4<u32>(u_input.a, u_input.a, 40648u, 4294967295u))), _wgslsmith_dot_vec2_u32(~vec2<u32>(var_4.a.x, 43235u), ~var_0.a)) % 32u), _wgslsmith_add_u32(countOneBits(1u), ~var_3.c));
}

fn func_1() -> Struct_1 {
    let var_0 = ~2147483647i;
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    var var_1 = firstTrailingBit(firstTrailingBit(~u_input.a));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(42259u, 15u)], -850f)), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -371f), -646f))))));
    return Struct_1(vec2<u32>(_wgslsmith_sub_u32(u_input.a, _wgslsmith_clamp_u32(11045u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 12485u, 1u), vec3<u32>(1u, 11380u, u_input.a)), u_input.a)), func_2() & abs(u_input.a)), vec2<i32>(1i, abs(-_wgslsmith_sub_i32(var_0, -100001i))), u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> vec2<u32> {
    var var_0 = func_1();
    var var_1 = reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(~(~vec4<i32>(arg_0.b.x, var_0.b.x, 22685i, var_0.b.x)), abs(-vec4<i32>(var_0.b.x, arg_0.b.x, 2147483647i, -2147483647i))), vec4<i32>(reverseBits(13763i), ~1i, ~(-1i), -32206i) ^ -vec4<i32>(var_0.b.x, var_0.b.x, 23701i, 1167i)));
    let var_2 = var_0.b;
    let var_3 = arg_0;
    var var_4 = func_1();
    return vec2<u32>(1u, ~(~0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 15>();
    global0 = array<f32, 15>();
    let var_0 = Struct_1(max(_wgslsmith_clamp_vec2_u32(func_4(func_1(), select(1u, u_input.a, false)), func_4(Struct_1(vec2<u32>(21705u, u_input.a), vec2<i32>(-2147483647i, 20085i), 22839u), u_input.a) | (vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(8859u, 0u) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(vec2<u32>(73807u, 4523u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 16124u))), select(vec2<u32>(u_input.a, 4294967295u) & vec2<u32>(42780u, u_input.a), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 19073u), vec2<u32>(u_input.a, 1u)), vec2<bool>(true, true)) << (vec2<u32>(~u_input.a, u_input.a) % vec2<u32>(32u))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-124i, firstTrailingBit(-49388i)), 19462i), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-31939i, -23902i, -2147483647i), vec3<i32>(1i, 4553i, -54519i)), _wgslsmith_add_vec3_i32(vec3<i32>(-6587i, -41279i, 8061i), vec3<i32>(-2270i, 0i, 0i))), _wgslsmith_dot_vec3_i32(max(vec3<i32>(-2147483647i, 16604i, 20425i), vec3<i32>(-1i, -1i, 2147483647i)), ~vec3<i32>(-19033i, -2147483647i, 26223i)))), u_input.a);
    global0 = array<f32, 15>();
    var var_1 = vec3<u32>(var_0.c, var_0.a.x, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(-vec2<i32>(var_0.b.x, var_0.b.x), ~reverseBits(abs(vec3<u32>(59280u, u_input.a, 74242u) & vec3<u32>(0u, 26019u, var_1.x))));
}

