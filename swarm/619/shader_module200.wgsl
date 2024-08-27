struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
    c: vec4<u32>,
    d: bool,
    e: u32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, false);

var<private> global1: array<Struct_1, 21>;

var<private> global2: i32 = -46033i;

var<private> global3: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(9142u, 1u)));

var<private> global4: array<vec2<u32>, 29> = array<vec2<u32>, 29>(vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 5856u), vec2<u32>(1u, 26909u), vec2<u32>(398u, 17632u), vec2<u32>(1u, 0u), vec2<u32>(0u, 22973u), vec2<u32>(4294967295u, 0u), vec2<u32>(19337u, 4294967295u), vec2<u32>(11411u, 0u), vec2<u32>(2198u, 47928u), vec2<u32>(16997u, 4294967295u), vec2<u32>(85538u, 71414u), vec2<u32>(3490u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(32276u, 1u), vec2<u32>(13724u, 1u), vec2<u32>(38540u, 27617u), vec2<u32>(10320u, 1u), vec2<u32>(0u, 40966u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 0u), vec2<u32>(8753u, 1u), vec2<u32>(94731u, 4294967295u), vec2<u32>(5331u, 47740u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(3296u, 24615u), vec2<u32>(12676u, 4294967295u), vec2<u32>(54998u, 39376u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -164f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -866f)))), -901f))));
    var var_1 = arg_1.b.a.x << (45385u % 32u);
    global0 = vec4<bool>(!any(global0.ywx), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-1088f, 150f)), 1154f)) <= _wgslsmith_f_op_f32(floor(-3132f)), true, all(vec3<bool>(global0.x, all(vec2<bool>(global0.x, global0.x)) != select(global0.x, false, false), true)));
    var var_2 = global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~0u), 31150u), 3u)];
    global2 = -firstTrailingBit(~(~(-1i)));
    return true;
}

fn func_2(arg_0: bool, arg_1: i32) -> vec4<u32> {
    var var_0 = !any(vec3<bool>(false, arg_0, func_3(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u), global4[_wgslsmith_index_u32(0u, 29u)]), Struct_2(vec4<u32>(7222u, u_input.a, u_input.a, u_input.a), global3[_wgslsmith_index_u32(u_input.a, 3u)], vec4<u32>(95292u, u_input.a, u_input.a, 42594u)))));
    var_0 = (_wgslsmith_dot_vec2_i32(-vec2<i32>(arg_1, arg_1) & reverseBits(vec2<i32>(-6152i, arg_1)), vec2<i32>(-2147483647i, arg_1)) == (-18943i >> (~u_input.a % 32u))) || global0.x;
    let var_1 = select(-vec2<i32>(13243i, -_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i), vec2<i32>(arg_1, 50961i))), vec2<i32>(arg_1, -25300i), false);
    global2 = var_1.x;
    global1 = array<Struct_1, 21>();
    return _wgslsmith_mod_vec4_u32(~abs(~vec4<u32>(1u, 43965u, u_input.a, 36048u)), ~vec4<u32>(~(u_input.a >> (u_input.a % 32u)), ~u_input.a, ~(u_input.a ^ 1996u), 4294967295u));
}

fn func_1(arg_0: i32) -> i32 {
    global3 = array<Struct_1, 3>();
    var var_0 = 2147483647i;
    let var_1 = Struct_1(vec2<u32>(10417u, _wgslsmith_dot_vec4_u32(func_2(!global0.x, -arg_0), _wgslsmith_mod_vec4_u32(min(vec4<u32>(1u, 12754u, 1u, 25149u), vec4<u32>(u_input.a, 4294967295u, u_input.a, 124164u)), ~vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)))));
    let var_2 = (global4[_wgslsmith_index_u32(u_input.a, 29u)] >> (abs(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(var_1.a.x, 4294967295u)), global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.a.x, u_input.a, 8250u), 29u)])) % vec2<u32>(32u))) << (reverseBits(~vec2<u32>(reverseBits(1u), u_input.a)) % vec2<u32>(32u));
    var var_3 = global0.yyy;
    return ~6892i;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = -22187i;
    global4 = array<vec2<u32>, 29>();
    var var_0 = select(vec4<bool>(global0.x, any(global0.zy), func_1(i32(-1i) * -2147483647i) <= 8650i, !global0.x), !vec4<bool>(!(global0.x & false), any(global0.zxw), any(vec3<bool>(global0.x, global0.x, global0.x)), !(!global0.x)), any(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, global0.x, global0.x), true), vec4<bool>(false, true, global0.x, false), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-9960i);
}

