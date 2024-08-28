struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec3<i32>(-51753i, 27974i, -1i), vec4<u32>(4294967295u, 22623u, 7994u, 1u), vec4<f32>(-721f, 1509f, 1033f, -174f));

var<private> global1: array<Struct_2, 11> = array<Struct_2, 11>(Struct_2(vec4<f32>(338f, 200f, -1000f, 851f), 39146u), Struct_2(vec4<f32>(-978f, 1087f, -924f, -471f), 4294967295u), Struct_2(vec4<f32>(-1000f, -1192f, -1000f, -781f), 1u), Struct_2(vec4<f32>(1000f, 1467f, -637f, -983f), 4294967295u), Struct_2(vec4<f32>(676f, 888f, 710f, -437f), 4294967295u), Struct_2(vec4<f32>(-1586f, -559f, -1000f, -1094f), 1u), Struct_2(vec4<f32>(588f, -390f, -696f, -701f), 0u), Struct_2(vec4<f32>(-613f, 1394f, 1213f, 505f), 107250u), Struct_2(vec4<f32>(-1973f, 1130f, -645f, 301f), 8270u), Struct_2(vec4<f32>(-266f, 867f, -454f, -748f), 18782u), Struct_2(vec4<f32>(1000f, -448f, -1208f, -631f), 0u));

var<private> global2: array<Struct_5, 16>;

var<private> global3: array<f32, 10>;

var<private> global4: array<Struct_2, 15>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>) -> bool {
    global3 = array<f32, 10>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    let var_1 = vec2<bool>(!(global0.a.x == global0.a.x), arg_0);
    let var_2 = ~_wgslsmith_div_vec4_u32(~(u_input.c >> (u_input.c % vec4<u32>(32u))) | _wgslsmith_add_vec4_u32(~global0.b, ~vec4<u32>(var_0.b, var_0.b, 47977u, 4294967295u)), firstLeadingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.b.x, 0u), ~u_input.b.x, ~u_input.c.x, u_input.b.x)));
    let var_3 = global0.b.x;
    return false;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<u32>, arg_2: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.a.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(9074u, 10u)], arg_2.a.x))))) * 199f);
    let var_1 = Struct_3(select(!(!(!vec4<bool>(true, false, arg_0.x, arg_0.x))), select(!vec4<bool>(false, true, false, arg_0.x), vec4<bool>(arg_2.b < 13713u, func_2(arg_0.x, vec4<i32>(45947i, 22372i, -6235i, global0.a.x)), true, true), vec4<bool>(true, arg_0.x, u_input.a != -4786i, func_2(arg_0.x, vec4<i32>(u_input.a, u_input.a, global0.a.x, global0.a.x)))), arg_0.x), global0.b.x, Struct_1(!(!any(vec4<bool>(arg_0.x, false, false, arg_0.x))), arg_0.x), false, arg_1.x);
    var var_2 = u_input.c.x < ~countOneBits(min(~13774u, 1u));
    var var_3 = var_1.d;
    var var_4 = global0.c.zx;
    return true;
}

fn func_3() -> vec4<i32> {
    global0 = Struct_5(-(_wgslsmith_clamp_vec3_i32(-global0.a, vec3<i32>(global0.a.x, global0.a.x, u_input.a), global0.a ^ vec3<i32>(-2147483647i, 1i, 2147483647i)) | vec3<i32>(_wgslsmith_div_i32(-84376i, global0.a.x), _wgslsmith_add_i32(global0.a.x, -16396i), u_input.a)), max(vec4<u32>(1u, 1u, 4294967295u ^ firstTrailingBit(14876u), 3436u ^ _wgslsmith_mod_u32(global0.b.x, u_input.c.x)), _wgslsmith_add_vec4_u32(vec4<u32>(~global0.b.x, global0.b.x << (global0.b.x % 32u), ~42508u, countOneBits(u_input.c.x)), vec4<u32>(_wgslsmith_add_u32(57901u, global0.b.x), _wgslsmith_sub_u32(31094u, u_input.b.x), 1u, ~global0.b.x))), global0.c);
    global1 = array<Struct_2, 11>();
    var var_0 = Struct_2(global0.c, 1u);
    global1 = array<Struct_2, 11>();
    let var_1 = select(!vec3<bool>(true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)))), vec3<bool>(func_1(vec3<bool>(false, true, true), ~abs(vec2<u32>(36392u, var_0.b)), Struct_2(global0.c, _wgslsmith_mult_u32(u_input.c.x, global0.b.x))), select(any(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), any(vec3<bool>(true, true, true)), false), true), true);
    return select(~(vec4<i32>(-global0.a.x, 2147483647i << (global0.b.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(-6721i, -52290i), vec2<i32>(2946i, 0i)), u_input.a) << (vec4<u32>(~6444u, 1u | u_input.b.x, select(var_0.b, 4294967295u, false), 4294967295u) % vec4<u32>(32u))), -_wgslsmith_clamp_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a, global0.a.x, 1i, -8240i)), -vec4<i32>(45245i, u_input.a, global0.a.x, u_input.a), ~(-vec4<i32>(global0.a.x, global0.a.x, global0.a.x, u_input.a))), true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(global0.c.zzy, _wgslsmith_f_op_vec3_f32(-global0.c.wwy));
    var var_1 = Struct_1(any(vec3<bool>(true, true, true)), !func_1(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), _wgslsmith_mult_vec2_u32(u_input.c.wy, vec2<u32>(12441u, 33787u)), global4[_wgslsmith_index_u32(select(4294967295u, global0.b.x, true), 15u)]) & func_2(false, func_3()));
    let var_2 = !select(true, abs(_wgslsmith_mult_u32(1u, 49427u)) == u_input.c.x, !all(vec2<bool>(var_1.b, true)));
    let var_3 = _wgslsmith_mod_i32(2147483647i, global0.a.x);
    var var_4 = -778f;
    global3 = array<f32, 10>();
    global2 = array<Struct_5, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -189f)), -317f, 862f))));
}

