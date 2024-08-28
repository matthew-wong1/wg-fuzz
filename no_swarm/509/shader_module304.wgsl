struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_1() -> i32 {
    var var_0 = Struct_1((1u << (1u % 32u)) < ~(u_input.b.x & 1u), vec4<bool>(true, true, true, any(vec3<bool>(true, true, true))));
    var var_1 = -1i;
    return _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_sub_vec2_i32(-firstTrailingBit(vec2<i32>(0i, 16163i)), firstLeadingBit(vec2<i32>(39632i, -1i)))), -firstTrailingBit(~vec2<i32>(-1i, -1i) & _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(-2147483647i, -44015i), vec2<i32>(-65009i, -2147483647i))));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = arg_2;
    return arg_3;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    let var_0 = arg_1;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(0i, ~_wgslsmith_div_i32(func_1(), -55208i), _wgslsmith_add_i32(max(func_3(vec2<i32>(-23875i, -47538i), u_input.b.x, Struct_1(true, var_0.b), 2147483647i), 1i), ~(-2147483647i))), vec3<i32>(func_1(), -func_3(~vec2<i32>(0i, 34885i), _wgslsmith_clamp_u32(u_input.b.x, u_input.a.x, u_input.b.x), arg_0, firstTrailingBit(-1i)), ~_wgslsmith_mod_i32(~0i, ~33454i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(min(-1i, abs(1727i)), -(~2763i)), -func_1()), -_wgslsmith_clamp_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -52882i, -4131i), vec3<i32>(1i, 2147483647i, 2147483647i)), -28717i) << ((43524u << (select(~2710u, u_input.a.x, true) % 32u)) % 32u), func_2(Struct_1(!all(vec4<bool>(true, true, false, false)), vec4<bool>(any(vec4<bool>(true, false, true, true)), true, true, false)), Struct_1(false, vec4<bool>(true, true, true, true))), -12922i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1190f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-354f))), any(vec4<bool>(false, false, false, true))))));
    let var_2 = 10333i;
    var_0 = ~vec4<i32>(2147483647i ^ (var_0.x & -25628i), -var_2, var_2, ~(-2147483647i));
    let var_3 = reverseBits(_wgslsmith_div_u32(min(u_input.a.x, ~(~0u)), _wgslsmith_mod_u32(~u_input.a.x, u_input.a.x >> (u_input.b.x % 32u)) & _wgslsmith_mult_u32(13291u, ~4294967295u)));
    var var_4 = 25886i;
    let var_5 = Struct_1(any(vec3<bool>(all(vec4<bool>(false, true, false, false)) || select(true, true, false), _wgslsmith_f_op_f32(ceil(191f)) >= _wgslsmith_div_f32(var_1, var_1), !all(vec3<bool>(false, true, true)))), vec4<bool>(any(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, false, true))), var_2 <= (_wgslsmith_sub_i32(var_0.x, var_2) & func_3(vec2<i32>(var_2, var_0.x), 0u, Struct_1(true, vec4<bool>(true, true, true, true)), var_0.x)), false, true));
    var var_6 = var_5.b.yyw;
    var_4 = func_3(_wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(select(-vec2<i32>(1i, var_2), -vec2<i32>(var_2, var_2), var_6.x), var_0.xx), abs(~vec2<i32>(-2147483647i, var_2))), u_input.b.x, Struct_1(true, !vec4<bool>(select(var_6.x, true, var_6.x), false, var_6.x, var_6.x)), var_0.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(u_input.b.wzx, vec3<u32>(~u_input.b.x, 15484u, 1u), ~u_input.a), max(abs(~(~u_input.b)), ~u_input.b));
}

