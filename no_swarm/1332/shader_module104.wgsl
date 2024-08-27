struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: bool = false;

var<private> global2: vec4<f32> = vec4<f32>(-1110f, 400f, -1000f, -288f);

var<private> global3: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = !(1i > arg_0.a);
    global1 = var_0;
    var var_1 = global0[_wgslsmith_index_u32(~(~u_input.d.x), 26u)];
    global3 = array<vec2<bool>, 14>();
    global3 = array<vec2<bool>, 14>();
    return 1u;
}

fn func_2() -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_u32(u_input.d.x, _wgslsmith_mod_u32(u_input.c.x, ~4294967295u));
    return global0[_wgslsmith_index_u32(_wgslsmith_div_u32(107183u, 32483u), 26u)];
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<bool>, 14>();
    global0 = array<Struct_1, 26>();
    let var_0 = global0[_wgslsmith_index_u32(u_input.b << (_wgslsmith_div_u32(func_1(Struct_1(firstTrailingBit(u_input.a.x)), global2.x, global2.x), u_input.b) % 32u), 26u)];
    var var_1 = false;
    let var_2 = func_2();
    let var_3 = abs(_wgslsmith_mod_u32(u_input.c.x, abs(u_input.c.x)));
    var var_4 = true;
    global1 = true;
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global2.wy), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.d.x, u_input.b)), abs(_wgslsmith_mult_vec3_i32(u_input.a.xwz, firstLeadingBit(vec3<i32>(-25984i, 2147483647i, var_0.a))) & vec3<i32>(abs(2147483647i), u_input.a.x >> (4294967295u % 32u), ~u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-727f + _wgslsmith_f_op_f32(-global2.x))) * global2.x));
}

