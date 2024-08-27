struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
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

var<private> global0: Struct_4 = Struct_4(Struct_1(-147f, vec4<bool>(true, false, true, true)));

var<private> global1: array<Struct_4, 4> = array<Struct_4, 4>(Struct_4(Struct_1(656f, vec4<bool>(true, true, false, true))), Struct_4(Struct_1(-265f, vec4<bool>(true, false, false, true))), Struct_4(Struct_1(-1227f, vec4<bool>(false, true, true, true))), Struct_4(Struct_1(-1235f, vec4<bool>(false, true, false, false))));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<u32>) -> Struct_4 {
    let var_0 = ~u_input.b;
    return Struct_4(global0.a);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = arg_1.b;
    let var_1 = Struct_3(Struct_2(arg_1.a, func_2(Struct_1(_wgslsmith_div_f32(arg_1.d.a, 942f), arg_1.d.b), !(!vec4<bool>(false, arg_0.a.b.x, false, false)), min(select(vec4<u32>(arg_1.c, 4294967295u, u_input.b.x, arg_3.a.c), u_input.b, true), ~vec4<u32>(u_input.b.x, u_input.b.x, 11619u, arg_1.a.x))).a, abs(19636u), arg_0.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.a + _wgslsmith_f_op_f32(step(-540f, _wgslsmith_f_op_f32(-var_1.a.b.a)))), arg_1.d.a, var_1.a.d.a) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1210f, arg_0.a.a, arg_1.b.a)), vec3<f32>(arg_2.x, 425f, arg_1.b.a)))))));
    let var_3 = vec4<i32>((~(~(-39684i)) ^ select(-u_input.a, 2147483647i | u_input.a, all(var_0.b))) >> (firstTrailingBit(~4294967295u) % 32u), -13139i, max(1i, u_input.a), 1i);
    let var_4 = global1[_wgslsmith_index_u32(arg_1.a.x, 4u)];
    return _wgslsmith_add_vec4_i32(select(_wgslsmith_mult_vec4_i32(var_3, firstTrailingBit(vec4<i32>(-83832i, u_input.a, 26144i, u_input.a))), _wgslsmith_clamp_vec4_i32(~var_3 & _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -8842i, var_3.x, 22955i), vec4<i32>(u_input.a, -1212i, -9772i, var_3.x)), firstTrailingBit(-var_3), var_3), vec4<bool>(var_0.b.x, var_0.b.x, !var_4.a.b.x, select(false, true, var_1.a.c == 0u))), var_3 >> (vec4<u32>(arg_1.a.x, u_input.b.x, abs(28370u), firstLeadingBit(51081u) ^ _wgslsmith_clamp_u32(var_1.a.a.x, u_input.b.x, 68969u)) % vec4<u32>(32u)));
}

fn func_4(arg_0: i32, arg_1: i32) -> Struct_4 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(23367u, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(u_input.b.wyz, u_input.b.wyx), u_input.b.www << (u_input.b.xzx % vec3<u32>(32u))))), 4u)];
    global0 = func_2(func_2(global0.a, !global0.a.b, vec4<u32>(reverseBits(1u), ~max(u_input.b.x, u_input.b.x), 4294967295u, u_input.b.x)).a, vec4<bool>(!func_2(func_2(Struct_1(global0.a.a, vec4<bool>(global0.a.b.x, global0.a.b.x, global0.a.b.x, false)), global0.a.b, vec4<u32>(u_input.b.x, u_input.b.x, 29135u, 132u)).a, func_2(global0.a, vec4<bool>(global0.a.b.x, global0.a.b.x, false, global0.a.b.x), vec4<u32>(u_input.b.x, u_input.b.x, 12316u, 13440u)).a.b, u_input.b).a.b.x, !global0.a.b.x, false, _wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a, -2147483647i), vec2<i32>(0i, arg_1) | vec2<i32>(arg_1, u_input.a)) <= 33540i), ~(~(~(vec4<u32>(4528u, 4294967295u, u_input.b.x, u_input.b.x) ^ vec4<u32>(74629u, 4294967295u, 1u, 0u)))));
    global1 = array<Struct_4, 4>();
    global1 = array<Struct_4, 4>();
    global1 = array<Struct_4, 4>();
    return func_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.a))), vec4<bool>(all(global0.a.b), global0.a.b.x, _wgslsmith_f_op_f32(floor(global0.a.a)) <= _wgslsmith_f_op_f32(697f + global0.a.a), any(vec2<bool>(true, global0.a.b.x)))), vec4<bool>(true | !global0.a.b.x, !(global0.a.b.x && global0.a.b.x), (!global0.a.b.x & !global0.a.b.x) & ((global0.a.b.x || false) || true), true), u_input.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: f32) -> Struct_3 {
    global0 = func_4(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_mult_vec4_i32(vec4<i32>(12271i, -1i, u_input.a, 1213i), vec4<i32>(u_input.a, -15090i, -1i, -6949i)), ~func_3(func_2(Struct_1(arg_1, global0.a.b), vec4<bool>(false, true, false, false), u_input.b), Struct_2(u_input.b.xzz, Struct_1(-1000f, vec4<bool>(true, false, global0.a.b.x, true)), u_input.b.x, Struct_1(-1772f, vec4<bool>(false, arg_0.x, global0.a.b.x, arg_0.x))), vec2<f32>(arg_1, arg_1), Struct_3(Struct_2(vec3<u32>(72567u, 0u, u_input.b.x), Struct_1(-845f, vec4<bool>(true, arg_0.x, global0.a.b.x, global0.a.b.x)), u_input.b.x, Struct_1(arg_1, global0.a.b))))));
    global1 = array<Struct_4, 4>();
    var var_0 = !select(func_4(_wgslsmith_mult_i32(-1i, _wgslsmith_div_i32(1i, u_input.a)), 2147483647i).a.b.xw, !vec2<bool>(!global0.a.b.x, true), select(!vec2<bool>(global0.a.b.x, false), !(!arg_0.xy), global0.a.b.yy));
    global1 = array<Struct_4, 4>();
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x), _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 0u), reverseBits(u_input.b.xz)), u_input.b.xy), countOneBits(~_wgslsmith_clamp_u32(max(16627u, 4294967295u), u_input.b.x, 16643u)));
    return Struct_3(Struct_2(_wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, var_1), vec3<u32>(var_1, var_1, var_1)), ~select(u_input.b.xyw, u_input.b.yyx, vec3<bool>(arg_0.x, arg_0.x, true))), global0.a, 0u, global0.a));
}

