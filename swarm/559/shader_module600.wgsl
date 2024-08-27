struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1() -> i32 {
    var var_0 = min(~0u, ~0u >> (~u_input.a.x % 32u));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(~1i >> (~u_input.a.x % 32u), -2147483647i << (countOneBits(u_input.a.x) % 32u)) ^ max(max(abs(2147483647i), 1i), -(i32(-1i) * -18331i)), 0i, i32(-1i) * -50811i, -1i);
    let var_2 = vec2<i32>(var_1.x, 6646i);
    let var_3 = Struct_1(var_1.x, var_2.x, ~(i32(-1i) * -32468i));
    var var_4 = firstLeadingBit(var_1.zxx);
    return -20720i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i, -_wgslsmith_div_i32(25112i, firstTrailingBit(-2147483647i)) | ~(-select(1i, -41589i, false)), 1i);
    let var_1 = true | all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true), false));
    var var_2 = _wgslsmith_clamp_vec3_u32(u_input.a ^ min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, 22850u, 80336u), u_input.a) << (u_input.a % vec3<u32>(32u)), ~reverseBits(u_input.a)), u_input.a, abs(~_wgslsmith_div_vec3_u32(select(u_input.a, u_input.a, vec3<bool>(var_1, false, var_1)), u_input.a)));
    let var_3 = Struct_1(_wgslsmith_clamp_i32(min(i32(-1i) * -var_0.b, var_0.c), var_0.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-35838i, 1i) | vec2<i32>(16997i, var_0.a), -vec2<i32>(1i, -1i) | vec2<i32>(var_0.a, var_0.b))), ~(~_wgslsmith_mod_i32(-1i | var_0.b, var_0.c)), _wgslsmith_div_i32(i32(-1i) * -_wgslsmith_div_i32(-1i, -2147483647i), firstLeadingBit(_wgslsmith_add_i32(35631i, 6435i))));
    var var_4 = firstTrailingBit(max(abs(-1i), min(-_wgslsmith_div_i32(-2147483647i, var_3.c), -var_3.c)));
    var var_5 = Struct_1(max(_wgslsmith_mult_i32(0i & var_0.c, _wgslsmith_add_i32(-1i, 4850i & var_3.a)), _wgslsmith_mult_i32(14608i, var_3.b)), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, var_3.a), -vec2<i32>(var_3.a >> (0u % 32u), var_0.c)), (func_1() | 1i) & _wgslsmith_mult_i32(1i, i32(-1i) * -var_0.c));
    var_5 = Struct_1(-var_3.a, ~(-(~(-8385i))), 4772i);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x & abs(4294967295u));
}

