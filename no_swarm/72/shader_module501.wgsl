struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(0i, vec2<i32>(-18782i, -6079i), i32(-2147483648), -1i), Struct_1(0i, vec2<i32>(0i, -32626i), i32(-2147483648), 34895i), Struct_1(-1i, vec2<i32>(0i, -1i), -15457i, 3175i), Struct_1(-28508i, vec2<i32>(-42831i, 2147483647i), 49910i, -48272i), Struct_1(44197i, vec2<i32>(i32(-2147483648), -1i), -1i, 0i), Struct_1(2147483647i, vec2<i32>(i32(-2147483648), i32(-2147483648)), 5161i, 1i), Struct_1(2147483647i, vec2<i32>(1i, 32253i), -5521i, 0i), Struct_1(-7810i, vec2<i32>(-24163i, 21980i), -52298i, -30314i), Struct_1(6013i, vec2<i32>(22853i, -16937i), 1i, i32(-2147483648)), Struct_1(38588i, vec2<i32>(-33174i, -34138i), 6036i, i32(-2147483648)), Struct_1(1i, vec2<i32>(-35337i, -1i), 2147483647i, 2147483647i), Struct_1(-41159i, vec2<i32>(i32(-2147483648), 2147483647i), -1i, 1i), Struct_1(41259i, vec2<i32>(1834i, -12533i), 7352i, 2147483647i), Struct_1(-28167i, vec2<i32>(-32080i, i32(-2147483648)), 723i, -41464i));

var<private> global1: array<Struct_1, 10>;

var<private> global2: i32 = 1i;

var<private> global3: array<vec3<f32>, 25>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec4<bool>) -> vec2<bool> {
    return !vec2<bool>(u_input.b.x > countOneBits(~(-28929i)), true);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: u32) -> vec3<bool> {
    var var_0 = 1u;
    var var_1 = select(u_input.d, u_input.d, arg_0.wx);
    global0 = array<Struct_1, 14>();
    global3 = array<vec3<f32>, 25>();
    var_1 = firstLeadingBit(u_input.d);
    return arg_0.yww;
}

fn func_2() -> StorageBuffer {
    let var_0 = Struct_1(-44431i, ~vec2<i32>(1i, abs(-787i)), _wgslsmith_mod_i32(~u_input.c.x, _wgslsmith_div_i32(u_input.b.x, u_input.c.x) & ~47111i) ^ u_input.b.x, u_input.c.x);
    let var_1 = global1[_wgslsmith_index_u32(46355u, 10u)];
    var var_2 = ~(~vec3<u32>(1u, firstTrailingBit(~u_input.d.x), ~u_input.d.x));
    var_2 = countOneBits(~(~(vec3<u32>(1u, var_2.x, var_2.x) | vec3<u32>(u_input.d.x, 50568u, var_2.x)) & vec3<u32>(~var_2.x, u_input.d.x, var_2.x)));
    var var_3 = select(select(func_3(vec4<bool>(true, true, true, true), 1f, 84985u), vec3<bool>(!(var_1.b.x < var_0.b.x), (var_2.x < 1u) || true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true)), vec3<bool>(func_1(vec4<bool>(true, true, true, true)).x, true, func_1(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), func_3(vec4<bool>(true, true, false, false), -453f, 4294967295u).x)).x), vec3<bool>(!(!func_3(vec4<bool>(true, true, false, false), 458f, 51654u).x), false, select(true, true && all(vec2<bool>(false, false)), select(any(vec2<bool>(true, true)), true, true))));
    return StorageBuffer(-223f, global3[_wgslsmith_index_u32(48948u & _wgslsmith_dot_vec2_u32(~var_2.xx, ~countOneBits(u_input.d)), 25u)], -_wgslsmith_div_i32(_wgslsmith_mult_i32(~75456i, u_input.c.x), -max(u_input.b.x, 0i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c.x;
    let var_1 = _wgslsmith_sub_vec2_i32(select(-u_input.c.yy, -select(u_input.b >> (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~u_input.b, vec2<bool>(true, true)), !(!func_1(vec4<bool>(false, false, false, true)))), vec2<i32>(-84678i, -2147483647i));
    let var_2 = u_input.a;
    global0 = array<Struct_1, 14>();
    global0 = array<Struct_1, 14>();
    let x = u_input.a;
    s_output = func_2();
}

