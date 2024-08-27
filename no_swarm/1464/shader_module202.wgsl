struct Struct_1 {
    a: u32,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(27773u, true, vec4<f32>(-330f, -388f, -1000f, -778f)));

var<private> global1: vec2<i32> = vec2<i32>(-26670i, 2147483647i);

var<private> global2: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-30795i, 25892i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(68408i, 0i), vec2<i32>(-5580i, i32(-2147483648)), vec2<i32>(19045i, -29382i), vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-20321i, 22126i), vec2<i32>(-19627i, 2147483647i), vec2<i32>(-7232i, 0i), vec2<i32>(i32(-2147483648), i32(-2147483648)), vec2<i32>(0i, -25248i), vec2<i32>(0i, 1i), vec2<i32>(1i, 0i));

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global4: array<vec3<i32>, 19>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: f32) -> vec4<i32> {
    global4 = array<vec3<i32>, 19>();
    global0 = array<Struct_1, 1>();
    global2 = array<vec2<i32>, 13>();
    let var_0 = global1.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.c.yz + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1324f, 220f))) + _wgslsmith_f_op_vec2_f32(arg_1.c.zy * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-556f, arg_2) + vec2<f32>(-660f, 194f)), _wgslsmith_div_vec2_f32(vec2<f32>(2228f, arg_1.c.x), arg_1.c.zx), global3.xy))))));
    return ~_wgslsmith_mult_vec4_i32(vec4<i32>(~(-u_input.d.x), u_input.d.x, ~1i, -1i), u_input.b);
}

fn func_3() -> u32 {
    var var_0 = countOneBits(abs(abs(1u))) < ~(~abs(u_input.e));
    let var_1 = u_input.c;
    var var_2 = _wgslsmith_div_u32(firstTrailingBit(1u), 14045u << (var_1 % 32u));
    var var_3 = -41932i;
    let var_4 = all(select(!global3.zwz, global3.xzz, true));
    return ~4294967295u;
}

fn func_2(arg_0: vec4<i32>) -> Struct_1 {
    let var_0 = vec2<u32>(~func_3(), 48605u);
    var var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_clamp_u32(abs(4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x ^ 1175u, 4294967295u, 4294967295u), _wgslsmith_mult_vec3_u32(~vec3<u32>(var_0.x, 54769u, u_input.c), ~vec3<u32>(var_0.x, var_1.x, 0u))), _wgslsmith_clamp_u32(1u, 9584u, firstLeadingBit(var_0.x))), global3.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(1686f)), 816f, _wgslsmith_f_op_f32(f32(-1f) * -327f), _wgslsmith_f_op_f32(1042f * 393f)) * vec4<f32>(1f, 1f, 1f, 1f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-142f, -1954f, 624f, 316f)))))));
    let var_3 = Struct_1(1u, firstTrailingBit(~_wgslsmith_mod_u32(0u, var_2.a)) != _wgslsmith_add_u32(~_wgslsmith_mult_u32(65047u, var_2.a), 4294967295u), var_2.c);
    var var_4 = select(global3.zz, select(global3.zw, vec2<bool>(var_3.b, !var_3.b), (2147483647i >> (var_1.x % 32u)) >= -9677i), global3.wy);
    return Struct_1(_wgslsmith_sub_u32(var_0.x, _wgslsmith_div_u32(0u, firstTrailingBit(~var_2.a))), global3.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(var_3.c * vec4<f32>(915f, _wgslsmith_f_op_f32(-549f * var_3.c.x), -1943f, var_2.c.x)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(var_2.c)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_2.c.x, var_3.c.x, var_2.c.x, var_3.c.x), _wgslsmith_f_op_vec4_f32(-var_3.c))))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<bool>(all(global3.wwz), true, !global3.x, global3.x != any(global3.wyw)), Struct_1(u_input.c, global3.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-177f, -611f, 230f, -1171f)) + vec4<f32>(-1458f, -1000f, -771f, 1612f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(step(1017f, _wgslsmith_f_op_f32(-691f + 185f)))));
    let var_1 = ~vec3<u32>(_wgslsmith_mult_u32(29602u, ~u_input.e), 127031u, _wgslsmith_add_u32(~_wgslsmith_sub_u32(u_input.c, u_input.e), ~4294967295u));
    var var_2 = func_2(u_input.b);
    global1 = vec2<i32>(2147483647i, _wgslsmith_sub_i32(~func_1(!vec4<bool>(false, true, true, global3.x), func_2(u_input.b), var_2.c.x).x, _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(20775i, -2147483647i, -2147483647i, global1.x)), vec4<i32>(var_0.x, global1.x, u_input.d.x, -2147483647i) >> ((vec4<u32>(73859u, var_1.x, 4294967295u, u_input.e) | vec4<u32>(var_2.a, u_input.e, 0u, var_2.a)) % vec4<u32>(32u)))));
    global0 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(func_2(u_input.b).c.x, firstTrailingBit(~1u), vec4<u32>(abs(~_wgslsmith_add_u32(u_input.c, var_2.a)), min(_wgslsmith_sub_u32(func_3(), var_2.a), ~(12872u << (u_input.e % 32u))), u_input.c, 75611u));
}

