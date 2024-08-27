struct Struct_1 {
    a: vec4<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(1i, -59950i, 1i, 68030i)), Struct_1(vec4<bool>(false, true, false, false), vec4<i32>(2147483647i, 3767i, -21935i, 2147483647i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(5947i, 15782i, 45949i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(-19596i, 20462i, 6765i, 1i)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-1i, -36836i, 25961i, i32(-2147483648))), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(1i, -38128i, 7089i, -28449i)), Struct_1(vec4<bool>(true, false, true, true), vec4<i32>(1i, 1i, 2147483647i, -72151i)), Struct_1(vec4<bool>(true, false, false, true), vec4<i32>(1i, i32(-2147483648), 7456i, 71541i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(18748i, -29568i, 30575i, 0i)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(-97320i, i32(-2147483648), 0i, 18390i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(i32(-2147483648), -1i, -27489i, 22499i)), Struct_1(vec4<bool>(true, false, false, false), vec4<i32>(0i, -1i, 38586i, -36896i)), Struct_1(vec4<bool>(false, true, true, true), vec4<i32>(-1i, 2147483647i, 0i, 0i)), Struct_1(vec4<bool>(true, true, true, true), vec4<i32>(-1i, 2147483647i, -80690i, -59671i)), Struct_1(vec4<bool>(true, false, true, false), vec4<i32>(22965i, -1i, 20859i, 1i)), Struct_1(vec4<bool>(false, false, false, false), vec4<i32>(15861i, 28615i, 0i, 27186i)), Struct_1(vec4<bool>(false, false, true, false), vec4<i32>(1i, -639i, i32(-2147483648), 13520i)), Struct_1(vec4<bool>(false, true, false, true), vec4<i32>(2147483647i, -14780i, 14497i, 1i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(18726i, -50478i, -30936i, -1i)), Struct_1(vec4<bool>(false, false, false, true), vec4<i32>(2147483647i, 2147483647i, 2147483647i, i32(-2147483648))), Struct_1(vec4<bool>(true, true, true, false), vec4<i32>(1i, i32(-2147483648), 25716i, 2147483647i)));

var<private> global1: u32;

var<private> global2: vec3<u32>;

var<private> global3: vec2<u32>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec4<i32>, arg_2: vec3<bool>, arg_3: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_u32(global2.x, 80839u);
    var var_1 = arg_1.x;
    var_1 = select(~reverseBits(~1i), u_input.c.x, any(!(!vec3<bool>(arg_3, arg_3, true))));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(302f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(step(-670f, -993f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(867f, -625f)))), vec2<f32>(-751f, _wgslsmith_f_op_f32(-784f - -1178f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(135f, 965f))), -1411f));
    let var_3 = false;
    return ~_wgslsmith_div_vec2_u32(select(firstTrailingBit(vec2<u32>(1u, global2.x)), vec2<u32>(4294967295u, global3.x), var_3 == arg_3), vec2<u32>(~_wgslsmith_clamp_u32(global3.x, u_input.b.x, global3.x), _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.b.x, global3.x), 20647u | global2.x)));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    let var_0 = false;
    let var_1 = u_input.c.x;
    global1 = firstTrailingBit(4294967295u);
    global3 = ~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(abs(u_input.a), min(arg_0, u_input.a)), _wgslsmith_clamp_vec2_u32(func_3(var_1, arg_2.b, vec3<bool>(var_0, arg_1.a.x, false), arg_1.a.x), ~u_input.d.zy, u_input.b.zy)), ~global2.xy | ~firstTrailingBit(global2.yy));
    var var_2 = _wgslsmith_mod_u32(4294967295u | _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(u_input.b.xww), _wgslsmith_sub_vec3_u32(u_input.b.zww, vec3<u32>(arg_0, global2.x, arg_0))), u_input.d), global2.x);
    return vec3<u32>(1u << (~(~arg_0) % 32u), u_input.d.x, (global2.x | 0u) ^ ~arg_0);
}

fn func_1(arg_0: i32, arg_1: Struct_1, arg_2: u32) -> u32 {
    global3 = global2.zy;
    global2 = u_input.b.xyz | abs(max(~_wgslsmith_add_vec3_u32(u_input.d, u_input.b.wxx), func_2(u_input.d.x & global3.x, global0[_wgslsmith_index_u32(4294967295u >> (global2.x % 32u), 21u)], global0[_wgslsmith_index_u32(79291u, 21u)])));
    return 5800u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(~(~global3.x | global3.x), _wgslsmith_sub_u32(global2.x << (~(~53508u) % 32u), func_1(u_input.e.x, Struct_1(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, false)), u_input.c & vec4<i32>(u_input.e.x, -2147483647i, u_input.c.x, u_input.e.x)), countOneBits(12999u))), global3.x, _wgslsmith_mult_u32(~1529u, global2.x));
    global0 = array<Struct_1, 21>();
    var var_1 = u_input.e.x;
    var var_2 = reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(~6569u, _wgslsmith_mult_u32(min(global3.x, 1u), 50890u), 0u), _wgslsmith_clamp_vec3_u32(firstTrailingBit(u_input.b.xzy ^ var_0.yzy), u_input.b.zyx, ~(~vec3<u32>(global2.x, 4294967295u, global2.x)))));
    var var_3 = Struct_1(select(!vec4<bool>(select(true, false, true), true, true, true), vec4<bool>(true, true || (global2.x >= 0u), !any(vec3<bool>(true, true, false)), all(vec2<bool>(true, true))), any(vec4<bool>(any(vec3<bool>(false, true, false)), true, any(vec2<bool>(true, true)), true))), vec4<i32>(u_input.e.x, 2147483647i, ~abs(~18726i), ~u_input.c.x));
    let var_4 = u_input.c.zxy & vec3<i32>(_wgslsmith_mult_i32(max(var_3.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, 6836i), u_input.e.xx)), u_input.e.x), var_3.b.x, u_input.e.x);
    var var_5 = global0[_wgslsmith_index_u32(global3.x, 21u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_div_i32(var_3.b.x, ~0i), _wgslsmith_mod_i32(~1i, _wgslsmith_clamp_i32(u_input.c.x, _wgslsmith_add_i32(u_input.c.x, -31494i), -var_5.b.x)), 2147483647i));
}

