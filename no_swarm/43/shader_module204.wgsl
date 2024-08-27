struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 14>;

var<private> global1: Struct_3 = Struct_3(vec4<bool>(true, false, false, false), Struct_1(vec4<i32>(26301i, 14979i, -52051i, -28226i), vec2<bool>(true, false)), true, vec4<i32>(-14130i, -21859i, -11817i, 2147483647i), vec4<u32>(4294967295u, 47163u, 0u, 0u));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = _wgslsmith_clamp_u32(u_input.d.x ^ ~arg_0.x, 4706u ^ select(~u_input.e.x, 0u, !global1.b.b.x), 4294967295u) ^ countOneBits(countOneBits(67119u));
    let var_1 = !global1.a.x;
    let var_2 = Struct_3(global1.a, Struct_1(abs(_wgslsmith_clamp_vec4_i32(global1.b.a, vec4<i32>(-1i, 79246i, -33585i, global1.b.a.x), global1.b.a & global1.b.a)), !global1.b.b), firstTrailingBit(max(~0u, _wgslsmith_div_u32(0u, arg_0.x))) <= u_input.c.x, global1.d, abs(global1.e) & vec4<u32>(4294967295u, 1u, firstLeadingBit(0u), 44318u));
    let var_3 = global1.a.yxx;
    var_0 = 0u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-1428f)))));
}

fn func_2(arg_0: bool, arg_1: vec4<f32>) -> Struct_3 {
    var var_0 = -u_input.b.x;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), arg_1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1f, 834f)), _wgslsmith_f_op_f32(floor(-299f)))), _wgslsmith_f_op_f32(func_3(~vec3<u32>(global1.e.x, global1.e.x, global1.e.x) >> (select(vec3<u32>(global1.e.x, global1.e.x, 1u), vec3<u32>(global1.e.x, 21125u, 102269u), global1.a.x) % vec3<u32>(32u))))), _wgslsmith_f_op_f32(func_3(select(vec3<u32>(_wgslsmith_div_u32(global1.e.x, global1.e.x), global1.e.x | global1.e.x, global1.e.x), u_input.e, select(global1.a.xzy, vec3<bool>(arg_0, true, global1.c), vec3<bool>(global1.a.x, global1.a.x, false))))));
    global0 = array<vec4<f32>, 14>();
    global0 = array<vec4<f32>, 14>();
    return Struct_3(select(select(!(!global1.a), vec4<bool>(true, any(vec4<bool>(true, true, global1.a.x, true)), global1.c, global1.a.x), global1.a), vec4<bool>(false, any(vec2<bool>(false, true)), false, 471f <= var_1.x), vec4<bool>(_wgslsmith_f_op_f32(1115f - 742f) < _wgslsmith_f_op_f32(max(-1000f, arg_1.x)), !(!global1.a.x), arg_0, global1.c)), global1.b, -2147483647i != global1.d.x, vec4<i32>(-1i, -abs(_wgslsmith_dot_vec2_i32(global1.d.zy, vec2<i32>(-25506i, 2147483647i))), max(_wgslsmith_dot_vec4_i32(global1.b.a, min(vec4<i32>(-6944i, 26632i, 1i, 11483i), global1.d)), 59600i), ~global1.b.a.x), vec4<u32>(abs(25092u), min(0u, reverseBits(global1.e.x)) >> (1133u % 32u), firstTrailingBit(4294967295u), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~17895u, ~31239u), ~_wgslsmith_clamp_u32(58394u, global1.e.x, global1.e.x))));
}

fn func_1(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_5) -> i32 {
    global1 = func_2(true, global0[_wgslsmith_index_u32(10212u, 14u)]);
    global0 = array<vec4<f32>, 14>();
    return firstLeadingBit(12093i) >> (1u % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_vec2_i32(-global1.b.a.zz, vec2<i32>(firstLeadingBit(func_1(global1.a.yw, u_input.d.x, Struct_5(u_input.c.zy, Struct_4(Struct_2(vec2<u32>(73686u, 0u)), Struct_1(global1.d, global1.a.zz), vec2<bool>(global1.b.b.x, false), u_input.c.x, Struct_2(global1.e.xy)), Struct_2(global1.e.yz))) & u_input.b.x), global1.d.x), _wgslsmith_clamp_vec2_i32(reverseBits(abs(vec2<i32>(0i, -1i))), _wgslsmith_sub_vec2_i32(vec2<i32>(global1.d.x, 24123i), vec2<i32>(u_input.a, -44897i)), vec2<i32>(0i, 1i) << (func_2(global1.c, global0[_wgslsmith_index_u32(62353u, 14u)]).e.ww % vec2<u32>(32u))) << (_wgslsmith_add_vec2_u32(u_input.c.xy, select(global1.e.yy, ~vec2<u32>(u_input.c.x, 44278u), true)) % vec2<u32>(32u)));
    let var_1 = true;
    let var_2 = ~(vec2<u32>(global1.e.x, abs(_wgslsmith_dot_vec2_u32(vec2<u32>(2951u, 52589u), global1.e.wy))) >> (global1.e.wz % vec2<u32>(32u)));
    let var_3 = func_2(any(!(!global1.a)) == global1.b.b.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(u_input.c.x, 14u)] - vec4<f32>(555f, -1089f, -2228f, -1470f))))));
    var var_4 = vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(~vec3<u32>(0u, var_3.e.x, 4294967295u)), vec3<u32>(var_3.e.x, 4294967295u, _wgslsmith_sub_u32(29222u, 0u))), abs(~firstLeadingBit(global1.e.zzy))), abs(~var_2.x), 4294967295u);
    let var_5 = _wgslsmith_mult_u32(global1.e.x, func_2(~1i == var_3.d.x, global0[_wgslsmith_index_u32(select(14577u, u_input.d.x, true) ^ max(var_2.x, 8828u), 14u)]).e.x) << (~_wgslsmith_div_u32(1u, var_4.x) % 32u);
    var var_6 = func_2(true, global0[_wgslsmith_index_u32(~var_4.x, 14u)]).b;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -200f) * -354f));
}

