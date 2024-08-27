struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<Struct_2, 30>;

var<private> global2: array<vec4<i32>, 2> = array<vec4<i32>, 2>(vec4<i32>(-1i, i32(-2147483648), 3162i, -35338i), vec4<i32>(-2744i, 61040i, 0i, i32(-2147483648)));

var<private> global3: Struct_1;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32) -> vec3<bool> {
    var var_0 = u_input.b;
    global0 = array<Struct_1, 2>();
    return !(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), all(vec3<bool>(false, false, true))), vec3<bool>(true, true, true), vec3<bool>(global3.a.x <= -4840i, true, true)));
}

fn func_1() -> vec2<u32> {
    var var_0 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(min(-1101f, 307f)))) + -1869f));
    var var_1 = Struct_1(abs(vec4<i32>(-69i, -1i, i32(-1i) * -2147483647i, -1i)));
    global2 = array<vec4<i32>, 2>();
    var_0 = vec3<bool>(false, !var_0.x, all(!vec3<bool>(true, true, var_0.x)));
    let var_2 = true;
    return ~vec2<u32>(_wgslsmith_add_u32(u_input.d.x, _wgslsmith_sub_u32(reverseBits(0u), _wgslsmith_mod_u32(1u, u_input.b))), 47954u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(~(~_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c.zx, vec2<i32>(u_input.a, -27040i)), global3.a.wy)), global3.a.x, -2147483647i);
    global1 = array<Struct_2, 30>();
    let var_1 = func_1();
    var var_2 = ~15603i;
    global3 = global0[_wgslsmith_index_u32(u_input.d.x, 2u)];
    let var_3 = global3.a.x;
    var var_4 = firstLeadingBit(~var_0.yx);
    var var_5 = global3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.b, var_1.x, _wgslsmith_add_u32(var_1.x, u_input.d.x)) & u_input.d.yzy, 1789f);
}

