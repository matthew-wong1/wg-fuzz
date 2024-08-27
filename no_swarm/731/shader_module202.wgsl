struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(0i, vec3<f32>(-599f, -146f, -1000f), Struct_1(false));

var<private> global1: array<i32, 20> = array<i32, 20>(i32(-2147483648), -19165i, 43058i, -1i, 24219i, 21950i, 51294i, 33034i, i32(-2147483648), 56636i, 2147483647i, 2147483647i, 33549i, 28759i, 0i, -50439i, 0i, 2147483647i, i32(-2147483648), 2147483647i);

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec3<bool>, arg_1: i32) -> Struct_1 {
    var var_0 = select(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(1u, u_input.a.x)), 11u)], !global2[_wgslsmith_index_u32(~1u, 11u)], arg_0.x);
    let var_1 = arg_1;
    var var_2 = ~(~(~53532u));
    let var_3 = u_input.a.zx << (select(countOneBits(~(~vec2<u32>(u_input.a.x, 131949u))), vec2<u32>(13760u, 30900u), vec2<bool>(all(select(global2[_wgslsmith_index_u32(u_input.a.x, 11u)], vec4<bool>(false, global0.c.a, global0.c.a, global0.c.a), vec4<bool>(true, global0.c.a, false, var_0.x))), _wgslsmith_f_op_f32(-global0.b.x) != -551f)) % vec2<u32>(32u));
    var var_4 = -(var_1 & 47362i) <= 1i;
    return global0.c;
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_2, arg_3: i32) -> bool {
    global1 = array<i32, 20>();
    global0 = Struct_3(global0.a, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -463f), _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(trunc(arg_0))), global0.b), Struct_1(func_1(select(select(vec3<bool>(global0.c.a, true, true), vec3<bool>(true, false, false), vec3<bool>(arg_1.a, false, arg_1.a)), !vec3<bool>(arg_2.c.a, true, false), select(vec3<bool>(true, global0.c.a, false), vec3<bool>(global0.c.a, arg_1.a, global0.c.a), false)), abs(-global1[_wgslsmith_index_u32(34656u, 20u)])).a));
    var var_0 = select(!select(vec4<bool>(func_1(vec3<bool>(true, true, global0.c.a), global1[_wgslsmith_index_u32(15972u, 20u)]).a, arg_1.a, any(global2[_wgslsmith_index_u32(1u, 11u)]), false), global2[_wgslsmith_index_u32(max(reverseBits(4294967295u), ~51635u), 11u)], !global0.c.a), !(!(!global2[_wgslsmith_index_u32(arg_2.b, 11u)])), !global0.c.a);
    let var_1 = select(true, 0u != arg_2.b, arg_1.a);
    global1 = array<i32, 20>();
    return var_1;
}

fn func_2(arg_0: vec2<f32>) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_0, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-777f, -136f))), vec2<f32>(637f, _wgslsmith_f_op_f32(trunc(arg_0.x))), select(global0.c.a, global0.c.a, global0.c.a)))) + _wgslsmith_f_op_vec2_f32(-arg_0));
    var var_1 = Struct_2(var_0, ~u_input.a.x, func_1(select(vec3<bool>(false, true, !global0.c.a), vec3<bool>(true, func_1(vec3<bool>(global0.c.a, global0.c.a, global0.c.a), 30889i).a, func_3(var_0.x, Struct_1(global0.c.a), Struct_2(global0.b.yx, u_input.a.x, global0.c, Struct_1(true)), 1i)), false), global0.a), func_1(vec3<bool>(false, any(vec2<bool>(global0.c.a, global0.c.a)), any(!vec3<bool>(global0.c.a, global0.c.a, global0.c.a))), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(~(-1i), countOneBits(global0.a), _wgslsmith_mod_i32(global0.a, global0.a)), -4981i, global1[_wgslsmith_index_u32(10596u, 20u)] | global1[_wgslsmith_index_u32(13565u, 20u)])));
    let var_2 = var_0.x;
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a))), var_1.b, Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -36158i, 9900i, global0.a) >> (vec4<u32>(u_input.a.x, 1u, 0u, 4294967295u) % vec4<u32>(32u)), select(vec4<i32>(global0.a, 1i, global1[_wgslsmith_index_u32(26921u, 20u)], -17661i), vec4<i32>(global0.a, global0.a, global0.a, 32650i), global2[_wgslsmith_index_u32(41836u, 11u)])) < -global1[_wgslsmith_index_u32(var_1.b, 20u)]), func_1(vec3<bool>(true, var_1.c.a, false), -1i));
    var var_4 = var_3;
    return vec2<bool>(false, !(~firstLeadingBit(1u) >= max(~59906u, var_1.b | 6091u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 366f;
    let var_1 = func_1(!(!vec3<bool>(true, true, global0.c.a)), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(abs(u_input.a.x), 20u)], global0.a), global1[_wgslsmith_index_u32(~(~15049u), 20u)]));
    var var_2 = select(func_2(global0.b.xz), vec2<bool>(func_2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-368f, global0.b.x), global0.b.xy, false))).x | func_2(_wgslsmith_f_op_vec2_f32(global0.b.zx + global0.b.zx)).x, global0.c.a), true);
    global1 = array<i32, 20>();
    let var_3 = var_1.a;
    let var_4 = Struct_3(i32(-1i) * -firstLeadingBit(_wgslsmith_sub_i32(-28683i, 1i)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.b.x, global0.b.x, -337f))))))), Struct_1(var_1.a));
    var var_5 = Struct_1((_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(4294967295u, 20u)], _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 20u)], var_4.a)) ^ global0.a) <= _wgslsmith_sub_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.a, var_4.a), 1i), var_4.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_4.b.x), abs(vec4<i32>(-2147483647i, -57381i, ~global1[_wgslsmith_index_u32(u_input.a.x, 20u)], ~(-global1[_wgslsmith_index_u32(u_input.a.x, 20u)]))));
}

