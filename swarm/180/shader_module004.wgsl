struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<vec4<f32>, 27>;

var<private> global2: Struct_1;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec2<f32>, arg_3: vec2<i32>) -> vec4<bool> {
    global0 = array<Struct_1, 9>();
    global0 = array<Struct_1, 9>();
    global2 = arg_0;
    return !(!select(vec4<bool>(false, select(true, true, false), false, true), vec4<bool>(true, true, any(vec4<bool>(false, true, true, false)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 10808i, 2147483647i, 29207i), vec4<i32>(-1i, arg_3.x, 14180i, -9393i)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.d.x), vec2<i32>(5885i, u_input.c))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = u_input.d.x & 49118i;
    let var_1 = select(func_3(arg_2, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -197f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(258f, 676f) - -516f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-405f * -557f) + _wgslsmith_f_op_f32(f32(-1f) * -880f)), _wgslsmith_f_op_f32(990f + _wgslsmith_f_op_f32(653f * -1238f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1081f, 758f)))), _wgslsmith_add_vec2_i32(-vec2<i32>(-8674i, var_0), vec2<i32>(-u_input.c, _wgslsmith_mult_i32(-1i, 1014i)))), select(select(arg_1, select(arg_3.b, arg_3.b, arg_1), !(!arg_1)), arg_3.b, true), true);
    global1 = array<vec4<f32>, 27>();
    global0 = array<Struct_1, 9>();
    global2 = global0[_wgslsmith_index_u32(arg_3.a.x, 9u)];
    return !func_3(Struct_1(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, 51054u, 8280u)) | (global2.a << (vec4<u32>(0u, arg_3.a.x, 5183u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(208f, 1364f, 1000f, -312f)) - global1[_wgslsmith_index_u32(1u, 27u)]), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1094f, 1768f) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1346f, -889f), vec2<f32>(-887f, 359f)))))), vec2<i32>(-53801i, _wgslsmith_dot_vec2_i32(u_input.d, vec2<i32>(1i, -1i))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> vec4<bool> {
    var var_0 = Struct_2(~(~(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_2.a.x, arg_0.a.x, 4294967295u), global2.a, arg_0.a) >> (~vec4<u32>(arg_2.a.x, 110233u, arg_3.x, 1u) % vec4<u32>(32u)))), select(vec4<bool>(any(arg_2.b.yxx) != (arg_1.x > 1170f), true, !(!arg_2.b.x), any(vec2<bool>(false, arg_2.b.x))), arg_2.b, arg_2.b.x || (_wgslsmith_f_op_f32(abs(arg_1.x)) != _wgslsmith_f_op_f32(max(arg_1.x, 127f)))));
    global2 = Struct_1(vec4<u32>(firstLeadingBit(0u), global2.a.x, ~878u, 4294967295u));
    let var_1 = Struct_2(min(global2.a, vec4<u32>(28515u, _wgslsmith_add_u32(global2.a.x, 1u), ~(~0u), 1u)), func_4(vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x), func_3(Struct_1(~vec4<u32>(arg_0.a.x, global2.a.x, 53405u, global2.a.x)), global1[_wgslsmith_index_u32(~(~0u), 27u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.zz, vec2<f32>(arg_1.x, arg_1.x)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(arg_1.x, arg_1.x), arg_2.b.x))), vec2<i32>(~(-38209i), _wgslsmith_mult_i32(u_input.c, 2147483647i))), Struct_1(arg_0.a), arg_2));
    var var_2 = arg_2;
    var var_3 = _wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.zz, ~arg_3), ~arg_3) | ~(~_wgslsmith_add_vec2_u32(arg_0.a.wz, vec2<u32>(1u, 4294967295u)) | (countOneBits(vec2<u32>(arg_2.a.x, global2.a.x)) << (vec2<u32>(16435u, arg_2.a.x) % vec2<u32>(32u))));
    return func_4(var_0.b.zwy, vec4<bool>(var_2.b.x, true, any(var_1.b.yxy), !var_1.b.x), Struct_1(abs(countOneBits(vec4<u32>(var_1.a.x, var_2.a.x, arg_0.a.x, 4294967295u)))), arg_2);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(global2.a, vec4<bool>(any(func_2(Struct_1(global2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(886f, -588f, 148f)), Struct_2(global2.a, vec4<bool>(false, false, false, true)), min(vec2<u32>(u_input.b.x, u_input.a.x), vec2<u32>(4294967295u, 1u)))), true, false, !func_2(global0[_wgslsmith_index_u32(~global2.a.x, 9u)], vec3<f32>(1f, 1f, 1f), Struct_2(global2.a, vec4<bool>(false, false, false, false)), ~global2.a.wz).x));
    let var_1 = 34069u;
    var_0 = Struct_2(firstTrailingBit(vec4<u32>(15406u, 48172u, ~var_1, ~_wgslsmith_mult_u32(u_input.e.x, global2.a.x))), select(!(!func_3(Struct_1(vec4<u32>(4582u, 0u, 0u, 51511u)), vec4<f32>(-827f, -1000f, -264f, -203f), vec2<f32>(-394f, 1000f), vec2<i32>(u_input.c, -18062i))), var_0.b, false));
    let var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(-310f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-434f, -212f)) - _wgslsmith_f_op_f32(step(-307f, -1754f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1099f), _wgslsmith_f_op_f32(f32(-1f) * -454f), true))))));
    let var_3 = u_input.e;
    return Struct_1(countOneBits(vec4<u32>(var_0.a.x, ~_wgslsmith_div_u32(var_3.x, 1u), firstTrailingBit(select(78774u, var_1, true)), abs(_wgslsmith_div_u32(global2.a.x, 813u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    global2 = func_1();
    global2 = global0[_wgslsmith_index_u32(73546u, 9u)];
    var var_1 = ~_wgslsmith_mult_u32(countOneBits(~func_1().a.x), u_input.e.x);
    let var_2 = select(-vec3<i32>(-1i, -13629i, u_input.c), -_wgslsmith_mult_vec3_i32(vec3<i32>(1i, u_input.d.x, 0i) | vec3<i32>(u_input.c, u_input.c, u_input.c), select(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.d.x, u_input.c, -18638i), vec3<bool>(true, false, false))), vec3<bool>(select(true, all(vec2<bool>(false, false)), true), true, true)) | (vec3<i32>(-1i, _wgslsmith_add_i32(-41529i, select(-1i, u_input.c, false)), _wgslsmith_mod_i32(10465i, u_input.d.x)) >> (abs(firstTrailingBit(vec3<u32>(global2.a.x, global2.a.x, global2.a.x))) % vec3<u32>(32u)));
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(1u), countOneBits(28311u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(583f, -368f) * vec2<f32>(996f, 230f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(2546f, 363f) * vec2<f32>(-1087f, 761f)))), vec2<f32>(1000f, _wgslsmith_f_op_f32(-305f + -651f))))), max(0i, _wgslsmith_mod_i32(var_2.x, 0i)), -_wgslsmith_sub_i32(39082i, 22702i));
}

