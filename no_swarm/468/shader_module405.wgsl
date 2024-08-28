struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 6>;

var<private> global1: array<bool, 27>;

var<private> global2: array<u32, 3> = array<u32, 3>(1u, 748u, 0u);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> bool {
    let var_0 = false;
    let var_1 = ~abs(arg_0.c.zxx);
    global2 = array<u32, 3>();
    var var_2 = Struct_1(var_1.xy, -2058f, vec4<u32>(arg_0.a.x, min(global2[_wgslsmith_index_u32(~0u, 3u)] & 60656u, var_1.x), 16907u, _wgslsmith_mod_u32(u_input.c, firstTrailingBit(var_1.x >> (23960u % 32u)))));
    var var_3 = select(!(!(!(!vec4<bool>(true, var_0, false, var_0)))), !(!(!(!vec4<bool>(global1[_wgslsmith_index_u32(34815u, 27u)], true, var_0, true)))), vec4<bool>(var_0, false, false, 1u <= ~u_input.a.x));
    return true;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<f32>, arg_3: vec2<u32>) -> i32 {
    global2 = array<u32, 3>();
    global2 = array<u32, 3>();
    let var_0 = Struct_1(select(abs(~(vec2<u32>(53325u, arg_3.x) | vec2<u32>(0u, 19854u))), u_input.a.xz, true), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(ceil(-119f)))))))), abs(vec4<u32>(17112u, ~firstLeadingBit(arg_3.x), 67935u, ~(~global2[_wgslsmith_index_u32(u_input.c, 3u)]))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(747f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1151f))));
    var var_2 = true;
    return min(-2147483647i, -_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(~select(0u, u_input.e, false), 6u)], global0[_wgslsmith_index_u32(arg_3.x, 6u)]));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> i32 {
    global0 = array<vec3<i32>, 6>();
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 27u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b - 1006f) + arg_1.b) * arg_1.b)));
    var var_2 = !global1[_wgslsmith_index_u32(~1u, 27u)];
    let var_3 = arg_1.c.xxy & arg_1.c.yyx;
    return func_4(var_1, !func_3(Struct_1(~u_input.a.zx, _wgslsmith_f_op_f32(-436f + arg_1.b), ~vec4<u32>(12347u, arg_1.c.x, 1u, 1u)), global2[_wgslsmith_index_u32(1u, 3u)]), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1144f, 1000f, var_1.x, -1000f) + vec4<f32>(-951f, var_1.x, var_1.x, var_1.x)))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2494f, arg_1.b, 1000f, var_1.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(632f, 1285f, var_1.x, var_1.x))))))), !select(vec4<bool>(global1[_wgslsmith_index_u32(27981u, 27u)], false, true, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3.x, 3u)], 27u)]), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_3.x, 27u)], false), vec4<bool>(true, true, false, global1[_wgslsmith_index_u32(4294967295u, 27u)])))), var_3.xy);
}

fn func_1(arg_0: u32) -> vec2<u32> {
    global0 = array<vec3<i32>, 6>();
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1000f * 1f), 1000f));
    global0 = array<vec3<i32>, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_div_f32(var_0, -302f), _wgslsmith_f_op_f32(floor(395f)), -1042f, _wgslsmith_f_op_f32(-var_0)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1120f, var_0, 1697f, var_0))) - vec4<f32>(763f, 794f, -337f, var_0)))))));
    let var_2 = countOneBits(_wgslsmith_mult_i32(~func_2(-u_input.d.x, Struct_1(u_input.a.zz, var_0, vec4<u32>(arg_0, arg_0, global2[_wgslsmith_index_u32(0u, 3u)], global2[_wgslsmith_index_u32(4294967295u, 3u)])), 2147483647i), ~u_input.d.x));
    return u_input.a.xx | _wgslsmith_add_vec2_u32(~abs(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 3u)], 3u)], 0u)), (vec2<u32>(global2[_wgslsmith_index_u32(92527u, 3u)], u_input.b) ^ ~u_input.a.xy) << (~vec2<u32>(11345u, 1u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    global1 = array<bool, 27>();
    let var_1 = _wgslsmith_sub_vec3_i32(~(-min(global0[_wgslsmith_index_u32(4294967295u, 6u)], global0[_wgslsmith_index_u32(u_input.c, 6u)])), ~global0[_wgslsmith_index_u32(13642u, 6u)]);
    global2 = array<u32, 3>();
    global2 = array<u32, 3>();
    var var_2 = firstLeadingBit(-_wgslsmith_sub_i32(u_input.d.x, ~u_input.d.x & 1i));
    global1 = array<bool, 27>();
    var var_3 = Struct_1(~func_1(14783u), _wgslsmith_f_op_f32(-108f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, -1989f)) - 980f) + _wgslsmith_f_op_f32(trunc(var_0)))), ~(~(~abs(vec4<u32>(u_input.e, 1u, 4294967295u, 41238u)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_add_u32(~4266u, select(~4294967295u, ~13666u, global1[_wgslsmith_index_u32(0u, 27u)])), ~71118u));
}

