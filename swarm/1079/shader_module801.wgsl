struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global1: Struct_1 = Struct_1(true);

var<private> global2: Struct_2 = Struct_2(vec4<i32>(-32836i, 43988i, i32(-2147483648), -10080i), vec4<bool>(false, false, true, false), vec3<u32>(10339u, 0u, 1u));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<i32> {
    global0 = array<Struct_1, 15>();
    return global2.a;
}

fn func_2(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_2(func_3(), global2.b, ~firstTrailingBit(~u_input.c.zxw));
    var_0 = Struct_2(_wgslsmith_clamp_vec4_i32(var_0.a, _wgslsmith_clamp_vec4_i32(min(global2.a, var_0.a), vec4<i32>(countOneBits(2147483647i), i32(-1i) * -37320i, max(2147483647i, -31641i), -2147483647i), var_0.a), var_0.a), var_0.b, ~u_input.c.yzw);
    return global0[_wgslsmith_index_u32(58238u, 15u)];
}

fn func_1() -> Struct_1 {
    let var_0 = func_2(global2.a.yz);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-2285f)) - _wgslsmith_f_op_f32(abs(-540f)))) * 1f);
    var var_2 = func_2(abs(~vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.d, 0i), global2.a), _wgslsmith_dot_vec2_i32(global2.a.xz, vec2<i32>(-2147483647i, u_input.a)))));
    var var_3 = !(!global2.b.wxw);
    global2 = Struct_2(abs(select(reverseBits(~global2.a), global2.a, global2.b)), global2.b, min(~(~global2.c), global2.c));
    return Struct_1(false);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    var var_0 = -global2.a.x;
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1214f * -2410f))), 584f));
    var_1 = -674f;
    let var_2 = select(-_wgslsmith_add_vec2_i32(global2.a.yz >> (vec2<u32>(u_input.b, global2.c.x) % vec2<u32>(32u)), ~global2.a.wx) ^ reverseBits(global2.a.yw), global2.a.xx, vec2<bool>(global1.a, !any(select(vec3<bool>(true, global1.a, global2.b.x), vec3<bool>(global1.a, true, false), vec3<bool>(true, false, global2.b.x)))));
    global0 = array<Struct_1, 15>();
    var var_3 = -(global2.a << (_wgslsmith_mod_vec4_u32(abs(vec4<u32>(global2.c.x, 4202u, u_input.c.x, 51839u)), ~vec4<u32>(4294967295u, u_input.b, 1u, global2.c.x)) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec3<i32>(-1i) * -abs(global2.a.zwz)), -(i32(-1i) * -2147483647i));
}

