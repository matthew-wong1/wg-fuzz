struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: f32,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 18> = array<vec3<i32>, 18>(vec3<i32>(i32(-2147483648), 2147483647i, 16740i), vec3<i32>(-8764i, 8437i, 37477i), vec3<i32>(1i, 0i, -1i), vec3<i32>(40366i, -20121i, -13537i), vec3<i32>(2147483647i, 1i, 26209i), vec3<i32>(21048i, 0i, -14736i), vec3<i32>(-1i, 25496i, -12828i), vec3<i32>(2147483647i, 0i, 21960i), vec3<i32>(11798i, -53033i, -6439i), vec3<i32>(0i, 2147483647i, -1i), vec3<i32>(-16081i, 60020i, 57152i), vec3<i32>(7744i, 0i, i32(-2147483648)), vec3<i32>(10331i, 0i, -1i), vec3<i32>(13266i, i32(-2147483648), 62159i), vec3<i32>(2147483647i, -21313i, -1i), vec3<i32>(0i, -6267i, 0i), vec3<i32>(-42968i, 45367i, -59259i), vec3<i32>(-1i, -13395i, -1i));

var<private> global1: bool = false;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_3) -> bool {
    global0 = array<vec3<i32>, 18>();
    var var_0 = 80101i;
    return any(!arg_1.a.a) & all(arg_1.a.a.ywx);
}

fn func_3(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec2<f32>, arg_3: vec4<i32>) -> vec3<u32> {
    global1 = true;
    return arg_0;
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = arg_0.b.b;
    var var_1 = arg_0.b.b;
    var var_2 = select(!vec3<bool>(arg_0.b.a.x, false & arg_0.b.a.x, arg_0.b.a.x), !select(arg_0.a.xzz, select(!vec3<bool>(arg_0.a.x, arg_0.a.x, false), select(vec3<bool>(true, arg_0.b.a.x, false), vec3<bool>(arg_0.b.a.x, arg_0.a.x, arg_0.a.x), vec3<bool>(arg_0.a.x, true, false)), vec3<bool>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x)), false), !vec3<bool>(func_2(global0[_wgslsmith_index_u32(1u, 18u)], Struct_3(arg_0, var_1.x, arg_0.c.x, arg_0, false)), arg_0.b.a.x, false));
    var_2 = !(!select(!(!vec3<bool>(var_2.x, true, false)), arg_0.a.xyy, vec3<bool>(false, true, 2147483647i >= u_input.c)));
    var var_3 = arg_0.b;
    return Struct_2(!arg_0.a, Struct_1(var_2.xy, firstTrailingBit(arg_0.b.b) & func_3(arg_0.b.b, select(vec4<i32>(2147483647i, 34801i, u_input.c, 1i), vec4<i32>(-16595i, var_3.e.x, arg_0.b.e.x, arg_0.b.e.x), false), vec2<f32>(arg_0.c.x, arg_0.c.x), -vec4<i32>(arg_0.b.e.x, arg_0.b.e.x, 0i, 1i)), 3779u >> (1u % 32u), firstTrailingBit(var_0.x) >> (_wgslsmith_add_u32(~u_input.b.x, 0u) % 32u), vec2<i32>(_wgslsmith_sub_i32(~3282i, 1i), 1i | var_3.e.x)), vec4<f32>(429f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.c.x, arg_0.c.x)) - 2656f) + _wgslsmith_f_op_f32(max(arg_0.c.x, _wgslsmith_f_op_f32(select(arg_0.c.x, arg_0.c.x, arg_0.a.x))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.c.x - 126f))), -636f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, 1756f) - -1283f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-854f, -1246f)), _wgslsmith_f_op_f32(arg_0.c.x * arg_0.c.x)))));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3) -> f32 {
    var var_0 = true;
    let var_1 = func_1(Struct_2(arg_1.a.a, Struct_1(vec2<bool>(true, arg_1.e), arg_0, _wgslsmith_mult_u32(u_input.a.x, 7781u ^ arg_0.x), ~arg_1.b, min(-arg_1.a.b.e, arg_1.a.b.e | vec2<i32>(arg_1.a.b.e.x, u_input.c))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.c.x))), -674f, arg_1.d.c.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.d.c.x + 499f), 1161f))))).b;
    var_0 = var_1.a.x;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.d.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = true;
    global1 = false;
    global0 = array<vec3<i32>, 18>();
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(min(1u, u_input.a.x)), abs(u_input.b.x), u_input.b.x, u_input.b.x & u_input.b.x) >> (firstTrailingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(0u, u_input.b.x, u_input.b.x, u_input.b.x), ~vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 101542u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(4294967295u, u_input.a.x)), u_input.a), 88046u, _wgslsmith_add_u32(select(u_input.a.x, 43130u, false), ~u_input.b.x)), _wgslsmith_mod_u32(u_input.b.x, ~35259u), 1u, 1u));
    let var_1 = Struct_4(select(select(vec2<bool>(true, true), vec2<bool>(all(vec3<bool>(false, true, false)), any(vec3<bool>(false, false, true))), true), vec2<bool>(true, any(vec2<bool>(true, true))), vec2<bool>(true, false)));
    global0 = array<vec3<i32>, 18>();
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(func_4(var_0.xzy, Struct_3(func_1(Struct_2(vec4<bool>(true, var_1.a.x, var_1.a.x, true), Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), vec3<u32>(84188u, var_0.x, 1u), 4294967295u, 27007u, vec2<i32>(1i, 27345i)), vec4<f32>(-279f, -1157f, 378f, 1000f))), _wgslsmith_div_u32(0u, 8912u), _wgslsmith_f_op_f32(-1120f * -815f), Struct_2(vec4<bool>(true, true, false, var_1.a.x), Struct_1(var_1.a, vec3<u32>(105624u, u_input.b.x, u_input.b.x), u_input.b.x, 0u, vec2<i32>(-2147483647i, 2147483647i)), vec4<f32>(-1000f, 1487f, 197f, 302f)), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -190f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-452f, -2748f)))), -507f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(211f, 585f, -437f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-894f, 969f, -1296f), vec3<f32>(-673f, 696f, -242f), vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x))))))), vec3<f32>(1f, 1f, 1f))), vec3<bool>(true, true, true)));
    let var_3 = _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_0.x, var_0.x, u_input.a.x), ~var_0.zww)), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(var_0.zzz, vec3<u32>(1u, 0u, u_input.a.x)), min(~vec3<u32>(u_input.b.x, 49824u, 96999u), reverseBits(vec3<u32>(1u, 14734u, u_input.a.x))))), var_0.yyw);
    global0 = array<vec3<i32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c, -5608i, ~4294967295u);
}

