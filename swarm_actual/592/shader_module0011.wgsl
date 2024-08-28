struct Struct_1 {
    a: vec2<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: vec4<bool>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<u32>(1u, 46645u), false, vec4<bool>(true, true, false, true), vec4<f32>(949f, 568f, 1058f, -2122f), -13347i);

var<private> global1: vec4<u32> = vec4<u32>(0u, 0u, 4294967295u, 1u);

var<private> global2: bool;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = vec4<u32>(_wgslsmith_clamp_u32(~21149u, ~countOneBits(_wgslsmith_add_u32(global0.a.x, global0.a.x)), 1u), 40237u, global1.x, _wgslsmith_add_u32(global0.a.x, u_input.b.x & global0.a.x));
    global2 = global0.b;
    let var_0 = false || !(_wgslsmith_add_i32(~(-1i), _wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.c.xz)) > 10166i);
    let var_1 = ~u_input.c.yy;
    var var_2 = -1000f;
    return any(select(vec4<bool>(!(global0.e <= global0.e), true, true && (var_0 & false), (2147483647i | global0.e) != 2147483647i), global0.c, select(vec4<bool>(global0.d.x != global0.d.x, true, true, false), global0.c, vec4<bool>(all(vec3<bool>(true, false, global0.c.x)), var_0, all(global0.c), all(vec4<bool>(var_0, global0.c.x, var_0, true))))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(sign(global0.d.zw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1171f, -909f, -342f, _wgslsmith_f_op_f32(-var_0.a.x))));
    var var_2 = Struct_2(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, abs(countOneBits(global1.x))), select(global0.a, u_input.b, select(global0.c.xz, vec2<bool>(true, global0.c.x), false && global0.b))), all(select(vec3<bool>(global0.c.x, any(vec4<bool>(true, global0.b, global0.b, true)), false), global0.c.zxw, global0.c.xyx)), select(vec4<bool>(global0.c.x, true, global0.c.x, _wgslsmith_div_f32(-812f, 1000f) > _wgslsmith_f_op_f32(ceil(-207f))), select(select(!vec4<bool>(global0.b, true, global0.c.x, false), global0.c, func_3()), !global0.c, select(select(global0.c, global0.c, global0.c), vec4<bool>(global0.b, global0.c.x, false, global0.b), global0.b)), -1i >= ~u_input.c.x), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1370f, 136f, 676f, 1000f) - vec4<f32>(-671f, 801f, global0.d.x, 705f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.d + global0.d)))))), min(1i, global0.e));
    global0 = Struct_2(reverseBits(vec2<u32>(max(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.a.x, var_2.a.x), global1.xyy), var_2.a.x), ~_wgslsmith_sub_u32(var_2.a.x, 4294967295u))), func_3(), select(!vec4<bool>(!var_2.c.x, var_2.b, !var_2.b, true), vec4<bool>(var_2.c.x, true, !all(global0.c.zy), true), !global0.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.d, global0.d)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(767f, -1256f, var_1.x, 852f), vec4<f32>(global0.d.x, 1078f, 163f, 487f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1528f, -1730f, global0.d.x, var_0.a.x) * vec4<f32>(var_1.x, global0.d.x, var_1.x, var_1.x)))) * global0.d), var_2.e);
    var var_3 = global0.e;
    return _wgslsmith_f_op_vec2_f32(ceil(var_0.a));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> f32 {
    let var_0 = vec4<bool>(!func_3(), global0.c.x, all(vec2<bool>(global0.c.x, false)), false);
    var var_1 = Struct_3(Struct_2(countOneBits(global1.xz), !var_0.x, var_0, _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.x, _wgslsmith_f_op_f32(sign(global0.d.x)), 150f, _wgslsmith_f_op_f32(895f * 1457f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1.a.x, -1103f, -2050f, 1000f), _wgslsmith_f_op_vec4_f32(global0.d * vec4<f32>(1398f, arg_1.b, arg_1.a.x, -782f))))), min(_wgslsmith_div_i32(_wgslsmith_sub_i32(-52061i, global0.e), 0i), _wgslsmith_mod_i32(u_input.c.x, i32(-1i) * -12889i))), vec4<bool>(false, func_3(), any(global0.c), !(!global0.b)));
    let var_2 = vec2<bool>(var_0.x, var_0.x);
    global1 = ~vec4<u32>(2346u, ~0u, u_input.b.x, 64236u);
    var var_3 = 17191u;
    return arg_1.b;
}

fn func_1() -> u32 {
    let var_0 = 225f == _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(func_2()), -1000f), Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.d.zw * vec2<f32>(-1000f, global0.d.x)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.d.x, 1468f), vec2<f32>(769f, 1276f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.d.x)))), u_input.b.x));
    var var_1 = Struct_1(global0.d.yy, 1268f);
    let var_2 = false;
    let var_3 = all(!(!(!vec4<bool>(true, global0.c.x, var_2, var_2))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1862f, 321f))))) * _wgslsmith_f_op_f32(121f - -1000f));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1f;
    global1 = _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, 4294967295u, 0u, global1.x), vec4<u32>(global0.a.x, global0.a.x, global0.a.x, 61602u)), _wgslsmith_mult_u32(1u, u_input.b.x), func_1()), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.a.x, 1u, u_input.b.x), select(vec4<u32>(u_input.b.x, 1u, 1u, 4294967295u), vec4<u32>(u_input.b.x, global0.a.x, 2239u, 4294967295u), global0.c))), ~(~abs(vec4<u32>(106530u, global0.a.x, u_input.b.x, 4294967295u))));
    global1 = select((~select(vec4<u32>(global1.x, 10374u, global1.x, global0.a.x), vec4<u32>(global1.x, 56248u, global1.x, 1u), vec4<bool>(global0.c.x, false, true, global0.c.x)) << (firstLeadingBit(reverseBits(vec4<u32>(global1.x, 0u, 1u, global0.a.x))) % vec4<u32>(32u))) | vec4<u32>(~global1.x, ~(~global1.x), _wgslsmith_mult_u32(~43140u, global1.x), u_input.b.x | u_input.b.x), reverseBits(_wgslsmith_mult_vec4_u32(select(min(vec4<u32>(4860u, global0.a.x, u_input.b.x, 1u), vec4<u32>(u_input.b.x, global0.a.x, global1.x, global0.a.x)), select(vec4<u32>(0u, global1.x, 91803u, global1.x), vec4<u32>(global1.x, global1.x, 1u, global0.a.x), global0.c), all(global0.c)), vec4<u32>(global1.x, global0.a.x, global1.x, global1.x) & ~vec4<u32>(global1.x, global0.a.x, global1.x, 20589u))), select(!select(!global0.c, !global0.c, select(global0.c, vec4<bool>(true, global0.c.x, true, true), false)), vec4<bool>(true, global0.c.x, (global0.a.x == global0.a.x) && (global1.x <= 41404u), !global0.b && !global0.b), 81710u == _wgslsmith_div_u32(global1.x, global0.a.x)));
    global2 = global0.c.x;
    let var_1 = -547f;
    var var_2 = _wgslsmith_f_op_f32(-var_1);
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global0.e, global0.e), _wgslsmith_sub_vec2_i32(u_input.c.xy, vec2<i32>(global0.e, global0.e))), u_input.a), global0.d.zww, _wgslsmith_f_op_vec2_f32(-global0.d.wx), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), global0.d.x), -739f, _wgslsmith_f_op_f32(floor(global0.d.x))))), ~9013u << (global1.x % 32u));
}

