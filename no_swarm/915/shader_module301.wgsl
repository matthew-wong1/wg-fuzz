struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<bool>,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
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

var<private> global0: vec4<f32> = vec4<f32>(-161f, 1000f, -260f, -470f);

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 47750u, 1846u, 15195u);

var<private> global2: array<vec3<i32>, 25>;

var<private> global3: vec2<bool>;

var<private> global4: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1) -> u32 {
    global1 = u_input.a;
    var var_0 = u_input.a.zxy;
    var var_1 = u_input.a.zyx;
    global4 = Struct_3(var_1.xx, global4.b, true);
    let var_2 = Struct_2(~_wgslsmith_mod_vec4_i32(~min(vec4<i32>(-1i, 2147483647i, -27599i, -43371i), vec4<i32>(1i, 38070i, 1i, -41322i)), vec4<i32>(1i, 1i, 1i, 1i)), _wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, u_input.a.x, 14650u, u_input.a.x), vec4<u32>(11914u, 0u, 4294967295u, 1u), vec4<u32>(u_input.a.x, global1.x, 510u, var_1.x)), ~u_input.a), u_input.a) << (vec4<u32>(~4294967295u, var_0.x, global4.a.x, _wgslsmith_dot_vec2_u32(global1.xy, u_input.a.wz & vec2<u32>(53822u, var_1.x))) % vec4<u32>(32u)), Struct_1(arg_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(522f + arg_0.a)) + arg_0.b)), -1i);
    return 38390u;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>, arg_2: Struct_1) -> vec2<u32> {
    global4 = Struct_3(vec2<u32>(global1.x, ~_wgslsmith_div_u32(func_3(arg_2), ~0u)), !select(global4.b, select(global4.b, vec4<bool>(global3.x, true, false, true), all(vec4<bool>(global4.b.x, global4.b.x, false, global3.x))), vec4<bool>(all(vec2<bool>(true, global4.c)), all(global4.b.xxw), arg_1.x < arg_1.x, false)), global3.x);
    global3 = global4.b.xz;
    let var_0 = ~_wgslsmith_mod_vec3_u32(~global1.wxy, _wgslsmith_mult_vec3_u32(~max(vec3<u32>(global4.a.x, global4.a.x, u_input.a.x), u_input.a.yyx), global1.xyx));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, 1102f) * _wgslsmith_f_op_f32(f32(-1f) * -904f)) - -865f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(522f * _wgslsmith_f_op_f32(-arg_2.b)) * 123f)) + _wgslsmith_f_op_vec3_f32(global0.yxy + vec3<f32>(_wgslsmith_f_op_f32(sign(-581f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.b), -1315f)), global0.x)));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-607f - _wgslsmith_f_op_f32(abs(arg_2.b))), arg_2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2.b)) + -486f), _wgslsmith_f_op_f32(-664f * 2922f))))));
    return ~vec2<u32>(_wgslsmith_mult_u32(global1.x, 4294967295u), abs(14797u));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec2<u32> {
    global1 = countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(countOneBits(5319u), arg_1.a.x, ~0u ^ (110917u ^ global1.x), ~global1.x), u_input.a, countOneBits(u_input.a)));
    global2 = array<vec3<i32>, 25>();
    global4 = arg_1;
    var var_0 = select(select(global4.b, vec4<bool>(true, false, _wgslsmith_sub_u32(4294967295u, 40664u) == _wgslsmith_mod_u32(global1.x, 28746u), _wgslsmith_mod_u32(1u, 54725u) < ~u_input.a.x), !arg_0), arg_1.b, false);
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1177f, global0.x, 1857f, global0.x) + vec4<f32>(839f, global0.x, 237f, global0.x))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, 1898f, global0.x)))))))));
    return global4.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_3 {
    let var_0 = func_4(true, Struct_3(_wgslsmith_mult_vec2_u32(~vec2<u32>(global1.x, global4.a.x), u_input.a.zy) | select(func_2(global1.x, vec3<i32>(0i, -16019i, 1i), Struct_1(global0.x, arg_0.x)), min(vec2<u32>(u_input.a.x, 53862u), vec2<u32>(u_input.a.x, 2010u)), select(global4.b.xx, global4.b.wy, vec2<bool>(false, global4.c))), !global4.b, false));
    return Struct_3(~(~vec2<u32>(24588u, u_input.a.x)) >> (~abs(~vec2<u32>(var_0.x, 4294967295u)) % vec2<u32>(32u)), select(select(!(!vec4<bool>(true, true, false, global4.c)), select(!global4.b, global4.b, vec4<bool>(true, global4.b.x, false, global3.x)), global4.b), global4.b, select(global4.b.x, true, global3.x)), all(vec4<bool>(true, any(global4.b) || false, all(vec3<bool>(true, global3.x, global4.c)) || true, global3.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0i;
    let var_1 = Struct_4(Struct_3(u_input.a.xx, !select(select(global4.b, vec4<bool>(global3.x, global3.x, global4.b.x, false), false), vec4<bool>(true, true, true, true), !global4.c), global3.x), global4.b.wy, func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global0.zz)) - vec2<f32>(global0.x, _wgslsmith_f_op_f32(exp2(global0.x))))));
    global2 = array<vec3<i32>, 25>();
    let var_2 = global0.x;
    let var_3 = firstTrailingBit(vec2<i32>(0i, 1i));
    let var_4 = false;
    let var_5 = global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(global1.x);
}

