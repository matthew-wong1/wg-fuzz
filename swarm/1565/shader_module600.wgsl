struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_1) -> vec2<i32> {
    global0 = array<u32, 12>();
    global0 = array<u32, 12>();
    return abs(-_wgslsmith_div_vec2_i32(vec2<i32>(-u_input.a, i32(-1i) * -2147483647i), vec2<i32>(max(u_input.a, -15734i), u_input.a)));
}

fn func_3() -> u32 {
    var var_0 = !vec4<bool>(true || (all(vec2<bool>(false, false)) | any(vec2<bool>(true, false))), all(select(vec4<bool>(false, true, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), false))), !all(vec2<bool>(true, true)), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), vec2<bool>(false, false))));
    let var_1 = vec2<i32>(~1i, 39532i);
    let var_2 = Struct_2(vec4<bool>(true, true && all(vec2<bool>(false, true)), !(var_1.x != 2147483647i) != false, _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, -2147483647i, u_input.a, u_input.a)) == func_1(Struct_1(vec2<bool>(false, true), u_input.c.wwz)).x));
    var var_3 = true && var_2.a.x;
    var var_4 = vec4<f32>(1044f, 1f, 205f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(300f - -929f)));
    return _wgslsmith_dot_vec3_u32(abs(vec3<u32>(0u, u_input.b, 1u)) >> (u_input.d.zwx % vec3<u32>(32u)), ~vec3<u32>(abs(u_input.b), _wgslsmith_add_u32(25363u, 0u), ~52756u)) | 4294967295u;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: i32) -> i32 {
    var var_0 = arg_0;
    var var_1 = abs(~countOneBits(arg_2));
    var_1 = ~(arg_2 | var_0.x);
    var var_2 = vec3<u32>(~1u, ~47777u, ~(~func_3())) | ~vec3<u32>(u_input.b, 1u, _wgslsmith_mod_u32(~u_input.b, u_input.c.x));
    var var_3 = Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_vec3_u32(select(u_input.d.yyz, _wgslsmith_clamp_vec3_u32(u_input.d.zzz, vec3<u32>(27502u, global0[_wgslsmith_index_u32(1449u, 12u)], 4294967295u), u_input.c.wwy), vec3<bool>(false, false, true)), u_input.d.xxy, _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(u_input.c.www, u_input.c.wyz), ~u_input.d.wwz)) & (u_input.c.xzz | vec3<u32>(var_2.x, ~global0[_wgslsmith_index_u32(1u, 12u)], reverseBits(42636u))));
    return -_wgslsmith_mod_i32(u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<bool>(true, false, false, true));
    var var_1 = _wgslsmith_add_vec2_i32(-min(abs(_wgslsmith_sub_vec2_i32(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.a, u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)) << (u_input.c.wy % vec2<u32>(32u))), abs(func_1(Struct_1(var_0.a.xz, vec3<u32>(69993u, global0[_wgslsmith_index_u32(4294967295u, 12u)], 0u)))));
    let var_2 = abs(firstLeadingBit(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, u_input.a, u_input.a))) | vec4<i32>(firstTrailingBit(func_2(vec2<i32>(var_1.x, 0i), vec2<f32>(191f, 998f), -2147483647i)), _wgslsmith_clamp_i32(u_input.a, u_input.a, countOneBits(-2147483647i)), u_input.a, u_input.a);
    var_1 = abs(_wgslsmith_sub_vec2_i32(~(~var_2.xz), vec2<i32>(var_1.x, var_1.x)) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(~19256u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)]), max(select(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.c.x), u_input.c.xw, vec2<bool>(var_0.a.x, true)), ~u_input.c.zz), min(~u_input.d.yz, vec2<u32>(u_input.c.x, 1u))) % vec2<u32>(32u)));
    var_1 = -_wgslsmith_clamp_vec2_i32(vec2<i32>(-_wgslsmith_add_i32(6067i, var_2.x), min(min(-2147483647i, 48316i), var_2.x)), _wgslsmith_clamp_vec2_i32(firstLeadingBit(var_2.yz), vec2<i32>(var_1.x, var_1.x), abs(vec2<i32>(-39811i, -18269i))) >> (countOneBits(~u_input.d.zw) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(vec2<i32>(~var_1.x, u_input.a), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, var_2.x), var_2.xw)));
    let var_3 = var_2.ww;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-468f + -1115f), var_3.x);
}

