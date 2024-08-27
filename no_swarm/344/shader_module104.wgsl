struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: Struct_1,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2() -> Struct_2 {
    var var_0 = abs(~(global1.b & -11641i)) <= 0i;
    global0 = firstTrailingBit(-global1.a.d.x);
    global0 = _wgslsmith_div_i32(u_input.a.x, global1.a.d.x);
    var_0 = true;
    let var_1 = ~u_input.b.x;
    return Struct_2(Struct_1(1099f, var_1, global1.a.c, vec4<i32>(1i, -10581i, -(~2147483647i), abs(18504i))), -1i);
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: Struct_1) -> i32 {
    var var_0 = vec4<u32>(0u, arg_2.x, 59672u, max(max(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2, arg_2), _wgslsmith_mult_u32(9569u, u_input.b.x)), 39933u), ~countOneBits(~arg_2.x)));
    var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.b | _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, var_0.x, arg_2.x, var_0.x), vec4<u32>(34153u, 79390u, u_input.b.x, arg_2.x)), ~(~4294967295u), ~35151u, _wgslsmith_clamp_u32(abs(global1.a.b), arg_2.x >> (34679u % 32u), arg_3.b >> (0u % 32u))), ~vec4<u32>(4294967295u, firstLeadingBit(60366u), _wgslsmith_add_u32(0u, 0u), reverseBits(u_input.b.x))), abs(vec4<u32>(arg_2.x, 4294967295u, global1.a.b, 10793u)));
    var var_1 = vec2<bool>(true, all(select(vec3<bool>(true, true, select(true, true, true)), vec3<bool>(true, true, true), true)));
    let var_2 = arg_3;
    var var_3 = global1.a.d.yzw;
    return 38645i << (min(reverseBits(max(arg_3.b, ~4294967295u)), _wgslsmith_add_u32(_wgslsmith_mult_u32(26819u, arg_2.x) >> (0u % 32u), 1u)) % 32u);
}

fn func_1() -> Struct_3 {
    global1 = Struct_2(Struct_1(-824f, 0u, global1.a.c, _wgslsmith_clamp_vec4_i32(~vec4<i32>(2147483647i, 0i, -1i, -1i), select(_wgslsmith_mult_vec4_i32(vec4<i32>(-16843i, 0i, u_input.a.x, 1i), vec4<i32>(global1.a.d.x, global1.b, -1i, u_input.a.x)), vec4<i32>(18097i, -1i, u_input.a.x, 0i), vec4<bool>(true, true, true, true)), global1.a.d)), _wgslsmith_add_i32(2147483647i, -global1.a.d.x));
    var var_0 = func_2();
    global0 = -(-1i | (func_3(vec2<f32>(618f, global1.a.a), u_input.a.x, u_input.b, Struct_1(var_0.a.a, 1u, global1.a.c, vec4<i32>(-2147483647i, 2147483647i, u_input.a.x, global1.b))) & var_0.a.d.x)) << (u_input.b.x % 32u);
    let var_1 = _wgslsmith_dot_vec3_u32(~(~vec3<u32>(max(var_0.a.b, 4294967295u), _wgslsmith_div_u32(7551u, global1.a.b), abs(u_input.b.x))), (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b.x, global1.a.b, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, 0u)) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.b, u_input.b.x, u_input.b.x), firstLeadingBit(vec3<u32>(25079u, 12029u, 4294967295u)), max(vec3<u32>(0u, u_input.b.x, 28192u), vec3<u32>(14956u, global1.a.b, var_0.a.b))) % vec3<u32>(32u))) & (vec3<u32>(30859u, global1.a.b, global1.a.b) >> (_wgslsmith_sub_vec3_u32(vec3<u32>(global1.a.b, 1u, 40991u) | vec3<u32>(0u, global1.a.b, global1.a.b), vec3<u32>(u_input.b.x, var_0.a.b, u_input.b.x)) % vec3<u32>(32u))));
    let var_2 = var_0.a;
    return Struct_3(reverseBits(vec4<u32>(global1.a.b, ~1u, ~var_1 ^ 4294967295u, global1.a.b)), ~var_0.a.d.yz, vec3<u32>(1u, min(~(~var_0.a.b), _wgslsmith_dot_vec2_u32(~u_input.b, vec2<u32>(var_2.b, var_0.a.b) ^ u_input.b)), countOneBits(max(_wgslsmith_div_u32(51338u, var_0.a.b), var_2.b))), Struct_1(var_0.a.a, firstLeadingBit(45953u), var_0.a.c, countOneBits(global1.a.d)), Struct_2(var_0.a, var_0.b));
}

fn func_4(arg_0: Struct_3) -> Struct_3 {
    global1 = arg_0.e;
    global0 = u_input.a.x;
    let var_0 = global1.a.d.x;
    let var_1 = func_1().e;
    var var_2 = vec3<bool>(!all(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), !select(true, false, all(vec3<bool>(true, true, true))), false);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1());
    let var_1 = 12372i;
    let var_2 = _wgslsmith_f_op_f32(max(func_1().d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_4(Struct_3(var_0.a, u_input.a.zx, vec3<u32>(u_input.b.x, 1u, 54740u), Struct_1(-1345f, 4294967295u, vec2<f32>(-875f, -279f), vec4<i32>(var_1, global1.b, var_1, u_input.a.x)), Struct_2(global1.a, 2147483647i))).d.a, _wgslsmith_f_op_f32(round(1138f)))))));
    let var_3 = func_4(Struct_3(func_1().a, (var_0.b << (_wgslsmith_add_vec2_u32(vec2<u32>(162u, global1.a.b), u_input.b) % vec2<u32>(32u))) >> (~(~var_0.a.zx) % vec2<u32>(32u)), vec3<u32>(max(~u_input.b.x, _wgslsmith_add_u32(49559u, 5151u)), func_4(func_1()).a.x, firstLeadingBit(global1.a.b)), global1.a, Struct_2(global1.a, 13056i)));
    var_0 = func_4(func_1());
    var_0 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(countOneBits(countOneBits(u_input.b >> (vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u))))), func_1().e.a.d.zy, 1241f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.e.a.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.a, -296f))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(381f, var_0.e.a.a)))))));
}

