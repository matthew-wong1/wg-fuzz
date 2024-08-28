struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 10>;

var<private> global1: u32;

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> Struct_1 {
    return Struct_1(u_input.a.x, _wgslsmith_f_op_f32(min(-984f, 1306f)), vec2<i32>(i32(-1i) * -(i32(-1i) * -2147483647i), ~(-13495i) >> (~u_input.a.x % 32u)));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    let var_0 = Struct_2(arg_1.x, arg_3, Struct_1(abs(u_input.a.x), _wgslsmith_f_op_f32(-1664f + arg_2.b), ~countOneBits(vec2<i32>(-2147483647i, -9620i) | vec2<i32>(38628i, arg_0.x))), arg_0.zz);
    let var_1 = select(vec2<bool>(!(23464i >= (2147483647i >> (arg_2.a % 32u))), false), select(vec2<bool>(true, true), !global0[_wgslsmith_index_u32(arg_3.a, 10u)], vec2<bool>(var_0.c.a <= select(arg_3.a, 46120u, false), false)), true & all(vec3<bool>(true, true, true)));
    global0 = array<vec2<bool>, 10>();
    let var_2 = 700f;
    let var_3 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec3_u32(~abs(vec3<u32>(var_0.c.a, u_input.a.x, arg_2.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(87171u, 4294967295u, 61671u) & vec3<u32>(1u, 4294967295u, arg_3.a), vec3<u32>(1u, var_0.c.a, 8034u))), var_0.c.a);
    return true && !((_wgslsmith_f_op_f32(min(116f, arg_2.b)) <= _wgslsmith_f_op_f32(-var_0.b.b)) | (!var_1.x && all(vec3<bool>(true, false, var_1.x))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_3.c;
    var var_1 = !select(vec3<bool>(func_3(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, -1i, var_0.c.x), vec3<i32>(arg_1.c.x, arg_3.b.c.x, 12509i)), _wgslsmith_mod_vec2_i32(vec2<i32>(5294i, var_0.c.x), arg_3.b.c), func_2(), arg_1), true, true), vec3<bool>(all(vec2<bool>(true, true)), func_3(vec3<i32>(arg_3.a, -2147483647i, -2147483647i), arg_1.c, Struct_1(17872u, arg_1.b, vec2<i32>(-54955i, arg_3.d.x)), Struct_1(arg_0, 441f, vec2<i32>(0i, -32257i))) & false, func_3(-vec3<i32>(-10778i, 44i, arg_3.a), ~vec2<i32>(0i, arg_1.c.x), func_2(), Struct_1(56744u, arg_3.b.b, arg_1.c))), vec3<bool>(true, true, false));
    var_1 = !select(select(vec3<bool>(var_1.x, all(vec2<bool>(var_1.x, var_1.x)), true), !(!vec3<bool>(var_1.x, var_1.x, var_1.x)), vec3<bool>(false, var_1.x, var_1.x)), select(vec3<bool>(false, false & var_1.x, false), vec3<bool>(true, true, true), false), true);
    global1 = arg_2.x;
    var_0 = Struct_1(~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.c.b) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -766f)))), vec2<i32>(~0i, -(arg_3.c.c.x << (countOneBits(4294967295u) % 32u))));
    return _wgslsmith_add_u32(firstLeadingBit(_wgslsmith_clamp_u32(arg_2.x >> (abs(36231u) % 32u), _wgslsmith_mult_u32(arg_0, 20659u >> (0u % 32u)), _wgslsmith_add_u32(arg_3.c.a ^ 0u, 1u << (arg_1.a % 32u)))), ~_wgslsmith_add_u32(4294967295u, ~arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = 0u;
    let var_0 = Struct_1(~0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(663f * -512f)))))), vec2<i32>(-(~(i32(-1i) * -2147483647i)), -21874i));
    var var_1 = var_0.a;
    var var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(select(func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 0u, var_0.a)), Struct_1(u_input.a.x, var_0.b, var_0.c), _wgslsmith_mult_vec4_u32(vec4<u32>(46120u, u_input.a.x, 4294967295u, 69573u), vec4<u32>(1384u, 37502u, 4294967295u, 63154u)), Struct_2(43000i, var_0, var_0, vec2<i32>(var_0.c.x, 0i))), 69039u, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false)))), var_0.a), vec2<u32>(u_input.a.x | _wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.a), u_input.a), _wgslsmith_mult_u32(var_0.a, 1u)));
    let var_3 = ~(~1u);
    global2 = reverseBits(abs(var_0.a));
    global2 = ~firstTrailingBit(0u);
    global1 = 22515u;
    var var_4 = all(global0[_wgslsmith_index_u32(~41719u, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_mod_vec3_i32(-vec3<i32>(0i, -1i, var_0.c.x), _wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, var_0.c.x, var_0.c.x), countOneBits(vec3<i32>(var_0.c.x, var_0.c.x, 22459i)))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(~var_2.x, abs(0u), _wgslsmith_clamp_u32(0u, var_0.a, var_0.a)), ~vec3<u32>(var_0.a, 4294967295u, var_3)) % vec3<u32>(32u)), firstTrailingBit(_wgslsmith_mult_vec2_u32(~(~u_input.a), countOneBits(select(vec2<u32>(var_3, 13941u), u_input.a, true)))), ~firstTrailingBit(1i));
}

