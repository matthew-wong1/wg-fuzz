struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(4294967295u, 4294967295u, 4294967295u, 13032u, 0u, 30094u, 4294967295u, 4294967295u, 4294967295u, 4294967295u, 0u, 102285u, 745u, 10671u, 97557u, 4294967295u);

var<private> global1: array<vec4<i32>, 29>;

var<private> global2: vec4<bool> = vec4<bool>(true, true, false, false);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> u32 {
    global1 = array<vec4<i32>, 29>();
    let var_0 = global2.yx;
    var var_1 = Struct_3(Struct_1(vec4<bool>(var_0.x, false & all(vec3<bool>(global2.x, var_0.x, true)), select(var_0.x, true, var_0.x), true), all(global2.xw), vec3<bool>(56148i >= firstLeadingBit(u_input.d), true, true)));
    global1 = array<vec4<i32>, 29>();
    var var_2 = -329f;
    return reverseBits(1u);
}

fn func_2() -> bool {
    var var_0 = global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~min(_wgslsmith_mod_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(15479u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]), vec2<u32>(2690u, 0u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(1u, 16u)]), vec2<u32>(global0[_wgslsmith_index_u32(33642u, 16u)], 4294967295u))), abs(~(~vec2<u32>(1u, 0u)))), 27457u), 16u)], 16u)];
    var_0 = _wgslsmith_sub_u32(1u, _wgslsmith_sub_u32(func_3(), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 16u)], 16u)], 16u)]));
    global0 = array<u32, 16>();
    global2 = vec4<bool>(true, !any(vec4<bool>(all(vec4<bool>(false, false, false, global2.x)), true, global2.x, select(global2.x, global2.x, global2.x))), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-1401f)))) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-960f - -462f), -1000f))), global2.x);
    var_0 = _wgslsmith_add_u32(23045u, 22748u);
    return true;
}

fn func_1(arg_0: vec3<i32>) -> bool {
    var var_0 = global2.xw;
    var_0 = vec2<bool>(true, true);
    var var_1 = 398f;
    global2 = !select(select(!(!vec4<bool>(var_0.x, true, true, false)), vec4<bool>(true, global2.x, false, !global2.x), true), select(vec4<bool>(var_0.x, var_0.x && var_0.x, true, !var_0.x), !(!vec4<bool>(true, var_0.x, var_0.x, false)), vec4<bool>(false, all(vec2<bool>(false, global2.x)), func_2(), true)), 18425i > reverseBits(arg_0.x));
    let var_2 = global2.wzy;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 29>();
    var var_0 = func_1(u_input.a);
    var_0 = true;
    let var_1 = !vec3<bool>(func_2() | !global2.x, all(vec4<bool>(false, !global2.x, true, global2.x)), any(select(vec4<bool>(false, global2.x, true, global2.x), !vec4<bool>(true, global2.x, global2.x, false), true)));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1023f, 1683f))) + vec2<f32>(363f, -1054f))))));
    var_0 = func_2();
    global1 = array<vec4<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, global0[_wgslsmith_index_u32(18945u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 16u)], 16u)], global0[_wgslsmith_index_u32(4294967295u, 16u)]) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(23576u, 16u)], 16u)], 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32820u, 16u)], 16u)], global0[_wgslsmith_index_u32(30679u, 16u)])), min(vec3<u32>(46365u, 1u, 14079u), vec3<u32>(3673u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(71836u, 16u)], 16u)], 16u)]))), _wgslsmith_div_vec3_u32(firstLeadingBit(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44940u, 16u)], 16u)], 75339u, global0[_wgslsmith_index_u32(66717u, 16u)])), vec3<u32>(global0[_wgslsmith_index_u32(0u, 16u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3600u, 16u)], 16u)], 98596u)) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(86811u, 4294967295u, global0[_wgslsmith_index_u32(41181u, 16u)]), vec3<u32>(44620u, global0[_wgslsmith_index_u32(7010u, 16u)], 56577u))));
}

