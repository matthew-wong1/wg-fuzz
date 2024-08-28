struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 56304u, 0u, 24542u);

var<private> global1: Struct_3 = Struct_3(32716u, vec2<u32>(1u, 0u));

var<private> global2: array<bool, 27>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2() -> Struct_3 {
    let var_0 = 1814i;
    var var_1 = Struct_1(_wgslsmith_div_i32(var_0, -2147483647i));
    return Struct_3(_wgslsmith_mult_u32(_wgslsmith_div_u32(abs(global1.a & global0.x), u_input.b.x), global0.x), ~firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(39738u, global0.x), vec2<u32>(3647u, 4294967295u))));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> u32 {
    global1 = Struct_3(arg_1.x, global1.b << (_wgslsmith_mult_vec2_u32(~firstLeadingBit(vec2<u32>(4294967295u, global1.a)), reverseBits(~vec2<u32>(0u, global0.x))) % vec2<u32>(32u)));
    var var_0 = _wgslsmith_mod_u32(25281u, 5313u);
    global2 = array<bool, 27>();
    let var_1 = func_2();
    var var_2 = u_input.a.ww;
    return global1.a;
}

fn func_1(arg_0: f32) -> vec2<u32> {
    let var_0 = global0.x;
    let var_1 = -443f;
    let var_2 = func_2();
    let var_3 = Struct_1(u_input.c.x);
    global2 = array<bool, 27>();
    return ~_wgslsmith_clamp_vec2_u32(~(_wgslsmith_div_vec2_u32(vec2<u32>(74487u, 34884u), vec2<u32>(u_input.b.x, 1u)) & _wgslsmith_sub_vec2_u32(global1.b, global1.b)), global1.b, vec2<u32>(1u, func_3(var_3.a ^ u_input.a.x, vec3<u32>(global0.x, global0.x, u_input.b.x) & vec3<u32>(global0.x, 105139u, global0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(~(~(~u_input.b)), u_input.b), ~vec4<u32>(_wgslsmith_dot_vec2_u32(global1.b | global0.zx, func_1(-142f)), 56586u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global1.b.x, u_input.b.x, 1u), vec3<u32>(54843u, 82133u, 63185u)), ~vec3<u32>(1u, global0.x, global1.b.x)), global0.x));
    global2 = array<bool, 27>();
    var var_0 = func_2();
    global2 = array<bool, 27>();
    global2 = array<bool, 27>();
    var var_1 = Struct_2(Struct_1(-_wgslsmith_clamp_i32(1i, u_input.c.x, u_input.d)), ~(var_0.a << (0u % 32u)) | var_0.a, 491f, select(any(select(select(vec4<bool>(false, false, global2[_wgslsmith_index_u32(var_0.a, 27u)], global2[_wgslsmith_index_u32(global1.a, 27u)]), vec4<bool>(global2[_wgslsmith_index_u32(61716u, 27u)], global2[_wgslsmith_index_u32(global0.x, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(1u, 27u)]), global2[_wgslsmith_index_u32(42577u, 27u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(global0.x, 27u)], global2[_wgslsmith_index_u32(u_input.b.x, 27u)], true, true), vec4<bool>(false, global2[_wgslsmith_index_u32(global1.a, 27u)], false, global2[_wgslsmith_index_u32(global0.x, 27u)]), true), global2[_wgslsmith_index_u32(var_0.a, 27u)])), false, all(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(var_0.a, 27u)], true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.zz, -u_input.a | (vec4<i32>(_wgslsmith_mult_i32(-1029i, -11256i), 0i, var_1.a.a, 1i | u_input.e) | countOneBits(vec4<i32>(0i, var_1.a.a, 21492i, u_input.e))));
}

