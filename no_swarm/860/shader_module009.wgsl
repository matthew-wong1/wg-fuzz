struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(1144f, vec3<u32>(1u, 46761u, 1u), vec3<bool>(true, true, true), 1273f), Struct_1(-856f, vec3<u32>(8718u, 971u, 48460u), vec3<bool>(false, false, false), -1477f), 69226u, -1000f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1() -> Struct_1 {
    return global0.a;
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: i32, arg_3: vec4<f32>) -> i32 {
    let var_0 = Struct_2(arg_1, arg_1, (global0.b.b.x & _wgslsmith_clamp_u32(~global0.b.b.x, 63915u, 1u)) >> ((global0.c & 56335u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(318f, 306f) - _wgslsmith_f_op_f32(arg_3.x + 287f)))) + arg_1.d));
    let var_1 = var_0;
    global0 = Struct_2(var_0.a, var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.b.x, ~_wgslsmith_mod_u32(61561u, 33863u), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(0u, var_0.c, u_input.b), global0.b.b.x)), abs(min(vec3<u32>(44331u, var_1.b.b.x, 35723u) | var_0.a.b, firstLeadingBit(global0.b.b)))), -558f);
    let var_2 = var_0;
    global0 = Struct_2(func_1(), var_0.b, _wgslsmith_mod_u32(min(1609u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(52380u, 4294967295u, 48988u, var_0.a.b.x), vec4<u32>(43514u, 1u, arg_1.b.x, 29514u))), arg_1.b.x), var_1.b.d);
    return 13428i;
}

fn func_2(arg_0: Struct_1) -> vec4<u32> {
    var var_0 = arg_0.a;
    var var_1 = func_1().c;
    let var_2 = ~(~func_3(_wgslsmith_div_vec3_i32(u_input.a.yxy, u_input.a.xyz), arg_0, _wgslsmith_clamp_i32(0i, u_input.a.x, u_input.d), vec4<f32>(641f, arg_0.d, 417f, global0.a.a)) & 0i);
    let var_3 = arg_0.c.yx;
    let var_4 = ~_wgslsmith_add_i32(firstLeadingBit(u_input.d ^ ~2147483647i), var_2);
    return firstTrailingBit(_wgslsmith_div_vec4_u32(~reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(24470u, global0.c, arg_0.b.x, arg_0.b.x), vec4<u32>(5215u, u_input.b, 6409u, global0.c))), ~vec4<u32>(4294967295u, _wgslsmith_mult_u32(arg_0.b.x, global0.c), func_1().b.x, select(arg_0.b.x, global0.b.b.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(129f, vec3<u32>(4294967295u, _wgslsmith_mult_u32(u_input.b, 1u), u_input.b), global0.b.c, 1f);
    var var_1 = true;
    var var_2 = reverseBits(_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 1i, u_input.c, u_input.c), vec4<i32>(5431i, u_input.d, u_input.d, u_input.c)) >> (vec4<u32>(var_0.b.x, u_input.b, 81711u, var_0.b.x) % vec4<u32>(32u)), vec4<i32>(-10011i, firstLeadingBit(-2147483647i), i32(-1i) * -4243i, u_input.d)) >> (~func_2(func_1()) % vec4<u32>(32u)));
    let var_3 = 151f;
    let var_4 = 781f;
    var var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.b.yz, vec2<i32>(_wgslsmith_add_i32(2147483647i >> (u_input.b % 32u), var_2.x), 0i));
}

