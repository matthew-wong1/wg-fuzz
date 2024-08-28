struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32> = vec4<u32>(25814u, 46573u, 40082u, 10869u);

var<private> global2: array<u32, 6>;

var<private> global3: array<vec2<u32>, 13>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    return ~global1.ywy;
}

fn func_2(arg_0: bool) -> i32 {
    global3 = array<vec2<u32>, 13>();
    let var_0 = ~(func_3(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -2447f, -1999f, -2125f)), vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 6u)], u_input.b, global2[_wgslsmith_index_u32(0u, 6u)]), max(u_input.a.x, 11296i), select(false, arg_0, arg_0), vec2<i32>(u_input.c.x, u_input.c.x) >> (vec2<u32>(global1.x, global1.x) % vec2<u32>(32u)))) & _wgslsmith_add_vec3_u32(~(vec3<u32>(global2[_wgslsmith_index_u32(global1.x, 6u)], global2[_wgslsmith_index_u32(12940u, 6u)], 0u) << (global1.wwz % vec3<u32>(32u))), select(global1.ywx, ~vec3<u32>(59482u, global1.x, 4294967295u), vec3<bool>(false, arg_0, arg_0))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(1f)))));
    global1 = vec4<u32>(1u ^ global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b ^ _wgslsmith_div_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(10149u, 6u)], 6u)], global1.x), var_0.x, 91416u), 6u)], abs(0u), ~_wgslsmith_div_u32(_wgslsmith_add_u32(63695u | global1.x, 0u), 27988u), min(4294967295u, max(_wgslsmith_mult_u32(u_input.e & global1.x, global1.x), countOneBits(global1.x))));
    global2 = array<u32, 6>();
    return -reverseBits(_wgslsmith_mult_i32(u_input.d, _wgslsmith_mult_i32(_wgslsmith_sub_i32(1i, 14911i), _wgslsmith_mod_i32(u_input.d, 0i))));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_2) -> StorageBuffer {
    var var_0 = func_2(false) > firstTrailingBit(arg_1.d.c);
    let var_1 = true;
    global3 = array<vec2<u32>, 13>();
    var_0 = !arg_1.b.d;
    var_0 = true;
    return StorageBuffer(arg_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~vec4<u32>(~u_input.b ^ global1.x, 4294967295u, _wgslsmith_dot_vec3_u32(global1.yxw, vec3<u32>(global1.x << (4294967295u % 32u), ~25667u, ~1u)), countOneBits(1u));
    global2 = array<u32, 6>();
    var var_0 = ~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstLeadingBit(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.e, 6u)])), ~global2[_wgslsmith_index_u32(20701u, 6u)]) & 2921u, 6u)];
    global3 = array<vec2<u32>, 13>();
    var var_1 = 1419f;
    global0 = 1422f;
    var var_2 = select(u_input.c.x, _wgslsmith_sub_i32(i32(-1i) * -2147483647i, u_input.a.x), false);
    let x = u_input.a;
    s_output = func_1(u_input.c, Struct_2(_wgslsmith_f_op_f32(floor(-1101f)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-1000f * 576f), _wgslsmith_f_op_f32(-357f - -1900f), _wgslsmith_f_op_f32(f32(-1f) * -1093f), _wgslsmith_div_f32(280f, 304f)), global1.wzx >> ((global1.yxz ^ vec3<u32>(3243u, 1u, global1.x)) % vec3<u32>(32u)), _wgslsmith_mult_i32(1696i | u_input.a.x, -45712i), -2147483647i >= -u_input.d, ~vec2<i32>(0i, u_input.c.x)), ~vec2<i32>(~u_input.a.x, 19279i), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-444f + 312f), 144f, 1f, _wgslsmith_f_op_f32(round(-682f))), abs(vec3<u32>(global1.x, u_input.b, u_input.b)), 546i, true, u_input.c.xx)));
}

