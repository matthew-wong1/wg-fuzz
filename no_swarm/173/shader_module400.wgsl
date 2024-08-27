struct Struct_1 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_1,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 5>;

var<private> global1: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32, arg_1: i32) -> i32 {
    global0 = array<Struct_3, 5>();
    global0 = array<Struct_3, 5>();
    global1 = Struct_2(~(vec4<i32>(arg_1, u_input.c, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, global1.a.x), vec2<i32>(global1.a.x, u_input.e)), arg_1 & 0i) | min(abs(vec4<i32>(global1.a.x, global1.a.x, 0i, 9117i)), global1.a)), global1.b, _wgslsmith_f_op_vec4_f32(-global1.b.b), firstTrailingBit(max(global1.d, ~(~vec3<u32>(4294967295u, arg_0, arg_0)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(global1.c.x * global1.e.x), 614f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(global1.b.b.yy))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, global1.b.b.x) - global1.e) * _wgslsmith_f_op_vec2_f32(-global1.e)))));
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -430f), _wgslsmith_f_op_f32(step(-634f, global1.b.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.e.x, _wgslsmith_f_op_f32(max(-113f, -1000f)))), _wgslsmith_f_op_f32(round(global1.e.x))), global1.b.b, true);
    let var_1 = u_input.d;
    return reverseBits(_wgslsmith_mod_i32(1i, firstTrailingBit(18281i)));
}

fn func_2() -> vec3<f32> {
    let var_0 = global1.d.xz;
    let var_1 = select(_wgslsmith_sub_i32(reverseBits(~0i), -u_input.a.x), global1.a.x, true) ^ ~1i;
    global1 = Struct_2(min(global1.a, ~vec4<i32>(-var_1, func_3(4294967295u, -1i), var_1 << (0u % 32u), 1i)), global1.b, global1.b.b, ~(~(~vec3<u32>(0u, 26243u, 1u)) & (global1.d >> (firstLeadingBit(global1.d) % vec3<u32>(32u)))), global1.e);
    var var_2 = Struct_3(global1.e.x, _wgslsmith_f_op_f32(-global1.b.b.x), Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(global1.b.a, global1.b.b.ywy, false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-585f, global1.c.x, global1.c.x) * global1.b.a))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b.a.x, 484f) * global1.c.x), _wgslsmith_f_op_f32(global1.c.x * -1065f), global1.b.b.x, global1.c.x), global1.b.c), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-218f, 948f)), 1475f);
    global0 = array<Struct_3, 5>();
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.c.a + var_2.c.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.a.x, var_2.b, 810f) * global1.c.zxz))))));
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: vec4<i32>) -> i32 {
    global0 = array<Struct_3, 5>();
    var var_0 = all(select(arg_2.yz, arg_2.zx, !arg_2.ww));
    var var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-378f, _wgslsmith_f_op_f32(898f * global1.b.b.x), arg_0.c))) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -1619f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(732f * -1192f)) - global1.b.b.x))), global1.b, 1078f, -522f);
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(arg_0.b.zzx, _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_2()) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-343f, global1.b.b.x, -2707f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(517f, global1.b.a.x, var_1.d)))))), _wgslsmith_f_op_vec4_f32(trunc(var_1.c.b)), arg_0.c);
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(arg_0.b.xxw)), vec4<f32>(var_1.a, arg_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -390f)))), 333f), 0u <= abs(min(_wgslsmith_mult_u32(4294967295u, global1.d.x), 6584u)));
    return arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(_wgslsmith_div_vec4_i32(vec4<i32>(min(-1i, 0i), -1i, func_1(Struct_1(global1.b.a, vec4<f32>(global1.c.x, -622f, global1.b.b.x, -1000f), global1.b.c), global1.a.x, vec4<bool>(true, global1.b.c, false, false), vec4<i32>(global1.a.x, 1191i, 0i, -2147483647i)), 2147483647i) << ((vec4<u32>(57049u, 26333u, global1.d.x, 33301u) << (~vec4<u32>(12115u, u_input.d, 13929u, u_input.d) % vec4<u32>(32u))) % vec4<u32>(32u)), global1.a), Struct_1(global1.c.xxx, vec4<f32>(_wgslsmith_f_op_vec3_f32(func_2()).x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-497f - -322f))), global1.e.x, -149f), !(true & !global1.b.c)), _wgslsmith_f_op_vec4_f32(-global1.b.b), ~global1.d, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-698f - global1.c.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.x + global1.e.x) * _wgslsmith_f_op_f32(-812f + global1.b.b.x))), -1748f));
    var var_0 = true;
    let var_1 = global1.b;
    let var_2 = 4962u;
    global0 = array<Struct_3, 5>();
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-107f, global1.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.b.x + global1.b.b.x), -299f)))), _wgslsmith_f_op_vec4_f32(abs(global1.b.b)), true);
    var_3 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), var_1.a.x, _wgslsmith_f_op_f32(-global1.b.a.x)) + var_1.b.zwy) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.c.wzw + vec3<f32>(-122f, var_1.a.x, var_1.b.x)) + global1.b.b.yyx)), var_1.a.x, ~(~min(vec4<u32>(12221u, global1.d.x, 77430u, 12271u), min(vec4<u32>(u_input.d, var_2, 0u, var_2), vec4<u32>(4294967295u, var_2, global1.d.x, 1u)))), select(~_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, global1.d.x), global1.d.xz) ^ global1.d.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(~global1.d.x, ~33352u), vec2<u32>(_wgslsmith_clamp_u32(1u, 97126u, 27865u), _wgslsmith_dot_vec3_u32(global1.d, global1.d))), select(select(vec2<bool>(true, false), vec2<bool>(var_1.c, false), u_input.d != var_2), vec2<bool>(true, true), select(!vec2<bool>(false, global1.b.c), vec2<bool>(global1.b.c, false), !vec2<bool>(false, var_1.c)))));
}