fn func_5(arg_0: Struct_3) -> Struct_2 {
    return Struct_2(u_input.b.wwy, global0.a, arg_0.a.a.x, arg_0.a.d);
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    global0 = global1[_wgslsmith_index_u32(~22608u, 4u)];
    var var_0 = ~(~(~(~max(u_input.b.x, 25265u))));
    global0 = func_2(func_1(vec3<bool>(all(vec4<bool>(false, global0.a.b.x, true, global0.a.b.x)), _wgslsmith_mult_u32(1u, u_input.b.x) == arg_0.a.x, func_1(arg_0.b.b.yxw, _wgslsmith_f_op_f32(floor(-1000f))).a.b.b.x), -1786f).a.d, global0.a.b, _wgslsmith_clamp_vec4_u32(u_input.b, ~u_input.b, u_input.b) >> (reverseBits(~vec4<u32>(1u, arg_0.a.x, arg_0.a.x, u_input.b.x)) % vec4<u32>(32u)));
    var var_1 = arg_0;
    global1 = array<Struct_4, 4>();
    return Struct_2(~abs(~_wgslsmith_mult_vec3_u32(var_1.a, var_1.a)), func_5(Struct_3(func_1(select(vec3<bool>(true, var_1.d.b.x, var_1.d.b.x), global0.a.b.ywy, var_1.b.b.xzy), func_4(u_input.a, u_input.a).a.a).a)).d, var_1.c, Struct_1(_wgslsmith_f_op_f32(-arg_0.b.a), vec4<bool>(false, arg_0.d.b.x, arg_0.b.b.x, !(global0.a.a == -936f))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 4>();
    var var_0 = i32(-1i) * -_wgslsmith_div_i32(_wgslsmith_mult_i32(u_input.a << (u_input.b.x % 32u), 14209i << (u_input.b.x % 32u)), u_input.a);
    var var_1 = u_input.b.x > 4294967295u;
    var var_2 = global0.a.a;
    var var_3 = u_input.b.x;
    let var_4 = Struct_3(func_6(func_5(func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-925f + 1063f)))));
    let var_5 = vec4<i32>(i32(-1i) * -4530i, _wgslsmith_mod_i32(u_input.a, (1i ^ u_input.a) & 19151i), -abs(u_input.a), i32(-1i) * -8531i);
    var var_6 = -(~vec2<i32>(u_input.a, firstTrailingBit(u_input.a)) << (u_input.b.wz % vec2<u32>(32u)));
    var var_7 = -_wgslsmith_add_i32(u_input.a, countOneBits(17242i));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(1i, ~(~var_6.x)), select(firstLeadingBit(vec2<i32>(2147483647i, 667i)), vec2<i32>(var_6.x, _wgslsmith_mult_i32(var_6.x, u_input.a)), global0.a.b.x | any(global0.a.b.yz))));
}

