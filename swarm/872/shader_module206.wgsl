struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 20> = array<i32, 20>(-14993i, 2147483647i, -1i, 52566i, i32(-2147483648), 0i, i32(-2147483648), 2147483647i, i32(-2147483648), -3771i, -55467i, 2147483647i, 0i, 2147483647i, -39809i, -58037i, -1i, -18787i, 1i, -1i);

var<private> global1: array<vec3<u32>, 26>;

var<private> global2: vec2<f32>;

var<private> global3: array<vec2<u32>, 5>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    global0 = array<i32, 20>();
    var var_0 = 0u;
    var var_1 = Struct_1(1u, (u_input.a.x < global0[_wgslsmith_index_u32(~(~1u), 20u)]) && false, _wgslsmith_f_op_f32(abs(1559f)));
    var_0 = _wgslsmith_add_u32(1u, (_wgslsmith_sub_u32(7285u, var_1.a) >> ((60523u | var_1.a) % 32u)) ^ (_wgslsmith_mod_u32(27754u, var_1.a) >> (63291u % 32u))) & var_1.a;
    global0 = array<i32, 20>();
    return var_1.a;
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + 1642f)))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.x, 970f, false)), 783f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - global2.x) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(-global2.x)) * 903f));
    var var_1 = max(firstTrailingBit(u_input.a.yz), u_input.a.zz);
    var var_2 = arg_1;
    var var_3 = ~arg_1;
    global0 = array<i32, 20>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_0.x, global2.x, var_0.x))))));
}

fn func_1() -> vec3<f32> {
    let var_0 = ~(_wgslsmith_add_u32(111716u, ~_wgslsmith_dot_vec2_u32(global3[_wgslsmith_index_u32(20479u, 5u)], vec2<u32>(32420u, 37936u))) << (func_2() % 32u));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1025f, global2.x, -829f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~17049u, _wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, var_0, var_0), vec4<u32>(4294967295u, 4294967295u, var_0, var_0))))), false | (any(vec2<bool>(false, true)) & any(vec4<bool>(false, true, false, false))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * -418f)), _wgslsmith_div_f32(670f, 1801f), 906f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1())));
    global0 = array<i32, 20>();
    global2 = var_1.zx;
    global0 = array<i32, 20>();
    global1 = array<vec3<u32>, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.x + _wgslsmith_div_f32(var_1.x, 1000f)))), _wgslsmith_f_op_f32(-418f * var_1.x)), _wgslsmith_clamp_vec3_i32(min(select(-u_input.a, -vec3<i32>(2147483647i, var_0, u_input.a.x), any(vec4<bool>(true, true, true, false))), _wgslsmith_mod_vec3_i32(abs(u_input.a), firstLeadingBit(vec3<i32>(-48572i, 189i, u_input.a.x)))), _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(abs(u_input.a), vec3<i32>(var_0, -20234i, global0[_wgslsmith_index_u32(38238u, 20u)])), firstLeadingBit(-u_input.a)), -(firstTrailingBit(vec3<i32>(var_0, var_0, 32847i)) >> (vec3<u32>(86022u, 4294967295u, 0u) % vec3<u32>(32u)))), _wgslsmith_div_vec2_u32(firstLeadingBit(global3[_wgslsmith_index_u32(1u, 5u)]), vec2<u32>(~(~0u), 1u)), var_1);
}

