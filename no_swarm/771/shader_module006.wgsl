struct Struct_1 {
    a: vec2<i32>,
    b: vec2<i32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: u32 = 10596u;

var<private> global1: array<vec2<u32>, 28>;

var<private> global2: array<vec4<i32>, 18>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    global0 = u_input.b;
    return Struct_1(~(arg_0.a ^ (vec2<i32>(u_input.c, -26195i) | -arg_0.a)), _wgslsmith_sub_vec2_i32(~countOneBits(vec2<i32>(arg_0.b.x, arg_0.a.x)), vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, 2147483647i, -33406i), -1860i)), true == any(select(vec4<bool>(arg_0.c, false, true, true), vec4<bool>(false, arg_0.c, false, false), select(vec4<bool>(false, arg_0.c, false, arg_0.c), vec4<bool>(arg_0.c, true, arg_0.c, true), vec4<bool>(arg_0.c, true, false, true)))));
}

fn func_2() -> i32 {
    var var_0 = !all(vec4<bool>(true, false, 85022u > u_input.d, false));
    var var_1 = Struct_1(vec2<i32>(firstLeadingBit(abs(-2147483647i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.c, u_input.c), i32(-1i) * -2147483647i), -2147483647i, u_input.c)), vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, u_input.c), _wgslsmith_div_i32(~(-39286i), u_input.c)), _wgslsmith_add_i32(_wgslsmith_mult_i32(0i & u_input.c, countOneBits(u_input.c)), u_input.c)), all(vec2<bool>(true, true)));
    let var_2 = _wgslsmith_f_op_f32(abs(761f));
    var var_3 = all(!vec4<bool>(false, var_1.c, true, false));
    let var_4 = ~var_1.a;
    return 1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(vec2<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -6887i, 41328i, 2147483647i) >> (vec4<u32>(u_input.d, 62874u, 52754u, u_input.a) % vec4<u32>(32u)), firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 18u)]))), vec2<i32>(_wgslsmith_div_i32(u_input.c, -1i >> (u_input.b % 32u)), _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.c, -569i), abs(u_input.c))), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true))));
    let var_1 = vec3<bool>(false, true, !(any(select(vec4<bool>(true, true, var_0.c, var_0.c), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c), var_0.c)) || !var_0.c));
    let var_2 = var_0;
    let var_3 = _wgslsmith_mult_vec2_i32(var_2.b, var_2.a);
    let var_4 = var_0;
    global1 = array<vec2<u32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(max(func_2(), -(41723i & _wgslsmith_div_i32(2147483647i, var_2.b.x))));
}

