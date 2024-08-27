struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-1019f, -962f);

var<private> global1: array<Struct_1, 20>;

var<private> global2: array<vec2<u32>, 4>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: bool) -> vec4<u32> {
    let var_0 = _wgslsmith_mult_vec2_i32(~firstTrailingBit(~abs(u_input.d)), ~(~(-_wgslsmith_mult_vec2_i32(u_input.a.zy, vec2<i32>(u_input.a.x, 1i)))));
    return ~min(vec4<u32>(76424u, _wgslsmith_div_u32(4294967295u, abs(arg_2.a)), ~(~arg_1.c.x), ~u_input.c.x), abs(min(vec4<u32>(0u, u_input.b, arg_1.c.x, 29575u), arg_1.c) ^ _wgslsmith_div_vec4_u32(arg_1.c, arg_2.c)));
}

fn func_2() -> bool {
    let var_0 = (vec4<u32>(u_input.b, u_input.b, 1u, max(1u, 86010u)) >> (_wgslsmith_mult_vec4_u32(~(vec4<u32>(4294967295u, u_input.c.x, u_input.b, 11490u) | vec4<u32>(u_input.b, 60215u, u_input.c.x, 22017u)), ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 12329u, 4294967295u, 16342u), vec4<u32>(u_input.b, u_input.c.x, 37415u, u_input.b))) % vec4<u32>(32u))) ^ firstTrailingBit(countOneBits(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(74661u, u_input.c.x, 18965u, u_input.b), vec4<u32>(u_input.b, 1u, 23528u, u_input.c.x)))));
    var var_1 = Struct_1(13958u, -956f, func_3(!(u_input.d.x == ~2147483647i), Struct_1(u_input.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), global0.x), var_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1194f)))), global1[_wgslsmith_index_u32(u_input.c.x, 20u)], !(!all(vec4<bool>(true, true, false, false)))), _wgslsmith_f_op_f32(max(global0.x, 1251f)));
    let var_2 = func_3(all(vec4<bool>(true, true, true, true)), Struct_1(var_0.x, var_1.d, countOneBits(_wgslsmith_add_vec4_u32(var_1.c, ~var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b)) * _wgslsmith_f_op_f32(min(1727f, -1093f))))), global1[_wgslsmith_index_u32(~(~(~(~var_0.x))), 20u)], any(select(vec2<bool>(true, any(vec3<bool>(false, true, false))), vec2<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, true))), vec2<bool>(false, true)))).xxx;
    let var_3 = _wgslsmith_f_op_f32(-global0.x);
    let var_4 = u_input.d.x;
    return !any(vec3<bool>(true, true, true));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>) -> StorageBuffer {
    global1 = array<Struct_1, 20>();
    let var_0 = -1045f;
    let var_1 = !(!vec3<bool>(!func_2(), true, true));
    let var_2 = Struct_2(Struct_1(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(70595u, u_input.b), u_input.b >> (1u % 32u), abs(u_input.b)) >> (_wgslsmith_div_u32(u_input.b ^ u_input.b, ~51815u) % 32u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - global0.x)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(946f - global0.x), -1760f))), _wgslsmith_mult_vec4_u32(vec4<u32>(~u_input.b, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(u_input.b, u_input.b)), u_input.b << (0u % 32u), ~u_input.b), ~(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b) >> (vec4<u32>(4294967295u, u_input.c.x, 57934u, u_input.b) % vec4<u32>(32u)))), -191f));
    let var_3 = global1[_wgslsmith_index_u32(select(~57552u, ~45196u, false), 20u)];
    return StorageBuffer(abs(-(u_input.d.x | 57424i)), ~max(~(vec3<u32>(var_3.a, 1u, var_3.a) & vec3<u32>(3061u, 0u, var_2.a.a)), _wgslsmith_div_vec3_u32(min(u_input.c, var_3.c.wzx), vec3<u32>(u_input.b, var_3.c.x, 1u))), ~abs(_wgslsmith_mod_vec4_u32(var_3.c, min(vec4<u32>(5810u, u_input.c.x, var_3.c.x, 0u), vec4<u32>(u_input.c.x, 4294967295u, 19575u, 0u)))), countOneBits(reverseBits(1i) << (_wgslsmith_clamp_u32(var_2.a.c.x, 1u, 31841u) % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 20>();
    let x = u_input.a;
    s_output = func_1(2095f, -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(25748i, u_input.a.x), u_input.d), min(u_input.a.yx, u_input.d)) << (global2[_wgslsmith_index_u32(~(~max(u_input.c.x, 14302u)), 4u)] % vec2<u32>(32u)));
}

