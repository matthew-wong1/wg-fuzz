struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_4 {
    return Struct_4(global0.a.x);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_1 {
    let var_0 = Struct_3(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), 1036f), _wgslsmith_f_op_f32(abs(-319f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) + arg_2.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1185f * 544f)))), Struct_2(vec2<i32>(_wgslsmith_mult_i32(global0.b.a.x, 1i), _wgslsmith_mod_i32(min(u_input.e.x, u_input.c), u_input.a)), Struct_1(true)));
    var var_1 = vec3<u32>(1u, 0u, _wgslsmith_clamp_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(7256u, 2806u, arg_0), vec3<u32>(arg_0, 4294967295u, 4294967295u) >> (vec3<u32>(arg_0, arg_0, arg_0) % vec3<u32>(32u)))), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(27649u, arg_0, arg_0, 0u), vec4<u32>(arg_0, arg_0, 18207u, 4294967295u) << (vec4<u32>(31746u, arg_0, 0u, 51086u) % vec4<u32>(32u))), 0u), arg_0));
    var var_2 = _wgslsmith_div_u32(select(4294967295u, var_1.x, true), 13529u);
    let var_3 = func_2();
    var_1 = vec3<u32>(17493u, var_1.x << (~arg_0 % 32u), 13324u);
    return var_0.b.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -746f))));
    let var_1 = true;
    var var_2 = Struct_1(!all(!vec3<bool>(arg_3, true, false)) & false);
    var_2 = func_3(4294967295u, Struct_1(false), func_2());
    let var_3 = _wgslsmith_sub_vec2_u32(~(_wgslsmith_clamp_vec2_u32(vec2<u32>(13166u, 4294967295u), vec2<u32>(62549u, 4294967295u), vec2<u32>(38487u, 0u)) & _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 3207u), vec2<u32>(4294967295u, 4215u), vec2<u32>(4294967295u, 4294967295u))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(8758u, 3316u, 1u), max(vec3<u32>(66299u, 46021u, 0u), vec3<u32>(80680u, 4294967295u, 22031u))), ~_wgslsmith_mult_u32(30818u, 0u))) | ~vec2<u32>(firstLeadingBit(min(24133u, 53915u)), 1u);
    return ~1u ^ var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ((func_1(_wgslsmith_sub_vec4_i32(u_input.d, u_input.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(-765f, -1303f, 1445f) * vec3<f32>(global0.a.x, 1233f, global0.a.x)), Struct_2(u_input.d.wy, global0.b.b), true) ^ ~1u) ^ 0u) == ~0u;
    let var_1 = global0.b;
    var var_2 = select(select(vec3<bool>(var_1.b.a, global0.b.b.a, !global0.b.b.a), vec3<bool>(var_1.b.a, !(!var_1.b.a), true), false), select(vec3<bool>(460f <= _wgslsmith_f_op_f32(floor(308f)), func_3(264u, Struct_1(var_1.b.a), func_2()).a, all(!vec4<bool>(global0.b.b.a, true, true, false))), !(!select(vec3<bool>(var_1.b.a, false, false), vec3<bool>(global0.b.b.a, var_1.b.a, var_1.b.a), true)), vec3<bool>(!global0.b.b.a, false, var_1.b.a)), any(vec3<bool>(!(global0.a.x != -573f), func_1(u_input.d, global0.a.yww, Struct_2(global0.b.a, var_1.b), global0.b.b.a) <= 0u, any(!vec4<bool>(var_1.b.a, false, global0.b.b.a, var_1.b.a)))));
    let var_3 = func_3(max(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 1u, 1u), vec3<u32>(_wgslsmith_add_u32(1u, 3816u), firstTrailingBit(4294967295u), 22606u)), ~(firstLeadingBit(4294967295u) >> (~4294967295u % 32u))), func_3(0u, var_1.b, Struct_4(_wgslsmith_f_op_f32(-1564f + _wgslsmith_f_op_f32(-global0.a.x)))), func_2()).a;
    let var_4 = Struct_4(func_2().a);
    var var_5 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(405f, -1526f), -415f)) + 2210f), var_4.a, global0.a.x, func_2().a)));
    let var_6 = _wgslsmith_add_i32(var_1.a.x, 2147483647i);
    let var_7 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 135491u, 4294967295u), vec3<u32>(1u, 0u, 1u)), 1u), ~select(19514u, 1u, false), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(24546u, 0u), vec2<u32>(0u, 11519u)), ~4294967295u)), u_input.b);
}

