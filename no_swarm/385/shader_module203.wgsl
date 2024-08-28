struct Struct_1 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: bool;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 45778u, 96408u), vec2<u32>(1u, 0u), vec3<bool>(false, true, false));

var<private> global3: vec3<i32> = vec3<i32>(-1i, 27986i, -28204i);

var<private> global4: vec2<u32>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global1 = false || !(true != any(global2.c.yy));
    global0 = array<Struct_3, 14>();
    let var_0 = Struct_1(~global2.a, ~global2.b ^ vec2<u32>(global4.x, _wgslsmith_sub_u32(global4.x, 4294967295u)), vec3<bool>(true && (0i == global3.x), true, global2.c.x));
    var var_1 = vec4<bool>(global3.x > countOneBits(global3.x), var_0.c.x, var_0.c.x, true);
    var var_2 = _wgslsmith_f_op_f32(arg_0.x * 578f);
    return var_0.a.x;
}

fn func_4(arg_0: u32, arg_1: vec4<u32>, arg_2: vec4<u32>, arg_3: vec4<u32>) -> vec3<i32> {
    var var_0 = global3.x;
    let var_1 = Struct_2(vec3<bool>(global2.c.x, global2.a.x >= _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.x, 53359u, 4294967295u), vec3<u32>(1u, 9924u, 100964u)), ~0u, _wgslsmith_add_u32(arg_3.x, u_input.a)), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(step(907f, 1942f)), _wgslsmith_f_op_f32(floor(2181f)), -1000f), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1373f, 1000f, -396f)), vec3<f32>(716f, 1691f, 770f), global2.c.x))))));
    global2 = Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(~(~arg_1.yyz), select(vec3<u32>(0u, arg_2.x, global4.x), reverseBits(arg_1.wwy), var_1.a.x)), arg_2.x, _wgslsmith_div_u32(_wgslsmith_mod_u32(4294967295u, 1u), 4294967295u)), select(reverseBits(_wgslsmith_clamp_vec2_u32(vec2<u32>(global4.x, 19208u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 4225u), arg_2.wx), arg_2.yy)), min(global2.a.yx, ~vec2<u32>(46197u, arg_2.x)), vec2<bool>(true, true)), select(var_1.a, global2.c, global2.c));
    global1 = global2.c.x;
    global3 = -(~reverseBits(vec3<i32>(1i, global3.x, global3.x))) & abs(~vec3<i32>(_wgslsmith_sub_i32(global3.x, global3.x), global3.x, -12816i));
    return -vec3<i32>(_wgslsmith_div_i32(countOneBits(global3.x) ^ firstTrailingBit(-1i), global3.x), _wgslsmith_mod_i32(23802i, _wgslsmith_mod_i32(30144i, 37258i)) & -global3.x, firstTrailingBit(2147483647i));
}

fn func_2() -> u32 {
    global3 = _wgslsmith_add_vec3_i32(~func_4(_wgslsmith_add_u32(global2.b.x, 4294967295u) & func_3(vec2<f32>(588f, 967f)), vec4<u32>(~global4.x, ~47234u, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b.x, global2.a.x), vec2<u32>(global2.a.x, u_input.a)), ~87171u), ~(~vec4<u32>(4294967295u, 0u, 0u, 1u)), select(abs(vec4<u32>(54655u, 4294967295u, 1u, 4294967295u)), vec4<u32>(global2.a.x, 42084u, 1u, 21584u), vec4<bool>(global2.c.x, true, global2.c.x, global2.c.x))), _wgslsmith_mod_vec3_i32(min(_wgslsmith_add_vec3_i32(~vec3<i32>(global3.x, global3.x, global3.x), vec3<i32>(global3.x, global3.x, 31343i)), vec3<i32>(global3.x, 1i, 15738i)), _wgslsmith_clamp_vec3_i32(select(vec3<i32>(global3.x, 2147483647i, global3.x), vec3<i32>(36532i, global3.x, -1i), select(global2.c, global2.c, global2.c)), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-5975i, 25100i, global3.x), vec3<i32>(global3.x, 14716i, global3.x))), max(vec3<i32>(-24929i, 1i, 0i), vec3<i32>(global3.x, 1i, global3.x)) & ~vec3<i32>(-2147483647i, 1i, global3.x))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-373f * 1032f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -1476f), 1400f);
    var var_1 = global2.c.x;
    var_1 = global2.c.x;
    var_1 = true;
    return ~u_input.a;
}

fn func_1() -> vec3<u32> {
    global0 = array<Struct_3, 14>();
    let var_0 = vec3<bool>(global2.c.x && true, global2.c.x || true, !((func_2() < reverseBits(3396u)) && true));
    var var_1 = 19331u;
    var_1 = 3742u ^ _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(global2.a.x, 19688u, u_input.a, 7724u)), vec4<u32>(global4.x, global2.b.x, 0u, _wgslsmith_div_u32(4294967295u, ~15263u)));
    let var_2 = 25371u;
    return ~min(vec3<u32>(1u, func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(687f, 2830f) * vec2<f32>(-976f, -191f))), 1u << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 46943u, 1u, global4.x), vec4<u32>(42371u, global2.b.x, global2.a.x, u_input.a)) % 32u)), global2.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~firstTrailingBit(vec2<u32>(24271u, global4.x));
    let var_1 = all(!(!(!select(vec4<bool>(true, true, true, global2.c.x), vec4<bool>(true, false, true, global2.c.x), vec4<bool>(true, true, global2.c.x, false)))));
    global3 = vec3<i32>(2147483647i, ~5199i, firstTrailingBit(global3.x));
    var var_2 = Struct_1((select(vec3<u32>(u_input.a, 4294967295u, 0u), ~global2.a, global2.c.x || true) & func_1()) ^ firstLeadingBit(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(global2.a, vec3<u32>(u_input.a, 11637u, var_0.x), vec3<u32>(global2.a.x, 1u, u_input.a)), ~vec3<u32>(52049u, 1u, global2.b.x))), vec2<u32>(4294967295u, var_0.x), global2.c);
    var var_3 = select(any(!(!vec4<bool>(false, true, var_2.c.x, false))), any(var_2.c.xz), !(true || any(vec4<bool>(false, true, var_1, false)))) & !(global3.x == ~_wgslsmith_mod_i32(-42741i, global3.x));
    var_3 = !var_2.c.x;
    var var_4 = global2.b.x;
    var var_5 = var_2.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(global3.x), _wgslsmith_f_op_f32(f32(-1f) * -808f), ~(-vec2<i32>(global3.x, global3.x) << (vec2<u32>(~10989u, var_2.b.x) % vec2<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(global4.x, var_0.x), global4.x), -(~abs(-1i)));
}

