struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(vec2<i32>(-14580i, 1i))), Struct_2(Struct_1(vec2<i32>(1786i, 25467i))), Struct_2(Struct_1(vec2<i32>(i32(-2147483648), 0i))), Struct_2(Struct_1(vec2<i32>(0i, -1i))), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(-23939i, -10348i))), Struct_2(Struct_1(vec2<i32>(72425i, 19444i))), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i))), Struct_2(Struct_1(vec2<i32>(1i, i32(-2147483648)))), Struct_2(Struct_1(vec2<i32>(-16582i, -23534i))), Struct_2(Struct_1(vec2<i32>(2147483647i, 1i))), Struct_2(Struct_1(vec2<i32>(38753i, 0i))));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_2, arg_1: i32, arg_2: f32, arg_3: Struct_1) -> u32 {
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    global0 = array<Struct_2, 12>();
    var var_0 = !select(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false), false)), vec4<bool>(1000f <= arg_2, (u_input.c.x ^ u_input.c.x) >= 29528u, all(vec3<bool>(true, true, false)), true), any(vec2<bool>(true, true)));
    var var_1 = arg_3;
    return u_input.c.x;
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = ~4294967295u;
    var var_1 = vec4<u32>(1u, _wgslsmith_dot_vec2_u32(u_input.c.zw, vec2<u32>(3916u, var_0)), var_0, 0u);
    global0 = array<Struct_2, 12>();
    let var_2 = u_input.b.xy;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-select(var_2.x, u_input.b.x, false), -countOneBits(arg_0.a.x), var_2.x, var_2.x) & -_wgslsmith_mod_vec4_i32(min(vec4<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, var_2.x), vec4<i32>(var_2.x, 379i, 8721i, arg_0.a.x)), vec4<i32>(-1i, -2147483647i, arg_0.a.x, 13650i)), _wgslsmith_sub_vec4_i32(vec4<i32>(7532i, _wgslsmith_mult_i32(-u_input.a.x, _wgslsmith_mod_i32(arg_0.a.x, 20295i)), 8578i, _wgslsmith_dot_vec2_i32(-u_input.b.yz, select(arg_0.a, u_input.b.zy, vec2<bool>(false, false)))), ~vec4<i32>(countOneBits(arg_0.a.x), arg_0.a.x, var_2.x & 15882i, -1i)));
}

fn func_2() -> Struct_1 {
    global0 = array<Struct_2, 12>();
    let var_0 = _wgslsmith_clamp_i32(-func_3(Struct_1(_wgslsmith_mult_vec2_i32(u_input.b.zz, vec2<i32>(u_input.b.x, 1379i)))), u_input.a.x, -12663i);
    let var_1 = !vec4<bool>(true, true, any(vec3<bool>(all(vec3<bool>(false, true, true)), true, true)), false);
    let var_2 = ~_wgslsmith_dot_vec3_i32(u_input.b, ~(-u_input.b) ^ (u_input.b << (~u_input.c.wxw % vec3<u32>(32u))));
    global0 = array<Struct_2, 12>();
    return Struct_1(abs(_wgslsmith_clamp_vec2_i32(abs(-u_input.b.xz), firstTrailingBit(-u_input.b.xx), countOneBits(vec2<i32>(var_0, -38031i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec4_u32(abs(u_input.c), vec4<u32>(func_1(Struct_2(Struct_1(u_input.b.zz)), u_input.a.x, -849f, Struct_1(vec2<i32>(0i, u_input.a.x))), 1u, _wgslsmith_dot_vec4_u32(u_input.c, u_input.c), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)) | (~vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) >> (vec4<u32>(u_input.c.x, u_input.c.x, 69276u, u_input.c.x) % vec4<u32>(32u)))) << ((vec4<u32>(4294967295u, ~(~50467u), u_input.c.x, reverseBits(u_input.c.x | u_input.c.x)) ^ (u_input.c | vec4<u32>(1u, 1u, ~u_input.c.x, u_input.c.x))) % vec4<u32>(32u));
    global0 = array<Struct_2, 12>();
    var var_1 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec2_u32(u_input.c.xy, ~u_input.c.xy)), var_1.a.x);
}

