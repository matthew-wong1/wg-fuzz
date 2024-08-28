struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(190f, vec3<bool>(true, false, false)), Struct_1(-231f, vec3<bool>(true, false, false)), Struct_1(-1000f, vec3<bool>(false, false, true)));

var<private> global2: array<vec3<u32>, 1> = array<vec3<u32>, 1>(vec3<u32>(72545u, 1u, 4294967295u));

var<private> global3: vec4<u32> = vec4<u32>(38072u, 42604u, 1u, 46149u);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global1 = Struct_2(global1.c, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.c.a * global1.b.a))), select(!vec3<bool>(false, global1.a.b.x, global1.a.b.x), vec3<bool>(false, global1.c.b.x, any(global1.b.b.yz)), !(!vec3<bool>(global1.c.b.x, true, true)))), global1.b);
    var var_0 = Struct_1(-729f, !(!(!select(global1.a.b, global1.a.b, global1.a.b))));
    var var_1 = all(global1.a.b) && all(vec3<bool>(all(vec4<bool>(var_0.b.x, var_0.b.x, global1.c.b.x, true)), any(select(vec2<bool>(global1.c.b.x, global1.c.b.x), var_0.b.yy, var_0.b.yx)), !global1.a.b.x | all(vec2<bool>(global1.b.b.x, var_0.b.x))));
    var var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(873f)))));
    var_2 = var_0.a;
    return 814f;
}

fn func_2(arg_0: vec2<bool>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - _wgslsmith_f_op_f32(-global1.b.a));
    var_0 = 217f;
    let var_1 = false;
    let var_2 = Struct_2(global1.a, Struct_1(1000f, global1.c.b), Struct_1(-787f, global1.a.b));
    let var_3 = var_2.b;
    return u_input.a;
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> vec4<u32> {
    var var_0 = arg_2.x;
    let var_1 = 259f;
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.e, 4294967295u, 21989u, 63893u)), vec4<u32>(global3.x, u_input.e, 99342u, 1339u)), 0u) ^ max(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(8998u, arg_3.x)) | ~vec2<u32>(u_input.c, 74550u), ~_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 0u), global3.yz)), reverseBits(_wgslsmith_sub_vec2_u32(~u_input.b, vec2<u32>(reverseBits(4294967295u), global3.x))));
    let var_3 = vec2<f32>(arg_2.x, 424f);
    var_0 = -736f;
    return vec4<u32>(_wgslsmith_clamp_u32(~(_wgslsmith_mult_u32(1u, global3.x) | select(var_2.x, arg_3.x, false)), _wgslsmith_add_u32(4130u, ~u_input.c) & ~firstLeadingBit(10371u), 1u), _wgslsmith_div_u32(global3.x, abs(_wgslsmith_sub_u32(~global3.x, reverseBits(u_input.c)))), _wgslsmith_clamp_u32(max(_wgslsmith_mod_u32(25539u, u_input.c), ~39551u) | (global3.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(7021u, 1u, 1u, 14794u), vec4<u32>(arg_3.x, var_2.x, 1u, arg_3.x))), min(~_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(4958u, 1u)], vec3<u32>(1u, arg_3.x, global3.x)), abs(~63553u)), 0u), _wgslsmith_mod_u32(arg_3.x, ~1u));
}

fn func_1() -> Struct_2 {
    global3 = func_4(select(!global1.c.b.xz, select(!(!vec2<bool>(global1.b.b.x, global1.a.b.x)), !select(global1.c.b.zz, vec2<bool>(global1.c.b.x, global1.b.b.x), false), select(!global1.b.b.zx, select(vec2<bool>(global1.c.b.x, global1.c.b.x), vec2<bool>(global1.b.b.x, false), global1.c.b.zy), !global1.b.b.zx)), global1.b.b.xx), _wgslsmith_clamp_i32(abs(u_input.d), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-14962i, u_input.a) ^ vec2<i32>(-52966i, 2147483647i), vec2<i32>(-1i, -64273i) & vec2<i32>(u_input.d, -1i)), ~(~vec2<i32>(u_input.d, u_input.a))), min(_wgslsmith_mult_i32(0i, abs(0i)), ~func_2(global1.c.b.yz))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(377f, global1.a.a)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-983f, global1.a.a), vec2<f32>(695f, global1.b.a)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.a, -382f) - vec2<f32>(216f, 732f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.b.a, global1.c.a))) + _wgslsmith_div_vec2_f32(vec2<f32>(-870f, -1663f), vec2<f32>(-1384f, -492f)))), ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(max(~global3.x, abs(8560u)), select(0u, select(u_input.e, global3.x, global1.b.b.x), false)), 1u)]);
    global3 = ~(~vec4<u32>(16482u, ~(~u_input.e), 1u, ~abs(global3.x)));
    var var_0 = global3.ww;
    let var_1 = !vec4<bool>(!((global3.x == 93059u) & global1.b.b.x), !(all(vec4<bool>(global1.a.b.x, global1.b.b.x, global1.a.b.x, global1.c.b.x)) | true), true, !all(vec4<bool>(global1.a.b.x, global1.a.b.x, true, global1.a.b.x)));
    var_0 = global3.xy;
    return Struct_2(global1.c, Struct_1(_wgslsmith_f_op_f32(func_3()), vec3<bool>(true, global1.a.a > _wgslsmith_f_op_f32(f32(-1f) * -1448f), false)), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = Struct_2(func_1().c, Struct_1(_wgslsmith_f_op_f32(-330f + 1230f), !vec3<bool>(false, u_input.b.x >= 72886u, any(vec4<bool>(global1.c.b.x, global1.a.b.x, true, true)))), func_1().b);
    let x = u_input.a;
    s_output = StorageBuffer(min(global3.x, global3.x) | 10052u, ~(1u | (u_input.b.x << (global3.x % 32u))));
}

