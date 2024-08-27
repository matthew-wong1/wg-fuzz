struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 26>;

var<private> global1: bool;

var<private> global2: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(true, vec3<u32>(68829u, 4294967295u, 4294967295u), 0u), Struct_1(true, vec3<u32>(26891u, 16660u, 39889u), 12316u), Struct_1(false, vec3<u32>(4294967295u, 4294967295u, 4294967295u), 0u), Struct_1(true, vec3<u32>(1u, 1u, 57520u), 30822u), Struct_1(true, vec3<u32>(1u, 3050u, 9573u), 67337u), Struct_1(false, vec3<u32>(0u, 81321u, 32895u), 1u), Struct_1(false, vec3<u32>(25177u, 94506u, 1u), 20370u), Struct_1(false, vec3<u32>(0u, 4294967295u, 334u), 1u), Struct_1(true, vec3<u32>(128555u, 37797u, 1u), 4294967295u), Struct_1(false, vec3<u32>(1u, 22162u, 4294967295u), 41659u), Struct_1(true, vec3<u32>(0u, 22585u, 4294967295u), 42796u), Struct_1(false, vec3<u32>(10186u, 0u, 19441u), 4294967295u), Struct_1(false, vec3<u32>(45149u, 70310u, 4294967295u), 503u), Struct_1(false, vec3<u32>(4294967295u, 70092u, 4201u), 65819u), Struct_1(false, vec3<u32>(0u, 58393u, 0u), 0u), Struct_1(true, vec3<u32>(0u, 44106u, 10748u), 4294967295u));

var<private> global3: i32;

var<private> global4: vec3<bool> = vec3<bool>(true, true, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<f32>) -> i32 {
    global1 = global4.x;
    global0 = array<vec3<bool>, 26>();
    let var_0 = -635f;
    let var_1 = Struct_2(_wgslsmith_add_i32(firstLeadingBit(_wgslsmith_dot_vec2_i32(max(u_input.c.zx, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.a << (u_input.b.yz % vec2<u32>(32u)))), 17734i), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x), 16u)]);
    global2 = array<Struct_1, 16>();
    return _wgslsmith_mult_i32(0i, ~(1i | countOneBits(-u_input.a.x)));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: bool) -> i32 {
    let var_0 = vec2<i32>(~0i, func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1034f, 1237f, 1485f))))) << (arg_0.b.c % 32u));
    return ~arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~select(abs(func_1(Struct_2(0i, Struct_1(global4.x, vec3<u32>(4294967295u, u_input.b.x, 4666u), u_input.b.x)), Struct_2(u_input.a.x, Struct_1(false, u_input.b, 0u)), vec4<bool>(global4.x, true, false, true), true)), u_input.c.x >> (~0u % 32u), global4.x));
    let var_1 = !(!(!(!vec2<bool>(global4.x, true))));
    global0 = array<vec3<bool>, 26>();
    global0 = array<vec3<bool>, 26>();
    let var_2 = global2[_wgslsmith_index_u32(21906u, 16u)];
    let var_3 = abs(u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0, 2147483647i, -4908i));
}

