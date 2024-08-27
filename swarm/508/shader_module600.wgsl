struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec3<i32>;

var<private> global2: vec3<bool> = vec3<bool>(true, false, false);

var<private> global3: array<vec4<i32>, 25>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> Struct_1 {
    return Struct_1(true);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: bool) -> bool {
    global2 = !vec3<bool>(true, any(vec4<bool>(any(vec4<bool>(false, true, true, global2.x)), true, true, arg_1.a)), all(!vec4<bool>(false, global2.x, true, true)));
    let var_0 = all(vec4<bool>(arg_0 < abs(~73721u), true, global2.x, func_2().a));
    var var_1 = func_2();
    let var_2 = vec4<u32>(2232u, _wgslsmith_div_u32(abs(~58698u), ~(~4294967295u | min(u_input.e.x, u_input.a))), arg_0, firstTrailingBit(40740u));
    global0 = -1000f;
    return false;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_2();
    var var_1 = Struct_1(func_3(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(1u, 1u, u_input.d)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.d, u_input.e.x), u_input.e)) << (29162u % 32u), Struct_1(all(select(vec3<bool>(var_0.a, false, true), vec3<bool>(true, true, false), global2.x))), true));
    var var_2 = Struct_1(true);
    let var_3 = 42446u;
    global0 = -874f;
    return StorageBuffer(firstTrailingBit(-(_wgslsmith_mult_vec2_i32(global1.xy, vec2<i32>(-2147483647i, u_input.b)) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    global3 = array<vec4<i32>, 25>();
    let x = u_input.a;
    s_output = func_1();
}

