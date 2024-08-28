struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 15> = array<bool, 15>(false, true, true, true, true, false, true, false, false, false, false, false, true, false, false);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 15>();
    var var_0 = ~firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(0u, 0u), countOneBits(vec2<u32>(0u, 1u))), 63758u, 4294967295u, min(_wgslsmith_div_u32(29646u, 53058u), 1u)));
    var var_1 = -u_input.a.x;
    global0 = array<bool, 15>();
    var_0 = vec4<u32>(var_0.x | 45351u, 1u, 134773u, firstLeadingBit(abs(~(~20005u))));
    var var_2 = _wgslsmith_dot_vec2_i32(abs(abs(vec2<i32>(_wgslsmith_mult_i32(-19972i, u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(1i, u_input.a.x))))), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zz, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.yz) >> (~var_0.yx % vec2<u32>(32u))), vec2<i32>(_wgslsmith_clamp_i32(-1i, u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, 10910i, 2147483647i)), ~(-2147483647i | u_input.a.x))));
    let var_3 = -_wgslsmith_mod_i32(u_input.a.x, -u_input.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(1u, ~_wgslsmith_mult_u32(~countOneBits(var_0.x), _wgslsmith_mult_u32(4294967295u, 0u)));
}

