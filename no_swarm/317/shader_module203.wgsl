struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
    c: Struct_2,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: f32,
}

struct Struct_5 {
    a: bool,
    b: vec4<bool>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
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

var<private> global0: array<vec3<f32>, 29>;

var<private> global1: array<Struct_5, 13>;

var<private> global2: Struct_3 = Struct_3(false, vec3<i32>(-20229i, -35540i, 0i), Struct_2(0u), Struct_1(64067u, 0u, vec3<u32>(49936u, 1u, 47323u)), -34015i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_3) -> vec2<u32> {
    let var_0 = Struct_4(global2.c, global2.c, 2012f);
    global2 = Struct_3(all(!select(vec3<bool>(true, false, arg_2.a), vec3<bool>(arg_2.a, global2.a, false), arg_2.a)) && (~(~var_0.b.a) > _wgslsmith_dot_vec2_u32(arg_2.d.c.xz, ~vec2<u32>(0u, 1u))), -min(-(global2.b & u_input.b.wyw), vec3<i32>(-10148i, -5494i, -arg_2.e)), Struct_2(u_input.a.x), global2.d, -3048i);
    return reverseBits(select(~max(vec2<u32>(arg_2.c.a, 5791u), vec2<u32>(4294967295u, global2.c.a)), ~reverseBits(u_input.a.yy), vec2<bool>(global2.a || global2.a, global2.a))) | min(~global2.d.c.zz << (_wgslsmith_clamp_vec2_u32(u_input.a.xx, ~u_input.a.zy, _wgslsmith_clamp_vec2_u32(u_input.a.xz, global2.d.c.zx, vec2<u32>(var_0.b.a, 79693u))) % vec2<u32>(32u)), min(global2.d.c.xx, _wgslsmith_clamp_vec2_u32(select(u_input.a.xx, vec2<u32>(52074u, u_input.a.x), vec2<bool>(global2.a, true)), vec2<u32>(global2.d.b, global2.c.a), ~vec2<u32>(4294967295u, var_0.a.a))));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: i32) -> f32 {
    global1 = array<Struct_5, 13>();
    var var_0 = vec2<bool>(!arg_0, !arg_0);
    global1 = array<Struct_5, 13>();
    var var_1 = -636f;
    var var_2 = ~(~min(func_3(vec4<f32>(-370f, 2718f, arg_1.x, 783f), _wgslsmith_f_op_f32(trunc(678f)), Struct_3(true, global2.b, Struct_2(arg_2.a), Struct_1(global2.d.c.x, 1u, u_input.a), 45938i)), ~vec2<u32>(43497u, 19213u)));
    return 136f;
}

fn func_1(arg_0: vec2<f32>, arg_1: i32) -> vec2<f32> {
    var var_0 = -2147483647i;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1313f), _wgslsmith_f_op_f32(func_2(!(global2.a || global2.a), _wgslsmith_div_vec2_f32(arg_0, _wgslsmith_div_vec2_f32(vec2<f32>(472f, 611f), vec2<f32>(arg_0.x, arg_0.x))), Struct_2(~0u), 61443i)))), arg_0.x);
    global0 = array<vec3<f32>, 29>();
    let var_2 = global2.c;
    var_0 = ~(reverseBits(u_input.c.x) ^ -2147483647i);
    return vec2<f32>(499f, _wgslsmith_f_op_f32(f32(-1f) * -1064f));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: i32) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-358f))), -1000f))));
    var var_1 = -(_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(arg_2, arg_2, -1i, global2.b.x)) & vec4<i32>(-1i, arg_2, global2.b.x, 0i), _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, -u_input.b)) >> (~(~42461u) % 32u));
    var_0 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec2_f32(func_1(arg_0, 2147483647i)).x)), _wgslsmith_f_op_f32(ceil(-1460f))));
    global2 = Struct_3(!((4294967295u ^ global2.d.b) < _wgslsmith_div_u32(35301u, ~u_input.a.x)), -vec3<i32>(firstLeadingBit(u_input.b.x) << ((0u << (1u % 32u)) % 32u), -4711i, 2147483647i & ~u_input.b.x), global2.c, global2.d, ~arg_2);
    var var_2 = Struct_4(Struct_2(global2.c.a), Struct_2(u_input.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(abs(632f))))));
    return Struct_3(!global2.a, global2.b, Struct_2(4763u), global2.d, global2.b.x);
}

fn func_5(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = abs(global2.c.a);
    global0 = array<vec3<f32>, 29>();
    let var_1 = true;
    global0 = array<vec3<f32>, 29>();
    var_0 = global2.d.a;
    return u_input.a.yx;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 29>();
    var var_0 = !global2.a;
    global0 = array<vec3<f32>, 29>();
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, -1000f) + vec2<f32>(-576f, -208f)))))), vec2<f32>(1f, 1f)));
    let var_2 = func_5(func_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(func_1(var_1, 51052i)))))), var_1, -2147483647i));
    let var_3 = ~vec4<i32>(_wgslsmith_add_i32(-43651i, _wgslsmith_dot_vec2_i32(countOneBits(global2.b.xx), _wgslsmith_mult_vec2_i32(global2.b.xy, vec2<i32>(u_input.c.x, u_input.b.x)))), u_input.b.x, ~1i, _wgslsmith_mod_i32(-global2.e, ~2147483647i));
    global0 = array<vec3<f32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(countOneBits(1i), -8210i, firstTrailingBit(var_3.x)) & global2.b, global2.b));
}

