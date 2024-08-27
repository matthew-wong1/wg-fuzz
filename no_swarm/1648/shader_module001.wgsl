struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<u32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<u32> {
    global0 = array<vec4<bool>, 29>();
    let var_0 = _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(69123u, arg_1.b.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(29182u, u_input.e), arg_1.b.c), _wgslsmith_add_u32(1u, 36827u)), reverseBits(vec4<u32>(abs(u_input.e), _wgslsmith_dot_vec4_u32(vec4<u32>(49654u, u_input.e, arg_1.b.c.x, 38344u), vec4<u32>(u_input.e, u_input.e, 3898u, u_input.e)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.c.x, 0u, arg_1.b.c.x, arg_1.b.c.x), vec4<u32>(1u, u_input.c.x, 0u, 73259u)), ~2160u))), max(~_wgslsmith_add_u32(~85267u, ~4294967295u), 2165u));
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(arg_1.b.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-442f)) * arg_1.a.x))));
    return ~arg_1.b.c;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: bool) -> Struct_2 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -601f), -508f);
    var var_1 = _wgslsmith_add_i32(u_input.a.x, ~8826i);
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0 * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-325f, arg_0.a.x), vec2<f32>(var_0.x, var_0.x), vec2<bool>(false, false))))))), arg_0.b);
    var var_3 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-var_0.x)));
    let var_4 = select(~vec2<u32>(var_2.b.c.x, var_2.b.c.x), ~func_3(!global0[_wgslsmith_index_u32(var_2.b.c.x, 29u)], Struct_2(var_0, Struct_1(vec3<f32>(arg_1.x, var_0.x, arg_0.b.a.x), false, arg_0.b.c, var_2.b.d))) ^ (_wgslsmith_div_vec2_u32(vec2<u32>(1u, arg_0.b.c.x), vec2<u32>(47655u, 1u)) & arg_0.b.c), !vec2<bool>(!select(var_2.b.b, true, false), var_2.b.b));
    return arg_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = select(select(vec2<bool>(arg_0.b.c.x >= firstTrailingBit(74040u), any(select(vec3<bool>(false, false, false), vec3<bool>(false, arg_1.b.b, arg_1.b.b), vec3<bool>(true, true, arg_1.b.b)))), select(!(!vec2<bool>(arg_0.b.b, arg_1.b.b)), select(select(vec2<bool>(true, false), vec2<bool>(arg_1.b.b, arg_1.b.b), vec2<bool>(true, false)), vec2<bool>(arg_1.b.b, false), arg_1.b.b), vec2<bool>(!arg_1.b.b, arg_0.b.b)), any(select(select(vec4<bool>(false, arg_0.b.b, true, arg_0.b.b), global0[_wgslsmith_index_u32(arg_1.b.c.x, 29u)], false), vec4<bool>(true, true, arg_1.b.b, arg_1.b.b), !global0[_wgslsmith_index_u32(arg_1.b.c.x, 29u)]))), !select(!select(vec2<bool>(true, arg_0.b.b), vec2<bool>(true, true), vec2<bool>(true, false)), !(!vec2<bool>(arg_1.b.b, false)), vec2<bool>(arg_1.b.b, arg_1.b.b)), (!(!arg_1.b.b) | false) && false);
    var var_1 = arg_1;
    let var_2 = func_2(Struct_2(var_1.b.a.xz, func_2(arg_0, var_1.b.a, false).b), _wgslsmith_div_vec3_f32(var_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(arg_1.b.a)), _wgslsmith_f_op_vec3_f32(-arg_1.b.a))) + vec3<f32>(_wgslsmith_div_f32(354f, var_1.b.a.x), _wgslsmith_f_op_f32(f32(-1f) * -249f), arg_0.b.a.x))), (_wgslsmith_sub_i32(~2147483647i, arg_0.b.d.x) << (~(arg_1.b.c.x | arg_0.b.c.x) % 32u)) <= var_1.b.d.x).b.b;
    var var_3 = 2147483647i;
    var var_4 = _wgslsmith_f_op_f32(-arg_0.b.a.x);
    return abs(vec3<u32>(~arg_1.b.c.x, 67007u, _wgslsmith_mult_u32(~10603u, min(u_input.e, arg_1.b.c.x)) >> (u_input.c.x % 32u)));
}

fn func_1(arg_0: Struct_2) -> bool {
    global0 = array<vec4<bool>, 29>();
    let var_0 = arg_0.b;
    global0 = array<vec4<bool>, 29>();
    global0 = array<vec4<bool>, 29>();
    var var_1 = ~abs(abs(vec3<u32>(8869u, arg_0.b.c.x, var_0.c.x) | vec3<u32>(u_input.e, var_0.c.x, u_input.e)) << (func_4(func_2(arg_0, var_0.a, var_0.b), func_2(arg_0, vec3<f32>(arg_0.a.x, 1022f, -1000f), true)) % vec3<u32>(32u)));
    return any(!vec2<bool>(false, arg_0.b.b));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    global0 = array<vec4<bool>, 29>();
    let var_1 = ~_wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(u_input.c.x, 41515u))), u_input.c);
    var var_2 = vec4<i32>(-1i) * -select(~(~vec4<i32>(var_0.x, 1i, 29571i, -28346i)), ~vec4<i32>(-1i, u_input.b, var_0.x, 27732i), vec4<bool>(any(vec3<bool>(false, true, true)), all(global0[_wgslsmith_index_u32(var_1, 29u)]), func_1(Struct_2(vec2<f32>(-1000f, 1168f), Struct_1(vec3<f32>(-300f, 494f, -1453f), false, u_input.c, vec4<i32>(52623i, -7580i, var_0.x, 1i)))), all(global0[_wgslsmith_index_u32(var_1, 29u)])));
    global0 = array<vec4<bool>, 29>();
    var_2 = ~((max(vec4<i32>(var_0.x, u_input.b, var_0.x, u_input.a.x), vec4<i32>(-61439i, u_input.b, -1i, 0i)) << (~abs(vec4<u32>(u_input.c.x, 4018u, u_input.e, var_1)) % vec4<u32>(32u))) | func_2(func_2(func_2(Struct_2(vec2<f32>(1382f, 750f), Struct_1(vec3<f32>(1008f, 1490f, 203f), true, u_input.c, vec4<i32>(u_input.a.x, var_2.x, -36913i, 40380i))), vec3<f32>(547f, 853f, -512f), true), vec3<f32>(945f, -576f, 2614f), all(global0[_wgslsmith_index_u32(59011u, 29u)])), vec3<f32>(-1236f, -1677f, 959f), all(vec2<bool>(true, true))).b.d);
    let var_3 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), 1121f, _wgslsmith_f_op_f32(-474f - -254f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1235f, 613f, 1000f)) - vec3<f32>(1f, 1f, 1f))))));
    var_2 = vec4<i32>(_wgslsmith_dot_vec2_i32(var_2.yw, var_0), firstLeadingBit(var_2.x >> (79286u % 32u)), 2147483647i, ~(-80266i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, vec3<f32>(_wgslsmith_f_op_f32(-954f * 727f), _wgslsmith_f_op_f32(ceil(618f)), var_3.x));
}

