struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec2<i32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3() -> vec4<bool> {
    global0 = Struct_2(Struct_1(any(select(global0.c, vec4<bool>(false, false, global0.b.a, global0.b.a), global0.c))), global0.a, select(select(vec4<bool>(true, true, true, true), global0.c, false), vec4<bool>(!(23112i < u_input.b), false, true, u_input.a == u_input.a), global0.a.a));
    let var_0 = any(select(vec4<bool>(any(global0.c.zwy), false, global0.b.a, true), vec4<bool>(true, u_input.b == (u_input.c.x & u_input.c.x), true, true), !vec4<bool>(false, 4294967295u >= u_input.a, any(vec3<bool>(global0.b.a, false, true)), true)));
    var var_1 = Struct_3(abs(firstTrailingBit(select(~u_input.c.zyy, u_input.c.xzy, false))), Struct_1(true), u_input.c.yz, !(!all(vec4<bool>(true, true, global0.c.x, global0.a.a))), vec3<i32>(abs(u_input.c.x), 17659i, ~_wgslsmith_add_i32(u_input.c.x, _wgslsmith_mult_i32(-2147483647i, u_input.b))));
    global0 = Struct_2(var_1.b, var_1.b, global0.c);
    return select(vec4<bool>(!any(!vec2<bool>(var_0, true)), true, global0.b.a, var_0), select(select(select(select(vec4<bool>(false, false, true, false), global0.c, false), vec4<bool>(var_1.b.a, var_1.b.a, global0.b.a, true), select(global0.c, global0.c, global0.c.x)), vec4<bool>(true, true, !global0.b.a, global0.c.x), !global0.a.a), vec4<bool>(true, var_1.b.a, true, true), global0.c), vec4<bool>(var_0, global0.a.a, any(select(vec4<bool>(true, false, var_1.b.a, var_1.d), select(vec4<bool>(false, global0.b.a, global0.b.a, true), global0.c, global0.c), global0.c)), !all(global0.c.ww)));
}

fn func_2() -> Struct_1 {
    var var_0 = global0.c.xzw;
    global0 = Struct_2(global0.b, global0.a, !(!select(func_3(), !vec4<bool>(true, var_0.x, false, false), all(global0.c))));
    global0 = Struct_2(Struct_1(any(vec2<bool>(false, var_0.x))), global0.a, select(global0.c, vec4<bool>(true, true, global0.a.a, !var_0.x), global0.b.a));
    var var_1 = Struct_4(select(4294967295u, abs(countOneBits(u_input.a)), !any(global0.c)) != ~u_input.a);
    global0 = Struct_2(global0.a, global0.b, select(vec4<bool>(false, func_3().x, var_1.a, global0.a.a), func_3(), vec4<bool>(var_0.x, !var_0.x, false, all(!vec3<bool>(var_1.a, false, false)))));
    return global0.a;
}

fn func_1(arg_0: i32) -> vec4<u32> {
    global0 = Struct_2(global0.b, global0.b, vec4<bool>(true, !(!global0.b.a), any(select(global0.c.zxy, vec3<bool>(global0.c.x, global0.c.x, false), global0.c.xyy)) || global0.c.x, global0.c.x));
    var var_0 = vec3<bool>(true, true, global0.a.a & !any(global0.c.yxy));
    global0 = Struct_2(func_2(), func_2(), !select(select(global0.c, global0.c, all(global0.c)), global0.c, global0.c));
    var_0 = vec3<bool>(false, !(!(u_input.a < 4294967295u)), global0.a.a);
    var var_1 = vec3<u32>(73329u, 4294967295u, 1u) | firstTrailingBit(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(23713u, 29680u, u_input.a), vec3<u32>(4294967295u, u_input.a, u_input.a)), ~vec3<u32>(1u, u_input.a, 1u)), vec3<u32>(~17756u, 125867u & u_input.a, u_input.a), _wgslsmith_div_vec3_u32(abs(vec3<u32>(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(52386u, u_input.a, 37553u), vec3<u32>(17087u, 24797u, 4294967295u)))));
    return vec4<u32>(12656u, firstTrailingBit(abs(abs(0u))), _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(0u, 1u)), var_1.yz), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(reverseBits(-1i));
    global0 = Struct_2(Struct_1(true), Struct_1(false), !(!(!global0.c)));
    var var_1 = vec2<i32>(_wgslsmith_div_i32(-u_input.b, _wgslsmith_mult_i32(-(~u_input.c.x), 16996i & u_input.d.x)), ~u_input.d.x);
    let var_2 = u_input.a | reverseBits(1u);
    var_1 = max(_wgslsmith_div_vec2_i32(-vec2<i32>(~var_1.x, -45536i), select(vec2<i32>(var_1.x, abs(2147483647i)), firstLeadingBit(_wgslsmith_add_vec2_i32(vec2<i32>(var_1.x, var_1.x), u_input.d)), all(func_3()))), vec2<i32>(1i, select(u_input.b, var_1.x, func_2().a)));
    let var_3 = select(u_input.d, -((_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, u_input.d.x), u_input.c.xz) >> (~vec2<u32>(4294967295u, 60172u) % vec2<u32>(32u))) ^ (u_input.c.zz | u_input.c.xz)), func_3().yy);
    var var_4 = countOneBits(vec3<i32>(~(-1i), 37021i << (~u_input.a % 32u), max(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(var_3, vec2<i32>(var_3.x, u_input.c.x)), u_input.c.xw ^ var_3), var_1.x)));
    let var_5 = Struct_3(u_input.c.xxy, func_2(), ~var_4.zy, !(16785i == (var_4.x & u_input.d.x)), _wgslsmith_add_vec3_i32(vec3<i32>(var_3.x, -2479i, 2147483647i), u_input.c.zzz));
    let x = u_input.a;
    s_output = StorageBuffer(~max(var_0 ^ var_0, _wgslsmith_sub_vec4_u32(~var_0, vec4<u32>(3325u, u_input.a, var_0.x, 1u))));
}

