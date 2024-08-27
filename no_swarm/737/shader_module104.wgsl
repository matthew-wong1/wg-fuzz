struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> i32 {
    let var_0 = vec3<bool>(arg_0.a, true, true);
    global0 = array<Struct_2, 5>();
    var var_1 = vec4<bool>(false || all(var_0), any(select(select(vec4<bool>(arg_0.a, var_0.x, false, true), vec4<bool>(false, arg_0.a, arg_1, arg_0.a), select(vec4<bool>(true, arg_1, var_0.x, false), vec4<bool>(true, arg_0.a, arg_0.a, true), true)), !select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, arg_1), false), select(!vec4<bool>(false, true, var_0.x, true), vec4<bool>(arg_0.a, false, true, arg_1), vec4<bool>(var_0.x, false, true, true)))), any(!(!(!vec4<bool>(false, false, arg_0.a, var_0.x)))), arg_1);
    var_1 = vec4<bool>((select(var_0.x, true, !arg_1) & select(true, var_1.x, false)) | var_1.x, true, all(vec4<bool>(true, false, arg_1, arg_0.a)), ~0u < ((~u_input.c.x ^ 1u) & ~max(u_input.a.x, u_input.c.x)));
    let var_2 = vec3<i32>(~(~_wgslsmith_div_i32(u_input.d.x, u_input.d.x)) << (~51364u % 32u), -55194i, _wgslsmith_mod_i32(select(-u_input.d.x | -1i, -u_input.d.x, false), abs(-1i)));
    return u_input.b.x;
}

fn func_2() -> Struct_3 {
    var var_0 = all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(vec2<bool>(true, true), vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), false))));
    var var_1 = Struct_1(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    let var_2 = _wgslsmith_div_vec2_u32(max(~vec2<u32>(u_input.c.x, 1054u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(u_input.c.x, u_input.c.x))) << (abs(u_input.c) % vec2<u32>(32u)), u_input.c);
    var_0 = true;
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, countOneBits(func_3(Struct_1(false), true))), select(-vec2<i32>(-u_input.d.x, 2147483647i), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, u_input.b.x), vec2<i32>(-2538i, u_input.b.x) & ~vec2<i32>(-2632i, u_input.d.x), vec2<i32>(u_input.d.x, u_input.b.x) << ((vec2<u32>(3887u, 27465u) | u_input.c) % vec2<u32>(32u))), vec2<bool>(any(!vec4<bool>(var_1.a, var_1.a, var_1.a, false)), var_1.a)), ~_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.yz << (var_2 % vec2<u32>(32u)), vec2<i32>(-32303i, u_input.d.x)), -firstTrailingBit(u_input.d.yx)));
    return Struct_3(Struct_1(!any(!vec4<bool>(true, var_1.a, true, true))), vec3<u32>(38657u, 22111u, max(u_input.a.x, _wgslsmith_mult_u32(0u, u_input.a.x))) << (u_input.a.zyw % vec3<u32>(32u)), global0[_wgslsmith_index_u32(~max(var_2.x, ~(~47506u)), 5u)]);
}

fn func_1() -> Struct_3 {
    return func_2();
}

fn func_4(arg_0: Struct_3) -> f32 {
    var var_0 = select(~(~vec4<u32>(abs(33469u), _wgslsmith_mult_u32(22978u, arg_0.c.a.x), 37513u, countOneBits(33484u))), abs(u_input.a), true);
    var var_1 = arg_0;
    let var_2 = func_2().c.b;
    var_1 = Struct_3(Struct_1(any(!vec3<bool>(var_1.c.d.a, true, arg_0.c.d.a))), ~vec3<u32>(4294967295u, ~1u, 5739u) | ~arg_0.b, arg_0.c);
    var_1 = arg_0;
    return var_1.c.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.c.x, 5u)];
    let var_1 = 1000f;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_1())));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(vec4<u32>(~var_0.a.x, _wgslsmith_dot_vec2_u32(u_input.a.zy, vec2<u32>(4294967295u, var_0.a.x)), 2835u, 4294967295u), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 0u, 0u, u_input.c.x) >> (u_input.a % vec4<u32>(32u)), u_input.a))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, var_0.c, var_1))))));
}

