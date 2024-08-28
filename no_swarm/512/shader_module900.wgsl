struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec2<i32>) -> vec2<bool> {
    let var_0 = !select(select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), false), vec4<bool>(true, true, true, true), all(vec3<bool>(false, true, true))), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), vec4<bool>(true, true, false, true), any(vec4<bool>(false, true, false, false))), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), true)), vec4<bool>(true, true, true, true), any(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), all(vec4<bool>(false, true, false, false)))));
    global0 = array<Struct_3, 19>();
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(-1000f))));
    let var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-585f))) + var_1.a.a)));
    global0 = array<Struct_3, 19>();
    return select(var_0.yz, select(var_0.yz, select(select(vec2<bool>(true, true), vec2<bool>(var_0.x, var_0.x), !vec2<bool>(var_0.x, true)), var_0.xx, !var_0.yy), var_0.zx), all(var_0.xy));
}

fn func_2(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool, arg_3: Struct_2) -> u32 {
    let var_0 = arg_2;
    var var_1 = vec4<bool>(var_0, arg_1.a.x, all(func_3(u_input.b.x, -_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 67594i), u_input.c.zz))), true);
    let var_2 = arg_3;
    let var_3 = Struct_3(arg_1.a);
    var_1 = var_3.a;
    return firstLeadingBit(~1u);
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_3) -> i32 {
    let var_0 = 1147f >= _wgslsmith_f_op_f32(-arg_1.a);
    global0 = array<Struct_3, 19>();
    global0 = array<Struct_3, 19>();
    let var_1 = vec3<u32>(0u, ~func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0, 0u, 4294967295u), vec3<u32>(24843u, arg_0, arg_0)), Struct_3(arg_2.a), any(vec3<bool>(true, var_0, var_0)), Struct_2(arg_1)) | abs(arg_0), ~arg_0);
    return -2147483647i;
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 19>();
    let var_0 = max(-_wgslsmith_div_i32(u_input.c.x, ~(i32(-1i) * -10880i)), 0i);
    global0 = array<Struct_3, 19>();
    var var_1 = u_input.a.x <= u_input.d.x;
    let var_2 = vec4<i32>(_wgslsmith_div_i32(select(~u_input.a.x | 34427i, u_input.d.x, !all(vec4<bool>(true, false, true, true))), firstTrailingBit(u_input.c.x)), ~(-(_wgslsmith_add_i32(var_0, u_input.a.x) ^ var_0)), ~26173i, _wgslsmith_mod_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-50130i, u_input.a.x, var_0), vec3<i32>(0i, var_0, -617i)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, var_0), var_0 & 0i, 0i)), func_4(~func_2(vec3<u32>(41842u, 977u, 12668u), global0[_wgslsmith_index_u32(31028u, 19u)], true, Struct_2(Struct_1(-428f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -153f)), Struct_3(vec4<bool>(true, true, true, true)))));
    return _wgslsmith_f_op_f32(f32(-1f) * -1087f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(46977u, _wgslsmith_f_op_f32(func_1()), _wgslsmith_mod_i32(39309i, 44279i), max(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.d.xzx, u_input.d.zwy), ~u_input.d.wxy) >> (1u % 32u), u_input.b.x), ~func_2(~vec3<u32>(1u, 1u, 1u), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, 1u), 19u)], !any(vec2<bool>(true, false)), Struct_2(Struct_1(1000f))));
}

