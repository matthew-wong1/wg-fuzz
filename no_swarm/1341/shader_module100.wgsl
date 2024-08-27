struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 41731u;

var<private> global1: vec3<u32>;

var<private> global2: Struct_1 = Struct_1(vec2<i32>(1i, i32(-2147483648)), 2147483647i, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 2147483647i), vec3<u32>(4294967295u, 1u, 27143u), vec2<i32>(-1i, 5033i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    global1 = global2.d;
    global2 = Struct_1(vec2<i32>(global2.b, global2.c.x), _wgslsmith_clamp_i32(global2.e.x >> (reverseBits(~global1.x) % 32u), u_input.e, -2147483647i), global2.c & _wgslsmith_mult_vec4_i32(global2.c, countOneBits(vec4<i32>(-2147483647i, global2.b, -17269i, -1i))), ~(~((global2.d ^ global2.d) & vec3<u32>(global2.d.x, 13042u, 1u))), u_input.c);
    let var_0 = any(vec3<bool>(!all(select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, arg_0.x))), arg_0.x, false));
    let var_1 = ~_wgslsmith_add_u32(global2.d.x, abs(max(countOneBits(global1.x), _wgslsmith_sub_u32(global1.x, global2.d.x))));
    let var_2 = !vec3<bool>(any(vec4<bool>(all(vec3<bool>(var_0, false, arg_0.x)), !arg_0.x, false, any(vec4<bool>(arg_0.x, var_0, arg_0.x, false)))), u_input.c.x != (19138i >> (global2.d.x % 32u)), arg_0.x);
    return ~firstLeadingBit(~(~(~global2.d)));
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(countOneBits(global2.a), -1i, global2.c, func_3(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false))), !select(false, true, false))), u_input.c);
    let var_1 = vec3<i32>(~_wgslsmith_mod_i32(abs(_wgslsmith_div_i32(117217i, 68i)), _wgslsmith_mult_i32(-u_input.b, -var_0.c.x)), 1i, 0i ^ global2.b);
    let var_2 = -430f;
    global0 = 0u;
    let var_3 = _wgslsmith_f_op_f32(-var_2);
    return vec3<bool>(all(!select(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), true), vec4<bool>(true, true, true, true), true)), false, true);
}

fn func_1(arg_0: i32) -> Struct_1 {
    global0 = max(~global2.d.x, _wgslsmith_sub_u32(~0u, 4294967295u));
    let var_0 = false;
    var var_1 = select(select(select(vec3<bool>(all(vec4<bool>(var_0, false, true, true)), var_0, true), vec3<bool>(var_0, var_0, var_0), true), !(!func_2()), vec3<bool>(var_0, false, select(true, true, false))), select(!vec3<bool>(!var_0, !var_0, var_0), select(select(vec3<bool>(var_0, true, var_0), vec3<bool>(true, var_0, var_0), select(true, false, var_0)), vec3<bool>(var_0 != true, func_2().x, true), !(!vec3<bool>(true, var_0, false))), !vec3<bool>(select(true, true, false), false, global2.e.x >= 1i)), vec3<bool>(true, var_0, true));
    let var_2 = select(vec3<bool>(var_1.x, true, true), vec3<bool>(all(!select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, false, var_1.x, true), false)), any(select(vec2<bool>(var_1.x, false), vec2<bool>(true, var_0), var_1.x)), ~_wgslsmith_dot_vec3_i32(global2.c.wzw, global2.c.yxy) < u_input.b), var_0);
    let var_3 = Struct_1(u_input.c, -select(-2147483647i, -27378i, var_2.x), global2.c, global2.d, reverseBits(_wgslsmith_div_vec2_i32(min(global2.e, vec2<i32>(arg_0, global2.b)), global2.c.wx)) << (abs(_wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global2.d.xx, vec2<u32>(global1.x, 20114u)), ~vec2<u32>(global2.d.x, 85931u))) % vec2<u32>(32u)));
    return Struct_1(var_3.a, -1i & u_input.a, -vec4<i32>(-58529i, reverseBits(var_3.e.x), 1i, arg_0), min(global2.d, global2.d), _wgslsmith_mult_vec2_i32(global2.e, vec2<i32>(_wgslsmith_mod_i32(var_3.e.x, select(global2.b, var_3.b, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0, -21245i), ~u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = i32(-1i) * -10243i;
    var var_2 = -abs(vec4<i32>(~global2.a.x, ~1i, _wgslsmith_mod_i32(global2.b ^ global2.c.x, global2.e.x), -1i));
    let var_3 = func_1(-u_input.d);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1f)))) * _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1132f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(229f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(194f, -1000f)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    global1 = global2.d;
    let x = u_input.a;
    s_output = StorageBuffer(~global2.d.yy, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1383f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(255f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2035f))));
}

