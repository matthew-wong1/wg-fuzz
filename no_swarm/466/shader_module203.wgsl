struct Struct_1 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec3<i32>,
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

var<private> global0: array<vec4<bool>, 9> = array<vec4<bool>, 9>(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_i32(~(select(vec4<i32>(1i, u_input.c.x, u_input.b.x, 13056i) | vec4<i32>(13164i, arg_0.x, -1i, arg_0.x), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -2147483647i, 35763i, arg_0.x), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -35525i)), !vec4<bool>(arg_1.x, true, false, true)) >> (~min(vec4<u32>(14801u, 20294u, 645u, 1u), vec4<u32>(38860u, 1u, 1u, 4294967295u)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 0i, u_input.e.x, u_input.c.x) ^ vec4<i32>(-72265i, arg_0.x, 2147483647i, 27871i), vec4<i32>(u_input.b.x, arg_0.x, 626i, arg_0.x) & vec4<i32>(u_input.b.x, 16771i, 2147483647i, arg_0.x))), vec4<i32>(-1i, u_input.a, 952i, reverseBits(-arg_0.x))));
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_add_u32(abs(15460u), ~firstTrailingBit(1u));
    global0 = array<vec4<bool>, 9>();
    var var_3 = arg_1;
    return Struct_1(max(var_2, var_2), 1u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 9>();
    let var_0 = all(global0[_wgslsmith_index_u32(~36928u, 9u)]);
    var var_1 = -4872i;
    var var_2 = Struct_1(11020u, countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(52787u, 68176u), countOneBits(vec2<u32>(4294967295u, 4294967295u)) >> (select(vec2<u32>(0u, 0u), vec2<u32>(0u, 1u), vec2<bool>(false, true)) % vec2<u32>(32u)))));
    var_2 = func_1(vec3<i32>(_wgslsmith_clamp_i32(countOneBits(u_input.a), u_input.e.x ^ (u_input.a << (var_2.b % 32u)), 0i), -4111i, u_input.b.x), !select(vec3<bool>(!var_0, true, any(vec3<bool>(true, var_0, var_0))), vec3<bool>(u_input.b.x < 0i, all(vec4<bool>(false, var_0, var_0, true)), false != var_0), select(vec3<bool>(true, var_0, var_0), select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(true, false, false)), select(vec3<bool>(var_0, true, var_0), vec3<bool>(false, false, true), true))));
    let var_3 = -732f;
    let var_4 = Struct_1(var_2.b, var_2.a);
    let var_5 = all(!(!(!select(vec2<bool>(var_0, false), vec2<bool>(true, true), var_0))));
    global0 = array<vec4<bool>, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(var_3, -_wgslsmith_clamp_i32(u_input.c.x, -12446i, _wgslsmith_add_i32(i32(-1i) * -17043i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, -2147483647i, 2147483647i), vec4<i32>(u_input.b.x, 37802i, 63805i, 4570i)))));
}

