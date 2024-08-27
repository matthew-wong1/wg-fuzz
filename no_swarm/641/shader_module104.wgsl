struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -914f;
    var var_1 = ~firstTrailingBit(4294967295u) == min(78939u, 1u);
    let var_2 = ~_wgslsmith_sub_vec3_i32(vec3<i32>(~(-2147483647i), ~(i32(-1i) * -1i), firstLeadingBit(1i)), vec3<i32>(~u_input.a.x, -2147483647i, -10008i));
    let x = u_input.a;
    s_output = StorageBuffer(-1083f, -vec2<i32>(~(-u_input.a.x), 1i << (1u % 32u)), vec4<i32>(min(~(-17428i), u_input.a.x & (-2147483647i >> (1u % 32u))), min(_wgslsmith_add_i32(2147483647i, var_2.x), -(~(-2147483647i))), _wgslsmith_mod_i32(-(var_2.x | var_2.x), -reverseBits(u_input.a.x)), ~_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, -22587i, -35519i), ~u_input.a.wyz)), var_2.zx | _wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(vec2<i32>(var_2.x, u_input.a.x), vec2<i32>(-1111i, u_input.a.x)), u_input.a.zw | (vec2<i32>(-46701i, -52953i) ^ vec2<i32>(u_input.a.x, -31205i))));
}

