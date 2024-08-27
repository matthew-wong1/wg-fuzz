struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(i32(-2147483648), -57894i, 7504i));

var<private> global1: array<vec4<f32>, 7>;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-963f, 246f, -1000f));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: u32) -> vec3<f32> {
    var var_0 = firstLeadingBit(reverseBits(~_wgslsmith_sub_vec2_i32(reverseBits(vec2<i32>(5253i, -1i)), vec2<i32>(-71364i, -40872i) << (vec2<u32>(u_input.a.x, 36954u) % vec2<u32>(32u)))));
    let var_1 = ~firstLeadingBit(~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 1u, arg_3, 1u), vec4<u32>(45747u, u_input.a.x, 3108u, 4294967295u)) >> (vec4<u32>(96159u, arg_3, arg_3, 19335u) % vec4<u32>(32u))));
    var_0 = -(countOneBits(~vec2<i32>(var_0.x, var_0.x)) & ~select(vec2<i32>(var_0.x, var_0.x), select(vec2<i32>(var_0.x, var_0.x), vec2<i32>(var_0.x, 104186i), vec2<bool>(false, false)), true));
    var var_2 = !all(vec2<bool>(true, false));
    let var_3 = _wgslsmith_f_op_vec3_f32(exp2(arg_2.a));
    return _wgslsmith_div_vec3_f32(var_3, var_3);
}

fn func_2(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<i32>) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(1172f)))))), -1011f, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.x, global2.a.x, global2.a.x))), arg_1.x)));
    var var_0 = global2.a.yy;
    var var_1 = arg_2.x;
    let var_2 = arg_1;
    let var_3 = -vec2<i32>(~2147483647i, -6151i);
    return Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(420f, var_0.x, -1000f)))))));
}

fn func_4(arg_0: Struct_1) -> vec3<f32> {
    global0 = array<vec3<i32>, 1>();
    global0 = array<vec3<i32>, 1>();
    var var_0 = (~(~(vec3<u32>(u_input.a.x, 4294967295u, 1u) | vec3<u32>(u_input.a.x, 0u, u_input.a.x))) | vec3<u32>(4294967295u, u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.a.x))) ^ min(_wgslsmith_add_vec3_u32(select(vec3<u32>(u_input.a.x, 29437u, u_input.a.x) ^ vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 15060u, 740u), -410f > arg_0.a.x), vec3<u32>(_wgslsmith_add_u32(u_input.a.x, 61692u), ~4294967295u, u_input.a.x << (28539u % 32u))), ~(~vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)));
    var var_1 = select(select(select(select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, false), true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, !any(vec2<bool>(true, false))), !any(vec4<bool>(true, true, true, true))), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), false);
    var_1 = !vec2<bool>(all(vec2<bool>(all(vec2<bool>(var_1.x, var_1.x)), all(vec4<bool>(var_1.x, var_1.x, var_1.x, false)))), var_1.x);
    return vec3<f32>(_wgslsmith_f_op_f32(abs(arg_0.a.x)), func_2(u_input.a.x, vec3<u32>(u_input.a.x, 24138u, _wgslsmith_clamp_u32(4294967295u, u_input.a.x ^ u_input.a.x, _wgslsmith_div_u32(0u, u_input.a.x))), _wgslsmith_add_vec4_i32(reverseBits(abs(vec4<i32>(4255i, -28488i, -2147483647i, -42237i))), vec4<i32>(18136i, 0i << (u_input.a.x % 32u), -1i, -1i))).a.x, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.x) * global2.a.x)))));
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(~reverseBits(select(vec4<u32>(u_input.a.x, 37025u, arg_0, u_input.a.x) >> (vec4<u32>(u_input.a.x, 40896u, u_input.a.x, arg_0) % vec4<u32>(32u)), ~vec4<u32>(0u, 0u, arg_0, 0u), any(vec2<bool>(true, false)))), Struct_1(_wgslsmith_f_op_vec3_f32(func_4(func_2(~u_input.a.x, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 0u, u_input.a.x), vec3<u32>(54814u, 1u, 749u)), ~vec4<i32>(120i, -9857i, -6987i, 1i))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(263f - _wgslsmith_f_op_f32(-1214f - global2.a.x)), _wgslsmith_f_op_f32(min(-1020f, _wgslsmith_f_op_f32(-611f + global2.a.x))), Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a)), 0u)).x));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1543f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_0.b.a.x, var_0.c))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -108f)))));
    var var_2 = ~abs(_wgslsmith_mult_vec3_u32(countOneBits(vec3<u32>(arg_0, var_0.a.x, 24068u) >> (var_0.a.xyz % vec3<u32>(32u))), var_0.a.zzx));
    global0 = array<vec3<i32>, 1>();
    var var_3 = false;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.a.x);
    var var_1 = Struct_2(vec4<u32>(_wgslsmith_dot_vec3_u32(~countOneBits(vec3<u32>(76719u, u_input.a.x, 35668u)), ~reverseBits(vec3<u32>(4294967295u, 39093u, 74910u))), 0u, u_input.a.x << (~1u % 32u), firstTrailingBit(~u_input.a.x)), Struct_1(vec3<f32>(-1386f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(530f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))), 875f);
    global0 = array<vec3<i32>, 1>();
    global2 = func_2(~var_1.a.x, ~reverseBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 15802u), ~vec3<u32>(u_input.a.x, 4294967295u, u_input.a.x))), ~(~(-vec4<i32>(1i, 1i, 1i, 1i))));
    let var_2 = Struct_2(select(_wgslsmith_mod_vec4_u32(~(var_1.a << (vec4<u32>(var_1.a.x, 15001u, 1u, 69868u) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(var_1.a, ~vec4<u32>(u_input.a.x, var_1.a.x, u_input.a.x, var_1.a.x))), var_1.a, vec4<bool>(true, true, (19107i << (u_input.a.x % 32u)) == (i32(-1i) * -52651i), true)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.b.a)) - _wgslsmith_f_op_vec3_f32(func_4(func_1(var_1.a.x))))), var_1.c);
    global1 = array<vec4<f32>, 7>();
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(step(var_1.b.a, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-var_0.a.x), -974f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mult_u32(~_wgslsmith_sub_u32(0u, var_1.a.x), countOneBits(firstTrailingBit(13439u))), 13712u));
}

