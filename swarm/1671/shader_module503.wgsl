struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 16>;

var<private> global1: bool = false;

var<private> global2: array<u32, 15>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(round(-221f))));
    global2 = array<u32, 15>();
    var var_1 = Struct_2(arg_1, ~(~vec3<u32>(u_input.b, 0u, 62694u)) >> (select(arg_2.d.xxw >> (arg_1.d.wxy % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(arg_2.d.zwy, ~arg_1.d.wwx), vec3<bool>(!arg_0.x, arg_0.x, arg_0.x)) % vec3<u32>(32u)), ~66946u, !(!(arg_0.x && (var_0 >= 105f))));
    let var_2 = !(!select(!(!vec3<bool>(true, false, arg_0.x)), !select(vec3<bool>(false, true, var_1.d), vec3<bool>(false, var_1.d, arg_0.x), false), select(select(vec3<bool>(false, var_1.d, false), vec3<bool>(true, var_1.d, var_1.d), false), !vec3<bool>(var_1.d, true, var_1.d), false)));
    global0 = array<vec3<f32>, 16>();
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec3<u32>) -> u32 {
    var var_0 = Struct_2(arg_0.a, ~arg_2, 41417u, !(arg_0.d != (130f < arg_0.a.e)) || true);
    var var_1 = arg_0;
    global0 = array<vec3<f32>, 16>();
    var var_2 = !(!(!vec2<bool>(arg_0.d != var_1.d, arg_2.x == 74719u)));
    global1 = !(-525f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e))) || any(select(!(!vec2<bool>(arg_0.d, var_0.d)), vec2<bool>(true, func_3(vec2<bool>(var_2.x, var_0.d), arg_0.a, arg_1)), !select(vec2<bool>(true, var_1.d), vec2<bool>(arg_0.d, false), var_0.d)));
    return ~firstLeadingBit(~_wgslsmith_mult_u32(var_1.c, 4294967295u));
}

fn func_1() -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -295f), -452f), 529f)) - -1041f), -817f));
    global1 = true;
    let var_1 = 0u;
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-346f, var_0, -926f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(func_2(Struct_2(Struct_1(vec3<f32>(-1000f, 1920f, -160f), var_0, 23831u, vec4<u32>(4294967295u, 7837u, u_input.b, u_input.b), var_0), vec3<u32>(var_1, u_input.b, global2[_wgslsmith_index_u32(4294967295u, 15u)]), 18648u, false), Struct_1(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 15u)], 15u)], 15u)], 16u)], var_0, u_input.b, vec4<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], 65703u, 12767u, u_input.b), var_0), vec3<u32>(58831u, u_input.b, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1601u, 15u)], 15u)])), 16u)]))), var_0, 24171u, vec4<u32>(~12914u, u_input.b, 31227u, 15452u), 692f);
    var var_3 = var_2;
    return _wgslsmith_clamp_vec2_u32(var_3.d.zx, var_3.d.xy, var_3.d.yz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 16>();
    let var_0 = _wgslsmith_add_vec2_u32(vec2<u32>(25046u, ~countOneBits(46376u) << (_wgslsmith_mod_u32(4294967295u, 1u) % 32u)), vec2<u32>(~37826u, 63368u) & max(~vec2<u32>(u_input.b, u_input.b), ~func_1()));
    global1 = false;
    global0 = array<vec3<f32>, 16>();
    var var_1 = !all(vec3<bool>(all(vec4<bool>(false, true, false, true)), any(vec2<bool>(true, true)), true));
    let var_2 = vec3<u32>(_wgslsmith_div_u32(~(~_wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u, 15u)], 0u)), var_0.x), reverseBits(~(~global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(84196u, 15u)], 15u)])), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(countOneBits(~var_0), vec2<u32>(global2[_wgslsmith_index_u32(var_0.x, 15u)], 1u)), _wgslsmith_div_vec2_u32(abs(~var_0), ~var_0)), 15u)]);
    let var_3 = vec4<u32>(~(~global2[_wgslsmith_index_u32(u_input.b, 15u)] | ~4294967295u), u_input.b, abs(~(~20948u)), ~(~4294967295u & var_0.x)) << (firstTrailingBit(~vec4<u32>(1u, var_2.x, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(6453u, 15u)], var_0.x), ~0u)) % vec4<u32>(32u));
    global1 = any(vec3<bool>(true, any(vec2<bool>(u_input.a < u_input.a, func_3(vec2<bool>(false, false), Struct_1(vec3<f32>(1150f, 307f, -1000f), -435f, var_0.x, vec4<u32>(1u, var_3.x, 19608u, 20767u), 183f), Struct_1(global0[_wgslsmith_index_u32(var_0.x, 16u)], 466f, 29991u, var_3, 195f)))), true));
    let var_4 = var_3.wyx;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1030f)))), _wgslsmith_f_op_f32(f32(-1f) * -798f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-887f * 1018f)), 1338f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(717f, 555f, 177f, 376f) * vec4<f32>(-630f, -1200f, -652f, 784f)))))), vec2<i32>(~max(u_input.c.x, _wgslsmith_clamp_i32(u_input.c.x, u_input.c.x, -31173i)), ~reverseBits(_wgslsmith_sub_i32(u_input.c.x, -46345i))), i32(-1i) * -u_input.c.x);
}

