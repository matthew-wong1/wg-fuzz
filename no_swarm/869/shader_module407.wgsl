struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<u32> {
    var var_0 = arg_2.a.x;
    var var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_dot_vec3_u32(min(u_input.b, vec3<u32>(151939u, 166517u, 4294967295u)), vec3<u32>(arg_2.c.x, reverseBits(arg_2.c.x), 58459u))), 2u)];
    let var_2 = Struct_2(global0[_wgslsmith_index_u32(0u, 2u)]);
    var_0 = all(select(!vec3<bool>(false, var_1.a.x, all(vec3<bool>(true, true, var_1.a.x))), !select(!vec3<bool>(true, var_1.a.x, var_2.a.a.x), vec3<bool>(true, arg_0, true), vec3<bool>(var_1.a.x, true, true)), true));
    global0 = array<Struct_1, 2>();
    return u_input.b;
}

fn func_2() -> bool {
    global0 = array<Struct_1, 2>();
    var var_0 = Struct_1(vec2<bool>(true, !(-u_input.c.x <= 0i)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(func_3(true, 1535f, global0[_wgslsmith_index_u32(max(u_input.a.x, u_input.b.x), 2u)]), ~abs(vec3<u32>(1u, u_input.d, u_input.d))), ~11887u), reverseBits(_wgslsmith_add_vec2_u32(abs(vec2<u32>(u_input.d, u_input.d)), (u_input.b.zx | vec2<u32>(7274u, 75293u)) | firstLeadingBit(vec2<u32>(1u, u_input.a.x)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-418f, 447f, -428f, -783f))) * vec4<f32>(588f, -582f, 160f, -430f))))));
    var var_2 = ~vec3<i32>(i32(-1i) * -32244i, -u_input.c.x, _wgslsmith_mod_i32(abs(-7887i) << (~var_0.c.x % 32u), -(u_input.c.x | u_input.c.x)));
    let var_3 = u_input.c.x;
    return !(!any(!select(var_0.a, vec2<bool>(var_0.a.x, true), var_0.a.x)));
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_2 {
    var var_0 = Struct_2(global0[_wgslsmith_index_u32(u_input.d, 2u)]);
    let var_1 = ~(~select(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a.c.x, 1u, 4294967295u, 0u), vec4<u32>(var_0.a.c.x, var_0.a.b, 0u, 15981u)), 1u, u_input.b.x), ~u_input.b, select(vec3<bool>(true, arg_1, true), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, var_0.a.a.x, arg_0), false), select(vec3<bool>(arg_1, true, arg_0), vec3<bool>(var_0.a.a.x, var_0.a.a.x, arg_1), false))));
    var var_2 = global0[_wgslsmith_index_u32(var_1.x, 2u)];
    let var_3 = _wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.c.x & var_0.a.c.x, var_2.c.x, ~var_0.a.b), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 1414u, var_2.c.x, var_2.c.x), vec4<u32>(var_2.b, u_input.d, 0u, var_2.b)), _wgslsmith_sub_u32(u_input.a.x, 10922u), 1u)) >> (reverseBits(~vec3<u32>(46497u, var_2.b, 34805u)) % vec3<u32>(32u)), vec3<u32>(abs(0u), 67901u, 4294967295u), vec3<u32>(4294967295u, var_0.a.c.x, u_input.b.x));
    let var_4 = u_input.c.x << (var_3.x % 32u);
    return Struct_2(var_0.a);
}

fn func_1(arg_0: vec3<i32>) -> Struct_2 {
    let var_0 = func_4(u_input.d <= 1095u, (all(vec3<bool>(false, false, false)) != true) | func_2());
    var var_1 = func_4(true, all(select(!select(vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x), vec4<bool>(var_0.a.a.x, false, false, true), vec4<bool>(true, false, false, false)), !select(vec4<bool>(var_0.a.a.x, true, true, false), vec4<bool>(true, var_0.a.a.x, var_0.a.a.x, false), vec4<bool>(var_0.a.a.x, var_0.a.a.x, var_0.a.a.x, false)), true)));
    let var_2 = var_0;
    let var_3 = true;
    var var_4 = func_4(true, all(vec4<bool>(!var_3, true, true, func_4(!var_2.a.a.x, true).a.a.x)));
    return func_4(true, var_1.a.a.x);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = ~select(u_input.c, _wgslsmith_clamp_vec2_i32(abs(arg_2.yz), vec2<i32>(-2147483647i, firstLeadingBit(u_input.c.x)), abs(vec2<i32>(1327i, 1679i))), !(!any(vec2<bool>(true, arg_1.a.x))));
    var var_1 = ~abs(~abs(vec4<u32>(4294967295u, arg_3.x, arg_1.b, u_input.d) & vec4<u32>(84215u, 0u, u_input.a.x, u_input.a.x)));
    var_1 = countOneBits(firstLeadingBit(~(~(vec4<u32>(u_input.b.x, 1u, 4294967295u, arg_3.x) | vec4<u32>(30197u, 4294967295u, 97131u, var_1.x)))));
    let var_2 = arg_0;
    var var_3 = func_3(!(!arg_1.a.x) | true, 523f, Struct_1(vec2<bool>(!func_1(vec3<i32>(2147483647i, u_input.c.x, u_input.c.x)).a.a.x, false), arg_3.x, vec2<u32>(4294967295u, 1u))).x;
    return Struct_1(vec2<bool>(true, true), _wgslsmith_dot_vec2_u32(vec2<u32>(min(~u_input.b.x, func_3(var_2.a.a.x, 1127f, arg_0.a).x), 4294967295u), vec2<u32>(~arg_0.a.b, 1u) & ~u_input.b.zx), _wgslsmith_div_vec2_u32(var_1.wy, arg_0.a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(func_1(vec3<i32>(u_input.c.x, 15337i, u_input.c.x) >> (~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), Struct_1(func_4(true, true).a.a, func_1(vec3<i32>(u_input.c.x, u_input.c.x, u_input.c.x) ^ vec3<i32>(-25945i, 25827i, -38771i)).a.c.x, vec2<u32>(39548u >> (1u % 32u), func_4(false, true).a.c.x)), countOneBits(vec3<i32>(firstTrailingBit(u_input.c.x), -1i, max(0i, -6894i))), u_input.b));
    var var_1 = 0i;
    global0 = array<Struct_1, 2>();
    global0 = array<Struct_1, 2>();
    var_0 = Struct_2(func_1(_wgslsmith_add_vec3_i32(vec3<i32>(~43883i, -1i, u_input.c.x), _wgslsmith_add_vec3_i32(vec3<i32>(31784i, 2147483647i, 1i), ~vec3<i32>(17594i, u_input.c.x, -20361i)))).a);
    let var_2 = abs(vec4<i32>(-1i) * -(~vec4<i32>(1i, 1i, 1i, 1i)));
    global0 = array<Struct_1, 2>();
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~(~var_2.yyy));
}

