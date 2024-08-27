struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    global0 = ~firstLeadingBit(arg_2.d);
    let var_0 = vec3<bool>(!arg_3.b.b, false, false);
    var var_1 = arg_2;
    let var_2 = ~countOneBits(-max(max(arg_1, vec4<i32>(arg_2.a.x, var_1.c.x, arg_3.b.a, arg_1.x)), vec4<i32>(1i, -43076i, -1i, 3248i)));
    global0 = 1u;
    return all(var_0);
}

fn func_1() -> vec3<i32> {
    let var_0 = 28600u;
    var var_1 = !(!(true || select(func_2(true, vec4<i32>(669i, 0i, u_input.b.x, 1i), Struct_3(u_input.b, u_input.b.x, vec2<i32>(u_input.b.x, u_input.b.x), var_0), Struct_2(u_input.a, Struct_1(u_input.b.x, true))), true, true)));
    global0 = 1u;
    var var_2 = firstTrailingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(-u_input.b.x, u_input.b.x), u_input.b.x));
    let var_3 = var_0;
    return (~vec3<i32>(_wgslsmith_add_i32(-40868i, u_input.b.x), min(-1i, 1i), u_input.b.x) & u_input.b) << (((vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0, u_input.a, 4294967295u), vec3<u32>(1u, 1u, var_0)), 9761u, u_input.a) ^ reverseBits(~vec3<u32>(var_3, var_3, var_0))) >> (((~vec3<u32>(26515u, 47567u, 4294967295u) << ((vec3<u32>(4294967295u, 4294967295u, var_0) & vec3<u32>(0u, var_0, 20671u)) % vec3<u32>(32u))) ^ ~_wgslsmith_div_vec3_u32(vec3<u32>(0u, var_3, u_input.a), vec3<u32>(var_0, u_input.a, 5160u))) % vec3<u32>(32u))) % vec3<u32>(32u));
}

fn func_3(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    global0 = ~(~firstLeadingBit(min(u_input.a, 43265u)));
    let var_0 = min(~select(~countOneBits(vec3<u32>(u_input.a, 4736u, 55042u)), abs(max(vec3<u32>(5179u, 50595u, u_input.a), vec3<u32>(4294967295u, 51063u, u_input.a))), true), vec3<u32>(1u, 0u, ~u_input.a));
    global0 = ~_wgslsmith_div_u32(_wgslsmith_sub_u32(reverseBits(_wgslsmith_mod_u32(var_0.x, 131295u)), 1u), ~4294967295u & ~firstLeadingBit(u_input.a));
    var var_1 = Struct_2(u_input.a, Struct_1(_wgslsmith_dot_vec2_i32(min(-vec2<i32>(u_input.b.x, 1814i), arg_1.yy), vec2<i32>(countOneBits(arg_1.x), arg_1.x)), true));
    let var_2 = vec2<i32>(-23161i, _wgslsmith_div_i32(~1i, ~(firstTrailingBit(2147483647i) >> (~u_input.a % 32u))));
    return Struct_1(var_2.x, var_1.b.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(u_input.a << (4294967295u % 32u), 12018u);
    let var_1 = Struct_2(var_0.x, func_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -310f))), func_1()));
    global0 = 102079u;
    var var_2 = -654f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(771f - 118f))) - 192f), -679f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -215f), 1f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(vec3<f32>(752f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + -340f))), _wgslsmith_f_op_f32(f32(-1f) * -182f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))));
}

