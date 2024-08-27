struct Struct_1 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: array<vec3<bool>, 18> = array<vec3<bool>, 18>(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

var<private> global2: array<Struct_3, 11>;

var<private> global3: Struct_3;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>) -> bool {
    return global3.a.x != min(abs(_wgslsmith_dot_vec4_u32(min(vec4<u32>(global3.a.x, 29993u, u_input.b, 5531u), vec4<u32>(4294967295u, global3.a.x, global3.a.x, 0u)), vec4<u32>(58122u, 1u, u_input.b, 1u))), u_input.b);
}

fn func_2(arg_0: bool) -> i32 {
    global2 = array<Struct_3, 11>();
    let var_0 = !(!(func_3(_wgslsmith_f_op_vec2_f32(global3.b.c.zx + vec2<f32>(214f, global3.b.c.x))) == arg_0));
    var var_1 = _wgslsmith_f_op_f32(global3.b.c.x + global3.b.d.x);
    let var_2 = select(!vec2<bool>(!var_0, all(select(global3.b.b, vec4<bool>(true, arg_0, arg_0, true), global3.b.b))), select(select(select(global3.b.b.ww, select(vec2<bool>(true, var_0), global3.b.b.yz, arg_0), global3.b.b.zy), !(!global3.b.b.xw), true), vec2<bool>(any(global3.b.b) || var_0, true), true), vec2<bool>(true, global3.b.b.x));
    global2 = array<Struct_3, 11>();
    return ~u_input.a;
}

fn func_1(arg_0: i32, arg_1: vec2<f32>) -> Struct_3 {
    let var_0 = func_2(select(false, true, all(vec4<bool>(true, true, any(global3.b.b.yyz), any(vec2<bool>(false, true))))));
    let var_1 = vec4<bool>(all(!select(!global1[_wgslsmith_index_u32(17982u, 18u)], global3.b.b.zxz, all(vec4<bool>(global3.b.a, global3.b.a, false, false)))), global3.b.a, !(!(arg_0 == 37484i)) | !(!(!global3.b.a)), global3.b.b.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(abs(global3.b.d.wxw));
    var var_3 = Struct_4(Struct_2(global3.b, 44439u > ~_wgslsmith_mult_u32(global3.a.x, 12992u), abs(arg_0), vec3<u32>(89613u & u_input.b, _wgslsmith_div_u32(36317u, 49251u), ~4294967295u) << (max(_wgslsmith_sub_vec3_u32(vec3<u32>(global3.a.x, 1u, 167403u), vec3<u32>(12737u, 23189u, u_input.b)), vec3<u32>(global3.a.x, u_input.b, u_input.b)) % vec3<u32>(32u))), vec2<u32>(global3.a.x, select(1u, _wgslsmith_mod_u32(global3.a.x, u_input.b), false)) >> (_wgslsmith_mult_vec2_u32(abs(global3.a), vec2<u32>(~global3.a.x, max(1506u, 1u))) % vec2<u32>(32u)), (_wgslsmith_f_op_f32(1177f + _wgslsmith_f_op_f32(max(var_2.x, 696f))) < 1180f) | any(select(select(global3.b.b, vec4<bool>(var_1.x, global3.b.b.x, true, global3.b.e), var_1), global3.b.b, select(var_1, vec4<bool>(global3.b.b.x, var_1.x, global3.b.b.x, global3.b.b.x), false))), Struct_2(global3.b, !var_1.x, -22634i, ~_wgslsmith_div_vec3_u32(vec3<u32>(43384u, global3.a.x, global3.a.x), vec3<u32>(global3.a.x, 1u, 1u) | vec3<u32>(u_input.b, 4294967295u, global3.a.x))), Struct_2(Struct_1(var_1.x, select(var_1, vec4<bool>(true, true, false, var_1.x), !var_1), vec4<f32>(-1000f, 322f, _wgslsmith_div_f32(global3.b.d.x, 1330f), _wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-872f, -607f, var_2.x, var_2.x) + global3.b.d)), 50621i < _wgslsmith_clamp_i32(0i, var_0, 2147483647i)), true, ~1i << (global3.a.x % 32u), _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global3.a.x, u_input.b, 4294967295u), vec3<u32>(0u, global3.a.x, u_input.b)), vec3<u32>(global3.a.x, 4294967295u, u_input.b) ^ vec3<u32>(1u, global3.a.x, 0u)), vec3<u32>(~23663u, global3.a.x, ~u_input.b))));
    var var_4 = _wgslsmith_clamp_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(12321u, 39688u), vec2<u32>(var_3.e.d.x, 1u))), (var_3.d.d.yy >> (~firstLeadingBit(global3.a) % vec2<u32>(32u))) << (global3.a % vec2<u32>(32u)), vec2<u32>(~35789u, ~u_input.b));
    return Struct_3(_wgslsmith_add_vec2_u32(vec2<u32>(~var_4.x, ~u_input.b), vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_3.a.d, vec3<u32>(4294967295u, 13557u, var_3.b.x)), ~var_3.e.d), ~(~global3.a.x))), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 18>();
    global3 = func_1(-u_input.a, _wgslsmith_f_op_vec2_f32(-global3.b.c.xy));
    let var_0 = Struct_2(Struct_1(global3.b.b.x, select(!global3.b.b, select(select(global3.b.b, global3.b.b, false), global3.b.b, !global3.b.b), global3.b.b), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b.c) - vec4<f32>(-2395f, global3.b.c.x, 1291f, 277f)))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(sign(global3.b.d.x)), _wgslsmith_f_op_f32(-global3.b.c.x), _wgslsmith_f_op_f32(round(global3.b.d.x)), _wgslsmith_f_op_f32(214f * -221f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1321f, global3.b.c.x, 446f, 1285f) - global3.b.d), _wgslsmith_f_op_vec4_f32(-global3.b.d)))), false), all(!vec4<bool>(true, any(global3.b.b.xz), true, true)), u_input.a, _wgslsmith_mod_vec3_u32(max(abs(vec3<u32>(u_input.b, 54898u, u_input.b)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 11258u, 18475u), vec3<u32>(u_input.b, global3.a.x, 4294967295u))) << (((vec3<u32>(u_input.b, 1u, global3.a.x) ^ vec3<u32>(global3.a.x, 82550u, global3.a.x)) & countOneBits(vec3<u32>(u_input.b, 18653u, global3.a.x))) % vec3<u32>(32u)), firstLeadingBit(~(vec3<u32>(global3.a.x, 1u, global3.a.x) | vec3<u32>(17483u, 1u, 4294967295u)))));
    global1 = array<vec3<bool>, 18>();
    let var_1 = -countOneBits(reverseBits(select(~vec3<i32>(0i, var_0.c, -2147483647i), ~vec3<i32>(23981i, u_input.a, u_input.a), vec3<bool>(global3.b.b.x, false, true))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>((u_input.b << (1u % 32u)) | _wgslsmith_sub_u32(u_input.b, var_0.d.x), 149194u));
}

