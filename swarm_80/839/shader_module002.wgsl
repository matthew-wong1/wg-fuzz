struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<bool>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<bool> {
    let var_0 = ~max(vec4<u32>(u_input.a.x, u_input.a.x, ~_wgslsmith_dot_vec3_u32(global0.b, u_input.a), 34463u), ~abs(abs(vec4<u32>(u_input.a.x, 0u, 4294967295u, global0.b.x))));
    let var_1 = global0.c;
    let var_2 = Struct_1(global0.b.x, abs(vec3<u32>(select(countOneBits(67246u), 1u, global1.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 35396u), ~var_0.wz), ~abs(1u))), _wgslsmith_clamp_i32(global0.c, ~(reverseBits(u_input.b.x) >> (_wgslsmith_clamp_u32(5457u, 57926u, 0u) % 32u)), global0.c));
    var var_3 = ~_wgslsmith_dot_vec3_u32(var_2.b, firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.a, var_0.xyy))) >> (~(~firstTrailingBit(_wgslsmith_dot_vec4_u32(var_0, var_0))) % 32u);
    global1 = vec3<bool>(true, true, select(all(!vec3<bool>(global1.x, global1.x, true)), true, true));
    return select(!vec3<bool>(global1.x, !(1u >= u_input.a.x), true), !(!(!vec3<bool>(global1.x, global1.x, global1.x))), select(!select(!vec3<bool>(global1.x, global1.x, false), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(global1.x, true, true), vec3<bool>(true, false, global1.x)), any(vec3<bool>(true, global1.x, global1.x))), select(vec3<bool>(!global1.x, all(vec3<bool>(true, true, global1.x)), global1.x), select(vec3<bool>(global1.x, true, false), select(vec3<bool>(true, global1.x, true), vec3<bool>(false, true, false), global1.x), vec3<bool>(true, true, true)), true), select(!(!vec3<bool>(global1.x, true, global1.x)), !vec3<bool>(global1.x, global1.x, global1.x), min(var_2.c, 2147483647i) >= _wgslsmith_clamp_i32(2147483647i, -67216i, global0.c))));
}

