struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<bool>) -> bool {
    var var_0 = Struct_1(_wgslsmith_mult_i32(reverseBits(20869i), _wgslsmith_mult_i32(u_input.c, -1i)));
    var var_1 = Struct_1(-_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, -24521i)) ^ u_input.a.xy, abs(countOneBits(vec2<i32>(20379i, var_0.a)))));
    let var_2 = vec2<bool>(arg_0.x, !(!(!any(vec2<bool>(false, arg_0.x)))));
    var var_3 = Struct_1(u_input.a.x);
    let var_4 = -vec2<i32>(var_3.a, 1i);
    return !any(select(vec4<bool>(false, false, arg_0.x, true), vec4<bool>(false, var_2.x, var_2.x, true), !vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x))) || arg_0.x;
}

fn func_3(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(0i);
    var_0 = Struct_1(abs(var_0.a) >> (~(_wgslsmith_mult_u32(u_input.d.x, 0u) | _wgslsmith_mult_u32(u_input.d.x, u_input.d.x)) % 32u));
    var_0 = Struct_1(countOneBits(~42531i));
    var_0 = Struct_1(-u_input.c);
    let var_1 = Struct_1(u_input.c);
    return Struct_1(~abs(2147483647i));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: Struct_1) -> Struct_1 {
    let var_0 = func_3(arg_0.x);
    let var_1 = Struct_1(-35488i);
    let var_2 = !(!(_wgslsmith_dot_vec2_u32(u_input.d.zz, vec2<u32>(u_input.d.x, u_input.d.x)) <= _wgslsmith_dot_vec3_u32(~u_input.d, u_input.d)));
    var var_3 = func_3(true);
    let var_4 = func_2(select(arg_0, select(!select(vec2<bool>(var_2, var_2), vec2<bool>(false, var_2), vec2<bool>(true, var_2)), !vec2<bool>(var_2, var_2), select(vec2<bool>(true, true), arg_0, true)), var_2));
    return func_3(arg_0.x);
}

fn func_5(arg_0: Struct_1) -> Struct_1 {
    let var_0 = abs(u_input.a);
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(~select(u_input.d.x >> (u_input.d.x % 32u), 0u, true), 4294967295u), abs(~0u));
    return Struct_1(~min(_wgslsmith_dot_vec2_i32(u_input.a.xy, select(u_input.a.xy, u_input.a.zz, vec2<bool>(true, false))), 5842i));
}

fn func_1() -> Struct_1 {
    let var_0 = func_5(func_4(select(vec2<bool>(true, true), vec2<bool>(false, all(vec4<bool>(true, false, true, false))), !select(vec2<bool>(true, true), vec2<bool>(false, true), false)), func_3(func_2(vec2<bool>(false, false))), vec2<i32>(u_input.c, i32(-1i) * -1i), func_3(all(vec3<bool>(true, true, true)))));
    return func_3(true);
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = arg_2;
    let var_1 = arg_2.a;
    var_0 = arg_2;
    var_0 = Struct_1(-13445i);
    var_0 = func_4(!select(vec2<bool>(select(true, true, true), true), vec2<bool>(any(vec4<bool>(true, true, false, true)), true), arg_1 > 66421u), func_5(func_4(vec2<bool>(true, true), Struct_1(var_1 & arg_2.a), arg_3, arg_0)), firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(arg_2.a | var_1, arg_3.x << (u_input.d.x % 32u), -1i), u_input.c)), Struct_1(-7958i));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(), _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(u_input.d.x, u_input.d.x) | u_input.d.xx), u_input.d.x), u_input.d.x), func_5(Struct_1(_wgslsmith_clamp_i32(u_input.c, _wgslsmith_sub_i32(2147483647i, u_input.a.x), u_input.a.x))), vec2<i32>(u_input.b, func_1().a));
    var_0 = func_5(Struct_1(_wgslsmith_mod_i32(2859i, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.c, var_0.a), _wgslsmith_mult_vec3_i32(vec3<i32>(21100i, 0i, var_0.a), vec3<i32>(16494i, -1i, 1i))))));
    let var_1 = u_input.b;
    var_0 = func_5(Struct_1(u_input.b & func_6(func_4(vec2<bool>(true, true), Struct_1(0i), vec2<i32>(-2147483647i, 72618i), Struct_1(1i)), u_input.d.x, Struct_1(-27954i), u_input.a.yz).a));
    let x = u_input.a;
    s_output = StorageBuffer(1f, _wgslsmith_dot_vec3_i32(firstLeadingBit(min(-u_input.a.yxy, max(u_input.a.wyy, u_input.a.zxw))), u_input.a.yyz), var_1);
}

