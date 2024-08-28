struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: vec3<i32>;

var<private> global1: Struct_3;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_1(arg_0: Struct_4, arg_1: f32, arg_2: vec2<f32>, arg_3: bool) -> u32 {
    var var_0 = global1.b.b.a;
    return ~22660u;
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    global0 = arg_0.b;
    let var_0 = arg_0.a;
    let var_1 = arg_2.a ^ u_input.a;
    var var_2 = any(!(!vec4<bool>(arg_0.a, arg_0.a, arg_0.a, true)));
    var_2 = all(select(vec3<bool>(true, !arg_0.a, arg_0.a), !select(!vec3<bool>(true, false, arg_0.a), select(vec3<bool>(arg_0.a, var_0, true), vec3<bool>(false, false, false), arg_0.a), !var_0), !vec3<bool>(var_0, any(vec3<bool>(arg_0.a, false, var_0)), select(true, false, false))));
    return ~0i;
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    var var_0 = global1.b;
    var_0 = Struct_2(vec3<i32>(_wgslsmith_sub_i32(var_0.b.c, firstLeadingBit(~global0.x)), var_0.b.c, global0.x), var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1011f + 1000f) + _wgslsmith_f_op_f32(f32(-1f) * -1000f))));
    let var_1 = Struct_4(!(_wgslsmith_f_op_f32(f32(-1f) * -757f) <= _wgslsmith_f_op_f32(-133f + var_0.c)), _wgslsmith_add_vec3_i32(vec3<i32>(2147483647i, func_3(Struct_4(true, var_0.a), Struct_2(global1.b.a, global1.b.b, -1299f), global1.b.b), -51233i << (~u_input.a % 32u)), global1.b.a));
    global1 = Struct_3(-1i, Struct_2(min(vec3<i32>(var_1.b.x, 29818i, 1i) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, 38788u), vec3<u32>(4294967295u, 28052u, 44795u)) % vec3<u32>(32u)), var_1.b >> (_wgslsmith_div_vec3_u32(vec3<u32>(global1.b.b.a, u_input.a, 0u), vec3<u32>(u_input.a, 58197u, global1.b.b.a)) % vec3<u32>(32u))), Struct_1(firstLeadingBit(~16503u), vec2<f32>(_wgslsmith_f_op_f32(-arg_1), arg_1), ~var_1.b.x), -111f));
    var var_2 = firstLeadingBit(vec3<u32>(_wgslsmith_div_u32(_wgslsmith_sub_u32(63541u, global1.b.b.a), ~4294967295u), 1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.a, 16538u), _wgslsmith_sub_u32(4294967295u, 0u))) & vec3<u32>(global1.b.b.a, firstLeadingBit(var_0.b.a), min(u_input.a, 1u >> (global1.b.b.a % 32u))));
    return var_0.b;
}

fn func_4(arg_0: u32, arg_1: vec3<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.c) * -1793f), _wgslsmith_f_op_f32(arg_2.b.b.x * _wgslsmith_f_op_f32(1712f * _wgslsmith_f_op_f32(select(172f, -1761f, all(vec2<bool>(false, true)))))), global1.b.c);
    global1 = Struct_3(56044i, Struct_2(abs(select(_wgslsmith_clamp_vec3_i32(global1.b.a, vec3<i32>(global1.a, arg_2.b.c, arg_2.a.x), global1.b.a), vec3<i32>(50540i, 6033i, global0.x), vec3<bool>(true, true, true))), Struct_1(min(arg_1.x, func_2(var_0.x, 971f).a), var_0.zx, _wgslsmith_add_i32(-21011i, global0.x)), -896f));
    var var_1 = firstLeadingBit(arg_2.a);
    var_1 = -arg_2.a;
    let var_2 = 2147483647i;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3((~(19314i ^ global0.x) << (~max(14929u, 0u) % 32u)) >> (29885u % 32u), global1.b);
    let var_0 = Struct_3(firstTrailingBit(_wgslsmith_div_i32(reverseBits(max(global0.x, global1.b.b.c)), _wgslsmith_mult_i32(32834i, -11081i))), func_4(min(reverseBits(func_1(Struct_4(true, global1.b.a), 1233f, vec2<f32>(461f, 1932f), true)), ~u_input.a), ~max(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(46589u, 1u, global1.b.b.a)), max(vec3<u32>(u_input.a, 1u, 8189u), vec3<u32>(u_input.a, u_input.a, 1u))), Struct_2(~vec3<i32>(-54i, 2147483647i, -26586i) >> (~vec3<u32>(4294967295u, u_input.a, u_input.a) % vec3<u32>(32u)), func_2(_wgslsmith_f_op_f32(-global1.b.c), 282f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(484f))))));
    let var_1 = Struct_4(false, ~var_0.b.a);
    let var_2 = ~u_input.a;
    global0 = select(var_1.b, vec3<i32>(global0.x, var_0.a, i32(-1i) * -1i), select(select(vec3<bool>(false, var_1.a, false), select(vec3<bool>(true, true, true), vec3<bool>(false, var_1.a, true), var_1.a), true), vec3<bool>(any(vec4<bool>(var_1.a, false, true, var_1.a)), true | var_1.a, any(vec3<bool>(true, var_1.a, false))), false)) ^ var_0.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(var_1.b.x, -global1.a));
}