fn func_2() -> Struct_1 {
    let var_0 = !select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(!any(vec4<bool>(true, true, false, true)), global1.x, global1.x), func_3());
    var var_1 = 0u >> (abs(u_input.a.x) % 32u);
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1415f - 772f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-910f, -716f, false)) + -899f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(round(-1983f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1248f - _wgslsmith_f_op_f32(f32(-1f) * -3242f)) + -320f), 1195f));
    var var_3 = vec2<bool>(reverseBits(~60374u) < (1u >> (_wgslsmith_dot_vec3_u32(~vec3<u32>(1934u, global0.b.x, 23846u), _wgslsmith_clamp_vec3_u32(global0.b, vec3<u32>(1u, 0u, 1u), u_input.a)) % 32u)), !(!(var_0.x != !global1.x)));
    global1 = vec3<bool>(global1.x, !any(!(!global1.xz)), global1.x);
    return Struct_1(u_input.a.x, reverseBits(~global0.b), _wgslsmith_div_i32(i32(-1i) * -14238i, u_input.b.x));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> Struct_1 {
    global1 = vec3<bool>(!(any(global1.yx) | false), arg_3, false);
    global0 = arg_2;
    global0 = arg_1;
    global0 = func_2();
    var var_0 = abs(vec4<i32>(global0.c, min(0i, _wgslsmith_mod_i32(-arg_2.c, arg_2.c)), _wgslsmith_clamp_i32(-2147483647i, reverseBits(arg_1.c), arg_2.c) >> (~15211u % 32u), ~global0.c));
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: bool, arg_3: Struct_1) -> vec3<u32> {
    let var_0 = func_2();
    let var_1 = vec4<i32>(~firstTrailingBit(-7029i), -41027i, -(~37657i), -(1112i & u_input.b.x) ^ min(0i ^ global0.c, -2147483647i)) | (_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-16042i, 2147483647i, -2147483647i, u_input.b.x), ~vec4<i32>(10440i, -1i, arg_0.c, 0i), select(vec4<i32>(arg_0.c, arg_3.c, u_input.b.x, 0i), vec4<i32>(arg_0.c, 2147483647i, var_0.c, arg_0.c), global1.x)), vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), u_input.b.zz), 6199i, -1i, 50252i)) << (arg_1 % vec4<u32>(32u)));
    var var_2 = -765f;
    var var_3 = vec3<u32>(76046u, global0.b.x, abs(11939u));
    global0 = Struct_1(1u, ~func_2().b, select(-29457i, _wgslsmith_add_i32(var_1.x, _wgslsmith_dot_vec2_i32(select(var_1.zy, vec2<i32>(arg_3.c, var_0.c), true), var_1.yw)), any(!(!vec4<bool>(true, true, arg_2, false)))));
    return vec3<u32>(~(~max(4294967295u, ~29219u)), firstLeadingBit(0u), arg_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(abs(~(~countOneBits(u_input.a.x))), ~_wgslsmith_add_vec3_u32(select(~vec3<u32>(global0.b.x, u_input.a.x, global0.b.x), u_input.a, vec3<bool>(false, false, global1.x)), countOneBits(abs(vec3<u32>(0u, global0.a, 6196u)))), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global0.c, global0.c, 0i), vec3<i32>(global0.c, u_input.b.x, global0.c)) | global0.c);
    let var_0 = select(vec4<bool>(false, true, true, select(false, true, !(global1.x & false))), !vec4<bool>(false, countOneBits(u_input.a.x) <= ~u_input.a.x, true && global1.x, global1.x), !global1.x);
    let var_1 = u_input.b.x;
    var var_2 = Struct_1(global0.b.x, ~vec3<u32>(u_input.a.x, 1u, max(1u, 1u)), var_1 ^ abs(-15075i));
    let var_3 = Struct_1(global0.b.x, _wgslsmith_mult_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b.x, global0.b.x, 1u), u_input.a << (vec3<u32>(var_2.a, u_input.a.x, global0.a) % vec3<u32>(32u))), func_4(func_1(-1473f, Struct_1(4294967295u, vec3<u32>(48865u, var_2.b.x, u_input.a.x), var_1), Struct_1(u_input.a.x, vec3<u32>(1u, 4294967295u, var_2.a), -34441i), true), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, global0.a, 4294967295u, 522u), abs(vec4<u32>(6910u, var_2.b.x, 0u, 35483u))), true, func_1(487f, func_2(), Struct_1(55933u, vec3<u32>(u_input.a.x, global0.a, 36564u), 2147483647i), var_0.x && var_0.x))), 0i);
    var var_4 = Struct_1(101774u & reverseBits(~u_input.a.x), ~_wgslsmith_add_vec3_u32(u_input.a, u_input.a), -2147483647i);
    var var_5 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -912f), Struct_1(48007u, vec3<u32>(max(var_2.a, 10086u), ~u_input.a.x, var_4.a ^ 4294967295u) >> (func_2().b % vec3<u32>(32u)), reverseBits(~_wgslsmith_mod_i32(-1i, -12820i))), Struct_1(~global0.b.x, ~(~vec3<u32>(53383u, 4294967295u, var_2.a)), var_3.c), !global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a.x, ~var_3.b.x ^ firstTrailingBit(_wgslsmith_add_u32(4294967295u, var_5.a)), 42230u), var_3.c, select(global0.b, ~vec3<u32>(0u, ~3207u, ~1u), !(!(!global1.x))), _wgslsmith_add_vec3_u32(abs(select(abs(vec3<u32>(var_5.a, 4294967295u, 23988u)), vec3<u32>(var_3.a, var_3.a, 1u), func_3())), (vec3<u32>(global0.b.x, var_3.b.x, var_3.b.x) >> (abs(vec3<u32>(global0.b.x, 4294967295u, 4294967295u)) % vec3<u32>(32u))) >> (~func_1(-197f, var_3, Struct_1(global0.b.x, var_2.b, var_2.c), true).b % vec3<u32>(32u))), abs(firstTrailingBit(min(-u_input.b, u_input.b))));
}

