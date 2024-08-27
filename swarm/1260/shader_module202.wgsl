struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
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

var<private> global0: Struct_1 = Struct_1(vec2<u32>(41882u, 14835u), vec2<u32>(74658u, 0u), 601f);

var<private> global1: array<vec2<f32>, 24>;

var<private> global2: array<Struct_3, 8> = array<Struct_3, 8>(Struct_3(vec3<u32>(12379u, 1793u, 4294967295u)), Struct_3(vec3<u32>(39028u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(4294967295u, 4294967295u, 4294967295u)), Struct_3(vec3<u32>(46678u, 31417u, 1u)), Struct_3(vec3<u32>(4823u, 22720u, 6525u)), Struct_3(vec3<u32>(1u, 1u, 4294967295u)), Struct_3(vec3<u32>(0u, 39085u, 1u)), Struct_3(vec3<u32>(4034u, 68454u, 3751u)));

var<private> global3: bool = true;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> bool {
    let var_0 = 1f;
    let var_1 = vec2<bool>(true, true);
    let var_2 = 100321u;
    let var_3 = global2[_wgslsmith_index_u32(25103u, 8u)];
    global1 = array<vec2<f32>, 24>();
    return any(select(!(!var_1), select(var_1, !(!var_1), !var_1.x), var_1.x | false));
}

fn func_3(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: i32) -> vec3<bool> {
    global3 = true;
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(global0.c)), global0.c);
    global0 = Struct_1(vec2<u32>(1u, 0u), _wgslsmith_mod_vec2_u32(reverseBits(~(~vec2<u32>(arg_1.x, arg_0.b.a.x))), vec2<u32>(1u, arg_1.x)), -977f);
    let var_1 = _wgslsmith_f_op_f32(-global0.c);
    global3 = any(vec4<bool>(false, all(vec4<bool>(true, true, true, true)), all(!select(vec2<bool>(true, true), vec2<bool>(false, false), true)), func_1()));
    return select(!vec3<bool>(false == (var_1 >= -1000f), all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec2<bool>(true, true), vec2<bool>(false, true), true))), true);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    global2 = array<Struct_3, 8>();
    var var_0 = u_input.c;
    global0 = arg_1;
    global3 = true;
    let var_1 = select(vec4<bool>(all(vec4<bool>(false, true, !arg_2.x, any(vec2<bool>(false, arg_2.x)))), true, true, !arg_2.x), select(!(!vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x)), !vec4<bool>(!arg_2.x, !arg_2.x, global0.b.x != 38885u, true), select(vec4<bool>(false, arg_2.x, all(arg_2.zz), true), vec4<bool>(true, true, arg_2.x, arg_2.x || false), !vec4<bool>(true, false, true, arg_2.x))), select(arg_2.x, !arg_2.x, all(select(vec2<bool>(false, arg_2.x), select(vec2<bool>(arg_2.x, arg_2.x), vec2<bool>(false, false), false), arg_2.x || arg_2.x))));
    return ~_wgslsmith_clamp_u32(0u, 0u, ~u_input.b.x);
}

fn func_2(arg_0: bool, arg_1: f32) -> StorageBuffer {
    var var_0 = countOneBits(func_4(1u, Struct_1(min(global0.a, vec2<u32>(global0.a.x, global0.a.x)) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 4294967295u), vec2<u32>(4294967295u, 1u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(47550u, u_input.d, global0.b.x)), firstLeadingBit(13332u)), global0.c), select(!func_3(Struct_2(vec3<f32>(-885f, arg_1, arg_1), Struct_1(vec2<u32>(u_input.b.x, 0u), vec2<u32>(global0.b.x, 4294967295u), global0.c)), vec3<u32>(146u, 30687u, 4294967295u), -22362i), !(!vec3<bool>(true, arg_0, arg_0)), !all(vec4<bool>(true, arg_0, true, arg_0)))));
    var var_1 = Struct_3(~_wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(4294967295u, 33262u, global0.a.x)), vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(14644u, global0.a.x, 1u), vec3<u32>(4294967295u, 0u, 1u)), 24211u, global0.a.x >> (u_input.d % 32u))));
    let var_2 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(952f, _wgslsmith_f_op_f32(arg_1 - -1546f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1283f, -390f) - _wgslsmith_f_op_f32(floor(1000f)))), _wgslsmith_f_op_f32(298f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.c)))))));
    var var_3 = Struct_4(-17464i, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~37000u, 1u), 8u)]);
    global0 = Struct_1(max(var_3.b.a.yy, global0.a), firstLeadingBit(vec2<u32>(~reverseBits(4294967295u), (global0.a.x << (60528u % 32u)) & 1u)), -891f);
    return StorageBuffer(23037i);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_2(select(1327f == _wgslsmith_div_f32(-1349f, global0.c), true, select(true, false, true)) && select(!(global0.c >= -667f), !func_1(), true | any(vec2<bool>(false, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1079f * -754f) + _wgslsmith_f_op_f32(global0.c + global0.c)));
}

