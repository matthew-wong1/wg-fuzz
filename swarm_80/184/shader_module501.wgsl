struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(28834i), Struct_1(61969i), Struct_1(22125i), Struct_1(-42718i), Struct_1(2147483647i), Struct_1(-40220i), Struct_1(-1i), Struct_1(-5423i), Struct_1(21354i), Struct_1(28336i), Struct_1(i32(-2147483648)), Struct_1(2147483647i), Struct_1(i32(-2147483648)), Struct_1(-1i), Struct_1(2147483647i), Struct_1(37111i), Struct_1(1417i), Struct_1(-47101i), Struct_1(1i));

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(0i), Struct_1(i32(-2147483648)), Struct_1(0i), Struct_1(1i), Struct_1(25554i), Struct_1(1428i), Struct_1(1996i), Struct_1(-48094i), Struct_1(-1i));

var<private> global2: bool = false;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    let var_0 = true;
    var var_1 = Struct_1(-2147483647i);
    let var_2 = Struct_1(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(u_input.b.xyz, -u_input.b.zzx), -_wgslsmith_div_i32(var_1.a, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, 0i, -3785i), vec4<i32>(arg_0.a, var_1.a, 2147483647i, var_1.a)))));
    return ~(-vec2<i32>(~_wgslsmith_add_i32(u_input.b.x, u_input.b.x), ~(~arg_0.a)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    global2 = any(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), select(!select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), vec3<bool>(all(vec2<bool>(true, false)), select(false, false, true), all(vec4<bool>(true, false, false, false)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), true), all(vec3<bool>(false, true, false)))));
    global1 = array<Struct_1, 9>();
    var var_0 = Struct_1(4482i);
    global0 = array<Struct_1, 19>();
    let var_1 = arg_3;
    return 1i;
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>) -> StorageBuffer {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, ~0u, ~arg_1.x), ~select(u_input.c, vec4<u32>(u_input.a.x, u_input.a.x, 6517u, 45401u), true)), vec4<u32>(4294967295u, 17743u, ~u_input.c.x, arg_1.x) ^ ~(~reverseBits(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, arg_1.x)))), 9u)];
    let var_1 = arg_1.x;
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-827f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_4 = Struct_1(func_3(Struct_1(u_input.b.x), u_input.a.xzy, vec3<i32>(2147483647i, -firstLeadingBit(var_0.a), u_input.b.x), global0[_wgslsmith_index_u32(~(u_input.a.x | 1u) << (arg_1.x % 32u), 19u)]));
    return StorageBuffer(arg_0, vec2<u32>(var_1, 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-35325i);
    let var_1 = Struct_1(u_input.b.x);
    let var_2 = false;
    var var_3 = vec2<u32>(98342u, countOneBits(u_input.a.x));
    let var_4 = u_input.a.x;
    let x = u_input.a;
    s_output = func_2(vec3<i32>(u_input.b.x, _wgslsmith_dot_vec2_i32(func_1(Struct_1(var_1.a)), -firstTrailingBit(vec2<i32>(29734i, var_1.a))), _wgslsmith_add_i32(u_input.b.x, -var_1.a)), u_input.a);
}

