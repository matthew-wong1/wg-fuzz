struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-205f), vec3<i32>(-40674i, 4186i, 1i), vec2<bool>(false, false), 80826u);

var<private> global1: u32 = 36743u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> u32 {
    global0 = Struct_2(global0.a, -(_wgslsmith_mod_vec3_i32(global0.b << (vec3<u32>(13280u, global0.d, u_input.c) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(global0.b.x, u_input.a, u_input.b.x), vec3<i32>(global0.b.x, 2147483647i, 67595i))) << (reverseBits(vec3<u32>(22224u, u_input.c, 5603u) & vec3<u32>(4294967295u, u_input.c, 1u)) % vec3<u32>(32u))), select(select(global0.c, vec2<bool>(global0.c.x, any(vec4<bool>(true, global0.c.x, global0.c.x, true))), all(vec3<bool>(global0.c.x, global0.c.x, true))), select(select(vec2<bool>(global0.c.x, false), select(vec2<bool>(false, false), vec2<bool>(false, global0.c.x), true), select(vec2<bool>(global0.c.x, global0.c.x), global0.c, vec2<bool>(true, true))), !select(vec2<bool>(false, true), global0.c, false), true), global0.c.x), 4294967295u);
    let var_0 = Struct_2(Struct_1(-103f), abs(~(~global0.b) >> ((~vec3<u32>(u_input.c, 1u, global0.d) & (vec3<u32>(global0.d, 4294967295u, 0u) >> (vec3<u32>(u_input.c, 70550u, global0.d) % vec3<u32>(32u)))) % vec3<u32>(32u))), vec2<bool>(true, all(select(vec4<bool>(global0.c.x, true, global0.c.x, global0.c.x), !vec4<bool>(false, global0.c.x, false, true), vec4<bool>(false, global0.c.x, true, global0.c.x)))), ~global0.d);
    return 1u ^ countOneBits(u_input.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: bool) -> vec3<u32> {
    let var_0 = global0.d & global0.d;
    var var_1 = vec4<u32>(func_3(), global0.d ^ _wgslsmith_sub_u32(var_0, 0u), countOneBits(_wgslsmith_mod_u32(~1u, ~var_0)), select(4294967295u, var_0, !any(vec3<bool>(true, arg_2, true)))) & ~(~vec4<u32>(global0.d << (4294967295u % 32u), global0.d, _wgslsmith_sub_u32(4294967295u, 4100u), ~19603u));
    var_1 = firstTrailingBit(~(~firstTrailingBit(vec4<u32>(var_1.x, 19436u, 1u, var_1.x)))) << (countOneBits(vec4<u32>(~global0.d, ~(~0u), 36414u, ~var_0)) % vec4<u32>(32u));
    var var_2 = Struct_1(2040f);
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, u_input.d.x, _wgslsmith_dot_vec2_i32(~max(vec2<i32>(arg_1.x, 74636i), vec2<i32>(global0.b.x, u_input.d.x)), min(firstTrailingBit(global0.b.xz), vec2<i32>(u_input.a, arg_1.x)))), _wgslsmith_mod_vec3_i32(-select(firstTrailingBit(global0.b), countOneBits(global0.b), true == arg_2), reverseBits(u_input.d.wwy)));
    return var_1.wzz;
}

fn func_1() -> bool {
    global1 = global0.d;
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-741f - _wgslsmith_f_op_f32(603f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.a, global0.a.a)))));
    var var_1 = ~(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(0u, 1u)), ~_wgslsmith_add_vec2_u32(vec2<u32>(53992u, u_input.c), vec2<u32>(14091u, global0.d))) | 1u);
    let var_2 = _wgslsmith_clamp_vec3_i32(~(-(-global0.b ^ global0.b)), select(~u_input.b, -abs(vec3<i32>(18983i, global0.b.x, -1i)) ^ (global0.b << (func_2(var_0, u_input.d.zw, global0.c.x) % vec3<u32>(32u))), select(select(select(vec3<bool>(global0.c.x, false, global0.c.x), vec3<bool>(false, global0.c.x, false), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, global0.c.x), vec3<bool>(false, global0.c.x, false), global0.c.x), !global0.c.x), !(!vec3<bool>(global0.c.x, false, false)), global0.c.x)), _wgslsmith_sub_vec3_i32(u_input.b, -(~(-u_input.d.yxw))));
    var var_3 = _wgslsmith_mod_u32(firstTrailingBit(1u), _wgslsmith_mod_u32(max(_wgslsmith_div_u32(~2415u, ~global0.d), _wgslsmith_sub_u32(~18058u, max(global0.d, u_input.c))), 4294967295u));
    return !(!(!select(false, global0.c.x, global0.c.x) == !(var_0.a == global0.a.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global1 = countOneBits(~_wgslsmith_add_u32(abs(global0.d), 4294967295u ^ global0.d)) << (0u % 32u);
    global1 = ~4294967295u;
    let var_1 = -129f;
    var var_2 = Struct_2(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.a * -568f), -422f)), countOneBits(countOneBits(vec3<i32>(2147483647i, global0.b.x, 2147483647i) << ((vec3<u32>(36370u, global0.d, global0.d) << (vec3<u32>(global0.d, 4294967295u, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)))), select(!vec2<bool>(global0.c.x, global0.c.x), !global0.c, any(!(!vec4<bool>(global0.c.x, true, false, true)))), 54674u);
    let var_3 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.a.a, _wgslsmith_f_op_f32(-var_2.a.a))) + 1602f))));
    let x = u_input.a;
    s_output = StorageBuffer((max(_wgslsmith_add_i32(u_input.a, u_input.a), u_input.b.x) | u_input.b.x) >> (~0u % 32u), global0.b.x, _wgslsmith_f_op_f32(var_3.a + global0.a.a));
}

