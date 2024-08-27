struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<i32, 25> = array<i32, 25>(1i, 19801i, i32(-2147483648), i32(-2147483648), 0i, 2147483647i, -8708i, 0i, 0i, 2147483647i, i32(-2147483648), i32(-2147483648), 58804i, 1i, -34103i, -49379i, i32(-2147483648), 0i, 1i, 35672i, -35400i, 0i, -1i, 4737i, 33782i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: f32) -> vec2<bool> {
    return !global0.xy;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_2) -> bool {
    let var_0 = Struct_1(global0.x, -2147483647i >= ~min(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, 22445i), arg_0.zz), global1[_wgslsmith_index_u32(1u, 25u)]));
    let var_1 = arg_1;
    global1 = array<i32, 25>();
    global1 = array<i32, 25>();
    var var_2 = Struct_2(-661f, _wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(~vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 25u)], 35471i, global1[_wgslsmith_index_u32(0u, 25u)]), vec3<i32>(var_1.d.x, 0i, global1[_wgslsmith_index_u32(u_input.b, 25u)])), arg_0.x), Struct_1(any(vec3<bool>(true, true, false)), var_1.c.b), _wgslsmith_mult_vec3_i32(firstLeadingBit(arg_0), _wgslsmith_mult_vec3_i32(arg_0, var_1.d)));
    return arg_1.c.b;
}

fn func_2() -> vec2<i32> {
    var var_0 = global0.x;
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(sign(1286f)), -(~29255i), Struct_1(global0.x | func_1(537f).x, func_3(vec3<i32>(0i, 1i, global1[_wgslsmith_index_u32(u_input.b, 25u)]), Struct_2(756f, u_input.a.x, Struct_1(true, false), u_input.c.zxx))), vec3<i32>(~52552i, _wgslsmith_clamp_i32(-13368i, global1[_wgslsmith_index_u32(u_input.b, 25u)], -u_input.c.x), _wgslsmith_sub_i32(min(global1[_wgslsmith_index_u32(u_input.b, 25u)], -2147483647i), ~1i))));
    var var_2 = Struct_2(1f, ~(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(116504u, 25u)], -1i) & var_1.a.b) ^ u_input.a.x, Struct_1(global0.x, true), u_input.a.yzw);
    let var_3 = (max(-(var_2.d.x << (u_input.b % 32u)), -_wgslsmith_clamp_i32(u_input.c.x, 11714i, var_2.d.x)) << (8067u % 32u)) | (-2147483647i & u_input.a.x);
    let var_4 = var_1.a;
    return vec2<i32>(~_wgslsmith_dot_vec4_i32(-u_input.a, -vec4<i32>(13511i, var_1.a.b, u_input.a.x, 28163i)), var_2.b) & -u_input.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(false, true, all(select(!func_1(-1138f), global0.zx, global0.yy)));
    global1 = array<i32, 25>();
    var var_0 = vec3<bool>(true, any(vec4<bool>(!global0.x, all(vec3<bool>(true, false, true)), global0.x != !global0.x, true)), global0.x);
    let var_1 = min(~abs(func_2()), ~vec2<i32>(firstLeadingBit(u_input.a.x), -2147483647i));
    var var_2 = Struct_4(Struct_2(419f, _wgslsmith_dot_vec4_i32(u_input.a, countOneBits(abs(u_input.a))), Struct_1(false, true), u_input.c.yxz));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(~vec3<u32>(u_input.b, u_input.b, 4294967295u) << (abs(vec3<u32>(7558u, 69679u, 42191u)) % vec3<u32>(32u)))));
}

